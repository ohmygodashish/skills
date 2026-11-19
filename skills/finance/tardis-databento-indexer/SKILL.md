---
name: tardis-databento-indexer
description: "Discover, index, monitor, and query normalized cryptocurrency market data (Tardis) and institutional equity/options data (Databento) from ClickHouse via Index API service endpoints without direct database access."
allowed-tools: Bash, WebFetch, Read, Write, AskUserQuestion
---

# Tardis and Databento Indexer

## Role

You are a **Market Data Indexing Specialist** responsible for discovering, indexing, monitoring, and retrieving normalized market data across cryptocurrency markets (via Tardis) and US equities and options (via Databento). You interact exclusively with the HTTP service API (default `http://localhost:8080`) to manage historical imports, live stream captures, and historical data retrieval from ClickHouse without attempting direct database connections.

## Core Responsibilities

1. **Intake and parameter clarification**: Resolve target provider, operation mode, symbols, datasets, and date windows before initiating API requests.
2. **Health and catalog discovery**: Verify service availability and discover valid exchange IDs, dataset schemas, availability windows, and native symbols prior to dispatching jobs.
3. **Safe historical ingestion**: Run preflight verification and cost checks for Databento, check prior ingestion manifests, and dispatch historical indexing jobs only for missing data.
4. **Live capture management**: Start, monitor, and cleanly terminate Databento live captures, respecting process limits and concurrent connection constraints.
5. **Precision data retrieval**: Query indexed records from ClickHouse using native symbols and filter ranges, strictly preserving decimal precision and high-resolution timestamps.

---

## Asking the User for Input

Every question this skill asks follows these rules without exception so that execution remains consistent across runs and across different AI harnesses:

1. **Structured picker first**: If the agent environment provides a structured multiple-choice question tool (such as `AskUserQuestion` or interactive picker), use it for every question it can express. Do not narrate the question in chat when using the picker tool; the picker is the question.
2. **Chat is a fallback, not a style choice**: Drop to a chat message in two cases only: the agent environment lacks a structured picker tool, or the question requires free-form input (such as an arbitrary symbol, custom date, or remote URL). When falling back, use the fallback block verbatim.
3. **Structured question limits**: A question cannot be expressed through the picker when it requires free text or when it exceeds 4 questions per call or 4 options per question. Split questions or use an enumerable gate question whose non-default branch drops to chat.
4. **Fixed order and batching**: Follow the ordered clarification sequence below. Inquire only about parameters that are missing, ambiguous, or cannot be inferred from user context.
5. **Non-interactive runs**: In automated or non-interactive execution modes, skip interactive confirmation gates and proceed with discovered defaults.

### Clarification Workflow

#### Step 1: Provider Selection

If the target provider (Tardis or Databento) is not explicitly named in the request, ask through the picker:

| Question | Options |
| :--- | :--- |
| Which market data provider do you want to use? | Tardis (Crypto normalized datasets) / Databento (US Equities and Options) |

**Fallback block** (use only when no picker tool is available):

```text
Which market data provider do you want to use?
1. Tardis (Cryptocurrency normalized data)
2. Databento (US Equities and Options)
```

#### Step 2: Operation Intent

Once the provider is known, confirm the operational objective:

**For Tardis:**

| Question | Options |
| :--- | :--- |
| What Tardis action do you want to perform? | Query indexed market data / Start historical indexing job / Discover exchanges and symbols / Inspect jobs and history |

**For Databento:**

| Question | Options |
| :--- | :--- |
| What Databento action do you want to perform? | Query indexed market data / Start historical import / Start live capture / Check catalog and history |

**Fallback block** (use only when no picker tool is available):

```text
What action do you want to perform?
- Query indexed market data
- Start a historical indexing/import job
- Start a live capture (Databento only)
- Discover catalog/exchanges or inspect history
```

#### Step 3: Base URL Confirmation

Default to `http://localhost:8080`. If the user mentions a remote dashboard or custom environment, prompt:

| Question | Options |
| :--- | :--- |
| Which service endpoint should be used? | Default (http://localhost:8080) / Custom remote origin |

If the user selects "Custom remote origin", request the base URL via chat:

```text
Please provide the base URL for the Index API service (e.g., http://remote-host:8080).
```

#### Step 4: Parameter Collection

Collect missing query or job parameters based on the chosen path:

* **Tardis Ingestion / Query**:
  * Exchange ID (e.g., `kraken`, `hyperliquid`, `binance-futures`): Ask via chat if not provided.
  * Symbol: Ask via chat. Clarify dataset ID (e.g., `BTC-USD`) for ingestion versus native stored symbol (e.g., `BTC/USD`) for queries.
  * Data type: Ask through the picker for common types (`trades` / `incremental_book_L2` / `quotes` / `book_snapshot_25`). Other valid types (`book_snapshot_5`, `book_ticker`, `derivative_ticker`, `liquidations`, `options_chain`) may be specified via free text.
  * Time window: UTC dates (`YYYY-MM-DD`) for indexing jobs; microsecond timestamps (`fromMicros`, `toMicros`) for queries.

* **Databento Import / Capture / Query**:
  * Dataset: Ask through the picker:
    * `EQUS.MINI (Equities)`
    * `EQUS.SUMMARY (Daily OHLCV and Stats)`
    * `OPRA.PILLAR (US Equity Options)`
    * `XNAS.ITCH (Nasdaq Historical OHLCV)`
  * Mode: Historical or Live.
  * Schema: (e.g., `ohlcv-1m`, `ohlcv-1s`, `trades`, `tbbo`, etc.).
  * Symbol: Single symbol or parent root (e.g., `AAPL`, `AAPL.OPT`).
  * Time window: UTC dates (`YYYY-MM-DD`, with `to` exclusive).

#### Step 5: Execution Plan Gate

Before starting an indexing job, starting a live capture, or stopping an active capture, display the parameter summary and prompt for confirmation:

| Question | Options |
| :--- | :--- |
| Proceed with this market data operation? | Execute request / Revise parameters |

---

## Service Overview & Infrastructure

* **Base URL**: `http://localhost:8080` (or configured remote origin).
* **Authentication**: None. The service runs in a trusted private network. Do not expose publicly without an authenticated reverse proxy, VPN, or identity-aware proxy.
* **Storage Engine**: ClickHouse. Agents must never attempt direct SQL or TCP connections to ClickHouse. All interaction occurs through the REST API.
* **Provider Separation**: Tardis and Databento use separate databases and endpoints on the same service host. Do not mix Tardis exchange endpoints with Databento datasets.

---

## Tardis API Reference

Tardis provides normalized cryptocurrency tick-level and order book datasets.

### Core Concepts

* **UTC Timestamps**: All dates and times are UTC. In indexing requests, `to` is exclusive.
* **Dataset ID vs Native Symbol**: Ingestion uses provider dataset IDs (e.g., `BTC-USD` on Kraken), while ClickHouse stored rows and query endpoints use native exchange symbols (e.g., `BTC/USD`).
* **Query Ordering**: Results are sorted by `local_timestamp` descending.
* **Query Limits**: Maximum 10,000 rows per request. Default limit is 250 rows.
* **Idempotency**: Completed daily files are not indexed again. Re-requesting an already-indexed or active file returns HTTP 409.

### Supported Data Types

* `trades`
* `incremental_book_L2`
* `book_snapshot_5`
* `book_snapshot_25`
* `quotes`
* `book_ticker`
* `derivative_ticker`
* `liquidations`
* `options_chain`

### Endpoints

#### 1. Health Check
```bash
curl -sS http://localhost:8080/health
```

#### 2. Discover Exchanges
Returns active exchanges with normalized CSV support.
```bash
curl -sS http://localhost:8080/api/v1/exchanges
```

#### 3. Discover Symbols and Availability
Returns export boundaries, dataset IDs, and supported data types.
```bash
curl -sS http://localhost:8080/api/v1/exchanges/kraken
```
Response fields:
* `exportedUntil`: exclusive UTC export boundary
* `symbols[].id`: dataset ID for ingestion jobs
* `symbols[].availableSince`: inclusive availability boundary
* `symbols[].availableTo`: exclusive availability boundary
* `symbols[].dataTypes`: list of supported types

#### 4. Retrieve Indexed Data
```bash
curl -sS -G \
  --data-urlencode exchange=kraken \
  --data-urlencode 'symbol=BTC/USD' \
  --data-urlencode limit=100 \
  http://localhost:8080/api/v1/data/trades
```

Parameters:
* `exchange`: required exchange ID
* `symbol`: optional native stored symbol
* `fromMicros`: optional inclusive local timestamp (microseconds since Unix epoch)
* `toMicros`: optional exclusive local timestamp (microseconds since Unix epoch)
* `limit`: optional integer from 1 to 10000 (default: 250)

#### 5. Start Indexing Job
```bash
curl -sS \
  -H 'Content-Type: application/json' \
  -d '{"exchange":"hyperliquid","dataTypes":["trades"],"symbols":["BTC"],"from":"2026-09-01","to":"2026-09-02"}' \
  http://localhost:8080/api/v1/jobs
```
Status Codes:
* `202 Accepted`: Job queued. Returns job ID.
* `400 Bad Request`: Invalid symbol, type, or date range.
* `409 Conflict`: Data already indexed or currently running.

#### 6. Monitor Jobs
```bash
curl -sS http://localhost:8080/api/v1/jobs
curl -sS http://localhost:8080/api/v1/jobs/{job_id}
```
Job fields: `status` (queued, running, complete, failed), `totalFiles`, `completedFiles`, `skippedFiles`, `failedFiles`, `currentFile`, `rowsInserted`, `error`.

#### 7. Ingestion Manifest History
```bash
curl -sS 'http://localhost:8080/api/v1/ingestions?limit=100'
```
Returns persistent ClickHouse ingestion records (limit clamped to 1..500).

#### 8. System Overview
```bash
curl -sS http://localhost:8080/api/v1/overview
```

---

## Databento API Reference

Databento provides institutional-grade market data for US equities and options.

### Core Concepts

* **Separate Storage**: Databento uses a separate database and endpoints (`/api/v1/databento/*`).
* **Configured Datasets**:
  * `EQUS.MINI`: Equities data (check catalog for historical/live schemas).
  * `EQUS.SUMMARY`: Daily OHLCV, statistics, and corporate definitions.
  * `OPRA.PILLAR`: US equity options.
  * `XNAS.ITCH`: Historical Nasdaq OHLCV (`ohlcv-1s`, `ohlcv-1m`, `ohlcv-1h`, `ohlcv-1d`). Live capture is disabled.
* **Single Symbol Scope**: Use one symbol or parent root per job. Never pass arrays or `ALL_SYMBOLS`.
* **Symbology Types (`stype_in`)**:
  * `raw_symbol` (default)
  * `parent` (e.g., `AAPL.OPT` for option chains)
  * `instrument_id`
* **Zero Cost Requirement**: Preflight requires an estimated cost of zero. Non-zero or unknown billing costs fail.
* **Limits**: Maximum 8 active jobs and 4 live capture jobs per dataset.

### Endpoints

#### 1. Discover Catalog
```bash
curl -sS http://localhost:8080/api/v1/databento/catalog
```
Returns configured datasets, available historical and live schemas, and `maxDays`.

#### 2. Historical Preflight Check
```bash
curl -sS \
  -H 'Content-Type: application/json' \
  -d '{"mode":"historical","dataset":"XNAS.ITCH","schema":"ohlcv-1m","symbol":"AAPL","stype_in":"raw_symbol","from":"2021-01-04","to":"2021-01-05"}' \
  http://localhost:8080/api/v1/databento/preflight
```
Must verify availability and zero-cost status before dispatching an import.

#### 3. Start Historical Import
```bash
curl -sS \
  -H 'Content-Type: application/json' \
  -d '{"mode":"historical","dataset":"XNAS.ITCH","schema":"ohlcv-1m","symbol":"AAPL","stype_in":"raw_symbol","from":"2021-01-04","to":"2021-01-05"}' \
  http://localhost:8080/api/v1/databento/jobs
```
Returns HTTP 202 with job ID.

#### 4. Start Live Capture
```bash
curl -sS \
  -H 'Content-Type: application/json' \
  -d '{"mode":"live","dataset":"EQUS.MINI","schema":"ohlcv-1m","symbol":"AAPL","stype_in":"raw_symbol"}' \
  http://localhost:8080/api/v1/databento/jobs
```
Optional `"start":"0"` initiates replay if supported upstream.

#### 5. Monitor and Stop Jobs
```bash
# List all Databento jobs
curl -sS http://localhost:8080/api/v1/databento/jobs

# Stop a running job
curl -sS -X POST http://localhost:8080/api/v1/databento/jobs/{job_id}/stop
```
Note: There is no single-job GET endpoint; filter the `/jobs` array by `id`.

#### 6. Ingestion History
```bash
curl -sS http://localhost:8080/api/v1/databento/history
```
Returns the latest 200 manifest entries. Manifest `task_id` and `attempt_id` differ from dashboard `job_id`.

#### 7. Retrieve Indexed Records
```bash
curl -sS -G \
  --data-urlencode mode=historical \
  --data-urlencode dataset=XNAS.ITCH \
  --data-urlencode schema=ohlcv-1m \
  --data-urlencode symbol=AAPL \
  --data-urlencode from=2021-01-04 \
  --data-urlencode to=2021-01-05 \
  --data-urlencode limit=100 \
  http://localhost:8080/api/v1/databento/data
```
Parameters:
* `mode`: required `historical` or `live`
* `dataset`: required catalog dataset ID
* `schema`: required schema name
* `symbol`: optional resolved symbol or parent root
* `from`: optional inclusive UTC date (`YYYY-MM-DD`)
* `to`: optional exclusive UTC date (`YYYY-MM-DD`)
* `limit`: optional integer from 1 to 1000 (default: 100)
* `task_id`: optional manifest task identifier
* `attempt_id`: optional attempt identifier

---

## Standard Execution Workflows

### Workflow A: Querying Existing Data
1. Check `/health`.
2. For Tardis, verify exchange via `/api/v1/exchanges` and inspect `/api/v1/ingestions`.
3. For Databento, check `/api/v1/databento/history` to ensure records exist.
4. Execute query endpoint (`/api/v1/data/{data_type}` for Tardis or `/api/v1/databento/data` for Databento).
5. Treat an empty JSON array as valid empty results, not as an API failure.

### Workflow B: Historical Indexing
1. Check `/health` and catalog/exchange boundaries.
2. Verify that data is not already indexed via ingestions/history endpoints.
3. For Databento: Run preflight (`/api/v1/databento/preflight`) and ensure zero cost.
4. Submit job to `/api/v1/jobs` (Tardis) or `/api/v1/databento/jobs` (Databento).
5. If response is HTTP 409, consider request satisfied or already processing.
6. Poll jobs list until status is `complete` or `failed`.
7. Once complete, query records via data endpoints.

### Workflow C: Live Capture (Databento)
1. Verify dataset and schema support live capture in `/api/v1/databento/catalog`.
2. Submit live job to `/api/v1/databento/jobs`. Retain returned `job_id`.
3. Check status via `/api/v1/databento/jobs` to ensure capture is `running`.
4. Query live records via `/api/v1/databento/data?mode=live`.
5. When finished, issue `POST /api/v1/databento/jobs/{job_id}/stop`.

---

## Safety and Guardrails

1. **No direct database access**: Do not execute SQL queries or attempt direct ClickHouse connections.
2. **Precision preservation**: Preserve decimal prices and nanosecond/microsecond timestamps as strings or exact numeric structures. Do not cast to standard floating point numbers that risk precision loss.
3. **No cost escalation**: Never bypass Databento preflight checks or attempt paid downloads. If preflight reports non-zero cost or entitlement failure, abort and notify the user.
4. **Symbol validity**: Never invent exchange IDs or symbols. Always discover them through the respective exchange or catalog endpoints.
5. **Rate limits and concurrency**: Respect the 8 active job limit and 4 live job limit on Databento. Avoid rapid polling loops.
