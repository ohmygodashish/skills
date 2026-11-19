# Tardis and Databento Indexer

## What it does

`tardis-databento-indexer` discovers, indexes, monitors, and queries normalized cryptocurrency market data (Tardis) and institutional equity/options market data (Databento) stored in ClickHouse via Index API service endpoints without direct database access.

## When to reach for it

You invoke this by typing `/tardis-databento-indexer`.

| Your situation | What `tardis-databento-indexer` gives back |
| :--- | :--- |
| Querying normalized historical crypto tick or order book data | Direct retrieval of indexed trades, quotes, and L2 snapshots via Tardis endpoints |
| Ingesting institutional US equity or option datasets | Preflight zero-cost validation, historical import execution, or live background capture via Databento |
| Checking data availability boundaries or ingestion history | Exchange and catalog discovery, symbol mapping, and persistent ingestion manifest inspection |

## Key Capabilities

* **Tardis Crypto Integration**: Normalized trade and order book support across active crypto exchanges, automatic mapping between ingestion dataset IDs and native query symbols, and row retrieval up to 10,000 records.
* **Databento Equities and Options**: Structured catalog discovery across `EQUS.MINI`, `EQUS.SUMMARY`, `OPRA.PILLAR`, and `XNAS.ITCH` schemas, strict zero-cost preflight validation, historical batch indexing, and managed live captures.
* **Guardrails and Precision**: Enforces safe HTTP API interaction without direct SQL exposure, prevents redundant 409 re-indexing jobs, and preserves decimal precision and high-resolution timestamps.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/finance/tardis-databento-indexer/SKILL.md`](../../skills/finance/tardis-databento-indexer/SKILL.md).
