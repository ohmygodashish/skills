# Tardis Datasets

## What it does

`tardis-datasets` works with read-only Tardis.dev-compatible datasets servers serving daily gzipped CSV market data. It discovers exchanges and symbols, maps schemas, streams and cuts small historical windows to disk, and prepares modeling features and passive-fill proxy labels for short-term maker-order price models.

## When to reach for it

You invoke this by typing `/tardis-datasets`.

| Your situation | What `tardis-datasets` gives back |
| :--- | :--- |
| Discovering exchanges, symbols, and date windows on a Tardis datasets server | Safe discovery of supported venues, datasets, and date ranges without direct database access |
| Sampling or mapping schema for specific market data feeds | Sample extraction and header verification for trades, incremental L2 books, quotes, or derivative feeds |
| Extracting small time windows for quantitative modeling | Streamed and cut daily CSV files saved under `MARKET_DATA/` with size, time, and decompression limits |
| Engineering features and order fill labels | Feature extraction (OBI, microprice, order flow imbalance) and passive limit fill proxy labels |

## Key Capabilities

* **Server and Port Discovery**: Safely resolves candidate base URLs and ports (9999, 8080, 80) against cloud metadata and link-local address rejection checks.
* **Strict Guardrails**: Enforces protocol boundaries (`--proto '=http,https'`), validates input parameters against strict regex patterns, quotes shell variables, and caps stdout display to 50 short lines.
* **Bounded Data Streaming**: Streams gzipped daily CSV files directly with decompression limits (256 MB default), timestamp-based window cutoffs, and memory safety.
* **Market Modeling Preparation**: Guidelines for top-of-book feature engineering, order book reconstruction from `incremental_book_L2`, and passive execution fill proxy labeling.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/finance/tardis-datasets/SKILL.md`](../../skills/finance/tardis-datasets/SKILL.md).
