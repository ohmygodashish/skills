# Stock Research Executor

## What it does

`stock-research-executor` stock Investment Research Executor: conducts 8-phase investment due diligence. Receives structured research prompts, deploys multi-agent parallel research, generates cited investment research reports covering: Business Foundation, Industry Analysis, Business Breakdown, Financial Quality, Governance Analysis, Market Sentiment, Valuation & Moat, and Final Synthesis. Use when performing stock research, fundamental analysis, or investment due diligence.

## When to reach for it

You invoke this by typing `/stock-research-executor`.

| Your situation | What `stock-research-executor` gives back |
| --- | --- |
| Performing fundamental due diligence on a specific stock | 8-phase comprehensive investment report (Financial Quality, Moat, Governance, Sentiment, Valuation) |
| Multi-agent parallel market research | Parallel agent research execution with cited source verification and bear/bull case synthesis |

## Interactive output

The markdown report under `RESEARCH/` is always the primary output and is always written first. After confirming the path, the skill offers once to build a self-contained HTML sibling next to it: a sticky table of contents across the 8 phases, collapsible phase sections, the Final Score shown as its 4-dimension weighted breakdown, and sources listed with their A-E ratings. The file has no dependencies and works offline, and `RESEARCH/` is already gitignored, so it is not committed.

## Underlying Specification

The full prompt specification and agent execution rules for this skill are maintained at [`skills/finance/stock-research-executor/SKILL.md`](../../skills/finance/stock-research-executor/SKILL.md).
