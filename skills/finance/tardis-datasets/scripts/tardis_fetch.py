"""Stream one daily Tardis-style CSV.gz file from a datasets server.

Standard library only. The server base URL is never hardcoded: pass base= or
set TARDIS_BASE_URL. The response is read incrementally and reading stops
after nrows (default 10,000), max_bytes of decompressed data, or deadline
seconds in total. Pass nrows=None only for small data types.

CLI: `python3 -I tardis_fetch.py --check-base URL` prints the normalized base
URL and exits 0, or prints the reason and exits 1. Without arguments it runs
the self-check.

shortcut: returns a list of dict rows, not a DataFrame. Wrap it with
pandas.DataFrame(rows) once pandas is available.
"""
import csv
import datetime
import gzip
import io
import ipaddress
import os
import re
import socket
import sys
import time
import urllib.parse
import urllib.request

_EXCHANGE = re.compile(r"[a-z0-9_-]+")
_DATA_TYPE = re.compile(r"[A-Za-z0-9_-]+")
_SYMBOL = re.compile(r"[A-Za-z0-9][A-Za-z0-9_.:-]*")  # no "/" (changes the URL path), no leading "." or "-"
_DATE = re.compile(r"[0-9]{4}-[0-9]{2}-[0-9]{2}")
_METADATA_NAMES = {"metadata.google.internal", "metadata"}
_METADATA_IPS = {ipaddress.ip_address("fd00:ec2::254")}


class _NoRedirect(urllib.request.HTTPRedirectHandler):
    # A redirect could send us to another host, port or scheme after _base_url checked it.
    def redirect_request(self, *args, **kwargs):
        return None


_OPENER = urllib.request.build_opener(_NoRedirect)


def _check(name, value, pattern):
    if not isinstance(value, str) or not pattern.fullmatch(value):
        raise ValueError(f"unsafe {name}: {value!r}")


def _base_url(base=None):
    base = base or os.environ.get("TARDIS_BASE_URL")
    if not base:
        raise ValueError("no server base URL: pass base= or set TARDIS_BASE_URL")
    p = urllib.parse.urlsplit(base)
    if p.scheme not in ("http", "https") or not p.hostname:
        raise ValueError(f"base must start with http:// or https://: {base!r}")
    if p.username or p.password or p.path.strip("/") or p.query or p.fragment:
        raise ValueError(f"base must be scheme://host[:port] only: {base!r}")
    host = p.hostname.rstrip(".").lower()
    if host in _METADATA_NAMES:
        raise ValueError(f"refusing metadata host: {host!r}")
    # Check every address the name resolves to, so decimal/hex/octal/IPv6-mapped forms are caught.
    # shortcut: DNS rebinding between this check and the request is not prevented; pin the IP if that matters.
    try:
        infos = socket.getaddrinfo(host, p.port or 80, proto=socket.IPPROTO_TCP)
    except (socket.gaierror, ValueError) as e:
        raise ValueError(f"cannot resolve host {host!r}: {e}") from None
    for info in infos:
        ip = ipaddress.ip_address(info[4][0].split("%")[0])
        ip = getattr(ip, "ipv4_mapped", None) or ip
        if ip.is_link_local or ip in _METADATA_IPS:
            raise ValueError(f"refusing link-local or metadata address {ip} for {host!r}")
    return f"{p.scheme}://{p.netloc}"


class _Capped(io.RawIOBase):
    """Read-through wrapper that stops at max_bytes or a wall-clock deadline."""

    def __init__(self, raw, max_bytes, deadline):
        self.raw, self.left, self.deadline = raw, max_bytes, deadline

    def readable(self):
        return True

    def readinto(self, buf):
        if time.monotonic() > self.deadline:
            raise TimeoutError("download deadline exceeded")
        if self.left <= 0:
            raise ValueError("decompressed size limit exceeded")
        n = self.raw.readinto(memoryview(buf)[: min(len(buf), self.left)])
        self.left -= n or 0
        return n


def fetch_rows(exchange, data_type, date, symbol, nrows=10_000, timeout=30,
               deadline=300, max_bytes=256 * 2**20, base=None):
    """Return (header, rows) for one daily file. `date` is 'YYYY-MM-DD' or a datetime.date."""
    base = _base_url(base)
    _check("exchange", exchange, _EXCHANGE)
    _check("dataType", data_type, _DATA_TYPE)
    _check("symbol", symbol, _SYMBOL)
    if isinstance(date, str):
        _check("date", date, _DATE)
        date = datetime.date.fromisoformat(date)
    url = (f"{base}/datasets/v1/{exchange}/{data_type}/"
           f"{date.year:04d}/{date.month:02d}/{date.day:02d}/{symbol}.csv.gz")
    end = time.monotonic() + deadline
    rows = []
    with _OPENER.open(url, timeout=timeout) as resp:
        with gzip.GzipFile(fileobj=resp) as gz:
            capped = io.BufferedReader(_Capped(gz, max_bytes, end))
            reader = csv.reader(io.TextIOWrapper(capped, encoding="utf-8", newline=""))
            header = next(reader)
            for row in reader:
                if nrows is not None and len(rows) >= nrows:
                    break
                rows.append(dict(zip(header, row)))
    return header, rows


def _must_fail(fn, *args):
    try:
        fn(*args)
    except ValueError:
        return
    raise AssertionError(f"accepted but should be rejected: {args!r}")


if __name__ == "__main__":
    if len(sys.argv) == 3 and sys.argv[1] == "--check-base":
        try:
            print(_base_url(sys.argv[2]))
        except ValueError as e:
            print(f"rejected: {e}", file=sys.stderr)
            raise SystemExit(1)
        raise SystemExit(0)

    # Offline checks: run every time, no network.
    for bad in ("BTC/USD", "../etc", "..", "-rf", "BTC\n"):
        _must_fail(_check, "symbol", bad, _SYMBOL)
    _must_fail(_check, "exchange", "Binance", _EXCHANGE)
    _must_fail(_check, "date", "2026-1-1", _DATE)
    for bad in ("ftp://example.invalid", "http://169.254.10.1:9999", "http://2852039166",
                "http://0xA9FEA9FE", "http://[::ffff:169.254.169.254]", "http://[fd00:ec2::254]",
                "http://metadata.google.internal.", "http://u@127.0.0.1", "http://127.0.0.1/x?u=1"):
        _must_fail(_base_url, bad)
    assert _base_url("http://127.0.0.1:9999/") == "http://127.0.0.1:9999"
    print("offline checks OK")

    if not os.environ.get("TARDIS_BASE_URL"):
        print("network self-check skipped: set TARDIS_BASE_URL to run it")
        raise SystemExit(0)

    header, rows = fetch_rows("binance-futures", "trades", "2026-10-01", "BTCUSDT", nrows=5)
    expected = ["exchange", "symbol", "timestamp", "local_timestamp", "id", "side", "price", "amount"]
    assert header == expected, header
    assert len(rows) == 5, len(rows)
    assert all(r["symbol"] == "BTCUSDT" for r in rows)
    print("header:", header)
    for r in rows:
        print(r)
    print("self-check OK")
