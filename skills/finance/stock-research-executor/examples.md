# Stock Research Executor - Examples

This document provides practical examples of how to execute the 8-phase investment due diligence process.

## Table of Contents

1. [Example 1: Value Investing - A-share Blue Chip](#example-1-value-investing---a-share-blue-chip)
2. [Example 2: Indian Market - NSE Blue Chip](#example-2-indian-market---nse-blue-chip)
3. [Example 3: Parallel Agent Deployment](#example-3-parallel-agent-deployment)
4. [Example 4: Phase Report Generation](#example-4-phase-report-generation)
5. [Example 5: Quality Assurance](#example-5-quality-assurance)
6. [Example 6: Final Synthesis](#example-6-final-synthesis)

---

## Example 1: Value Investing - A-share Blue Chip

### Context

**Input**: Structured research prompt from `stock-question-refiner` for Kweichow Moutai (600519.SH)

**Investment Style**: Value investing, conservative risk tolerance, long-term holding

**Priority Phases**: Business quality, governance, valuation

### Execution Plan

```markdown
## Research Execution Plan

### Research Target
**Stock**: 600519.SH Kweichow Moutai Co., Ltd.
**Market**: A-share (Shanghai)
**Industry**: Consumer Staples - Baijiu

### Investment Parameters
**Style**: Value Investing (deep value)
- Focus: Intrinsic value, margin of safety, durable competitive advantages
- Implications: Prioritize moat assessment, normalized earnings power, conservative valuation

**Holding Period**: Long-term (3+ years)
- Research implications: Emphasize business sustainability, moat durability

**Risk Tolerance**: Conservative
- Constraints: Avoid high debt, weak balance sheets
- Red flag emphasis: Financial quality, accounting issues

### Phase Prioritization
**Deep Dive Phases**:
- Phase 3 (Business Breakdown): Deep analysis of pricing power, moat, economics
- Phase 5 (Governance): SOE governance, capital allocation, management quality
- Phase 7 (Valuation): Comprehensive valuation with margin of safety

**Standard Coverage**: Phases 1, 2, 4, 6

### Multi-Agent Deployment Strategy
[Full plan for all phases - 28 total agents]

### Output Structure
File: `RESEARCH/STOCK_600519_Kweichow_Moutai_Research_Report.md`
Single consolidated report with all phases as sections

### Estimated Timeline
- Phase 1: 15-20 min
- Phase 2: 20-25 min
- Phase 3: 25-30 min (priority)
- Phase 4: 20-25 min
- Phase 5: 20-25 min (priority)
- Phase 6: 15-20 min
- Phase 7: 25-30 min (priority)
- Phase 8: 15-20 min
- **Total**: ~2.5-3.5 hours

---

**Ready to proceed?**
```

---

## Example 2: Indian Market - NSE Blue Chip

### Context

**Input**: Structured research prompt from `stock-question-refiner` for Reliance Industries (RELIANCE.NS)

**Market**: Indian (NSE)
**Investment Style**: Growth + value, balanced risk tolerance, long-term holding
**Priority Phases**: Business breakdown, financial quality, valuation

### Execution Plan

```markdown
## Research Execution Plan

### Research Target
**Stock**: RELIANCE.NS Reliance Industries Ltd.
**Market**: Indian (NSE)
**Industry**: Conglomerate - Energy, Telecom, Retail

### Investment Parameters
**Style**: Growth + Value
- Focus: Business transformation (Jio, Retail), asset monetization, capital allocation
- Implications: Deep analysis of subsidiary economics, segment-level financials

**Holding Period**: Long-term (3+ years)
- Research implications: Emphasize sustainable competitive advantages, moat durability

**Risk Tolerance**: Balanced
- Constraints: Evaluate debt levels, telecom market share dynamics, regulatory risks

### Phase Prioritization
**Deep Dive Phases**:
- Phase 3 (Business Breakdown): Segment-level analysis of O2C, Jio, Retail
- Phase 4 (Financial Quality): Cash flow quality, debt analysis, segment ROIC
- Phase 7 (Valuation): SOTP valuation, sum-of-the-parts

**Standard Coverage**: Phases 1, 2, 5, 6

### Multi-Agent Deployment Strategy

**Phase 1: Business Foundation**
- Agent 1A: Core business and products: Use Screener.in for segment overview
- Agent 1B: Revenue and profit composition: Fetch financials from Screener.in
- Agent 1C: Customers and value chain: Jio subscribers, retail footfall, O2C customers
- Agent 1D: Recent strategic changes: Jio 5G rollout, retail expansion, new energy business

**Phase 2: Industry Analysis**
- Agent 2A: Telecom industry cycle: Jio vs. Airtel vs. VI market shares
- Agent 2B: Retail industry dynamics: Organized vs. unorganized retail growth
- Agent 2C: Energy sector: Global refining margins, petrochemical cycle
- Agent 2D: Policy and regulation: Telecom spectrum, retail FDI, energy transition

**Phase 3: Business Breakdown**
- Agent 3A: Segment deep dive: O2C, Jio, Retail, New Energy financials from Screener.in
- Agent 3B: Profit engine: ARPU trends, retail margin, refining margins
- Agent 3C: Customer analysis: Jio subscriber churn, retail store economics
- Agent 3D: Subsidiaries: Jio Platforms, Reliance Retail Ventures

**Phase 4-7**: Standard deployment (4 agents each)

### Data Sources
**Indian Market Priority**:
1. Screener.in (`https://www.screener.in/company/RELIANCE/`): Financial statements, ratios, quarterly results
2. Investing.com: Search `site:investing.com/equities Reliance Industries` to find the URL slug, then fetch news and analysis
3. Moneycontrol: News, shareholding, quarterly results
4. SEBI filings: Insider trading disclosures, corporate announcements
5. Company investor presentations: Reliance.com/investors

### Output Structure
File: `RESEARCH/STOCK_RELIANCE_Reliance_Industries_Research_Report.md`
Single consolidated report with all phases as sections

### Estimated Timeline
- Phase 1: 15-20 min
- Phase 2: 20-25 min
- Phase 3: 25-30 min (priority)
- Phase 4: 20-25 min (priority)
- Phase 5: 15-20 min
- Phase 6: 15-20 min
- Phase 7: 25-30 min (priority)
- Phase 8: 15-20 min
- **Total**: ~2.5-3.5 hours

---

**Ready to proceed?**
```

---

### Example 2.1: Indian Market Agent Deployment (Phase 1)

Demonstrates how agents use Screener.in and Sovrenn.com for Indian stocks:

```
I'm now launching 4 research agents in parallel for Phase 1: Business Foundation...

[Task Agent 1A]
Research Reliance Industries' core business and products.
Start with: https://www.screener.in/company/RELIANCE/ for business overview.
Focus: Business segments (O2C, Jio, Retail, New Energy), revenue breakdown.
Cross-reference: Reliance investor presentations.

[Task Agent 1B]
Research Reliance Industries' financial composition.
Start with: Screener.in financials page for profit/loss, balance sheet, ratios.
Focus: Revenue mix by segment, segment profitability, growth trends.
Fetch: Screener.in quarterly results page for trend data.

[Task Agent 1C]
Research Reliance Industries' customers and value chain.
Focus: Jio subscriber base (telecom), retail customer reach, O2C customer types.
Sources: TRAI telecom reports, RAI retail data, company annual report.

[Task Agent 1D]
Research Reliance's strategic changes.
Search: Sovrenn.com for company page by searching name, then fetch valuation context.
Focus: Jio 5G launch, retail expansion, new energy commitment, telecom tariff hikes.

---

All 4 agents are now running concurrently. I'll collect their findings once complete.
```

### Example 2.2: Using Screener.in for Phase 4 Financial Analysis

```
Agent 4A: Research Reliance's key financial metrics.

Source: https://www.screener.in/company/RELIANCE/

Extract from Screener.in:
- Revenue growth (5-year CAGR)
- Profitability trends (gross margin, net margin, ROE)
- Debt-to-equity ratio trend
- Earnings per share (EPS) growth

Then cross-reference with quarterly results from Moneycontrol.
```

### Example 2.3: Using Investing.com for Phase 7 Valuation

```
Agent 7B: Research Reliance's relative valuation.

Step 1: Search for the company on Investing.com
- Search query: "site:investing.com/equities Reliance Industries"
- Expected result: investing.com/equities/{slug} (e.g., reliance-industries)

Step 2: Fetch the company news and analysis page
- URL: https://www.investing.com/equities/{slug}-news
- Extract: Recent news, analyst commentary, market sentiment

Step 3: Cross-reference with Screener.in valuation tab
- Screener.in URL: https://www.screener.in/company/RELIANCE/#valuation
```

---

## Example 3: Parallel Agent Deployment

### Phase 1: Business Foundation - Launching 4 Agents in Parallel

**Implementation**:

```
I'm now launching 4 research agents in parallel for Phase 1: Business Foundation...

[Task Agent 1A]
Research Kweichow Moutai's core business and products.
Focus: Product portfolio, business segments, revenue drivers.
Sources: Annual reports, company website, investor presentations.

[Task Agent 1B]
Research Kweichow Moutai's revenue and profit composition.
Focus: Segment breakdown, profitability by product, revenue trends.
Sources: Segment reporting, financial statements, MD&A.

[Task Agent 1C]
Research Kweichow Moutai's customers and value chain position.
Focus: Customer segments, distribution channels, competitive position.
Sources: Industry reports, company disclosures, channel analysis.

[Task Agent 1D]
Research Kweichow Moutai's recent strategic changes (past 3-5 years).
Focus: i茅台APP, direct-to-consumer initiatives, pricing strategy evolution.
Sources: Annual reports (past 5 years), news archives, press releases.

---

All 4 agents are now running concurrently. I'll collect their findings once complete.
```

### Collecting Results

After agents complete (typically 3-5 minutes each, but parallelized so total ~5 min):

```
**Phase 1 Agent Results Summary**:

**Agent 1A** (Products):
- Core product: 飞天茅台 (Feitian Moutai) - premium baijiu
- Series products: 王子酒、迎宾酒, etc. - mid/lower tier
- Revenue mix: 飞天茅台 ~85% of revenue, series ~15%
- Brand positioning: "National Moutai" - luxury baijiu for gift-giving and banquets

**Agent 1B** (Revenue):
- 2023 Revenue: ¥127.5B (+18.2% YoY)
- Gross margin: 91.2% (stable, premium pricing)
- 飞天茅台 margin: ~93%, Series margin: ~75%
- Net income: ¥74.7B (+18.3% YoY)

**Agent 1C** (Customers):
- Primary customers: High-income individuals, businesses (gift-giving), government (official banquets)
- Distribution: ~95% through wholesale distributors, ~5% direct (i茅台APP growing)
- Customer concentration: No single customer >5%
- Value chain: Upstream (grain sourcing) → Production (proprietary fermentation) → Distribution (wholesale) → End customers

**Agent 1D** (Strategy):
- 2022: Launched i茅台APP (direct-to-consumer)
- 2023: Increased direct sales to 5% from <1%
- 2021-2023: Multiple price increases (~10-15% cumulative)
- Strategy: Capture more margin by cutting out distributors

**Consensus**: All agents confirm Moutai is a premium baijiu producer with dominant brand, expanding direct sales.
**No Contradictions**: Findings are consistent across agents.
```

---

## Example 4: Phase Report Generation

### Phase 1 Section: `## Phase 1: Business Foundation` (within single report)

```markdown
# Phase 1: Business Foundation

## Executive Summary

Kweichow Moutai is China's leading premium baijiu producer with a dominant market position in the ultra-premium segment. The company's business model is built on a strong brand moat, proprietary production techniques, and pricing power derived from scarcity. Recent strategic initiatives focus on expanding direct-to-consumer channels through the i茅台APP platform to capture distributor margins.

**Key Facts**:
- 2023 Revenue: ¥127.5B (+18.2% YoY)
- Core Product: 飞天茅台 (85% of revenue)
- Gross Margin: 91.2%
- Primary customers: High-income individuals, businesses, government
- Distribution: 95% wholesale, 5% direct (growing)

## 1.1 Core Business and Products

**Business Model**: Production and sale of premium baijiu (Chinese white spirit), primarily through wholesale distributors to end customers for gift-giving, banquets, and personal consumption.

**Product Portfolio**:

| Product | Price Range | Revenue % | Margin | Growth |
|---------|-------------|-----------|--------|--------|
| 飞天茅台 (Feitian) | ¥2500-3000/bottle | ~85% | ~93% | +15% |
| 系列酒 (Series) | ¥200-800/bottle | ~15% | ~75% | +10% |

**Key Insights**:
- 飞天茅台 is the cash cow with exceptional 93% gross margin
- Series products provide lower but still healthy margins
- Scarcity is inherent (limited production capacity due to fermentation time)
- Pricing power: Multiple price increases (2021-2023) successfully implemented

## 1.2 Revenue and Profit Composition

**Revenue Mix** (2023):
- 飞天茅台: ¥108.4B (85% of total)
- 系列酒: ¥19.1B (15% of total)

**Profit Contribution**:
- 飞天茅台 contributes ~90% of gross profit despite 85% revenue share (due to higher margin)
- Series products contribute ~10% of gross profit

**5-Year Growth Trends**:

| Segment | 5-Year CAGR | Trend |
|---------|-------------|-------|
| 飞天茅台 Revenue | +16.5% | Accelerating |
| 系列酒 Revenue | +12.3% | Stable |
| Total Revenue | +15.8% | Accelerating |

## 1.3 Customers and Value Chain Position

**Customer Segments**:
- Gift-giving: ~40% of consumption (business gifts, personal gifts)
- Business banquets: ~30% (corporate events, government)
- Personal consumption: ~30% (special occasions, collectors)

**Customer Concentration**:
- Top 5 distributors account for ~15% of sales (reasonable concentration)
- No single end-customer concentration (fragmented end-market)

**Value Chain Position**:
- Upstream: Sorghum and wheat sourcing (agricultural commodities)
- Production: Proprietary fermentation in Maotai town (Guizhou province) - cannot be replicated elsewhere
- Midstream: Wholesale distribution network (1,500+ authorized distributors)
- Downstream: Retail outlets, restaurants, e-commerce, direct via i茅台APP

**Bargaining Power**: Strong (upstream suppliers fragmented, downstream distributors dependent on Moutai supply)

**Distribution Channels** (2023):
| Channel | Share | Trend |
|----------|-------|-------|
| Wholesale distributors | ~95% | Declining (shifting to direct) |
| Direct (i茅台APP) | ~5% | Growing rapidly |
| Export | <1% | Stable |

## 1.4 Recent Strategic Changes (Past 3-5 Years)

**Timeline of Major Events**:

| Year | Event | Impact | Status |
|------|-------|--------|--------|
| 2022 | Launch i茅台APP | Enable direct sales, capture distributor margin | Successful, 5% of sales |
| 2023 | Price increase (10-15%) | Improve margins, signal premium positioning | Implemented successfully |
| 2022-2023 | Expansion of production capacity | Address supply constraints | Ongoing, limited by geography |
| 2021 | Digital transformation initiative | Improve operational efficiency | Ongoing |

**Strategic Initiatives**:

1. **Direct-to-Consumer (DTC) via i茅台APP**
 - Launched: March 2022
 - Investment: ~¥500M in platform development
 - Results: ¥6.4B sales in 2023 (5% of total), 30%+ gross margin uplift vs. wholesale
 - Target: 10-15% of sales through DTC by 2025

2. **Production Capacity Expansion**
 - Challenge: Production constrained by geography (Maotai town) and fermentation time (5-year cycle)
 - Expansion: +20% capacity planned by 2027
 - Risk: Over-expansion could dilute premium positioning

3. **Premium Pricing Strategy**
 - 2021: +10% price increase
 - 2022: +8% price increase
 - 2023: +5% price increase
 - Customer acceptance: Strong (demand remains solid)
 - Risk: Regulatory pressure on "luxury pricing"

**Overall Assessment**:
- Strategy is clear: Maintain premium positioning, capture more margin through DTC
- Execution: Successful so far (i茅台APP adoption, price increases accepted)
- Risks: Regulatory, oversupply, competition

## Key Takeaways

1. **Strong Brand Moat**: 飞天茅台 has an unassailable brand position in China's premium baijiu market
2. **Exceptional Margins**: 91% gross margin demonstrates pricing power and scarcity
3. **Strategic Shift**: Moving toward direct sales to capture distributor margins (30%+ uplift)
4. **Supply Constraint**: Production capacity is limited by geography and fermentation time
5. **Pricing Power**: Multiple price increases successfully implemented with strong demand

## Red Flags Identified

1. **Regulatory Risk**: Government has targeted "excessive pricing" in luxury goods (including baijiu)
2. **Supply Constraints**: Limited capacity expansion could constrain growth
3. **Valuation Risk**: High valuation multiples (P/E >30) leave little margin for error
4. **Competition**: Wuliangye and other premium baijiu producers are closing the gap

## Sources

**A-Grade Sources** (Most authoritative):
- Kweichow Moutai Co., Ltd. 2023 Annual Report [Kweichow Moutai, April 2024, https://www.cninfo.com.cn]
- Kweichow Moutai 2023 Earnings Call Transcript [Kweichow Moutai, April 2024]

**B-Grade Sources** (High quality):
- China Baijiu Industry Report 2023 [China Alcoholic Drinks Association, 2023]
- Analyst Research: Moutai Price Increase Analysis [CICC, May 2023]

**C-Grade Sources** (Moderate quality):
- News: Moutai Launches i茅台APP [Caixin, March 2022]
- News: Moutai Raises Prices Again [Bloomberg, November 2023]

**Total Sources**: 12 (3 A-grade, 6 B-grade, 3 C-grade)
```

---

## Example 5: Quality Assurance

### Citation Validation

After completing a phase, invoke `citation-validator` skill:

```
Please validate the citations in the Phase 1 section of RESEARCH/STOCK_600519_Kweichow_Moutai_Research_Report.md

Check for:
1. Completeness: Every claim has author, date, title, URL
2. Format consistency: All citations follow same format
3. Source quality: All sources rated (A-E scale)
4. Missing citations: Any claims without sources
5. Contradictory claims: Any conflicting information

Provide a report with:
- Summary of citation quality
- List of missing or problematic citations
- Recommendations for corrections
```

### Expected Validation Report

```markdown
## Citation Validation Report

**File**: RESEARCH/STOCK_600519_Kweichow_Moutai_Research_Report.md (Phase 1 section)
**Total Claims**: 47
**Claims with Citations**: 45
**Claims Missing Citations**: 2 

**Overall Quality**: Good (B+)

### Issues Found

**Missing Citations**:
1. Line 45: "飞天茅台 has 93% gross margin" - NO SOURCE
 - **Recommendation**: Add citation from 2023 Annual Report, segment reporting section
 - **Source**: Kweichow Moutai 2023 Annual Report, p. 52

2. Line 78: "i茅台APP had 30%+ margin uplift vs. wholesale" - NO SOURCE
 - **Recommendation**: Verify and add source
 - **Potential Source**: Company earnings call commentary, Q3 2023

**Format Inconsistencies**:
1. Lines 12-15: Citations use different format than rest of document
 - **Current**: [Kweichow Moutai, 2024]
 - **Should be**: [Kweichow Moutai Co., Ltd., 2023 Annual Report, April 2024, https://www.cninfo.com.cn/new/disclosure/stock?stockcode=600519]

**Source Quality Concerns**:
1. Line 102: Citation from "Baijiu Industry Blog" - D-grade source
 - **Recommendation**: Verify with more authoritative source (China Alcoholic Drinks Association)
 - **Current source lacks credibility**

### Recommendations

1. Add 2 missing citations (critical)
2. Standardize citation format (moderate)
3. Replace 1 low-quality source (minor)
4. Re-validate after corrections

**Estimated Time to Fix**: 5-10 minutes
```

---

## Example 6: Final Synthesis

### Executive Summary Section: `## Executive Summary` (within single report)

```markdown
# Executive Summary

## Final Score

**8.2 / 10.0 (Quality) - Hold**

| Dimension | Score (0-10) | Weight | Weighted |
|-----------|-------------|--------|----------|
| Business Quality | 9.0 | 20% | 1.80 |
| Financial Quality | 9.0 | 25% | 2.25 |
| Governance Quality | 7.5 | 15% | 1.13 |
| Valuation & Moat | 7.5 | 40% | 3.00 |
| **Total** | | | **8.2** |

**Bands**: ≥8.5 Strong | 6.5-8.4 Quality | 4.5-6.4 Mixed | <4.5 Weak.
**Action labels**: Strong → Strong Buy | Quality/Mixed → Hold | Weak → Avoid.

**Rationale**: Kweichow Moutai is an exceptional business with a dominant brand moat and pricing power. However, current valuation (P/E ~32x) leaves limited margin of safety. We recommend holding existing positions but waiting for a better entry point (10-15% pullback) for new investments.

## Investment Thesis

**One-Liner**: Moutai is China's undisputed premium baijiu leader with an unassailable brand moat and 90%+ gross margins, but trading at full valuation with regulatory and execution risks.

**Detailed Thesis**:

Kweichow Moutai occupies a dominant position in China's ultra-premium baijiu market, with its 飞天茅台 (Feitian Moutai) brand holding aspirational status similar to luxury goods like Hermès or Rolex. The company's competitive advantages include:

1. **Brand Moat**: "National Moutai" designation and 800-year heritage create an unassailable brand position
2. **Pricing Power**: Consistently raises prices above inflation with strong demand
3. **Scarcity**: Production constrained by geography and fermentation time, creating natural scarcity
4. **Exceptional Margins**: 91% gross margin, 53% net margin (industry-leading)

Financial quality is exceptional with 5-year revenue CAGR of 15.8%, ROE of 30%+, and strong cash flow generation (OCF/NI > 1.0). The company has no debt and generates substantial free cash flow.

However, risks exist:
- **Valuation**: P/E of 32x, P/B of 13x - above historical average
- **Regulatory**: Government scrutiny of "excessive pricing" in baijiu
- **Competition**: Wuliangye and other premium brands narrowing the gap
- **Execution**: i茅台APP DTC shift could alienate distributors

## Key Metrics Summary

| Metric | Value | Context |
|--------|-------|---------|
| Market Cap | ¥2.8T (~$390B) | Largest A-share consumer staples company |
| TTM Revenue | ¥127.5B | +18.2% YoY |
| TTM Net Income | ¥74.7B | +18.3% YoY, Net Margin 58.6% |
| P/E (TTM) | 32x | Above 5-year average of 28x |
| P/B | 13x | At historical average |
| ROE (TTM) | 31% | Industry-leading, stable |
| Dividend Yield | 1.2% | Payout ratio ~38% |

## Top 3 Reasons to Consider

1. **Unassailable Brand Moat**: Moutai's "National Moutai" designation and cultural significance create a competitive advantage that cannot be replicated. The brand has 800 years of heritage and is deeply embedded in Chinese culture for gift-giving and celebrations.

2. **Exceptional Economics**: 91% gross margin and 53% net margin are among the highest in global consumer staples. The company has pricing power (consistent price increases) and scarcity (limited production capacity).

3. **Strong Cash Generation**: OCF/NI ratio > 1.0, zero debt, and substantial FCF enable dividend growth and potential share buybacks. 5-year revenue CAGR of 15.8% with ROE of 30%+ demonstrates exceptional capital efficiency.

## Top 3 Reasons to Avoid

1. **Full Valuation**: Trading at P/E 32x, above 5-year average of 28x and 2.5x above global luxury peers (LVMH at 25x). Limited margin of safety. Current price implies 15% long-term growth (optimistic given maturing category).

2. **Regulatory Risk**: Government has repeatedly targeted "luxury pricing" and "excessive consumerism". In 2021, regulators forced Moutai to取消 (cancel) a price increase. Future intervention could impact pricing power.

3. **Competitive Intensification**: Wuliangye and other premium baijiu producers are investing heavily in brand and marketing, narrowing the gap. Moutai's market share in ultra-premium segment has declined from 65% to 58% over 5 years.

## Financial Health Score

**Overall**: Excellent (A)

**Breakdown**:
- Profitability: A+ (58% net margin, 31% ROE)
- Cash Flow Quality: A (OCF/NI = 1.05, FCF positive)
- Balance Sheet Strength: A+ (zero debt, net cash position)
- Growth Sustainability: B+ (15.8% CAGR but decelerating from 20%+ historical)

## Valuation Assessment

**Relative Valuation**: Fairly Valued to Slightly Overvalued
- Trading at 70th percentile of 5-year historical P/E range (22-38x)
- Premium to global luxury peers (LVMH, Kering trade at 22-28x)
- In-line with growth profile (15-18% growth vs. peers 10-15%)

**Absolute Valuation** (Scenario Analysis):

| Scenario | Assumptions | Implied Value (¥/share) | Upside/Downside |
|----------|-------------|------------------------|-----------------|
| Bull | 18% growth to 2030, 3% terminal | ¥2,800 | +35% |
| Base | 15% growth to 2030, 3% terminal | ¥2,050 | 0% (current) |
| Bear | 10% growth to 2030, 2% terminal | ¥1,400 | -32% |

**Current Price**: ¥2,050/share
**Probability-weighted**: Bull (30%), Base (50%), Bear (20%)
**Expected Value**: ¥2,010 (-2%)

**Margin of Safety**: Minimal (<5%)

**Reverse DCF**: Current price implies 15.2% long-term growth
- This is achievable but optimistic given category maturation
- Historical growth (20%+ is unlikely to persist)

**Recommendation**: Wait for 10-15% pullback to ¥1,750-1,850 for margin of safety.

## Moat Assessment

**Overall Rating**: 5/5 (Very Strong)

**Components**:
- **Pricing Power**: 5/5 - Multiple successful price increases, demand inelastic
- **Switching Costs**: 4/5 - High brand loyalty, but customers can switch to alternatives
- **Network Effects**: 3/5 - Limited (not a platform business)
- **Cost Advantages**: 5/5 - Proprietary production process, geographic advantage
- **Intangible Assets**: 5/5 - 800-year heritage, "National Moutai" designation

**Evidence**:
- Gross margin of 91% (highest in global consumer staples)
- Market share in ultra-premium baijiu: 58% (down from 65% but still dominant)
- Brand recognition: 99% among urban Chinese consumers
- Price increases: 3 consecutive years (2021-2023) with strong demand

**Moat Durability**: Very High (10+ years)
- Brand moat is reinforced by heritage and cultural significance
- Geographic constraint (Maotai town) cannot be replicated
- Production process requires 5-year fermentation cycle (creates scarcity)

## Monitoring Checklist

**Thesis Strengthening Conditions**:
- [ ] Price pulls back 10-15% to ¥1,750-1,850 (better entry point)
- [ ] i茅台APP reaches 10%+ of sales with margin uplift (capture more value)
- [ ] Production capacity expansion successful without quality compromise
- [ ] Government policy supportive of premium baijiu (no anti-luxury intervention)

**Thesis-Breaking Exit Triggers**:
- [ ] Price drops below ¥1,300 (-35%): Sell if regulatory action or demand collapse
- [ ] Net margin falls below 45% (from 58%): Indicates pricing power erosion
- [ ] Revenue growth < 10% for 2 consecutive years: Demand deterioration
- [ ] Major regulatory intervention (price caps, anti-extravagance laws): Exit immediately

## Key Risks

1. **Regulatory Intervention** (High Impact, Medium Probability)
 - Government could impose price caps or "anti-extravagance" measures
 - Trigger: Economic slowdown, government focus on inequality
 - Probability: 30%
 - Impact: -30% to earnings if price increases blocked

2. **Demand Slowdown** (High Impact, Medium Probability)
 - Maturing category, demographic headwinds (younger generation drinks less baijiu)
 - Trigger: Economic slowdown, cultural shift
 - Probability: 40%
 - Impact: -20% to volume growth

3. **Competitive Erosion** (Medium Impact, High Probability)
 - Wuliangye, Yanghe, and others closing the gap
 - Trigger: Increased marketing investment, product innovation
 - Probability: 60%
 - Impact: -5-10% to market share annually

4. **Execution Risk on DTC** (Low Impact, Low Probability)
 - i茅台APP could alienate distributors or fail to scale
 - Trigger: Poor adoption, technical issues
 - Probability: 20%
 - Impact: -3% to margin uplift

## Conclusion

Kweichow Moutai is an exceptional business with one of the strongest competitive moats globally. The company's brand power, pricing authority, and exceptional economics (91% gross margin) make it a high-quality compounder.

However, current valuation (P/E 32x) leaves minimal margin of safety. The stock is priced for perfection with limited upside from current levels. We recommend:

**For existing holders**: Continue holding. Moutai's quality justifies a premium valuation, and the company is likely to compound at 12-15% annually (growth + margin improvement).

**For new investors**: Wait. A 10-15% pullback to ¥1,750-1,850 would provide a more attractive entry point with 15-20% upside to fair value.

**Final Score**: 8.2 / 10.0 (Quality) - Hold / Wait for better entry point

---

**Report Generated**: December 26, 2025
**Research Phases Completed**: 8/8
**Sources Analyzed**: 127 (35 A-grade, 68 B-grade, 24 C-grade)
**Confidence Level**: High (supported by extensive primary sources)

**Disclaimer**: This research is for educational and informational purposes only and does not constitute investment advice. All investments involve risk, including the loss of principal. Past performance does not guarantee future results. Always conduct your own due diligence and consult with qualified financial advisors before making investment decisions.
```

---

## Summary

This examples file demonstrates:

1. **A-share (China) Research Planning**: How to create a detailed plan for Chinese A-share companies
2. **Indian (NSE/BSE) Research Planning**: How to create a detailed plan for Indian stocks using Screener.in and Sovrenn.com
3. **Indian Market Agent Patterns**: How agents use Screener.in and Sovrenn.com for Indian stock research
4. **Parallel Agent Deployment**: How to launch multiple agents simultaneously
5. **Phase Report Generation**: How to create structured phase sections within a single report
6. **Quality Assurance**: How to use citation-validator to ensure quality
7. **Final Synthesis**: How to create a comprehensive executive summary

For detailed phase-by-phase instructions, see [phases.md](phases.md).
For overall execution instructions, see [instructions.md](instructions.md).
For core skill definition, see [SKILL.md](SKILL.md).
