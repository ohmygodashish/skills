# Stock Research Executor - Phase-by-Phase Instructions

This document provides detailed instructions for each of the 8 phases of investment due diligence, including specific research objectives, agent deployment strategies, and output templates.

## Phase 1: Business Foundation

### Objective

Establish a factual understanding of what the company does, how it makes money, and its position in the industry value chain.

### Research Goals

1. Understand the core business model and product/service offerings
2. Identify revenue and profit sources by segment
3. Analyze customer base and use cases
4. Determine position in industry value chain
5. Track recent strategic changes (3-5 years)

### Multi-Agent Deployment Strategy

Deploy **4 agents in parallel**:

#### Agent 1A: Core Business and Products

**Objective**: Map the company's business model and product/service portfolio

**Key Questions**:
- What products/services does the company offer?
- What are the main business segments?
- How does each segment make money?
- What's the revenue mix by segment?

**Data to Find**:
- Product/service descriptions
- Business segment breakdown (with revenue percentages)
- Main revenue drivers for each segment
- Product/service lifecycle (growth, mature, declining)

**Sources to Prioritize**:
- Annual reports (business overview section)
- Company website and investor presentations
- Segment reporting in financial statements

**Output Structure**:
```markdown
## Core Business and Products

**Business Model**: [1-2 sentence description]

**Product/Service Portfolio**:
| Segment | Description | Revenue | % of Total | Growth Trend |
|---------|-------------|---------|------------|--------------|
| [Segment 1] | [description] | [amount] | [%] | [trend] |
| [Segment 2] | [description] | [amount] | [%] | [trend] |

**Key Insights**:
- [Insight 1]
- [Insight 2]
```

---

#### Agent 1B: Revenue and Profit Composition

**Objective**: Understand how the company generates revenue and profit

**Key Questions**:
- What are the main revenue streams?
- Which segments/products are most profitable?
- How has revenue mix changed over time?
- Are there any high-revenue but low-profit segments?

**Data to Find**:
- Revenue breakdown by segment/product/geography
- Gross margin by segment
- Operating profit by segment
- 3-5 year trend analysis

**Sources to Prioritize**:
- Annual reports (segment reporting)
- Financial statement notes
- Management commentary (earnings calls)

**Output Structure**:
```markdown
## Revenue and Profit Composition

**Revenue Mix** (Most Recent Year):
| Source | Revenue | % of Total | YoY Growth |
|--------|---------|------------|------------|
| [Source 1] | [amount] | [%] | [%] |
| [Source 2] | [amount] | [%] | [%] |

**Profit Contribution**:
| Segment | Gross Margin | Operating Margin | Profit % |
|---------|--------------|------------------|----------|
| [Segment 1] | [%] | [%] | [%] |
| [Segment 2] | [%] | [%] | [%] |

**Key Insights**:
- Most profitable segment: [name] with [margin]%
- [Any mismatches: high revenue but low profit, or vice versa]
```

---

#### Agent 1C: Customers and Value Chain Position

**Objective**: Identify who the company sells to and where it sits in the value chain

**Key Questions**:
- Who are the main customers (industries, demographics, geographies)?
- Is the customer base concentrated or diversified?
- What's the company's position in the value chain (upstream, midstream, downstream)?
- Does it have pricing power or is it a price taker?

**Data to Find**:
- Customer segments (B2B vs B2C, industries, geographies)
- Top customers (if disclosed)
- Distribution channels (direct, indirect, online, offline)
- Value chain position and bargaining power

**Sources to Prioritize**:
- Annual reports (customer and market sections)
- Industry reports
- Company investor presentations

**Output Structure**:
```markdown
## Customers and Value Chain Position

**Customer Segments**:
| Segment | Description | Revenue % | Growth |
|---------|-------------|-----------|--------|
| [Segment 1] | [description] | [%] | [trend] |
| [Segment 2] | [description] | [%] | [trend] |

**Customer Concentration**:
- Top 5/10 customers: [X]% of revenue (if disclosed)
- Concentration risk: [High/Medium/Low]

**Value Chain Position**:
- Position: [upstream/midstream/downstream/integrated]
- Bargaining power: [strong/moderate/weak]
- Reason: [explanation]

**Distribution Channels**:
- Direct: [%] - [description]
- Indirect/distributors: [%] - [description]
- Online/digital: [%] - [description]
```

---

#### Agent 1D: Recent Strategic Changes (3-5 Years)

**Objective**: Track significant strategic shifts, pivots, or transformations

**Key Questions**:
- What major strategic initiatives has the company undertaken?
- Have there been business model changes?
- Any M&A, divestitures, or restructurings?
- Technology investments or digital transformation?
- Market expansion or contraction?

**Data to Find**:
- Major acquisitions or divestitures
- New product launches or discontinuations
- Market entry/exit decisions
- Strategic partnerships or JVs
- Organizational restructuring

**Sources to Prioritize**:
- Annual reports (MD&A section, past 3-5 years)
- Press releases and announcements
- News archives for major events

**Output Structure**:
```markdown
## Recent Strategic Changes (Past 3-5 Years)

**Timeline of Major Events**:
| Year | Event | Impact | Status |
|------|-------|--------|--------|
| [Year] | [event] | [impact] | [ongoing/completed/failed] |
| [Year] | [event] | [impact] | [status] |

**Strategic Initiatives**:
1. **[Initiative 1]**: [description]
   - Launched: [year]
   - Investment: [amount if known]
   - Results to date: [description]

2. **[Initiative 2]**: [description]
   - ...

**Overall Assessment**:
- Strategy is [consistent/evolving/unclear]
- Success rate: [high/mixed/low]
```

---

### Phase 1 Synthesis and Report Generation

After all 4 agents complete:

1. **Compile findings** into coherent narrative
2. **Create summary table** of key business facts
3. **Identify any contradictions** between sources
4. **Generate Phase 1 section** within the single consolidated report

**Report Template**:
```markdown
## Phase 1: Business Foundation

### Executive Summary
[2-3 paragraph overview]

### 1.1 Core Business and Products
[Content from Agent 1A]

### 1.2 Revenue and Profit Composition
[Content from Agent 1B]

### 1.3 Customers and Value Chain Position
[Content from Agent 1C]

### 1.4 Recent Strategic Changes
[Content from Agent 1D]

### Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

### Red Flags Identified
- [Any concerning findings]
- [Areas requiring further investigation]

### Sources
[List all sources with A-E ratings]
```

---

## Phase 2: Industry Analysis

### Objective

Assess industry dynamics, competitive landscape, and where the industry sits in the business cycle.

### Research Goals

1. Determine industry cycle stage (recovery/expansion/recession/contraction)
2. Analyze supply-demand dynamics
3. Assess competitive landscape and concentration
4. Identify key industry drivers and trends
5. Evaluate policy and external factors

### Multi-Agent Deployment Strategy

Deploy **4 agents in parallel**:

#### Agent 2A: Industry Cycle Stage

**Objective**: Determine where the industry is in the business cycle

**Key Questions**:
- Is the industry in recovery, expansion, recession, or contraction?
- What's the evidence (capacity utilization, inventory levels, pricing)?
- How long has the current cycle phase lasted?
- What typically triggers cycle inflection points?

**Data to Find**:
- Industry production/output trends
- Capacity utilization rates
- Inventory levels (raw materials, work-in-progress, finished goods)
- Pricing trends (inflation/deflation)
- CapEx trends (expansion or contraction)

**Sources to Prioritize**:
- Industry association reports
- Government statistics (bureau of statistics, industry ministry)
- Research reports (McKinsey, BCG, Bain - verify with primary sources)
- Company management commentary

**Output Structure**:
```markdown
## Industry Cycle Stage Assessment

**Current Stage**: [Recovery/Expansion/Recession/Contraction]

**Evidence**:
| Indicator | Current Level | Trend | Implication |
|-----------|--------------|-------|-------------|
| Capacity Utilization | [%] | [rising/stable/falling] | [implication] |
| Inventory Levels | [high/normal/low] | [trend] | [implication] |
| Pricing | [inflation/stable/deflation] | [trend] | [implication] |
| CapEx | [expansion/maintenance] | [trend] | [implication] |

**Cycle Duration**:
- Current phase started: [year/quarter]
- Typical cycle length: [X] years
- Time until next inflection: [estimate if possible]

**Leading Indicators** (1-2 year forward-looking):
1. [Indicator 1]: [what it signals]
2. [Indicator 2]: [what it signals]

**Lagging Indicators** (confirms what already happened):
1. [Indicator 1]: [what it confirms]
2. [Indicator 2]: [what it confirms]
```

---

#### Agent 2B: Supply-Demand Dynamics

**Objective**: Analyze supply and demand fundamentals

**Key Questions**:
- What's driving demand? (secular trends, cyclical factors, policy)
- What's the supply situation? (capacity, new entrants, constraints)
- Is the market in balance, oversupply, or shortage?
- What's the medium-term outlook (1-3 years)?

**Data to Find**:
- Demand drivers and trends
- Supply capacity and utilization
- Import/export dynamics
- New capacity announcements
- Order backlogs or delivery times

**Sources to Prioritize**:
- Industry reports
- Company disclosures (if industry participant)
- Trade publications
- Government trade data

**Output Structure**:
```markdown
## Supply-Demand Analysis

**Demand Drivers**:
| Driver | Type | Strength | Trend |
|--------|------|----------|-------|
| [Driver 1] | [secular/cyclical/policy] | [strong/moderate/weak] | [growing/stable/declining] |
| [Driver 2] | [type] | [strength] | [trend] |

**Supply Situation**:
- Current capacity: [amount]
- Capacity utilization: [%]
- New capacity coming online: [amount] by [year]
- Supply constraints: [any limitations]

**Market Balance**:
- Current: [surplus/balance/shortage]
- Gap: [amount if quantified]
- 12-24 month outlook: [improving/deteriorating/stable]

**Key Risks to Supply-Demand Balance**:
- Risk 1: [description]
- Risk 2: [description]
```

---

#### Agent 2C: Competitive Landscape and Concentration

**Objective**: Map the competitive environment

**Key Questions**:
- Who are the main competitors?
- What's the market structure (fragmented, oligopoly, monopoly)?
- What are the market shares (CR5, HHI if available)?
- How intense is competition? (price wars, innovation, differentiation)
- What are the barriers to entry/exit?

**Data to Find**:
- Major competitors and market shares
- Industry concentration (CR5, CR10)
- Competitive dynamics (price competition, innovation, consolidation)
- Recent M&A activity
- Barriers to entry (regulatory, capital, technology, brand)

**Sources to Prioritize**:
- Industry reports
- Company annual reports (competitive landscape sections)
- Antitrust/regulatory filings
- News archives for M&A

**Output Structure**:
```markdown
## Competitive Landscape

**Market Structure**: [Fragmented/Oligopoly/Dominant player/Monopoly]

**Major Competitors**:
| Rank | Company | Market Share | Key Strengths |
|------|---------|--------------|---------------|
| 1 | [Company] | [%] | [strengths] |
| 2 | [Company] | [%] | [strengths] |
| 3 | [Company] | [%] | [strengths] |

**Industry Concentration**:
- CR5 (top 5 share): [X]%
- Concentration level: [high/medium/low]
- Trend: [consolidating/stable/fragmenting]

**Competitive Dynamics**:
- Primary basis of competition: [price/quality/innovation/service/brand]
- Intensity: [fierce/moderate/limited]
- Recent M&A: [description of consolidation trends]

**Barriers to Entry**:
| Barrier Type | Level | Description |
|--------------|-------|-------------|
| Capital | [high/medium/low] | [description] |
| Regulatory | [high/medium/low] | [description] |
| Technology | [high/medium/low] | [description] |
| Brand/Network | [high/medium/low] | [description] |

**Barriers to Exit**:
- Sunk costs: [high/medium/low]
- Regulatory constraints: [yes/no]
- Union/employment issues: [yes/no]
```

---

#### Agent 2D: Policy and External Variables

**Objective**: Identify key external factors affecting the industry

**Key Questions**:
- What government policies impact this industry? (subsidies, taxes, regulations)
- What macroeconomic factors matter? (interest rates, exchange rates, inflation)
- What technological disruptions are looming?
- What social or demographic trends are relevant?
- What geopolitical risks exist?

**Data to Find**:
- Relevant regulations and policy changes
- Government support or restrictions
- Macro sensitivity (interest rate, currency, commodity exposure)
- Technology disruptions
- ESG and social trends

**Sources to Prioritize**:
- Government websites and policy documents
- Regulatory filings
- Industry association policy comments
- News for recent policy changes

**Output Structure**:
```markdown
## Policy and External Variables

**Government Policies**:
| Policy | Impact | Direction | Timeline |
|--------|--------|----------|----------|
| [Policy 1] | [positive/negative/neutral] | [tightening/loosing/stable] | [immediate/gradual] |
| [Policy 2] | [impact] | [direction] | [timeline] |

**Macroeconomic Sensitivities**:
| Factor | Sensitivity | Current Trend | Impact |
|--------|-------------|---------------|--------|
| Interest Rates | [high/medium/low] | [rising/stable/falling] | [impact description] |
| Exchange Rates | [high/medium/low] | [trend] | [impact] |
| Inflation | [high/medium/low] | [trend] | [impact] |
| [Commodity] | [high/medium/low] | [trend] | [impact] |

**Technological Disruptions**:
- Disruption 1: [description] - [timing] - [impact level]
- Disruption 2: [description] - [timing] - [impact level]

**ESG/Social Trends**:
- Trend 1: [description] - [impact]
- Trend 2: [description] - [impact]

**Geopolitical Risks**:
- Risk 1: [description] - [probability] - [potential impact]
- Risk 2: [description] - [probability] - [potential impact]

**Structural vs. Cyclical Factors**:
- Structural (long-term): [factors]
- Cyclical (short-term): [factors]
```

---

### Phase 2 Synthesis and Report Generation

After all 4 agents complete:

1. **Compile findings** into coherent narrative
2. **Create summary table** of key industry facts
3. **Identify any contradictions** between sources
4. **Generate Phase 2 section** within the single consolidated report

**Report Template**:
```markdown
## Phase 2: Industry Analysis

### Executive Summary
[2-3 paragraph overview of industry dynamics, competitive landscape, and investment implications]

### 2.1 Industry Cycle Stage

**Current Stage**: [Recovery/Expansion/Recession/Contraction]

**Evidence**:
| Indicator | Current Level | Trend | Implication |
|-----------|--------------|-------|-------------|
| Capacity Utilization | [%] | [rising/stable/falling] | [implication] |
| Inventory Levels | [high/normal/low] | [trend] | [implication] |
| Pricing | [inflation/stable/deflation] | [trend] | [implication] |
| CapEx | [expansion/maintenance] | [trend] | [implication] |

**Cycle Duration**:
- Current phase started: [year/quarter]
- Typical cycle length: [X] years
- Time until next inflection: [estimate if possible]

**Leading Indicators**: [1-2 indicators and what they signal]
**Lagging Indicators**: [1-2 indicators and what they confirm]

### 2.2 Supply-Demand Dynamics

**Demand Drivers**:
| Driver | Type | Strength | Trend |
|--------|------|----------|-------|
| [Driver 1] | [secular/cyclical/policy] | [strong/moderate/weak] | [growing/stable/declining] |
| [Driver 2] | [type] | [strength] | [trend] |

**Supply Situation**:
- Current capacity: [amount]
- Capacity utilization: [%]
- New capacity coming online: [amount] by [year]
- Supply constraints: [any limitations]

**Market Balance**: [surplus/balance/shortage] ([12-24 month outlook])

### 2.3 Competitive Landscape

**Market Structure**: [Fragmented/Oligopoly/Dominant player/Monopoly]

**Major Competitors**:
| Rank | Company | Market Share | Key Strengths |
|------|---------|--------------|---------------|
| 1 | [Company] | [%] | [strengths] |
| 2 | [Company] | [%] | [strengths] |
| 3 | [Company] | [%] | [strengths] |

**Industry Concentration**: CR5 = [X]%, [high/medium/low], [consolidating/stable/fragmenting]

**Barriers to Entry**:
| Barrier Type | Level | Description |
|--------------|-------|-------------|
| Capital | [high/medium/low] | [description] |
| Regulatory | [high/medium/low] | [description] |
| Technology | [high/medium/low] | [description] |
| Brand/Network | [high/medium/low] | [description] |

### 2.4 Policy and External Variables

**Government Policies**:
| Policy | Impact | Direction | Timeline |
|--------|--------|----------|----------|
| [Policy 1] | [positive/negative/neutral] | [tightening/loosing/stable] | [immediate/gradual] |

**Macroeconomic Sensitivities**:
| Factor | Sensitivity | Current Trend | Impact |
|--------|-------------|---------------|--------|
| Interest Rates | [high/medium/low] | [rising/stable/falling] | [impact] |
| Exchange Rates | [high/medium/low] | [trend] | [impact] |
| Inflation | [high/medium/low] | [trend] | [impact] |

**Technological Disruptions**: [List with timing and impact level]
**Geopolitical Risks**: [List with probability and potential impact]

### Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

### Red Flags Identified
- [Any concerning findings]
- [Areas requiring further investigation]

### Sources
[List all sources with A-E ratings]
```

---

## Phase 3: Business Breakdown

### Objective

Understand the economics of how the company makes money at a granular level.

### Multi-Agent Deployment Strategy

Deploy **4 agents in parallel**:

#### Agent 3A: Business Segment Deep Dive

**Objective**: Detailed financial analysis of each business segment

**Key Questions**:
- What's the revenue and profit contribution of each segment?
- Which segments are growing vs. declining?
- Which segments have the best margins?
- Are there cross-subsidies (profitable segments funding unprofitable ones)?

**Data to Find**:
- Segment revenue, margins, growth (5-year history)
- Segment capital allocation (capex by segment)
- Intersegment transactions and transfer pricing
- Segment ROIC

**Output Structure**:
```markdown
## Business Segment Analysis

**Segment Financials** (Most Recent Year):
| Segment | Revenue | Growth | Gross Margin | Op Margin | ROIC |
|---------|---------|--------|--------------|-----------|------|
| [Seg 1] | [amount] | [%] | [%] | [%] | [%] |
| [Seg 2] | [amount] | [%] | [%] | [%] | [%] |

**5-Year Growth Trends**:
| Segment | CAGR | Trend | Driver |
|---------|------|-------|--------|
| [Seg 1] | [%] | [accelerating/stable/decelerating] | [driver] |
| [Seg 2] | [%] | [trend] | [driver] |

**Key Insights**:
- Core profit driver: [segment]
- Hidden gems: [segments with high potential but overlooked]
- Drag on performance: [segments losing money or growing slowly]
```

---

#### Agent 3B: Profit Engine and Economics

**Objective**: Understand the unit economics and profit drivers

**Key Questions**:
- How does the company make money on a per-unit basis?
- What are the key cost components?
- Are there economies of scale?
- What's the incremental margin on new business?

**Data to Find**:
- Unit economics (if disclosed)
- Cost structure (fixed vs. variable)
- Operating leverage
- Gross margin trends and drivers

**Output Structure**:
```markdown
## Profit Engine Analysis

**One-Sentence Business Essence**:
[Company makes money by: [what it sells] → [to whom] → [why they can charge a premium / have cost advantage]]

**Cost Structure**:
| Cost Category | % of Revenue | Type | Trend |
|---------------|--------------|------|-------|
| [COGS component 1] | [%] | [fixed/variable] | [trend] |
| [COGS component 2] | [%] | [fixed/variable] | [trend] |
| SG&A | [%] | [mostly fixed/mixed] | [trend] |
| R&D | [%] | [mostly fixed/discretionary] | [trend] |

**Economies of Scale**:
- Scale advantages: [yes/no/partial]
- Evidence: [what shows scale benefits]
- Incremental margin on new revenue: [X]%

**Pricing Power**:
- Ability to raise prices: [strong/moderate/weak/none]
- Evidence: [historical price increases, margin stability]
- Customer price sensitivity: [high/medium/low]
```

---

#### Agent 3C: Customer and Pricing Analysis

**Objective**: Understand customer economics and pricing power

**Key Questions**:
- Who are the core customers and how valuable are they?
- How sticky are customers? (churn, switching costs)
- Does the company have pricing power?
- How are prices determined? (market-driven, cost-plus, value-based)

**Data to Find**:
- Customer retention/churn rates
- Customer acquisition vs. retention cost
- Historical pricing changes
- Customer concentration (top 5/10 customers)
- Contract structure (recurring vs. one-off)

**Output Structure**:
```markdown
## Customer and Pricing Analysis

**Customer Base**:
- Total customers: [number if disclosed]
- Customer segments: [B2B/B2C mix]
- Customer concentration: Top 5 = [X]%, Top 10 = [X]%
- Churn rate: [X]% (if disclosed)

**Customer Stickiness**:
| Factor | Level | Evidence |
|--------|-------|----------|
| Switching Costs | [high/medium/low] | [evidence] |
| Contract Length | [long/medium/short] | [evidence] |
| Renewal Rate | [%] | [source] |
| Customer Satisfaction | [high/medium/low] | [evidence] |

**Pricing Power Assessment**:
- Historical price changes: [list significant price increases/decreases]
- Price vs. competitors: [premium/parity/discount]
- Margin stability: [stable/volatile - indicates pricing power]
- Customer pushback: [high/medium/low resistance to price hikes]

**Pricing Strategy**:
- Approach: [market-driven/cost-plus/value-based/dynamic]
- Flexibility: [high/medium/low]
- Price competition intensity: [fierce/moderate/limited]
```

---

#### Agent 3D: Subsidiaries and Non-Core Items

**Objective**: Analyze non-core businesses, investments, and one-time items

**Key Questions**:
- What subsidiaries or investments does the company have?
- What's the contribution from non-operating items? (investment income, asset sales, government subsidies)
- Are there hidden assets or liabilities?
- What non-core activities could be divested?

**Data to Find**:
- List of major subsidiaries and associates
- Investment income and gains
- Asset sales and one-time gains
- Government subsidies and grants
- Non-operating items in P&L

**Output Structure**:
```markdown
## Subsidiaries and Non-Core Items

**Major Subsidiaries/Associates**:
| Entity | Business | Ownership | Contribution | Strategy |
|--------|----------|-----------|--------------|----------|
| [Sub 1] | [description] | [%] | [profit/loss] | [core/strategic/non-core] |
| [Sub 2] | [description] | [%] | [profit/loss] | [core/strategic/non-core] |

**Non-Operating Income** (Recent Year):
| Source | Amount | % of Net Income | Sustainability |
|--------|--------|-----------------|----------------|
| Investment Income | [amount] | [%] | [recurring/one-time] |
| Asset Sales | [amount] | [%] | [recurring/one-time] |
| Government Subsidies | [amount] | [%] | [recurring/declining/one-time] |
| [Other] | [amount] | [%] | [sustainability] |

**Hidden Assets**:
- Asset 1: [description] - [estimated value if available]
- Asset 2: [description] - [estimated value if available]

**Hidden Liabilities/Risks**:
- Risk 1: [description]
- Risk 2: [description]

**Core vs. Non-Core Assessment**:
- True core business profits: [amount] (excluding non-core)
- Non-core contribution to net income: [X]%
- Assessment: [core business strong/weak/non-core is critical/distraction]
```

---

### Phase 3 Synthesis and Report Generation

After all 4 agents complete:

1. **Compile findings** into coherent narrative
2. **Create summary table** of key business economics
3. **Identify any contradictions** between sources
4. **Generate Phase 3 section** within the single consolidated report

**Report Template**:
```markdown
## Phase 3: Business Breakdown

### Executive Summary
[2-3 paragraph overview of how the company makes money, profit drivers, and business economics]

### 3.1 One-Sentence Business Essence
[Company] makes money by [what it sells] → [to whom] → [why they can charge a premium / have cost advantage]

### 3.2 Business Segment Analysis

**Segment Financials** (Most Recent Year):
| Segment | Revenue | Growth | Gross Margin | Op Margin | ROIC |
|---------|---------|--------|--------------|-----------|------|
| [Seg 1] | [amount] | [%] | [%] | [%] | [%] |
| [Seg 2] | [amount] | [%] | [%] | [%] | [%] |

**5-Year Growth Trends**:
| Segment | CAGR | Trend | Driver |
|---------|------|-------|--------|
| [Seg 1] | [%] | [accelerating/stable/decelerating] | [driver] |
| [Seg 2] | [%] | [trend] | [driver] |

**Key Insights**:
- Core profit driver: [segment]
- Hidden gems: [segments with high potential but overlooked]
- Drag on performance: [segments losing money or growing slowly]

### 3.3 Profit Engine and Economics

**Cost Structure**:
| Cost Category | % of Revenue | Type | Trend |
|---------------|--------------|------|-------|
| [COGS component 1] | [%] | [fixed/variable] | [trend] |
| SG&A | [%] | [mostly fixed/mixed] | [trend] |
| R&D | [%] | [mostly fixed/discretionary] | [trend] |

**Economies of Scale**: [yes/no/partial] ([evidence])
**Pricing Power**: [strong/moderate/weak/none] ([historical evidence])
**Incremental Margin on New Revenue**: [X]%

### 3.4 Customer and Pricing Analysis

**Customer Stickiness**:
| Factor | Level | Evidence |
|--------|-------|----------|
| Switching Costs | [high/medium/low] | [evidence] |
| Contract Length | [long/medium/short] | [evidence] |
| Renewal Rate | [%] | [source] |
| Customer Satisfaction | [high/medium/low] | [evidence] |

**Pricing Strategy**: [market-driven/cost-plus/value-based/dynamic]
**Price vs. Competitors**: [premium/parity/discount]

### 3.5 Subsidiaries and Non-Core Items

**Major Subsidiaries/Associates**:
| Entity | Business | Ownership | Contribution | Strategy |
|--------|----------|-----------|--------------|----------|
| [Sub 1] | [description] | [%] | [profit/loss] | [core/strategic/non-core] |

**Non-Operating Income** (Recent Year):
| Source | Amount | % of Net Income | Sustainability |
|--------|--------|-----------------|----------------|
| Investment Income | [amount] | [%] | [recurring/one-time] |
| Asset Sales | [amount] | [%] | [recurring/one-time] |
| Government Subsidies | [amount] | [%] | [recurring/declining/one-time] |

**Core vs. Non-Core Assessment**: True core business profits: [amount] (excluding non-core). Non-core contribution: [X]% of net income.

### Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

### Red Flags Identified
- [Any concerning findings]
- [Areas requiring further investigation]

### Sources
[List all sources with A-E ratings]
```

---

## Phase 4: Financial Quality

### Objective

Assess the quality of earnings, financial health, and sustainability of the business model.

### Multi-Agent Deployment Strategy

Deploy **4 agents in parallel**:

#### Agent 4A: Key Metrics and Trend Analysis

**Objective**: Calculate and analyze key financial metrics over 5-10 years

**Key Questions**:
- What are the growth rates (revenue, net income, CAGR)?
- What's the profitability (margins, ROE, ROIC)?
- How have metrics trended over time?
- Are there any inflection points or concerning trends?

**Data to Find**:
- 5-10 year history of: revenue, net income, operating income, gross margin, net margin, ROE, ROIC
- Calculate CAGR (3-year, 5-year, 10-year if available)
- Volatility of metrics

**Output Structure**:
```markdown
## Key Financial Metrics (5-10 Year History)

**Growth Metrics**:
| Metric | 3Y CAGR | 5Y CAGR | 10Y CAGR | Trend |
|--------|---------|---------|----------|-------|
| Revenue | [%] | [%] | [%] | [accelerating/stable/decelerating] |
| Net Income | [%] | [%] | [%] | [trend] |
| Operating Income | [%] | [%] | [%] | [trend] |

**Profitability Metrics**:
| Metric | Latest | 5Y Avg | 10Y Avg | Trend |
|--------|--------|--------|---------|-------|
| Gross Margin | [%] | [%] | [%] | [improving/stable/declining] |
| Operating Margin | [%] | [%] | [%] | [trend] |
| Net Margin | [%] | [%] | [%] | [trend] |
| ROE | [%] | [%] | [%] | [trend] |
| ROIC | [%] | [%] | [%] | [trend] |

**DuPont Analysis (ROE Decomposition)**:
- ROE = Net Margin × Asset Turnover × Financial Leverage
- Net Margin: [%] - [trend]
- Asset Turnover: [X] - [trend]
- Financial Leverage: [X] - [trend]
- Driver of ROE changes: [which component]

**Key Inflection Points**:
- [Year]: [event/trend change] - [impact]
```

---

#### Agent 4B: Cash Flow Quality

**Objective**: Assess earnings quality through cash flow analysis

**Key Questions**:
- Do earnings convert to cash? (OCF/NI, FCF/NI)
- Are there red flags in cash flow? (consistent shortfall, working capital drag)
- What's the free cash flow generation?
- How is cash being used? (capex, dividends, buybacks, debt repayment)

**Data to Find**:
- Operating cash flow (OCF), free cash flow (FCF) for 5-10 years
- OCF/Net Income ratio
- FCF/Net Income ratio
- Cash flow from operations vs. net income reconciliation
- Use of cash (capex, dividends, buybacks, M&A, debt)

**Output Structure**:
```markdown
## Cash Flow Quality Analysis

**Cash Flow vs. Earnings**:
| Year | Net Income | OCF | OCF/NI | FCF | FCF/NI |
|------|-----------|-----|--------|-----|--------|
| [Year] | [amount] | [amount] | [ratio] | [amount] | [ratio] |
| [Year] | [amount] | [amount] | [ratio] | [amount] | [ratio] |

**Assessment**:
- Average OCF/NI (5-year): [ratio]
  - [Excellent if > 1.0, Good if 0.8-1.0, Concerning if < 0.8, Red flag if < 0.5]
- Average FCF/NI (5-year): [ratio]
- Trend: [improving/stable/deteriorating]

**Red Flags**:
- [ ] Persistent OCF < Net Income (low quality earnings)
- [ ] Declining OCF/NI ratio (deteriorating quality)
- [ ] Large working capital swings (volatile cash conversion)
- [ ] High capex eating into cash flow (low FCF)

**Free Cash Flow Uses** (5-Year Total):
| Use | Amount | % of FCF |
|-----|--------|----------|
| Capex (maintenance) | [amount] | [%] |
| Capex (growth) | [amount] | [%] |
| Dividends | [amount] | [%] |
| Buybacks | [amount] | [%] |
| M&A | [amount] | [%] |
| Debt Repayment | [amount] | [%] |

**FCF Generation Capacity**:
- [Strong/Adequate/Weak]
- Sustainable dividend/buyback capacity: [yes/no/partially]
```

---

#### Agent 4C: Anomaly Screening (Red Flags)

**Objective**: Identify financial irregularities or accounting concerns

**Key Questions**:
- Are there any unusual items in the financials?
- Are receivables or inventory growing faster than sales?
- Are there frequent one-time items or accounting changes?
- Any related party transactions or off-balance sheet items?
- Any audit concerns or going doubt issues?

**Data to Find**:
- Receivables growth vs. revenue growth
- Inventory growth vs. revenue growth
- Non-recurring items (frequency, magnitude)
- Accounting changes or restatements
- Related party transactions
- Audit opinion (unqualified, qualified, going concern)
- Off-balance sheet items

**Output Structure**:
```markdown
## Financial Anomaly Screening

**Working Capital Trends**:
| Item | Growth (3Y) | Revenue Growth (3Y) | Delta | Assessment |
|------|------------|---------------------|-------|------------|
| Receivables | [%] | [%] | [%] | [OK/concerning] |
| Inventory | [%] | [%] | [%] | [OK/concerning] |
| Payables | [%] | [%] | [%] | [OK/concerning] |

**Red Flag Indicators**:
| Indicator | Status | Evidence | Concern Level |
|-----------|--------|----------|---------------|
| Receivables growing faster than sales | [yes/no] | [data] | [high/medium/low/n/a] |
| Inventory buildup | [yes/no] | [data] | [level] |
| Rising days sales outstanding (DSO) | [yes/no] | [data] | [level] |
| Frequent one-time items | [yes/no] | [list] | [level] |
| Accounting changes | [yes/no] | [description] | [level] |
| Related party transactions | [yes/no] | [description] | [level] |
| Audit concerns | [yes/no] | [description] | [level] |

**Accruals Analysis** (Balance Sheet Accruals):
- Accruals = (ΔCurrent Assets - ΔCash) - (ΔCurrent Liabilities - ΔShort-term Debt)
- High accruals may indicate low earnings quality

**Non-Recurring Items** (Past 3-5 Years):
| Year | Item | Amount | Impact on NI | Type |
|------|------|--------|--------------|------|
| [Year] | [item] | [amount] | [%] | [gain/charge/restructuring] |

**Overall Assessment**:
- Financial quality: [Excellent/Good/Fair/Poor]
- Red flags: [number] significant, [number] minor
- Key concern: [biggest red flag if any]
```

---

#### Agent 4D: Peer Comparison

**Objective**: Benchmark financial metrics against competitors

**Key Questions**:
- How does the company compare to peers on key metrics?
- Is it above or below average?
- Are there any significant outliers?
- What explains the differences?

**Data to Find**:
- Peer list (3-5 main competitors)
- Key metrics comparison: growth, margins, ROE, valuation multiples
- Differences in business models that explain metric differences

**Output Structure**:
```markdown
## Peer Comparison

**Peer Group**:
[Company] vs. [Peer 1], [Peer 2], [Peer 3]

**Metric Comparison** (Most Recent Year):
| Metric | [Company] | Peer Avg | Best Peer | Worst Peer | Rank |
|--------|-----------|----------|-----------|------------|------|
| Revenue Growth | [%] | [%] | [%] | [%] | [X/5] |
| Gross Margin | [%] | [%] | [%] | [%] | [X/5] |
| Operating Margin | [%] | [%] | [%] | [%] | [X/5] |
| Net Margin | [%] | [%] | [%] | [%] | [X/5] |
| ROE | [%] | [%] | [%] | [%] | [X/5] |
| ROIC | [%] | [%] | [%] | [%] | [X/5] |

**Outliers** (Significant deviations):
- [Metric]: [Company] is [better/worse] than peers by [X]pp
  - Explanation: [business model, strategy, or other factor]
- [Metric]: [Company] is [better/worse] than peers by [X]pp
  - Explanation: [reason]

**Competitive Positioning**:
- Overall financial quality: [above/at/below] peer average
- Strengths vs. peers: [list]
- Weaknesses vs. peers: [list]
```

---

### Phase 4 Synthesis and Report Generation

After all 4 agents complete:

1. **Compile findings** into coherent narrative
2. **Create summary table** of key financial metrics
3. **Identify any contradictions** between sources
4. **Generate Phase 4 section** within the single consolidated report

**Report Template**:
```markdown
## Phase 4: Financial Quality

### Executive Summary
[2-3 paragraph overview of financial health, earnings quality, and key concerns]

### 4.1 Key Financial Metrics (5-10 Year History)

**Growth Metrics**:
| Metric | 3Y CAGR | 5Y CAGR | 10Y CAGR | Trend |
|--------|---------|---------|----------|-------|
| Revenue | [%] | [%] | [%] | [accelerating/stable/decelerating] |
| Net Income | [%] | [%] | [%] | [trend] |
| Operating Income | [%] | [%] | [%] | [trend] |

**Profitability Metrics**:
| Metric | Latest | 5Y Avg | 10Y Avg | Trend |
|--------|--------|--------|---------|-------|
| Gross Margin | [%] | [%] | [%] | [improving/stable/declining] |
| Operating Margin | [%] | [%] | [%] | [trend] |
| Net Margin | [%] | [%] | [%] | [trend] |
| ROE | [%] | [%] | [%] | [trend] |
| ROIC | [%] | [%] | [%] | [trend] |

**DuPont Analysis (ROE Decomposition)**:
- ROE = Net Margin × Asset Turnover × Financial Leverage
- Driver of ROE changes: [which component]

### 4.2 Cash Flow Quality

**Cash Flow vs. Earnings**:
| Year | Net Income | OCF | OCF/NI | FCF | FCF/NI |
|------|-----------|-----|--------|-----|--------|
| [Year-5] | [amount] | [amount] | [ratio] | [amount] | [ratio] |
| ... | | | | | |
| [Latest] | [amount] | [amount] | [ratio] | [amount] | [ratio] |

**Assessment**:
- Average OCF/NI (5-year): [ratio] ([Excellent/Good/Concerning/Red flag])
- Average FCF/NI (5-year): [ratio]
- Trend: [improving/stable/deteriorating]

**Red Flags**:
- [ ] Persistent OCF < Net Income
- [ ] Declining OCF/NI ratio
- [ ] Large working capital swings
- [ ] High capex eating into cash flow

**Free Cash Flow Uses** (5-Year Total):
| Use | Amount | % of FCF |
|-----|--------|----------|
| Capex (maintenance) | [amount] | [%] |
| Capex (growth) | [amount] | [%] |
| Dividends | [amount] | [%] |
| Buybacks | [amount] | [%] |
| M&A | [amount] | [%] |

### 4.3 Anomaly Screening

**Working Capital Trends**:
| Item | Growth (3Y) | Revenue Growth (3Y) | Delta | Assessment |
|------|------------|---------------------|-------|------------|
| Receivables | [%] | [%] | [%] | [OK/concerning] |
| Inventory | [%] | [%] | [%] | [OK/concerning] |
| Payables | [%] | [%] | [%] | [OK/concerning] |

**Red Flag Indicators**:
| Indicator | Status | Evidence | Concern Level |
|-----------|--------|----------|---------------|
| Receivables growing faster than sales | [yes/no] | [data] | [high/medium/low/n/a] |
| Inventory buildup | [yes/no] | [data] | [level] |
| Frequent one-time items | [yes/no] | [list] | [level] |
| Related party transactions | [yes/no] | [description] | [level] |
| Audit concerns | [yes/no] | [description] | [level] |

**Non-Recurring Items** (Past 3-5 Years):
| Year | Item | Amount | Impact on NI | Type |
|------|------|--------|--------------|------|
| [Year] | [item] | [amount] | [%] | [gain/charge/restructuring] |

### 4.4 Peer Comparison

**Peer Group**: [Company] vs. [Peer 1], [Peer 2], [Peer 3]

**Metric Comparison** (Most Recent Year):
| Metric | [Company] | Peer Avg | Best Peer | Worst Peer | Rank |
|--------|-----------|----------|-----------|------------|------|
| Revenue Growth | [%] | [%] | [%] | [%] | [X/4] |
| Gross Margin | [%] | [%] | [%] | [%] | [X/4] |
| Net Margin | [%] | [%] | [%] | [%] | [X/4] |
| ROE | [%] | [%] | [%] | [%] | [X/4] |
| ROIC | [%] | [%] | [%] | [%] | [X/4] |

**Outliers**: [Where company significantly deviates from peers, with explanation]

### Financial Health Score

**Overall**: [Excellent/Good/Fair/Poor]

**Breakdown**:
- Profitability: [A+/A/B+/B/C] ([brief rationale])
- Cash Flow Quality: [A+/A/B+/B/C] ([brief rationale])
- Balance Sheet Strength: [A+/A/B+/B/C] ([brief rationale])
- Growth Sustainability: [A+/A/B+/B/C] ([brief rationale])

### Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

### Red Flags Identified
- [Any concerning findings]
- [Areas requiring further investigation]

### Sources
[List all sources with A-E ratings]
```

---

## Phase 5: Governance Analysis

### Objective

Evaluate management quality, ownership structure, capital allocation track record, and shareholder return policies to assess governance quality and alignment with shareholder interests.

### Research Goals

1. Map ownership structure and identify key shareholders
2. Assess management quality, compensation alignment, and track record
3. Evaluate capital allocation decisions (M&A, capex, buybacks, dividends)
4. Analyze shareholder returns and potential overhang risks

### Multi-Agent Deployment Strategy

Deploy **4 agents in parallel**:

#### Agent 5A: Ownership Structure

**Objective**: Map the ownership landscape and identify concentration risks

**Key Questions**:
- Who are the major shareholders (founders, institutions, government)?
- What's the insider ownership percentage and trend?
- Are there any controlling shareholders with disproportionate voting power?
- Is institutional ownership increasing or decreasing?

**Data to Find**:
- Top 10 shareholders with ownership percentages
- Insider ownership (executives, directors) and recent transactions
- Institutional ownership breakdown and 3-year trend
- Dual-class share structures or voting rights disparities
- Government or strategic investor stakes

**Sources to Prioritize**:
- Annual reports (shareholding section)
- Regulatory filings (insider trading disclosures)
- Stock exchange ownership data
- Proxy statements

**Output Structure**:
```markdown
## Ownership Structure

**Major Shareholders**:
| Shareholder | Type | Ownership % | Voting % | Trend (3Y) |
|-------------|------|-------------|----------|------------|
| [Name] | [founder/institution/government] | [%] | [%] | [increasing/stable/decreasing] |

**Insider Ownership**: [X]%: [trend over 3 years]
**Institutional Ownership**: [X]%: [trend over 3 years]
**Free Float**: [X]%

**Concentration Risk**: [High/Medium/Low] ([explanation])
**Dual-Class Structure**: [Yes/No] ([implications if yes])
```

---

#### Agent 5B: Management Quality and Incentives

**Objective**: Assess management team quality and incentive alignment

**Key Questions**:
- Who are the key executives and what's their track record?
- How is management compensated (salary, bonus, equity)?
- Are incentives aligned with long-term shareholder value?
- Has management delivered on past promises/guidance?

**Data to Find**:
- Key executives (CEO, CFO, COO) with tenure and background
- Compensation breakdown (fixed vs. variable, equity grants)
- Performance metrics tied to compensation
- Management tenure and turnover rate
- Track record vs. guidance/promises

**Sources to Prioritize**:
- Proxy statements / annual reports (compensation section)
- Earnings call transcripts (track record)
- Company website (leadership page)
- News for management changes

**Output Structure**:
```markdown
## Management Quality and Incentives

**Key Executives**:
| Executive | Role | Tenure | Background | Track Record |
|-----------|------|--------|------------|--------------|
| [Name] | CEO | [years] | [brief] | [delivered/missed guidance] |
| [Name] | CFO | [years] | [brief] | [track record] |

**Compensation Structure**:
| Component | CEO | CFO | Industry Avg | Alignment |
|-----------|-----|-----|--------------|-----------|
| Base Salary | [amount] | [amount] | [amount] | [aligned/misaligned] |
| Annual Bonus | [% of total] | [% of total] | [%] | [aligned/misaligned] |
| Long-term Equity | [% of total] | [% of total] | [%] | [aligned/misaligned] |

**Incentive Alignment**: [Strong/Moderate/Weak] ([evidence])
**Management Turnover**: [Low/Moderate/High] ([implications])
```

---

#### Agent 5C: Capital Allocation Track Record

**Objective**: Evaluate how management has deployed capital over time

**Key Questions**:
- What's the ROIC history (is capital being deployed efficiently)?
- How have major M&A decisions performed?
- Is capex generating expected returns?
- Are buybacks timed well (buying low vs. high)?

**Data to Find**:
- ROIC history (5-10 years)
- Major acquisitions (price, performance vs. expectations)
- Capex efficiency (incremental ROIC on new investments)
- Buyback timing and value creation
- Dividend policy consistency

**Sources to Prioritize**:
- Annual reports (capital allocation commentary)
- Financial statements (ROIC calculations)
- M&A press releases and subsequent performance
- Earnings call transcripts (capital allocation philosophy)

**Output Structure**:
```markdown
## Capital Allocation Track Record

**ROIC History**:
| Year | ROIC | WACC | Spread | Assessment |
|------|------|------|--------|------------|
| [Year-5] | [%] | [%] | [pp] | [value creating/destroying] |
| ... | | | | |
| [Latest] | [%] | [%] | [pp] | [assessment] |

**Major Capital Decisions** (Past 5 Years):
| Year | Decision | Amount | Outcome | Value Created? |
|------|----------|--------|---------|----------------|
| [Year] | [Acquisition X] | [amount] | [performance] | [Yes/No/Partial] |
| [Year] | [Capex project Y] | [amount] | [returns] | [Yes/No/Partial] |
| [Year] | [Buyback program] | [amount] | [timing quality] | [Yes/No] |

**Capital Allocation Quality**: [Excellent/Good/Fair/Poor] ([evidence])
**CEO Philosophy**: [growth-at-all-costs / balanced / shareholder-return focused]
```

---

#### Agent 5D: Shareholder Returns and Overhang

**Objective**: Analyze shareholder return policies and identify potential overhang risks

**Key Questions**:
- What's the dividend history and sustainability?
- How aggressive are buybacks?
- Are there share unlock risks (founder sales, secondary offerings)?
- What's the total shareholder return (TSR) vs. peers?

**Data to Find**:
- Dividend history (5-10 years: amount, yield, payout ratio)
- Buyback history (shares repurchased, average price paid)
- Insider selling patterns
- Lock-up expirations or secondary offering risks
- Total shareholder return vs. benchmark

**Sources to Prioritize**:
- Annual reports (dividend and buyback sections)
- Regulatory filings (insider transactions)
- Stock exchange announcements
- Financial data providers (TSR calculations)

**Output Structure**:
```markdown
## Shareholder Returns and Overhang

**Dividend History**:
| Year | DPS | Yield | Payout Ratio | Sustainability |
|------|-----|-------|--------------|----------------|
| [Year-5] | [amount] | [%] | [%] | [sustainable/stretched] |
| ... | | | | |
| [Latest] | [amount] | [%] | [%] | [assessment] |

**Buyback History** (5-Year Total):
- Shares repurchased: [number] ([X]% of float)
- Average price paid: [amount] (vs. current price: [premium/discount])
- Timing quality: [Good/Fair/Poor] ([bought low vs. high])

**Overhang Risks**:
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Founder selling | [High/Medium/Low] | [High/Medium/Low] | [factors] |
| Secondary offering | [probability] | [impact] | [factors] |
| Lock-up expiration | [probability] | [impact] | [factors] |

**Total Shareholder Return** (5-Year):
- Company: [X]%
- Benchmark: [Y]%
- Outperformance: [Z]pp
```

---

### Phase 5 Synthesis and Report Generation

After all 4 agents complete:

1. **Compile findings** into coherent narrative
2. **Create summary table** of governance quality
3. **Identify any contradictions** between sources
4. **Generate Phase 5 section** within the single consolidated report

**Report Template**:
```markdown
## Phase 5: Governance Analysis

### Executive Summary
[2-3 paragraph overview of governance quality, management alignment, and shareholder return policies]

### 5.1 Ownership Structure

**Major Shareholders**:
| Shareholder | Type | Ownership % | Voting % | Trend (3Y) |
|-------------|------|-------------|----------|------------|
| [Name] | [type] | [%] | [%] | [trend] |

**Insider Ownership**: [X]%: [trend]
**Institutional Ownership**: [X]%: [trend]
**Concentration Risk**: [High/Medium/Low]
**Dual-Class Structure**: [Yes/No] ([implications])

### 5.2 Management Quality and Incentives

**Key Executives**:
| Executive | Role | Tenure | Track Record |
|-----------|------|--------|--------------|
| [Name] | CEO | [years] | [delivered/missed] |

**Compensation Alignment**: [Strong/Moderate/Weak] ([evidence])
**Management Turnover**: [Low/Moderate/High]

### 5.3 Capital Allocation Track Record

**ROIC History**:
| Year | ROIC | WACC | Spread | Assessment |
|------|------|------|--------|------------|
| [Year-5] | [%] | [%] | [pp] | [value creating/destroying] |
| [Latest] | [%] | [%] | [pp] | [assessment] |

**Major Capital Decisions**: [Summary of M&A, capex, buybacks with outcomes]
**Capital Allocation Quality**: [Excellent/Good/Fair/Poor]

### 5.4 Shareholder Returns and Overhang

**Dividend Sustainability**: [Sustainable/Stretched/Cut risk] ([payout ratio, FCF coverage])
**Buyback Quality**: [Good timing/Fair/Poor] ([average price vs. current])
**Overhang Risks**: [Founder selling, secondary offerings, lock-ups: probability and impact]
**Total Shareholder Return** (5Y): [X]% vs. benchmark [Y]%

### Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

### Red Flags Identified
- [Any concerning findings]
- [Areas requiring further investigation]

### Sources
[List all sources with A-E ratings]
```

---

## Phase 6: Market Sentiment

### Objective

Understand the bull and bear cases, identify key debate points in the market, and determine what future data or events will resolve these debates to inform investment timing.

### Research Goals

1. Articulate the bull case thesis and supporting evidence
2. Articulate the bear case thesis and supporting evidence
3. Identify key debate points where analysts disagree
4. Determine verification nodes (future data/events that will resolve debates)

### Multi-Agent Deployment Strategy

Deploy **4 agents in parallel**:

#### Agent 6A: Bull Case Research

**Objective**: Build the strongest possible bull case with evidence

**Key Questions**:
- What's the core bull thesis?
- What evidence supports each component of the thesis?
- What assumptions must hold true for the bull case to work?
- How strong is the evidence quality?

**Data to Find**:
- Bull case thesis statement
- Key supporting arguments (3-5 points)
- Required assumptions for each argument
- Evidence quality assessment (A-E sources)
- Historical precedents supporting the thesis

**Sources to Prioritize**:
- Bull analyst reports
- Company investor presentations
- Industry optimists and growth forecasts
- Historical analogs

**Output Structure**:
```markdown
## Bull Case

**Thesis**: [2-3 sentence bull case statement]

**Key Supporting Arguments**:
1. **[Argument 1]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [A/B/C/D grade]

2. **[Argument 2]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

3. **[Argument 3]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

**Historical Precedents**: [Similar companies/situations that support bull case]
**Overall Confidence**: [High/Medium/Low] ([rationale])
```

---

#### Agent 6B: Bear Case Research

**Objective**: Build the strongest possible bear case with evidence

**Key Questions**:
- What's the core bear thesis?
- What evidence supports each component of the thesis?
- What assumptions must hold true for the bear case to work?
- How strong is the evidence quality?

**Data to Find**:
- Bear case thesis statement
- Key supporting arguments (3-5 points)
- Required assumptions for each argument
- Evidence quality assessment (A-E sources)
- Historical precedents supporting the thesis

**Sources to Prioritize**:
- Bear analyst reports
- Short seller reports
- Industry pessimists and risk analyses
- Historical failures and cautionary tales

**Output Structure**:
```markdown
## Bear Case

**Thesis**: [2-3 sentence bear case statement]

**Key Supporting Arguments**:
1. **[Argument 1]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [A/B/C/D grade]

2. **[Argument 2]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

3. **[Argument 3]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

**Historical Precedents**: [Similar companies/situations that support bear case]
**Overall Confidence**: [High/Medium/Low] ([rationale])
```

---

#### Agent 6C: Key Debate Points

**Objective**: Identify where analysts and investors disagree on the company's prospects

**Key Questions**:
- What are the most contentious issues about this company?
- What evidence does each side cite?
- What data would resolve each debate?
- What's the current market consensus (if any)?

**Data to Find**:
- List of key debate points (3-5 major debates)
- Bull argument for each debate
- Bear argument for each debate
- Evidence quality for each side
- Current market positioning (consensus vs. contrarian)

**Sources to Prioritize**:
- Analyst reports with opposing views
- Earnings call Q&A (analyst pushback)
- Investment forums and debates
- Financial media coverage

**Output Structure**:
```markdown
## Key Debate Points

**Debate 1: [Topic]**
- Bull argument: [argument and evidence]
- Bear argument: [argument and evidence]
- Evidence quality: Bull [grade] vs. Bear [grade]
- What resolves it: [specific data/event]
- Current status: [unresolved/partially resolved/resolved]

**Debate 2: [Topic]**
- [Same structure]

**Debate 3: [Topic]**
- [Same structure]

**Market Consensus**: [What most investors believe vs. contrarian views]
```

---

#### Agent 6D: Verification Nodes

**Objective**: Identify future events and data releases that will confirm or refute key thesis elements

**Key Questions**:
- What upcoming events will test the bull/bear thesis?
- What metrics should investors watch?
- What's the timeline for these verification nodes?
- What's the expected market impact of each node?

**Data to Find**:
- List of verification nodes (5-7 key events/data points)
- Timeline for each node
- Expected outcome if bull case is correct
- Expected outcome if bear case is correct
- Market impact assessment

**Sources to Prioritize**:
- Company guidance and roadmap
- Industry event calendars
- Regulatory filing schedules
- Analyst expectations

**Output Structure**:
```markdown
## Critical Verification Nodes

**Node 1: [Event/Data Release]**
- Timeline: [date or quarter]
- If bull case correct: [expected outcome]
- If bear case correct: [expected outcome]
- Market impact: [High/Medium/Low]
- Action trigger: [what to do based on outcome]

**Node 2: [Event/Data Release]**
- [Same structure]

**Node 3: [Event/Data Release]**
- [Same structure]

**Monitoring Priority**: [Which nodes are most critical to watch]
```

---

### Phase 6 Synthesis and Report Generation

After all 4 agents complete:

1. **Compile findings** into coherent narrative
2. **Create debate summary table**
3. **Identify any contradictions** between sources
4. **Generate Phase 6 section** within the single consolidated report

**Report Template**:
```markdown
## Phase 6: Market Sentiment

### Executive Summary
[2-3 paragraph overview of bull/bear cases, key debates, and verification timeline]

### 6.1 Bull Case

**Thesis**: [2-3 sentence bull case statement]

**Key Supporting Arguments**:
1. **[Argument 1]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

2. **[Argument 2]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

3. **[Argument 3]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

**Overall Confidence**: [High/Medium/Low]

### 6.2 Bear Case

**Thesis**: [2-3 sentence bear case statement]

**Key Supporting Arguments**:
1. **[Argument 1]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

2. **[Argument 2]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

3. **[Argument 3]**: [evidence and reasoning]
   - Required assumptions: [list]
   - Evidence quality: [grade]

**Overall Confidence**: [High/Medium/Low]

### 6.3 Key Debate Points

| Debate Point | Bull Argument | Bear Argument | What Resolves It | Current Status |
|--------------|---------------|---------------|------------------|----------------|
| [Topic 1] | [argument] | [argument] | [data/event] | [unresolved/resolved] |
| [Topic 2] | [argument] | [argument] | [data/event] | [status] |
| [Topic 3] | [argument] | [argument] | [data/event] | [status] |

### 6.4 Critical Verification Nodes

| Node | Timeline | Bull Outcome | Bear Outcome | Market Impact | Action Trigger |
|------|----------|--------------|--------------|---------------|----------------|
| [Event 1] | [date] | [outcome] | [outcome] | [High/Med/Low] | [action] |
| [Event 2] | [date] | [outcome] | [outcome] | [impact] | [action] |
| [Event 3] | [date] | [outcome] | [outcome] | [impact] | [action] |

**Monitoring Priority**: [Which nodes are most critical]

### Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

### Red Flags Identified
- [Any concerning findings]
- [Areas requiring further investigation]

### Sources
[List all sources with A-E ratings]
```

---

## Phase 7: Valuation & Moat

### Objective

Assess the company's competitive advantages (moat), determine fair value through multiple valuation methods, and identify risk scenarios that could impact the investment thesis.

### Research Goals

1. Evaluate competitive moat strength across 5 dimensions
2. Perform relative valuation (historical multiples and peer comparison)
3. Perform absolute valuation (DCF and reverse DCF)
4. Model risk scenarios and failure modes

### Multi-Agent Deployment Strategy

Deploy **4 agents in parallel**:

#### Agent 7A: Competitive Moat Assessment

**Objective**: Systematically evaluate the company's competitive advantages

**Key Questions**:
- Does the company have pricing power?
- Are there meaningful switching costs for customers?
- Are there network effects?
- Does the company have cost advantages?
- Are there intangible assets (brand, patents, licenses)?
- How durable is the moat?

**Data to Find**:
- Evidence for each of the 5 moat components
- Moat durability assessment (years)
- Historical moat trends (strengthening/stable/weakening)
- Competitive threats to the moat

**Sources to Prioritize**:
- Company investor presentations (competitive advantages)
- Industry reports (competitive positioning)
- Customer reviews and switching behavior
- Patent databases and regulatory filings

**Output Structure**:
```markdown
## Competitive Moat Assessment

**Overall Rating**: [X]/5

**Component Scores**:
| Component | Score | Evidence | Durability |
|-----------|-------|----------|------------|
| Pricing Power | [X]/5 | [evidence] | [years] |
| Switching Costs | [X]/5 | [evidence] | [years] |
| Network Effects | [X]/5 | [evidence] | [years] |
| Cost Advantages | [X]/5 | [evidence] | [years] |
| Intangible Assets | [X]/5 | [evidence] | [years] |

**Moat Trend**: [Strengthening/Stable/Weakening] ([evidence])
**Competitive Threats**: [List top 3 threats to moat]
**Moat Durability**: [X] years: [rationale]
```

---

#### Agent 7B: Relative Valuation

**Objective**: Assess valuation relative to historical levels and peer companies

**Key Questions**:
- Where does the current valuation sit in the historical range?
- How does valuation compare to direct peers?
- Is the premium/discount justified by growth and quality?
- What do valuation multiples imply about future performance?

**Data to Find**:
- Historical multiples (5-10 years: P/E, P/B, P/S, EV/EBITDA, EV/Revenue)
- Current percentile rank for each multiple
- Peer company multiples
- Growth-adjusted valuation (PEG ratio)

**Sources to Prioritize**:
- Financial data providers (historical multiples)
- Stock exchange data (current valuation)
- Analyst reports (peer comparison)
- Company filings (earnings and book value)

**Output Structure**:
```markdown
## Relative Valuation

**Historical Multiples**:
| Multiple | Current | 5Y Avg | 5Y Low | 5Y High | Percentile | Assessment |
|----------|---------|--------|--------|---------|------------|------------|
| P/E | [X] | [X] | [X] | [X] | [X]th | [cheap/fair/expensive] |
| P/B | [X] | [X] | [X] | [X] | [X]th | [assessment] |
| P/S | [X] | [X] | [X] | [X] | [X]th | [assessment] |
| EV/EBITDA | [X] | [X] | [X] | [X] | [X]th | [assessment] |

**Peer Comparison**:
| Company | P/E | P/B | EV/EBITDA | PEG | Growth | Margin |
|---------|-----|-----|-----------|-----|--------|--------|
| [Company] | [X] | [X] | [X] | [X] | [%] | [%] |
| [Peer 1] | [X] | [X] | [X] | [X] | [%] | [%] |
| [Peer 2] | [X] | [X] | [X] | [X] | [%] | [%] |

**Premium/Discount Assessment**: [X]% premium/discount to peers: [justified or not, with reasoning]
```

---

#### Agent 7C: Absolute Valuation (DCF, Reverse DCF)

**Objective**: Determine intrinsic value through discounted cash flow analysis

**Key Questions**:
- What's the DCF-implied fair value under base/bull/bear scenarios?
- What growth rate does the current stock price imply?
- Is the implied growth achievable given historical performance?
- What's the margin of safety at current prices?

**Data to Find**:
- Free cash flow history and projections
- DCF assumptions (WACC, terminal growth, revenue growth)
- Scenario analysis (bull/base/bear)
- Reverse DCF implied growth rate
- Sensitivity analysis on key assumptions

**Sources to Prioritize**:
- Company financial statements (cash flow data)
- Analyst DCF models (assumptions and outputs)
- Industry growth forecasts
- Risk-free rate and market risk premium data

**Output Structure**:
```markdown
## Absolute Valuation

**DCF Scenario Analysis**:
| Scenario | Revenue Growth | Terminal Growth | WACC | Implied Value | Upside/Downside |
|----------|---------------|-----------------|------|---------------|-----------------|
| Bull | [%] | [%] | [%] | [price] | [+X%] |
| Base | [%] | [%] | [%] | [price] | [+/-X%] |
| Bear | [%] | [%] | [%] | [price] | [-X%] |

**Probability-Weighted Expected Value**: [price] ([calculation: Bull X% + Base Y% + Bear Z%])

**Reverse DCF**: Current price implies [X]% long-term growth
- Historical growth: [Y]%
- Assessment: [achievable/optimistic/pessimistic]

**Margin of Safety**: [X]%: [sufficient/insufficient]
**Key Assumption Sensitivity**: [Which assumptions matter most]
```

---

#### Agent 7D: Risk Scenarios

**Objective**: Model failure modes and downside scenarios

**Key Questions**:
- What are the most likely failure scenarios?
- What's the probability and impact of each scenario?
- What early warning signals would indicate a scenario is unfolding?
- What's the worst-case outcome?

**Data to Find**:
- List of risk scenarios (3-5 major risks)
- Probability assessment for each
- Impact on valuation for each
- Trigger events and early warning signals
- Worst-case scenario narrative

**Sources to Prioritize**:
- Bear analyst reports
- Industry risk analyses
- Historical company failures in similar situations
- Regulatory and macro risk assessments

**Output Structure**:
```markdown
## Risk Scenarios and Failure Modes

**Scenario 1: [Risk Name]**
- Description: [what could go wrong]
- Probability: [High/Medium/Low] ([X]%)
- Impact on value: [High/Medium/Low] ([-X%])
- Trigger events: [what would cause this]
- Early warning signals: [what to watch]
- Mitigation: [how company could avoid]

**Scenario 2: [Risk Name]**
- [Same structure]

**Scenario 3: [Risk Name]**
- [Same structure]

**Worst Case Scenario**: [Narrative: what could go wrong, how bad it could get, probability]
**Probability-Weighted Downside**: [-X%] ([calculation])
```

---

### Phase 7 Synthesis and Report Generation

After all 4 agents complete:

1. **Compile findings** into coherent narrative
2. **Create valuation summary table**
3. **Identify any contradictions** between sources
4. **Generate Phase 7 section** within the single consolidated report

**Report Template**:
```markdown
## Phase 7: Valuation & Moat

### Executive Summary
[2-3 paragraph overview of moat strength, valuation assessment, and key risks]

### 7.1 Competitive Moat Assessment

**Overall Rating**: [X]/5

**Component Scores**:
| Component | Score | Evidence | Durability |
|-----------|-------|----------|------------|
| Pricing Power | [X]/5 | [evidence] | [years] |
| Switching Costs | [X]/5 | [evidence] | [years] |
| Network Effects | [X]/5 | [evidence] | [years] |
| Cost Advantages | [X]/5 | [evidence] | [years] |
| Intangible Assets | [X]/5 | [evidence] | [years] |

**Moat Trend**: [Strengthening/Stable/Weakening]
**Moat Durability**: [X] years

### 7.2 Relative Valuation

**Historical Multiples**:
| Multiple | Current | 5Y Avg | 5Y Low | 5Y High | Percentile | Assessment |
|----------|---------|--------|--------|---------|------------|------------|
| P/E | [X] | [X] | [X] | [X] | [X]th | [assessment] |
| P/B | [X] | [X] | [X] | [X] | [X]th | [assessment] |
| EV/EBITDA | [X] | [X] | [X] | [X] | [X]th | [assessment] |

**Peer Premium/Discount**: [X]%: [justified or not]

### 7.3 Absolute Valuation

**DCF Scenario Analysis**:
| Scenario | Revenue Growth | Terminal Growth | WACC | Implied Value | Upside/Downside |
|----------|---------------|-----------------|------|---------------|-----------------|
| Bull | [%] | [%] | [%] | [price] | [+X%] |
| Base | [%] | [%] | [%] | [price] | [+/-X%] |
| Bear | [%] | [%] | [%] | [price] | [-X%] |

**Probability-Weighted Expected Value**: [price]
**Reverse DCF Implied Growth**: [X]%: [achievable/optimistic/pessimistic]
**Margin of Safety**: [X]%

### 7.4 Risk Scenarios and Failure Modes

| Scenario | Probability | Impact | Trigger Events | Early Warning Signals |
|----------|-------------|--------|----------------|----------------------|
| [Risk 1] | [X]% | [-X%] | [triggers] | [signals] |
| [Risk 2] | [X]% | [-X%] | [triggers] | [signals] |
| [Risk 3] | [X]% | [-X%] | [triggers] | [signals] |

**Worst Case Scenario**: [Narrative description]
**Probability-Weighted Downside**: [-X%]

### Key Takeaways
- [Takeaway 1]
- [Takeaway 2]
- [Takeaway 3]

### Red Flags Identified
- [Any concerning findings]
- [Areas requiring further investigation]

### Sources
[List all sources with A-E ratings]
```

---

## Final Score Methodology

Each completed report ends with a **Final Score** on a 0-10.0 scale, derived from a 4-dimension weighted average:

| Dimension | Weight | Source Phases |
|-----------|--------|---------------|
| Business Quality | 20% | Phase 1 (Business Foundation), Phase 3 (Business Breakdown) |
| Financial Quality | 25% | Phase 4 (Financial Quality) |
| Governance Quality | 15% | Phase 5 (Governance Analysis) |
| Valuation & Moat | 40% | Phase 7 (Valuation & Moat) |

Phases 2 (Industry) and 6 (Sentiment) feed context but are not separately weighted in the score. Each dimension is scored 0-10 by the orchestrator after the relevant agents complete. The total is the weighted average.

**Bands**:
- `≥ 8.5` → **Strong**
- `6.5 – 8.4` → **Quality**
- `4.5 – 6.4` → **Mixed**
- `< 4.5` → **Weak**

**Action labels** (derived from the band, not a separate calculation):
- Strong → "Strong Buy"
- Quality → "Hold"
- Mixed → "Hold"
- Weak → "Avoid"

**Note on handoffs from `stock-shortlist-agent`**: The screener produces a 0-10.0 Screener Score (4-dimension weighted: Financial Fit 35% / Moat Quality 25% / Risk-Adjusted Upside 25% / Consensus Signal 15%). The two scores are **not directly comparable** - the screener ranks for screening; the executor re-derives from its own 8-phase analysis. Do not copy the screener's score forward into the executor's Final Score. The screener score is a probabilistic hint only.

---

## Phase 8: Final Synthesis

### Objective

Combine all findings into a comprehensive investment due diligence report and produce a 0-10.0 Final Score with text band and action label.

### Tasks

1. Review all 7 phase reports
2. Score the 4 dimensions (Business Quality, Financial Quality, Governance Quality, Valuation & Moat) per the Final Score Methodology above
3. Calculate the weighted total and assign a band (Strong / Quality / Mixed / Weak)
4. Derive the action label (Strong Buy / Hold / Avoid) from the band
5. Generate executive summary with the Final Score and score breakdown table
6. Create financial data summary tables
7. Create monitoring checklist
8. Compile bibliography

---

For execution examples demonstrating these phases, see [examples.md](examples.md).
