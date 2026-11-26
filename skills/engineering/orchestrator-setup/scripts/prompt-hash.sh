#!/usr/bin/env bash
# Canonical stamp hash. Prints the first 12 hex characters of the 256-bit SHA digest of normalised text.
# Usage:
#   scripts/prompt-hash.sh --role <name>     hash the catalog prompt (text under "## Prompt" in references/roles/<name>.md)
#   some-command | scripts/prompt-hash.sh    hash text on stdin (for example the prompt text read from a generated file)
# Normalisation: CRLF to LF, trailing spaces and tabs removed per line, leading and trailing blank lines removed, one final newline.
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

normalise() {
  sed -e 's/\r$//' -e 's/[ \t]*$//' | awk '
    { lines[NR] = $0 }
    END {
      s = 1; while (s <= NR && lines[s] == "") s++
      e = NR; while (e >= s && lines[e] == "") e--
      for (i = s; i <= e; i++) print lines[i]
    }'
}

if [ "${1:-}" = "--role" ]; then
  f="$HERE/references/roles/${2:?role name}.md"
  [ -f "$f" ] || { echo "no such role: $2" >&2; exit 1; }
  awk 'f{print} /^## Prompt$/{f=1}' "$f" | normalise
else
  normalise
fi | { if command -v shasum >/dev/null 2>&1; then shasum -a 256; else sha256sum; fi; } | cut -c1-12
