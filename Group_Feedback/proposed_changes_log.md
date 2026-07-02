# Proposed Changes Log

**Source documents:** `D2P Project Package Comments LN.docx`, `Website review.docx`  
**Date of feedback:** 27 May 2026  
**Compiled:** 2026-06-25  
**Ranked:** most important → least important

---

## Priority 1 — Factual errors / live placeholders on public site

### 1. `posts/policy_brief.html` (Hub) — Terbufos projected impact is an unfilled placeholder
**Source:** Website review.docx  
The live Hub page currently displays:  
> *"Projected impact:. X lives saved at X cost"*  

This is an exposed placeholder on a publicly accessible page. The impact figure and cost for the terbufos brief (Brief 3) must be filled in or replaced with the interim formulation used elsewhere: *"≥50% reduction in attributable serious poisonings or automatic escalation to full ban (Option T3)."*

---

### 2. `posts/policy_brief.html` (Hub) — Surveillance "150 deaths averted" conflicts with Brief 1's own metric
**Source:** Website review.docx  
The Hub currently shows:  
> *"Projected impact: 150 deaths averted/year for R157,000"*  
> *"Headline recommendation: Adopt the Surveillance MVP — ~R157,000/year, ~150 deaths averted/year"*  

Brief 1 explicitly states that surveillance does **not** avert deaths — it raises P_detect, and burden reduction requires the coordination and terbufos responses (Briefs 2 and 3). Claiming "150 deaths averted" for surveillance alone contradicts the brief's own framing and could mislead decision-makers. The Hub summary for Brief 1 should be revised to use the P_detect metric: *"Detection from <5% to ~19% of true cases."*

Additionally, the cost figure is inconsistent: R157,000 on the Hub vs. R137,000 (MVP Year 2+ operating cost) stated in Brief 1. Confirm and align to the correct figure.

---

### 3. `posts/policy_brief.html` (Hub) — Sentence fragment in Coordination summary
**Source:** Website review.docx  
The Hub Coordination section contains the fragment:  
> *"For — ~R145,000/year, ~957 deaths averted/year at scale."*  
The word "For" is a dangling fragment with no preceding clause. This sentence needs to be completed or removed.

---

### 4. `posts/policy_brief.html` (Hub) — Typo: "useuse draw"
**Source:** Website review.docx  
In the "Shared evidence base" section:  
> *"All three briefs useuse draw their numerical claims from a single shared parameter set…"*  
Fix to: *"All three briefs draw their numerical claims from…"*

---

### 5. `posts/surveillance_policy.qmd` (Brief 1) — Open author note: SAMRC / Prinsloo et al. citation
**Source:** Website review.docx  
Option 5 section contains:  
> *"Some signal is captured in the SAMRC Injury and Mortality Survey (Prinsloo et al.) (\*\*\* NOTE FOR THE AUTHOR \*\*\*)."*  
This flag is visible in the rendered output. The citation must be completed or the note removed before the next publish.

---

## Priority 2 — Substantive missing content (policy logic / framing)

### 6. `posts/policy_brief.html` (Hub) — Add "Why all three are necessary – and the risks of partial adoption"
**Source:** D2P Project Package Comments LN.docx  
Expand the "How the three briefs fit together" section by adding the following below the figure:

> - *Surveillance without coordination generates notifications that lead nowhere. Better detection will increase the visible case count; without a closed-loop investigation and referral workflow (Brief 2), the system will see more poisonings but respond to none of them — a politically damaging outcome.*
> - *Coordination without surveillance has nothing to coordinate. The closed-loop workflow requires a reliable signal to trigger investigation and source removal. At the current <5% detection rate, it would sit largely idle.*
> - *Regulatory restriction without coordination is unenforceable. A terbufos restriction or ban is a paper policy unless the compliance monitoring, source-removal trigger, and enforcement feedback loop (Brief 2) are operational.*
> - *Coordination and surveillance without product-specific action lack a measurable first target. Terbufos, as the leading cause of severe OP mortality, is the concrete target that proves the system works and justifies further investment.*
> - *Conclude: "The recommendation is a single, integrated package. Adopting fewer than all three components will not achieve the projected impact and may actively create problems — more visible cases with no response mechanism, or a ban with no enforcement capacity."*

---

### 7. `posts/surveillance_policy.qmd` (Brief 1, §5 Option 4) — Add "Why Option 4 is essential" before the Governance paragraph
**Source:** D2P Project Package Comments LN.docx  
> *"Without it, improved detection (Options 1 and 2) will generate more notifications that lead nowhere. The system will see more poisonings but respond to none — a politically damaging outcome that undermines sustained investment. Option 4 is the minimum investment to convert detection into investigation and source removal. At ~R45,000 setup and ~R35,000/year operating, it is the lowest-cost component of the package and the bridge that prevents the MVP investment from being wasted. It directly enables the Coordination brief."*

---

### 8. `posts/coordination_policy.qmd` (Brief 2) — Clarify institutional home (NICD as coordinating hub)
**Source:** D2P Project Package Comments LN.docx  
Add a named callout or subsection:  
> *"Institutional home: NICD is the recommended coordinating hub. NICD already hosts the NMC platform, has epidemiological expertise, and has existing relationships with provincial health and DALRRD. A dedicated coordination officer (0.5 FTE, included in the R145,000/year) would sit within NICD's outbreak response or environmental health unit. NICD maintains the workflow platform, tracks KPIs, manages the intelligence feed, and produces quarterly performance reports — but does not conduct field investigations or enforcement (those remain with provincial EHPs and DALRRD)."*

---

### 9. `posts/coordination_policy.qmd` (Brief 2) — Add enforcement and accountability mechanisms
**Source:** D2P Project Package Comments LN.docx  
Add to the full package description:
- CIF completion within 48 hours and DALRRD referral closure within 30 days shall be district-level KPIs, reported quarterly on the joint dashboard.
- Quarterly performance reports go to the provincial Director-General, copied to national DGs of Health and Agriculture.
- Persistent non-compliance (<70% completion for two consecutive quarters) triggers escalation to the provincial DG with a required remedial plan.
- The joint KPI dashboard shall be accessible to parliamentary portfolio committees on Health and Agriculture; aggregate, de-identified data shall be public.

---

### 10. `posts/coordination_policy.qmd` (Brief 2) — Add "Dependencies" and "Limitations" subsections
**Source:** D2P Project Package Comments LN.docx  
**Dependencies:**
- Input from Brief 1, Option 4: The structured CIF and agricultural extension module are required to provide standardised investigation data. Without them, the coordination workflow lacks consistent, actionable inputs.
- Output to Brief 3, T2 enforcement: The coordination system provides the source-removal trigger, joint compliance task force, and intelligence feed needed to enforce terbufos restrictions. T2 is conditional on this package being operational.

**Limitations:** The coordination package does not: (a) increase detection (that is Brief 1); (b) guarantee successful prosecution (depends on DALRRD capacity and evidentiary standards); or (c) address the root causes of intentional self-harm. It is a necessary, not sufficient, condition for effective governance.

---

### 11. `posts/surveillance_policy.qmd` (Brief 1, §9) — Add MVD formal adoption statement to Recommended Next Steps
**Source:** D2P Project Package Comments LN.docx  
> *"The MVD specifications in Appendix A should be formally adopted by NDoH as the data standard for all NMC pesticide notifications, PIH ingest, and NHLS auto-notifications. This ensures all three streams speak the same data language from the outset, enabling cross-stream linkage and agent-specific attribution."*

---

## Priority 3 — Structural additions (new sections / tables)

### 12. `posts/policy_brief.html` (Hub) — Add "Cost of Inaction" block
**Source:** D2P Project Package Comments LN.docx  
Add after the "Total Package at a Glance" section:  
> *"Cost of inaction. The current system detects <5% of true pesticide poisonings, at an annual societal burden of ~R2.34 billion, of which ~R80 million falls directly on the public health budget. Every year of delay means continued preventable deaths and expenditure, against a proposed investment of ~R282,000/year — a 0.35% uplift on current health-system pesticide-related costs."*

---

### 13. `posts/surveillance_policy.qmd` (Brief 1) — Add "Cost of Inaction" statement in opening
**Source:** D2P Project Package Comments LN.docx  
> *"The current surveillance system detects <5% of true poisonings. Every year at this detection rate, approximately [X] deaths go unrecorded and uninvestigated, and the evidence base for regulatory action remains weak."*

---

### 14. `posts/coordination_policy.qmd` (Brief 2) — Add "Cost of Inaction" statement in opening
**Source:** D2P Project Package Comments LN.docx  
> *"Without a closed-loop coordination mechanism, notifications lead nowhere. The R80 million/year the health system already spends on poisoning care is not leveraged to prevent future cases."*

---

### 15. `posts/policy_brief.html` (Hub) — Add "Total Package at a Glance" summary table
**Source:** D2P Project Package Comments LN.docx  
Add after the three brief summaries:

| Component | Near-Term Recommendation | Steady-State Annual Operating Cost | Expected Impact |
|---|---|---|---|
| Surveillance | MVP (Options 1+2) | ~R137,000 | Detection from <5% to ~19% of true cases |
| Coordination | Full Package | ~R145,000 | ~957 deaths averted/year at scale |
| Terbufos | T2 restriction with 24-month evaluation gate | (see Brief 3) | ≥50% reduction in attributable serious poisonings or auto-escalation to full ban |

*Combined near-term operating cost: ~R282,000/year.*

---

### 16. `posts/coordination_policy.qmd` (Brief 2) — Add "Implementation at a Glance" appendix
**Source:** D2P Project Package Comments LN.docx  
Several cells are `[TBD]` and must be filled before publishing this appendix.

| Component | Recommendation | Lead Agency | Year 1 Cost | Steady-State Cost | Expected Impact | Depends On |
|---|---|---|---|---|---|---|
| Surveillance | Adopt MVP | NICD | R377,000 | R137,000 | P_detect 5%→19% | — |
| Surveillance | Adopt Option 4 (CIF) | NDoH/NICD | R80,000 | R35,000 | Enables source removal | MVP |
| Coordination | Adopt Full Package | NICD (hub), DALRRD (enforcement) | [TBD] | R145,000 | ~957 deaths averted/yr | Brief 1 Opt. 4 |
| Terbufos | Adopt T2 + 24-mo gate | DALRRD, NDoH | [TBD] | [TBD] | ≥50% reduction or auto T3 | Brief 2 (Coordination) |
| Financing | Ring-fence pesticide levy | DALRRD/Treasury | — | [TBD] | Sustainable funding | Act 36 amendment |

---

## Priority 4 — Framing / navigation enhancements

### 17. `posts/policy_brief.html` (Hub) — Add one-sentence package summary above "The three policy briefs"
**Source:** D2P Project Package Comments LN.docx  
> *"In brief: Invest ~R282,000/year in integrated surveillance and coordination infrastructure. Immediately tighten restrictions on terbufos with a 24-month review that triggers a full ban if attributable serious poisonings do not fall by a pre-agreed margin. Projected impact: ~957 deaths averted/year at scale."*

---

### 18. `posts/surveillance_policy.qmd` (Brief 1, §8) — Add integrated surveillance dashboard row/footnote to Implementation Considerations table
**Source:** D2P Project Package Comments LN.docx  
> *"Integrated surveillance dashboard: Housed at NICD, with access tiers: (a) internal line-list for NICD signal detection; (b) aggregate provincial/district dashboards for local response; (c) public-facing de-identified aggregate view for accountability and advocacy."*

---

### 19. `index.qmd` (Homepage) — Add overarching intro sentence at top of page
**Source:** D2P Project Package Comments LN.docx  
> *"Strengthening Pesticide Poisoning Surveillance and Response in South Africa — A policy package proposing an integrated, costed strategy to close the detection gap, coordinate health and agriculture responses, and restrict the most hazardous organophosphate pesticide (terbufos)."*

---

### 20. `index.qmd` (Homepage) — Add "Table of Contents" style links
**Source:** D2P Project Package Comments LN.docx  
Add navigational links at the end of the page to:
- The Policy Brief Hub
- The three individual policy briefs (Surveillance, Coordination, Terbufos)
- The technical appendices (Decision Model, Costing Analysis, Surveillance Concept Note, Parameters Hub)

---

## Open items requiring author input before implementation

| # | Item | Location | Blocker |
|---|---|---|---|
| A | Fill in terbufos projected impact and cost | Hub + Brief 3 | Terbufos model not yet finalised |
| B | Resolve SAMRC / Prinsloo et al. citation | Brief 1, Option 5 section | Reference incomplete |
| C | Confirm correct MVP operating cost (R137k or R157k) | Hub and Brief 1 | Figures are currently inconsistent |
| D | Populate `[TBD]` Year 1 costs for Coordination and Terbufos rows | Brief 2 appendix | Costing not yet finalised |
| E | Confirm [X] deaths figure for Brief 1 Cost of Inaction | Brief 1 opening | Exact figure needs to be calculated |
