# Worked Examples

This file contains synthetic worked examples for the `stock-shortlist-agent` skill. **All company names, tickers, and financial figures in these examples are ILLUSTRATIVE FICTIONAL DATA. They do not represent real companies and must not be used for actual investment decisions.**

The examples demonstrate the output format, scoring methodology, and post-report handoff prompt that the screener produces. Use them as a pattern-match reference when running the screener on real data.

---

# Example 1: Indian Small-Cap Growth - Shortlist Report

> **Report Generated**: 2026-06-24
> **Market**: India (NSE/BSE) | **Cap Tier**: Small-cap (₹1,500 – 4,500 Cr) | **Style**: Growth
> **Sector Focus**: Industrials, Healthcare
> **Sectors Excluded**: Financial Services, Real Estate
> **Holding Period**: Medium (1-3 years)
> **Raw Universe Screened**: 42 candidates | **Pass Rate**: 12 PASS / 18 BORDERLINE / 12 FAIL
> **Shortlist**: 5 stocks (max 10)

## Table of Contents

1. [Screening Parameters](#screening-parameters)
2. [Shortlist Summary](#shortlist-summary)
3. [Stock Scorecards](#stock-scorecards)
   - [Rank 1: AETHER (illustrative)](#rank-1-aether)
   - [Rank 2: MEDIVA (illustrative)](#rank-2-mediva)
   - [Rank 3: TERRAGRID (illustrative)](#rank-3-terragrid)
   - [Rank 4: VOLTLINK (illustrative)](#rank-4-voltlink)
   - [Rank 5: NEUROLUME (illustrative)](#rank-5-neurolume)
4. [Comparative Analysis](#comparative-analysis)
5. [Screening Methodology](#screening-methodology)
6. [Limitations and Caveats](#limitations-and-caveats)
7. [Next Step: Deep-Dive via `stock-research-executor`](#next-step-deep-dive-via-stock-research-executor)
8. [Sources](#sources)
9. [Post-Report Handoff Prompt](#post-report-handoff-prompt)

---

## Screening Parameters

### Confirmed Parameters

| Parameter | Value |
|-----------|-------|
| Market | India (NSE/BSE) |
| Cap Tier | Small-cap (< ₹5,000 Cr) |
| Investment Style | Growth |
| Sectors to INCLUDE | Industrials, Healthcare |
| Sectors to EXCLUDE | Financial Services, Real Estate |
| Top-N / Bottom-N Constraint | No constraint |
| Key Screening Criteria | Revenue CAGR > 20% (3Y), expanding EBITDA margin, ROE > 15%, net debt < 1x EBITDA |
| Holding Period | Medium (1-3 years) |

### Parameter Source

Parameters were interpreted from a vague natural-language request: *"Find me high growth small caps in NSE with multibagger potential in industrials and healthcare - should compound nicely over 2-3 years."* The original interpretation was confirmed by the user with no changes.

---

## Shortlist Summary

### Ranked Shortlist Table

| Rank | Ticker | Company | Score | Band | Cap Tier | Sector | Moat | Style Fit | Red Flags |
|------|--------|---------|-------|------|----------|--------|------|-----------|-----------|
| 1 | AETHER.NS | Aether Industrial (fictional) | 8.6 / 10 | Strong | Small | Industrials | 4/5 | HIGH | 2 |
| 2 | MEDIVA.NS | Mediva Diagnostics (fictional) | 7.9 / 10 | Quality | Small | Healthcare | 4/5 | HIGH | 1 |
| 3 | TERRAGRID.NS | Terragrid Infra (fictional) | 7.4 / 10 | Quality | Small | Industrials | 3/5 | HIGH | 2 |
| 4 | VOLTLINK.NS | Voltlink Power (fictional) | 6.8 / 10 | Quality | Small | Industrials | 3/5 | MED | 3 |
| 5 | NEUROLUME.NS | Neurolume Medtech (fictional) | 5.9 / 10 | Mixed | Small | Healthcare | 2/5 | MED | 2 |

**Moat key**: 0 = None | 1 = Weak | 2-3 = Moderate | 4-5 = Strong
**Score band key**: ≥8.5 = Strong | 6.5-8.4 = Quality | 4.5-6.4 = Mixed | <4.5 = Weak
**Style Fit key**: HIGH = Financial Fit ≥7 | MED = 5-6 | LOW = <5

### Recommended for Deep-Dive via `stock-research-executor`

1. **AETHER (Aether Industrial, fictional)** - top score (8.6/Strong) on the back of 32% revenue CAGR and 4/5 moat rating driven by a specialized component supply contract.
2. **MEDIVA (Mediva Diagnostics, fictional)** - 7.9/Quality with the cleanest balance sheet in the shortlist and a defensible moat from a 12-year-old distribution network.
3. **TERRAGRID (Terragrid Infra, fictional)** - 7.4/Quality, the best EBITDA margin expansion in the cohort (+340 bps over 3 years).

---

## Stock Scorecards

### Rank 1: AETHER - Aether Industrial (fictional)

> **Market Cap**: ₹3,200 Cr | **Exchange**: NSE | **Sector**: Industrials (Specialty Components)
> **Screener Score**: 8.6 / 10 (Strong) | **Style Fit**: HIGH | **Consensus**: 4 of 6 sources

#### Score Breakdown

| Dimension | Score (0-10) | Weight | Weighted Score |
|-----------|-------------|--------|----------------|
| Financial Fit | 9 | 35% | 3.15 |
| Moat Quality (4/5 raw × 2) | 8 | 25% | 2.00 |
| Risk-Adjusted Upside | 8 | 25% | 2.00 |
| Consensus Signal (4/6) | 7 | 15% | 1.05 |
| **Total** | | | **8.20 → reported 8.6 (rounded with quality adjustment)** |

**Note on rounding**: The weighted sum is 8.20. The final reported score (8.6) reflects a +0.4 quality adjustment for the company's 4/5 moat (above the cohort median of 3/5). For the purpose of this example the rounded score is shown directly.

#### Investment Thesis
Aether Industrial supplies precision-engineered components to a single OEM under a long-term agreement. Revenue grew 32% YoY in FY25 driven by capacity additions, with EBITDA margin expanding 220 bps to 18.4%. The OEM relationship is the primary moat: switching costs are high due to the engineering co-design and qualification cycle. Net debt is 0.4x EBITDA, leaving room for growth capex without dilution risk.

#### Key Financials (3-Year Snapshot)

| Metric | FY23 | FY24 | FY25 | Criteria Target |
|--------|------|------|------|-----------------|
| Revenue Growth (YoY) | 24% | 28% | 32% | > 20% |
| Net Profit Margin | 9.8% | 11.2% | 12.6% | - |
| EBITDA Margin | 16.2% | 17.1% | 18.4% | - |
| ROE | 17.4% | 19.8% | 22.1% | > 15% |
| ROCE | 16.0% | 18.5% | 21.0% | - |
| P/E | 28x | 24x | 21x | - |
| EV/EBITDA | 16x | 14x | 12x | - |
| Debt/Equity | 0.32 | 0.28 | 0.22 | < 1x EBITDA |

**Financial Data Source**: [Screener.in, Aether Industrial company page, accessed 2026, https://www.screener.in/company/AETHER/]

#### Competitive Moat

**Rating**: 4/5 (Strong)

The OEM relationship is the central moat. The component is co-engineered with the customer's product and has been qualified over 5+ years, creating high switching costs. The customer has publicly stated Aether as a strategic supplier. Aether also holds 3 patents on the manufacturing process. The moat is durable as long as the OEM relationship holds; the primary risk is customer concentration (single OEM accounts for 78% of revenue).

#### Red Flags and Risks

- **Customer concentration**: Single OEM is 78% of revenue. Loss of this customer would be catastrophic. Impact: -60% to revenue in a downside scenario.
- **Capacity utilization risk**: Revenue growth is partly driven by capacity additions; if utilization disappoints, margin expansion reverses. Impact: -200 to -300 bps to EBITDA margin.

#### Data Gaps
- ROCE for FY23 was reported on a different accounting basis; the FY23 number above uses the restated figure.

#### Discovery Sources
Appeared in 4 of 6 Phase 1 sources: Screener.in (Agent 1), Trendlyne (Agent 2), Sector discovery (Agent 3), Brokerage screener reports (Agent 4).
Primary data URL: https://www.screener.in/company/AETHER/

---

### Rank 2: MEDIVA - Mediva Diagnostics (fictional)

> **Market Cap**: ₹4,100 Cr | **Exchange**: NSE | **Sector**: Healthcare (Diagnostics Services)
> **Screener Score**: 7.9 / 10 (Quality) | **Style Fit**: HIGH | **Consensus**: 5 of 6 sources

#### Score Breakdown

| Dimension | Score (0-10) | Weight | Weighted Score |
|-----------|-------------|--------|----------------|
| Financial Fit | 8 | 35% | 2.80 |
| Moat Quality (4/5 raw × 2) | 8 | 25% | 2.00 |
| Risk-Adjusted Upside | 7 | 25% | 1.75 |
| Consensus Signal (5/6) | 8 | 15% | 1.20 |
| **Total** | | | **7.75 → 7.9 (rounded)** |

#### Investment Thesis
Mediva operates a regional diagnostics services network across western India. Revenue CAGR of 24% over 3 years is driven by network expansion (12 labs added in 3 years) and a high-margin B2C test mix. The moat is a 12-year distribution network that is hard to replicate. Net cash position (negative net debt) provides optionality for further network expansion.

#### Key Financials (3-Year Snapshot)

| Metric | FY23 | FY24 | FY25 | Criteria Target |
|--------|------|------|------|-----------------|
| Revenue Growth (YoY) | 21% | 24% | 26% | > 20% |
| Net Profit Margin | 10.5% | 11.8% | 13.0% | - |
| EBITDA Margin | 17.5% | 18.6% | 19.5% | - |
| ROE | 16.0% | 17.8% | 19.5% | > 15% |
| ROCE | 15.5% | 17.0% | 18.8% | - |
| P/E | 32x | 28x | 25x | - |
| EV/EBITDA | 18x | 16x | 14x | - |
| Debt/Equity | 0.15 | 0.10 | 0.05 | < 1x EBITDA |

**Financial Data Source**: [Screener.in, Mediva Diagnostics company page, accessed 2026, https://www.screener.in/company/MEDIVA/]

#### Competitive Moat

**Rating**: 4/5 (Strong)

Mediva's 12-year distribution network is the primary moat. The company has 38 labs across 4 states, plus a B2B collection network that competitors would need 3-5 years to replicate. The network is reinforced by referral relationships with 800+ hospitals. A defensible moat but with regional concentration risk.

#### Red Flags and Risks

- **Regional concentration**: 78% of revenue from 2 states. A regional regulatory change (e.g., price caps on diagnostic tests in Maharashtra) would materially impact revenue. Impact: -25% to -35% to revenue.

#### Data Gaps
None.

#### Discovery Sources
Appeared in 5 of 6 Phase 1 sources: Screener.in, Trendlyne, Sector discovery, Brokerage, Index scan.
Primary data URL: https://www.screener.in/company/MEDIVA/

---

### Rank 3: TERRAGRID - Terragrid Infra (fictional)

> **Market Cap**: ₹2,800 Cr | **Exchange**: NSE | **Sector**: Industrials (Power Infrastructure)
> **Screener Score**: 7.4 / 10 (Quality) | **Style Fit**: HIGH | **Consensus**: 3 of 6 sources

#### Score Breakdown

| Dimension | Score (0-10) | Weight | Weighted Score |
|-----------|-------------|--------|----------------|
| Financial Fit | 8 | 35% | 2.80 |
| Moat Quality (3/5 raw × 2) | 6 | 25% | 1.50 |
| Risk-Adjusted Upside | 7 | 25% | 1.75 |
| Consensus Signal (3/6) | 5 | 15% | 0.75 |
| **Total** | | | **6.80 → 7.4 (rounded with margin expansion adjustment)** |

**Note**: +0.6 adjustment for best-in-cohort EBITDA margin expansion (+340 bps over 3 years).

#### Investment Thesis
Terragrid builds power infrastructure (substations, transmission lines) for state electricity boards and IPPs. Revenue grew 22% in FY25 driven by a strong order book from renewable energy projects. EBITDA margin expanded 340 bps over 3 years, the best in the shortlist. Order book visibility is high (3.2x annual revenue). The moat is moderate - execution capability and a 14-year track record in the segment, but no clear pricing power.

#### Key Financials (3-Year Snapshot)

| Metric | FY23 | FY24 | FY25 | Criteria Target |
|--------|------|------|------|-----------------|
| Revenue Growth (YoY) | 18% | 20% | 22% | > 20% |
| Net Profit Margin | 7.5% | 8.8% | 10.2% | - |
| EBITDA Margin | 11.5% | 13.0% | 14.9% | - |
| ROE | 14.0% | 15.5% | 17.0% | > 15% |
| ROCE | 12.5% | 14.0% | 15.5% | - |
| P/E | 26x | 22x | 19x | - |
| EV/EBITDA | 14x | 12x | 10x | - |
| Debt/Equity | 0.45 | 0.40 | 0.35 | < 1x EBITDA |

**Financial Data Source**: [Screener.in, Terragrid Infra company page, accessed 2026, https://www.screener.in/company/TERRAGRID/]

#### Competitive Moat

**Rating**: 3/5 (Moderate)

Terragrid's moat is execution capability - 14 years of power infrastructure projects with zero cost overruns in the last 5 years. This is a real moat but narrow: it's about reliability of execution, not pricing power or technology. The moat could be eroded if a larger EPC player enters the renewable substation segment.

#### Red Flags and Risks

- **Customer concentration**: Top 3 customers are 65% of order book. Loss of any one could compress revenue by 20%.
- **Working capital intensity**: Receivables are 110 days of revenue, tying up cash. Impact: limited capex flexibility.

#### Data Gaps
- Order book composition not fully disclosed in latest quarterly filing; estimates based on management commentary.

#### Discovery Sources
Appeared in 3 of 6 Phase 1 sources: Screener.in, Brokerage, Index scan.
Primary data URL: https://www.screener.in/company/TERRAGRID/

---

### Rank 4: VOLTLINK - Voltlink Power (fictional)

> **Market Cap**: ₹2,100 Cr | **Exchange**: NSE | **Sector**: Industrials (Power Equipment)
> **Screener Score**: 6.8 / 10 (Quality) | **Style Fit**: MED | **Consensus**: 4 of 6 sources

**BORDERLINE inclusion**: Voltlink met the revenue growth and ROE criteria but has a weaker balance sheet (debt/equity 0.85) and lower moat strength. Included because of consensus (4/6) and a credible margin expansion path.

#### Score Breakdown

| Dimension | Score (0-10) | Weight | Weighted Score |
|-----------|-------------|--------|----------------|
| Financial Fit | 6 | 35% | 2.10 |
| Moat Quality (3/5 raw × 2) | 6 | 25% | 1.50 |
| Risk-Adjusted Upside | 7 | 25% | 1.75 |
| Consensus Signal (4/6) | 7 | 15% | 1.05 |
| **Total** | | | **6.40 → 6.8 (rounded)** |

#### Investment Thesis
Voltlink manufactures power conversion equipment for industrial customers. Revenue grew 21% in FY25, in line with the criteria. EBITDA margin expanded 180 bps. The moat is moderate: a 9-year track record and a small installed base of customers with switching costs (validation cycles). The risk is the higher leverage (debt/equity 0.85) which limits capex flexibility.

#### Key Financials (3-Year Snapshot)

| Metric | FY23 | FY24 | FY25 | Criteria Target |
|--------|------|------|------|-----------------|
| Revenue Growth (YoY) | 16% | 19% | 21% | > 20% |
| Net Profit Margin | 5.8% | 6.8% | 7.6% | - |
| EBITDA Margin | 12.0% | 13.0% | 13.8% | - |
| ROE | 13.0% | 14.5% | 15.8% | > 15% |
| ROCE | 11.0% | 12.0% | 13.2% | - |
| P/E | 28x | 24x | 22x | - |
| EV/EBITDA | 14x | 13x | 12x | - |
| Debt/Equity | 0.95 | 0.90 | 0.85 | < 1x EBITDA |

**Financial Data Source**: [Screener.in, Voltlink Power company page, accessed 2026, https://www.screener.in/company/VOLTLINK/]

#### Competitive Moat

**Rating**: 3/5 (Moderate)

9-year track record in industrial power equipment, with a small but sticky customer base (top 10 customers are 45% of revenue, with 7+ year relationships). Switching costs are moderate due to validation cycles.

#### Red Flags and Risks

- **High leverage**: D/E of 0.85 is the highest in the shortlist. A 100 bps interest rate increase would compress net margin by ~50 bps.
- **Customer concentration**: Top 10 customers are 45% of revenue.
- **Working capital**: Receivables at 95 days.

#### Data Gaps
- ROE for FY23 used a restated equity base; reported figure was 11.5%.

#### Discovery Sources
Appeared in 4 of 6 Phase 1 sources: Screener.in, Trendlyne, Sector discovery, Brokerage.
Primary data URL: https://www.screener.in/company/VOLTLINK/

---

### Rank 5: NEUROLUME - Neurolume Medtech (fictional)

> **Market Cap**: ₹1,700 Cr | **Exchange**: NSE | **Sector**: Healthcare (Medical Devices)
> **Screener Score**: 5.9 / 10 (Mixed) | **Style Fit**: MED | **Consensus**: 3 of 6 sources

**Borderline inclusion due to low shortlist count**: Neurolume was promoted from BORDERLINE because the shortlist count was 4 after Phase 2 filtering and the policy is to promote the best BORDERLINE stocks when count falls below 5. The Mixed band (5.9) reflects weaker financials and a developing moat.

#### Score Breakdown

| Dimension | Score (0-10) | Weight | Weighted Score |
|-----------|-------------|--------|----------------|
| Financial Fit | 6 | 35% | 2.10 |
| Moat Quality (2/5 raw × 2) | 4 | 25% | 1.00 |
| Risk-Adjusted Upside | 6 | 25% | 1.50 |
| Consensus Signal (3/6) | 5 | 15% | 0.75 |
| **Total** | | | **5.35 → 5.9 (rounded)** |

#### Investment Thesis
Neurolume is a medical device company with a niche neurostimulation product. Revenue grew 26% in FY25, in line with criteria, but on a small base. The moat is weak (2/5) - the technology is novel but unproven at scale, and competition from larger medtech firms is a real risk. ROE is below the criteria threshold (12% vs >15%) but improving.

#### Key Financials (3-Year Snapshot)

| Metric | FY23 | FY24 | FY25 | Criteria Target |
|--------|------|------|------|-----------------|
| Revenue Growth (YoY) | 19% | 22% | 26% | > 20% |
| Net Profit Margin | 3.2% | 4.5% | 5.8% | - |
| EBITDA Margin | 8.5% | 9.8% | 11.0% | - |
| ROE | 9.0% | 10.5% | 12.0% | > 15% (below) |
| ROCE | 7.5% | 9.0% | 10.5% | - |
| P/E | 38x | 32x | 28x | - |
| EV/EBITDA | 22x | 18x | 16x | - |
| Debt/Equity | 0.25 | 0.20 | 0.15 | < 1x EBITDA |

**Financial Data Source**: [Screener.in, Neurolume Medtech company page, accessed 2026, https://www.screener.in/company/NEUROLUME/]

#### Competitive Moat

**Rating**: 2/5 (Moderate, weak end)

Patent portfolio is real but narrow (2 patents on the device mechanism). The technology is novel but unproven at scale, and large medtech firms have the resources to enter this niche.

#### Red Flags and Risks

- **ROE below criteria**: 12% vs. >15% target. A pre-IPO company profile.
- **Scale risk**: Revenue base is small (₹1,700 Cr market cap, ~₹85 Cr revenue). High fixed cost coverage risk if growth disappoints.
- **Competitive risk**: Larger medtech firms (Medtronic, Boston Scientific) have neurostimulation portfolios.

#### Data Gaps
- ROE for FY23 was on a smaller equity base; reported figure was 11.0% before a small equity infusion.

#### Discovery Sources
Appeared in 3 of 6 Phase 1 sources: Screener.in, Trendlyne, Brokerage.
Primary data URL: https://www.screener.in/company/NEUROLUME/

---

## Comparative Analysis

### Shortlist Financial Comparison

| Ticker | Rev Growth (Latest) | Net Margin (Latest) | ROE (Latest) | P/E | Debt/Equity | Moat | Score | Band |
|--------|---------------------|---------------------|--------------|-----|-------------|------|-------|------|
| AETHER | 32% | 12.6% | 22.1% | 21x | 0.22 | 4/5 | 8.6 | Strong |
| MEDIVA | 26% | 13.0% | 19.5% | 25x | 0.05 | 4/5 | 7.9 | Quality |
| TERRAGRID | 22% | 10.2% | 17.0% | 19x | 0.35 | 3/5 | 7.4 | Quality |
| VOLTLINK | 21% | 7.6% | 15.8% | 22x | 0.85 | 3/5 | 6.8 | Quality |
| NEUROLUME | 26% | 5.8% | 12.0% | 28x | 0.15 | 2/5 | 5.9 | Mixed |

### Style-Criteria Compliance Summary

| Ticker | Rev CAGR > 20% | Margin Expanding | ROE > 15% | Net Debt < 1x EBITDA | Overall Fit |
|--------|----------------|-------------------|-----------|----------------------|-------------|
| AETHER | PASS | PASS | PASS | PASS | HIGH |
| MEDIVA | PASS | PASS | PASS | PASS (net cash) | HIGH |
| TERRAGRID | PASS | PASS | PASS | PASS | HIGH |
| VOLTLINK | PASS (marginal) | PASS | PASS (marginal) | PASS (0.85) | MED |
| NEUROLUME | PASS | PASS | FAIL (12% vs 15%) | PASS | MED |

---

## Screening Methodology

### Phase 1: Discovery Sources Used

| Source | Type | Quality | What It Contributed |
|--------|------|---------|---------------------|
| Screener.in | Screener | B | 18 candidates from quantitative filters (Revenue CAGR > 20%, ROE > 15%, D/E < 0.5) |
| Trendlyne | Screener | B | 14 candidates with DVM score > 60 |
| Sector discovery (Moneycontrol, ET Markets) | Media | C | 11 candidates from broker picks and analyst notes |
| Brokerage screener reports | Research | C | 8 candidates from published stock screen baskets |
| Nifty Smallcap 250 Index scan | Index | A | 7 candidates that pass the quantitative filters |
| Consolidation | n/a | n/a | Deduplicated, flagged [HC] and [SC] tags |

**Raw Universe**: 42 candidates discovered before filtering
**High Consensus [HC] Candidates**: 8 (appeared in 3+ sources)
**Single Source [SC] Candidates**: 18 (appeared in only 1 source)

### Phase 2: Quick-Pass Results

| Result | Count | Notes |
|--------|-------|-------|
| PASS | 12 | Top performers on revenue growth, margin expansion, ROE, and balance sheet strength |
| BORDERLINE | 18 | Met 2-3 of the 4 primary criteria; 1 included due to consensus ([HC] tag) |
| FAIL | 12 | Most common failure: ROE < 15% on a 3-year average basis, or D/E > 1.0 |

**Pass Rate**: 28.6% of raw universe met criteria

**Examples of FAIL stocks** (documented in methodology, not included in shortlist):
- **FINSERV-A (illustrative)**: Financial services company excluded due to sector filter.
- **REALCO (illustrative)**: Real estate developer excluded due to sector filter.
- **MICROINV (illustrative)**: Revenue grew 19% (just below the 20% threshold) and ROE was 13% over 3Y. Excluded.
- **MIDSTEEL (illustrative)**: Strong revenue growth (28%) but D/E was 1.4x. Excluded.
- **SMALLBANK (illustrative)**: ROE 18% but revenue growth was 12% over 3Y. Excluded.
- **QUICKCAP (illustrative)**: 22% revenue growth, but EBITDA margin contracted -150 bps. Excluded.

### Scoring Weights Applied

| Dimension | Weight | Rationale for This Screen |
|-----------|--------|---------------------------|
| Financial Fit | 35% | Primary determinant for [growth] screening - revenue CAGR, margin expansion, ROE |
| Moat Quality | 25% | Differentiates quality within PASS set - important for medium-term holding |
| Risk-Adjusted Upside | 25% | Filters out high-risk PASS candidates (e.g., high leverage, customer concentration) |
| Consensus Signal | 15% | Cross-validates findings across sources; [HC] stocks get a small boost |

---

## Limitations and Caveats

- **Borderline inclusion at Rank 4 (VOLTLINK)**: Included because of consensus (4/6) and a credible margin expansion path, despite weaker balance sheet.
- **Borderline inclusion at Rank 5 (NEUROLUME)**: Promoted from BORDERLINE to shortlist because the post-filter count was 4 (below the 5-stock soft minimum). The Mixed band (5.9) reflects this borderline status; the user should treat this inclusion as exploratory, not as a strong screen outcome.
- **Moat ratings**: 0-5 moat ratings are assigned by Phase 2 agent judgment based on observed moat sources (pricing power, switching costs, network effects, cost advantage, intangible assets). They are not from a third-party source. Treat the 0-5 scale as relative, not absolute.
- **Rounding**: The score breakdown shows the weighted sum and the reported (rounded) score. The rounding and quality adjustment are described per stock.
- **Data gaps**: Documented per scorecard. Most reflect unavailability of pre-FY23 restated figures.

---

## Next Step: Deep-Dive via `stock-research-executor`

Pass any of the above tickers into `stock-research-executor` for full 8-phase investment due diligence. The executor produces a single report at `RESEARCH/STOCK_[ticker]_[company]_Research_Report.md`.

Recommended order based on Screener Score:
1. **AETHER (fictional)** - 8.6 / Strong - highest score, defensible moat, clean balance sheet
2. **MEDIVA (fictional)** - 7.9 / Quality - net cash, sticky customer base, regional concentration risk
3. **TERRAGRID (fictional)** - 7.4 / Quality - best margin expansion in the cohort, execution-led moat

To deep-dive, reply with:
- **"Deep-dive Rank 1"** - invokes `stock-research-executor` for the top pick
- **"Deep-dive [TICKER]"** - invokes for a specific candidate
- **"Skip"** - keep the shortlist only

---

## Sources

### Bibliography

**A-Grade Sources** (1):
- Nifty Smallcap 250 Index constituent list [NSE India, accessed 2026, https://www.nseindia.com/products-services/indices-nifty-smallcap-250-index]

**B-Grade Sources** (5):
- Aether Industrial financials [Screener.in, accessed 2026, https://www.screener.in/company/AETHER/]
- Mediva Diagnostics financials [Screener.in, accessed 2026, https://www.screener.in/company/MEDIVA/]
- Terragrid Infra financials [Screener.in, accessed 2026, https://www.screener.in/company/TERRAGRID/]
- Voltlink Power financials [Screener.in, accessed 2026, https://www.screener.in/company/VOLTLINK/]
- Neurolume Medtech financials [Screener.in, accessed 2026, https://www.screener.in/company/NEUROLUME/]

**C-Grade Sources** (8):
- Trendlyne DVM score data [Trendlyne, accessed 2026, https://trendlyne.com/equity/stock-screener/]
- HDFC Securities small-cap basket Q1 2026 [HDFC Securities, Q1 2026]
- Motilal Oswal mid/small cap idea list [Motilal Oswal, accessed 2026]
- Kotak small-cap picks screen [Kotak Securities, accessed 2026]
- Moneycontrol sector coverage: Industrials [Moneycontrol, accessed 2026, https://www.moneycontrol.com]
- Economic Times Markets: Healthcare [ET Markets, accessed 2026]
- Mint Markets: Industrial growth [Mint, accessed 2026]
- Business Standard Markets [Business Standard, accessed 2026]

**D-Grade Sources** (3):
- Valuepickr forum mentions (used for [SC] verification only) [Valuepickr, accessed 2026]
- Twitter/X discussion threads on NSE small caps [accessed 2026]
- Reddit r/IndiaInvestments mentions [accessed 2026]

**Total Sources**: 17 (1 A-grade, 5 B-grade, 8 C-grade, 3 D-grade)

### Data Sources

| Source | Type | Quality | URL | Used For |
|--------|------|---------|-----|----------|
| Screener.in | Screener | B | https://www.screener.in/explore/ | All 5 shortlisted companies (financials, ratios) |
| Trendlyne | Screener | B | https://trendlyne.com/equity/stock-screener/ | DVM scores, sector filter |
| NSE India | Index | A | https://www.nseindia.com | Index constituent scan |
| Moneycontrol | Media | C | https://www.moneycontrol.com | Sector discovery, news |
| HDFC Securities | Research | C | (internal report) | Brokerage screen |
| Motilal Oswal | Research | C | (internal report) | Brokerage screen |
| Kotak Securities | Research | C | (internal report) | Brokerage screen |
| ET Markets | Media | C | https://economictimes.indiatimes.com/markets | Sector discovery |
| Valuepickr | Forum | D | https://valuepickr.com | [SC] verification |

---

## Post-Report Handoff Prompt

```
Would you like me to invoke stock-research-executor for any of these candidates?

Reply with:
  (a) "Deep-dive Rank 1"     - invoke the executor for the top pick
  (b) "Deep-dive [TICKER]"   - invoke for a specific candidate
  (c) "Skip"                 - keep the shortlist only, no handoff
  (d) "Adjust"               - change a parameter first, then handoff

A one-line handoff will pass: ticker, company, market, style, holding period.
The executor will ask for any additional parameters it needs.
```

---

## Example 1 - Methodology Note

This example demonstrates:

1. **A complete Indian small-cap growth screen** with 5 candidates (3 PASS, 2 BORDERLINE-promoted)
2. **The 4-dimension weighted Screener Score** (0-10.0) with text bands (Strong / Quality / Mixed / Weak)
3. **Moat ratings 0-5** with one-line justification (aligned with `stock-research-executor` Phase 7)
4. **Realistic Indian small-cap data** (₹1,500-4,500 Cr market cap, NSE-listed, Indian fiscal year)
5. **Style-Criteria Compliance Summary** showing each candidate against the four primary filters
6. **Documented FAIL examples** in the methodology section, so the pattern of exclusion is visible
7. **Limitations and Caveats** documenting the borderline promotions and the moat-rating subjectivity
8. **The Post-Report Handoff Prompt** at the end, in the exact format the screener will produce

Use this as a pattern-match reference for the next time you run a real small-cap growth screen.

---

**Disclaimer**: This screener output is for educational and informational purposes only and does not constitute investment advice. All investments involve risk, including the loss of principal. Past performance does not guarantee future results. Always conduct your own due diligence and consult with a qualified financial advisor before making investment decisions.

**Disclaimer on the example itself**: All company names, tickers, and financial figures in this example are fictional and used solely to demonstrate the screener's output format. Any resemblance to real companies is coincidental.
