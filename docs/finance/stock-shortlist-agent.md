# Stock Shortlist Agent

## What it does

`stock-shortlist-agent` stock Shortlist Agent: Deploys a swarm of parallel research agents to autonomously discover, screen, and shortlist stocks across small/mid/large-cap tiers based on user criteria. Accepts vague natural-language inputs (e.g., 'high growth small caps in NSE') and structured parameters. Supports India (NSE/BSE), US (NYSE/NASDAQ), Hong Kong (HKEX), and A-Share (SH/SZ) markets across all sectors and investment styles (Growth, Value, Dividend, Momentum, Quality, Turnaround). Returns a ranked shortlist of up to 10 stocks with per-stock scorecards (thesis, financials, moat rating, red flags) written to a single markdown file, ready for stock-research-executor handoff. Refuses penny stocks, OTC/pink sheets, leveraged/inverse ETFs, explicit price predictions, and unsupported markets.

## When to reach for it

You invoke this by typing `/stock-shortlist-agent`.

| Your situation | What `stock-shortlist-agent` gives back |
| --- | --- |
| Vague search prompt like 'high growth small caps in NSE' | Autonomous multi-agent screening and ranking across global markets (NSE/BSE, NYSE/NASDAQ) |
| Filtering quality stocks from market noise | Top 10 ranked shortlist with per-stock scorecards (thesis, moat, red flags) ready for due diligence |

## Interactive output

The markdown shortlist under `RESEARCH/` is always the primary output. The post-report prompt adds an "Interactive" option that writes a self-contained HTML sibling next to it: the ranked table sortable by score, rank, and cap tier, filterable by moat rating, with each row expanding to its full scorecard. The file has no dependencies and works offline, and `RESEARCH/` is already gitignored, so it is not committed.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/finance/stock-shortlist-agent/SKILL.md`](../../skills/finance/stock-shortlist-agent/SKILL.md).
