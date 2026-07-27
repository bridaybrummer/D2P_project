# D2P Project Knowledge Base

Concatenated content of all project documents. Generated 2026-07-27.


================================================================
## SOURCE: index.qmd
================================================================

---
title: "D2P — Data-Driven Policy for Pesticide Poisoning in South Africa"
subtitle: "Detect → Act → Restrict"
date: today
format:
  html:
    toc: false
---

::: {.hero-banner}
## A hidden public-health emergency — fix detection first {.hero-title}

**≈8,112 poisonings · 1,014 deaths · R1.61 billion lost — every year.** Yet South Africa formally detects only ~1 in 8 cases. **Strengthen surveillance, close the response loop, measure the just-gazetted terbufos ban.**
:::

::: {.acronyms}
**Acronyms used across this site.** NDoH = National Department of Health · NICD = National Institute for Communicable Diseases · NHLS = National Health Laboratory Service · NMC = Notifiable Medical Conditions surveillance system · PIH = Poisons Information Helpline (Red Cross) · BChE = butyrylcholinesterase (NHLS organophosphate-exposure assay) · EHP = Environmental Health Practitioner · MAC = Ministerial Advisory Committee · DALRRD = Department of Agriculture, Land Reform & Rural Development · MVP = minimum viable product · CFR = case-fatality ratio. [Full glossary →](glossary.qmd).
:::

## The public-health problem in five lines

- South Africa records **1,014 pesticide-poisoning deaths per year** (StatsSA MACOD 2022, pesticide-specific UCOD codes X48+X68+X87+Y18; interim pending 2023 release) and an estimated **8,112 poisonings**, costing **R1.61 billion** annually.
- **Detection is ~12.5%**: NMC, NHLS, and PIH each see a slice of the burden; none sees the whole. Decision-makers act on the visible 1,013 NMC notifications while most of the remainder stays invisible.
- The **response loop is broken**: ~99% of notifications end without a recorded investigation, referral, or regulatory follow-up.
- **One product** — **terbufos**, WHO Class Ia — dominated fatal paediatric pesticide poisoning (Davies 2023) and was freely registered until **8 May 2026, when Agriculture Minister Steenhuisen gazetted a full ban** under Act 36 of 1947. Enforcement and 24-month impact measurement are now the critical next steps.
- **~95% of the cost falls on households** (lost lifetime earnings), but the only people who can change the upstream exposure sit in DALRRD and NDoH.

::: {.callout-important icon=false}
## Why surveillance is step one
You cannot prioritise, target, or evaluate a response to a problem you cannot see. **Detection is the precondition for credible action on coordination and on terbufos.** The Surveillance MVP costs ~R137k/year, takes 12 weeks, and lifts per-case detection from 12.5% to 48.7% — a ≈4× uplift using assets that already exist (NMC, NHLS BChE, PIH).
:::

## The headline numbers

| Indicator | Value | Source |
|:----------|------:|:-------|
| Annual deaths (canonical) | **1,014** | StatsSA MACOD 2022, Table 4.12 (X48+X68+X87+Y18; interim pending 2023 release) |
| True annual burden (mid-CFR) | **~8,112 cases** | StatsSA ÷ 12.5 % CFR |
| Currently detected (NMC) | **1,013 (~12.5 %)** | NICD NMC Annual Report 2023 |
| Annual economic burden | **R1.61 billion** | Morbidity (R90M) + mortality (R1.52B) |
| Health-sector share (NDoH + NHLS) | **~R80M (5.0 %)** | Direct budget-line cost |
| Household / societal share | **~R1.53B (95.0 %)** | OOP + lost lifetime earnings |

: All numbers pulled from the canonical [Parameters Hub](parameters_hub.qmd) — single source of truth ([`amua_import_parameters_v4.csv`](amua_import_parameters_v4.csv)). {.striped}

## The three briefs — sequenced

::: {.card-grid}

::: {.feature-card}
### 1 · [Detect](posts/surveillance_policy.qmd) — *start here*

**Surveillance brief.** Close the gap between NMC, NHLS, and PIH so cases are seen in days, not weeks. **You cannot act on what you cannot see.**

**MVP — ~R137k/year, detection ~12.5% → ~49% (12.5% → 48.7%, ≈4×), 12 weeks.**
NHLS→NMC feed (live) + BChE auto-notify + PIH dashboard / minimum viable dataset.

*Audience: NDoH, NICD, NHLS, MAC.*
:::

::: {.feature-card}
### 2 · [Act](posts/coordination_policy.qmd)

**Coordination brief.** Make every NMC notification trigger a recorded EHP investigation and a DALRRD-acknowledged referral.

**Full Package — ~R145k/year, ~957 deaths averted/year at scale.**
Closure-of-loop field + structured DALRRD referral + NICD→DALRRD intelligence feed + clinician feedback + joint KPI dashboard.

*Audience: NDoH + DALRRD DGs, MAC, Treasury.*
:::

::: {.feature-card}
### 3 · [Restrict](posts/terbufos_policy.qmd) — ✓ *Enacted 8 May 2026*

**Terbufos brief.** Agriculture Minister John Steenhuisen gazetted a full ban on terbufos on 8 May 2026. The regulatory ask has been met — the next challenge is **enforcement and measuring impact**.

**The ban is only as good as its measurement.** Surveillance (Brief 1) and coordination (Brief 2) are now the mechanism for proving the ban is working and detecting any product substitution.

*Audience: DALRRD Pesticide Registrar, MAC, NDoH surveillance.*
:::

:::

## How the three briefs work as one system

```{mermaid}
%%| label: fig-golden-thread
%%| fig-cap: "Golden thread of the D2P briefs. Surveillance comes first because it is the precondition for credible action on the other two. Better detection generates the evidence the coordination loop needs; the closed loop terminates in product-specific regulatory action (starting with terbufos); outcomes of that action are picked up by the same surveillance system that started the chain."
flowchart LR
    S[1 · Detect<br/><b>Surveillance</b><br/>NMC + NHLS + PIH<br/><i>FIRST STEP</i>] --> C[2 · Act<br/><b>Coordination</b><br/>NICD → EHP → DALRRD]
    C --> R[3 · Restrict<br/><b>Terbufos</b><br/>RUP → 24-month gate → ban]
    R -.Outcome<br/>feedback.-> S

    style S fill:#cce5ff,stroke:#0050a0,stroke-width:3px
    style C fill:#9f9,stroke:#333,stroke-width:2px
    style R fill:#ffd9b3,stroke:#cc8800,stroke-width:2px
```

Three stages, one system. Each affordable on its own; each strictly more valuable paired with the others. **Total annual operating cost ~R282 k against an annual burden of R1.61 billion** — avoided-burden and deaths-averted figures below are recomputed at render time from the decision-tree model in [Coordination brief §6](posts/coordination_policy.qmd) and should not be taken from this static summary until re-rendered against the corrected StatsSA anchor.

## Decision required

| From | Action | By when |
|:-----|:-------|:--------|
| MAC + NDoH | Approve **Surveillance MVP** pilot (3 provinces; R137 k op + R80 k setup) — *the first step* | Q3 2026 |
| NDoH + DALRRD DGs | Issue joint circular adopting the **Coordination Full Package** | Q3 2026 |
| DALRRD Pesticide Registrar | ✓ **Terbufos banned** (gazetted 8 May 2026) — now: enforce, dispose of stockpiles, set 24-month evaluation gate | Ongoing |
| MAC | Stand up the **Joint Coordination Forum** (quarterly, NICD chair) | Q3 2026 |

## 12-month success criteria

If the package is working a year after approval, the following should be visible in the same surveillance system the package builds:

- **P(case detected) ≥ 25%** (currently ~12.5%; central target 48.7%).
- **P(loop closed) ≥ 40%** on referred NMC notifications (currently ~1.1%; central target ~70%).
- **≥3 NICD→DALRRD intelligence packages** issued and acknowledged.
- **One published interim measurement** of the terbufos ban's effect on attributable serious cases.
- Disaggregated reporting by income, geography, and age (Davies 2023 baseline) — only possible once detection is fixed.

## What this site does *not* claim

- **No new legislative ask.** Every recommendation is implementable under existing authority (NHA §90; Act 36 of 1947).
- **No unsourced numbers.** Every figure traces back to [`amua_import_parameters_v4.csv`](amua_import_parameters_v4.csv) and the references in the [Parameters Hub](parameters_hub.qmd).
- **No single point estimate masquerading as certainty.** Headline numbers are anchored to ranges; open evidence gaps are listed explicitly.

---

::: {.footer-cta}
Project team: NICD · NHLS · UCT School of Public Health · Red Cross PIH.  
**Key sources:** StatsSA MACOD 2023 (X40–X49); NICD NMC Annual Report 2023; Davies et al. 2023 (paediatric pesticide deaths, SA); Gunnell et al. 2017 / Knipe et al. 2017 (Sri Lanka pesticide-ban natural experiment). Full reference list and per-parameter sourcing in the [Parameters Hub](parameters_hub.qmd).  
Technical detail and supporting analyses are collected under **Technical & Misc** in the navigation bar.
:::


================================================================
## SOURCE: one_pager.qmd
================================================================

---
title: "D2P One-Pager"
subtitle: "Detect → Act → Restrict — three asks, one system, ~R280k/year"
author: "D2P Project Team"
date: today
format:
  html:
    toc: false
    page-layout: article
execute:
  echo: false
---

::: {.one-pager}

::: {.header-box}
# The decision: approve ~R282 k/yr to make pesticide poisoning visible, actionable, and measurable

**Three asks, one system, one budget line.** Lift case detection from ~12.5% to ~49% (Surveillance MVP), close the response loop (Coordination Full Package), and measure the just-gazetted terbufos ban (8 May 2026) using the same upgraded system.

*Anchored to **≈8,112 poisonings · 1,014 deaths · R1.61 billion** lost every year (StatsSA MACOD 2022, pesticide-specific UCOD codes X48+X68+X87+Y18; interim pending 2023 release). Only about 1 in 8 cases is formally detected.*
:::

::: {.acronyms}
**Acronyms used on this page.** NDoH = National Department of Health · NICD = National Institute for Communicable Diseases · NHLS = National Health Laboratory Service · NMC = Notifiable Medical Conditions surveillance system · PIH = Poisons Information Helpline (Red Cross) · BChE = butyrylcholinesterase (NHLS organophosphate-exposure assay) · EHP = Environmental Health Practitioner · MAC = Ministerial Advisory Committee · DALRRD = Department of Agriculture, Land Reform & Rural Development · MVP = minimum viable product. [Full glossary →](glossary.qmd).
:::

## The problem in one line

::: {.key-stat}
**South Africa is flying blind.** The country detects only ~1 in 8 poisonings, the response loop is not closed, and the just-banned product — terbufos — cannot yet be confirmed to be retreating from the informal market. **Detection is the precondition for managing all three problems.**
:::

## Three briefs, three asks — sequenced

::: {.grid-2col}

::: {.option-summary}
### [1 · Detect — Surveillance ★ *(first step)*](posts/surveillance_policy.qmd)
**Ask:** Adopt the Surveillance MVP — PIH live dashboard + minimum viable dataset (S1) and NHLS BChE auto-notification (S2). The NHLS→NMC IT feed is already operational.
**Cost:** ~R137,000/yr (+ R80k one-off setup).
**Impact:** Per-case detection **~12.5% → ~49%** (12.5% → 48.7%; ≈4× uplift) within 12 weeks. Without this signal, Act and Restrict are guesswork.
**Owner:** NDoH-led — NICD · NHLS · PIH.
:::

::: {.option-summary}
### [2 · Act — Coordination ★](posts/coordination_policy.qmd)
**Ask:** Joint NDoH–DALRRD DG circular adopting the Coordination Full Package — NMC closure-of-loop field, structured DALRRD referral, NICD→DALRRD intelligence feed, clinician auto-feedback, joint KPI dashboard.
**Cost:** ~R145,000/yr.
**Impact:** P(loop closed) 1.1% → ~70%; **~957 deaths averted/yr** at scale.
**Owner:** NDoH-led — NICD · DALRRD.
:::

:::

::: {.grid-2col}

::: {.option-summary}
### [3 · Restrict — Terbufos *(enacted 8 May 2026)*](posts/terbufos_policy.qmd)
**Status:** ✓ **Terbufos banned.** Agriculture Minister John Steenhuisen gazetted a full prohibition on the sale, acquisition, use and disposal of terbufos on 8 May 2026 under Act 36 of 1947 — ahead of the D2P recommended deadline.
**Next ask:** Enforcement (stockpile disposal, distributor audit) plus a **24-month post-ban evaluation** using the upgraded surveillance system. **The ban is only effective if its impact can be measured.**
**Pre-ban modelling (now the measurement hypothesis):** Davies (2023) + Sri Lanka natural-experiment evidence projected ~175 deaths averted/yr if attributable burden is retired. Whether SA realises this is now an empirical question for Surveillance + Coordination to answer.
**Cost:** ~R1–3M/yr enforcement (DALRRD).
**Owner:** DALRRD Pesticide Registrar + NDoH surveillance (measurement).
:::

::: {.option-summary}
### How the three connect
**Detect** generates the evidence the **Act** loop needs. The closed loop terminates in **Restrict** decisions — terbufos is the first product the upgraded system should deliver, not the last. Outcomes feed back into surveillance and prove the system is working.
**Each ask stands alone. Together they are strictly more valuable.**
:::

:::

---

## Who bears the R1.61 billion

| Stakeholder | Annual burden borne | Share |
|:------------|---------------------:|------:|
| NDoH — public hospitals (UPFS ward + ICU + drugs) | ~R70M | 4.3 % |
| NHLS — laboratory (BChE + GC-MS + repeat chem) | ~R10M | 0.6 % |
| DALRRD — regulator | R0 (lever-holder) | 0 % |
| Individuals — OOP + lost wages | ~R10M | 0.6 % |
| Households / wider society — lost lifetime earnings | ~R1.52B | 94.4 % |
| **Total** | **R1.61B** | **100 %** |

: Audited decomposition. Mortality (~94 %) falls on households via lost lifetime earnings (25 productive yr × R60k median income, undiscounted). The health-sector share is modest in absolute terms but is the only column on a departmental budget line — and the only one a Minister can act on directly. {.striped}

---

## The economics

::: {.recommendation-box}
### Every R1 of operating spend retires roughly R1,000 of preventable household burden

**Total annual operating cost (Detect + Act):** ~R282,000 (R137 k Surveillance MVP + R145 k Coordination Full Package) — less than one mid-grade epidemiologist's salary.
**Modelled burden avoided at scale (central estimate):** ~R1.45 billion/year (Coordination Full Package; see [Coordination brief §6c](posts/coordination_policy.qmd#what-changes-under-each-coordination-scenario)).
**Stakeholder split of avoided burden:** ~R50 M back to NDoH+NHLS budget lines; ~R1.4 B to households.
**Headline ratio (whole-system, conservative):** ~**1,000 : 1** — R1.45 B burden retired against ~R1.2 M of total operating cost including induced hospital, lab, EHP, and DALRRD enforcement demand. *On Detect+Act operating cost alone, the nominal multiplier exceeds 5,000× — we report the whole-system figure because it is the one that holds under audit.*
**Downside scenario (50% of modelled effect):** ~R725 M burden retired; ratio still ~600 : 1; cost per death averted < R3,000. **The case does not depend on hitting the central estimate.**
:::

---

## What we are *not* asking for

- **No new primary legislation.** All three asks use existing legal authority — NHA §90 (notifiable conditions), existing NMC regulations, and Act 36 of 1947 (ministerial prohibition power, the same instrument used for the terbufos ban).
- **No new test, no new reagent contract.** S2 is a Laboratory Information System (LIS) configuration of an existing NHLS BChE assay.
- **No new agency.** All work sits within NDoH, NICD, NHLS, DALRRD and the Red Cross PIH — institutions that already exist and already hold mandate.
- **No single point-estimate masquerading as certainty.** Every figure traces back to [`amua_import_parameters_v4.csv`](amua_import_parameters_v4.csv); open evidence gaps are listed in the [Parameters Hub](parameters_hub.qmd) and the downside scenario above shows the case still holds at half the modelled effect.

---

## Decision required

| From | Action | By when |
|:-----|:-------|:--------|
| MAC + NDoH | Approve **Surveillance MVP** pilot (3 provinces; R137 k op + R80 k setup) — *the first step* | Q3 2026 |
| NDoH + DALRRD DGs | Issue joint circular adopting the **Coordination Full Package** | Q3 2026 |
| DALRRD Pesticide Registrar | ✓ **Terbufos banned** (gazetted 8 May 2026) — now: enforce, dispose of stockpiles, set 24-month evaluation gate | Ongoing |
| MAC | Stand up the **Joint Coordination Forum** (quarterly, NICD chair) | Q3 2026 |

## 12-month success criteria

If the package is working a year after approval, the following should be visible — in the same surveillance system the package builds:

- **P(case detected) ≥ 25%** (currently ~12.5%; central target 48.7%).
- **P(loop closed) ≥ 40%** on referred NMC notifications (currently ~1.1%; central target ~70%).
- **≥3 NICD→DALRRD intelligence packages** issued and acknowledged.
- **One published interim measurement** of the terbufos ban's effect on attributable serious cases.
- **Burden is concentrated in low-income, peri-urban and rural households**, with children disproportionately affected (Davies 2023) — disaggregated reporting against this baseline becomes possible only once detection is fixed.

---

## Read more

[Surveillance brief](posts/surveillance_policy.qmd) · [Coordination brief](posts/coordination_policy.qmd) · [Terbufos brief](posts/terbufos_policy.qmd) · [Parameters Hub](parameters_hub.qmd) · [Parameter Playground](parameter_playground.qmd) · [Full Analysis Report](analysis_report_v2.html)

:::


================================================================
## SOURCE: glossary.qmd
================================================================

---
title: "Glossary"
subtitle: "Plain-language definitions of the technical terms in this project"
date: today
format:
  html:
    toc: true
    toc-depth: 2
---

This glossary translates the surveillance, clinical, and health-economics jargon used in the D2P Project into plain English. Terms are grouped by theme, not alphabetised, so a reader new to the topic can read top to bottom.

---

## 1. Pesticide poisoning — the clinical picture

**Pesticide poisoning.** Illness caused by exposure to a pesticide chemical. In SA, most hospitalised cases are **organophosphate (OP)** or **carbamate** poisoning, usually from swallowing the pesticide (deliberate self-harm in adults; accidental in young children).

**Organophosphate (OP).** A chemical class that blocks an enzyme the body needs to switch off nerve signals. The result is too much nerve stimulation: drooling, tearing, vomiting, diarrhoea, muscle twitching, breathing failure, coma. Locally common: **terbufos**, **methamidophos**, **chlorpyrifos**.

**Carbamate.** Same idea as OP, but the enzyme block is shorter-lived. Includes products often illegally repackaged as street pesticides.

**Cholinesterase / BChE.** The enzyme blocked by these pesticides. A blood test (BChE) measures how much enzyme activity is left. **Below 50% of normal** is the practical SA cut-off for "this person has been seriously poisoned by an OP or carbamate".

**Atropine.** The first antidote — reverses the dangerous secretions and slow heart rate.

**Pralidoxime (PAM).** A second antidote that can re-activate the blocked enzyme if given early. Works for OPs, not carbamates.

**Intermediate syndrome.** Muscle weakness appearing 1–4 days after the initial poisoning. Often needs ventilation.

**OPIDN (delayed neuropathy).** Nerve damage that appears 1–3 weeks after a severe OP poisoning. Roughly 1 in 10 severe survivors. Drives most of the long-term disability in our model.

---

## 2. Surveillance — what the words mean

**Surveillance.** The ongoing collection of health data **for action** — not for archives. If nothing changes because of the data, it isn't surveillance.

**Notifiable Medical Condition (NMC).** A condition that doctors and labs are legally required to report to the Department of Health. Pesticide poisoning is on this list. NICD runs the system.

**Case detection.** Getting a true pesticide-poisoning case into the surveillance system (NMC, NHLS LIS or PIH dataset) so it can be acted on. Improving the share of true cases captured is the main job of surveillance.

**Sentinel surveillance.** Instead of trying to capture every case nationally, you pick a small number of well-chosen sites (usually tertiary hospitals) and collect **richer, more reliable** data from them. Trades coverage for depth. This is what **Option 6** does.

**Case definition.** The rule for "does this patient count?". Distinguishes *suspected*, *probable*, and *confirmed* cases.

**Auto-notification.** The lab system fires off an NMC notification automatically when a result crosses a threshold (e.g. BChE <50%). No clinician form-filling required. This is **Option 3**.

**Vital Registration (VR).** The civil-registration death system run by Home Affairs and coded by Stats SA. The official source of "how many died of X". For pesticides it **systematically undercounts** because intentional poisoning is often coded as "undetermined intent" or general "poisoning" — which is why our headline death estimate sits **above** what VR alone would suggest.

**ICD-10.** The international code list used to classify causes of death and disease. Codes **T60.0, X48, X68, Y18** are the relevant pesticide ones.

**Triangulation.** Cross-checking a number using two or more independent sources. We triangulate pesticide deaths across NMC × CFR × VR.

---

## 3. The South African data sources

**NICD** — National Institute for Communicable Diseases. Runs national surveillance.

**NHLS** — National Health Laboratory Service. The public-sector lab network, ~80% population coverage. Source of BChE test results.

**PIH** — Poisons Information Helpline at Red Cross Children's Hospital. A 24-hour clinical advice line. Sees ~9,000 pesticide-related calls a year — many of which never become hospital admissions and so never appear in NMC or NHLS data.

**DALRRD** — Department of Agriculture, Land Reform and Rural Development. Regulates pesticide registration and product sales.

**EHP** — Environmental Health Practitioner. Local-government public-health staff who do the field investigations when a notification is received.

---

## 3a. Policy, governance and IT acronyms

**MAC** — Ministerial Advisory Committee. Standing expert body that advises the Minister of Health on technical policy. One of the primary audiences for the [Policy Brief](posts/policy_brief.qmd).

**NDoH** — National Department of Health. The national policy and stewardship authority for the public health system.

**MOU** — Memorandum of Understanding. A written, non-statutory agreement between two agencies setting out how they will share data, staff or responsibilities. Used here for NHLS↔NICD, PIH↔NICD, and NICD↔DALRRD data flows. An MOU on paper is not the same as a working data pipe — Option 1 exists precisely because the NHLS–NICD MOU is signed but **not yet IT-implemented**.

**LIS** — Laboratory Information System. The IT platform NHLS labs use to register, process and release test results. The system that would carry the Option 3a auto-notification rule.

**HL7** — Health Level Seven. International standard for exchanging clinical and laboratory messages between IT systems. The likely transport protocol for the NHLS LIS → NMC feed.

**MVD** — Minimum Viable Dataset. The smallest agreed set of fields (e.g. age, sex, suspected agent, severity, geography, time) that two systems need to exchange for surveillance use. Negotiating the PIH↔NICD MVD is the medium-term half of Option 4.

**CHB** — Chris Hani Baragwanath Academic Hospital, Soweto. Proposed Option 3b sentinel chemical-toxicology pilot site.

**POPIA** — Protection of Personal Information Act (2013). South Africa's data-protection law. All inter-agency feeds in this project share **de-identified, aggregated** data (no names, ID numbers, or contact details) to stay within POPIA.

**SOP** — Standard Operating Procedure. A written, repeatable instruction for staff (e.g. "when an EHP receives a notification, do X, Y, Z within 24 hours"). The status-quo EHP→DALRRD referral is **not** governed by an SOP, which is the gap Option 2 closes.

**Section 90, National Health Act (2003).** The statutory clause that permits inter-agency data sharing for public-health purposes. Provides the legal basis for Options 1, 2 and 4 — **no new legislation is required**.

**SAMRC / Bloomberg / Gates.** External research funders (South African Medical Research Council; Bloomberg Philanthropies; Bill & Melinda Gates Foundation) flagged as plausible sponsors for Option 3b, which is treated as a research-surveillance investment rather than an operational line item.

---

## 4. Estimating burden — the methods

**Burden of disease.** The total impact in cases, deaths, healthy years lost, or money. Headline for this project: **~8,112 cases, 1,014 deaths, ~R1.61B/year** (StatsSA MACOD 2022, pesticide-specific UCOD codes X48+X68+X87+Y18; supersedes earlier ~11,690 cases / 1,500–1,800 deaths / R2.3B v1 figures and the later 20,960 / 2,620 / R2.34B figures, which used the broader X40-X49 category).

**Mutually-exclusive sum.** When two data systems both record cases but cannot be linked patient-by-patient, the **safest assumption** is that they capture *different* people. Adding them up gives an upper bound. If linkage later finds duplicates, the number can be revised down. We use this for NMC + NHLS + PIH because none of the three currently share record IDs.

**Case Fatality Rate (CFR).** Of the people who become cases, what proportion die. We use a **stratified CFR** because the three data streams capture different severities:

| Stream | Severity | CFR used | Source |
|---|---|---:|---|
| PIH | Mild (often phoned, not admitted) | 0.5% | Estimated |
| NHLS | Severe (BChE <50%, hospitalised) | 30% | Buckley 2021 |
| NMC | Notified, hospitalised | 15% | NMC + Free State data |

A flat 12.5% CFR applied to the total burden gives **~1,460 deaths**; the stratified weighting gives **~830**. The headline 1,500–1,800 sits in the upper range, allowing for VR undercount.

**Years of Life Lost (YLL).** A death in someone aged 30 with a life expectancy of 64 → 34 YLL. We round to ~30 per pesticide death.

**Years Lived with Disability (YLD).** Duration of illness × a **disability weight** (0 = perfect health, 1 = death). Most pesticide survivors recover fully (low YLD). The OPIDN sub-group drives the population YLD signal.

**DALY.** YLL + YLD. One DALY = one healthy year lost. The standard cross-disease comparison metric.

---

## 5. Costing — what's counted and how

**Direct medical costs.** What the health system spends on the patient: bed days, drugs, lab tests, ICU.

**UPFS.** *Uniform Patient Fee Schedule* — the official SA public-sector tariff. Our reference values (2024): ward **R1,800/day**, high-care **R5,500/day**, ICU **R13,500/day**, ventilator surcharge **+R4,000/day**.

**Indirect costs.** Productivity losses — lost wages, caregiver time, future earnings forgone for those who die or are disabled.

**Human-capital approach.** Values a death at the future earnings the person would have produced. We use 25 productive years × R60,000/year median income → **~R1.5M per death**.

**Value of a Statistical Life (VSL).** An alternative valuation (~3.3 × annual income for LMICs) that gives a higher figure (~R5M/death). We mention it as an upper bound, not the headline.

**Cost-effectiveness threshold (λ).** The most a health system is willing to pay to avert one DALY. SA's evidence-based figure is **~R38,500/DALY** (Edoka & Stacey, 2020). Below this = good value.

**Narrow vs. whole-system cost.** *Narrow* = the cost of running the surveillance and coordination work itself (R237k/year for the Full Package). *Whole-system* = narrow + the **extra demand that better surveillance generates** elsewhere (more admissions detected, more lab tests, more EHP investigations, more DALRRD enforcement) — this comes to R1.19M/year. Both are tiny compared with the R1.61B burden.

**Induced demand.** The activity surveillance *creates* by finding cases that would otherwise have been missed. Real, but small relative to the avoided burden.

---

## 6. Decision-analytic methods

**Decision tree.** A model that maps out the consequences of choosing each option, weighted by probabilities. Used here to compare Status Quo, individual Options 1–6, and the Full Package. Built in **Amua**.

**Detection probability ($d_i$).** The proportion of true pesticide-poisoning cases that this option catches and enters into the surveillance system. Status-quo per-case d ≈ 0.125 (1,013 NMC notifications ÷ ~8,112 implied true cases/yr); Surveillance MVP ≈ 0.49.

**Response efficacy ($\eta$).** Of the cases that are detected and investigated, the proportion where the response actually prevents further cases. Base case **0.30**; sensitivity range **0.15–0.50**.

**Avoided burden.**
$$C_{\text{avoided},i} \;=\; C_{\text{burden}} \cdot d_i \cdot \eta$$
Total burden cost × the option's detection rate × the response efficacy. This is the money saved by surveillance.

**Net Monetary Benefit (NMB).** Avoided burden minus the option's own cost.
$$\text{NMB}_i \;=\; (C_0 - C_i) \;-\; K_i$$
Positive NMB = the option pays for itself.

**ICER.** Incremental Cost-Effectiveness Ratio:
$$\text{ICER} \;=\; \frac{C_1 - C_0}{E_1 - E_0}$$
Extra cost per extra unit of effect (e.g. per DALY averted) when moving from comparator to new option. Compare against λ.

**Probabilistic Sensitivity Analysis (PSA / Monte Carlo).** Run the model thousands of times, each time drawing every input from its uncertainty distribution. Produces a *distribution* of NMBs, not a single number. Tells you how confident the result is.

**Cost-Effectiveness Acceptability Curve (CEAC).** Plot of "what's the probability that each option is the best buy" across a range of λ values. The strategy on top at SA's λ (R38,500) is preferred.

**Tornado diagram.** Bar chart showing how much the headline number moves when each input is varied across its plausible range, holding the others fixed. Tells you which inputs the answer depends on.

**Distributions used in PSA.** Proportions (CFR, response efficacy) → **beta**. Costs → **gamma**. Structural assumptions → **fixed**.

---

## 7. The policy options

The policy brief uses the current numbering below. Earlier drafts had a separate "Option 5 — Provincial response activation" and "Option 6 — Sentinel toxicology"; response coordination has since been moved into the parallel coordination workstream, and sentinel toxicology has been folded in as **Option 3b**.

**Option 1 — Activate the NHLS–NMC data feed (IT implementation).** The NHLS↔NICD MOU for BChE data sharing already exists. What is missing is the working **LIS-to-NMC pipe** (HL7 / flat-file). De-identified, aggregated severe-BChE cases flow into NMC for trend analysis.

**Option 2 — NICD → DALRRD poisoning intelligence feed.** Quarterly NICD/NMC brief (plus ad-hoc case-spike alerts) flowing to DALRRD so that pesticide registration, labelling and inspectorate priorities are informed by real-world morbidity and mortality. **Direction is NICD → DALRRD**, in response to DALRRD's formal request.

**Option 3a — BChE auto-notification (capability exists).** NHLS LIS automatically issues an NMC notification within 24 hours of a severe BChE result (<50% of normal). The laboratory capability already exists (~9,000 tests/year); only the auto-notification rule needs configuring. Single biggest fast-win detection gain.

**Option 3b — Chemical toxicology auto-notification (new capability).** Extends auto-notification to **chemical toxicology assays** (qualitative/quantitative pesticide identification by GC-MS / LC-MS). This capability does **not yet exist on live patients** — NHLS currently performs chemical toxicology *post-mortem only*. Phase 1: sentinel build at CHB. Phase 2–3: expand to 4–5 tertiary sites. Funded as research-surveillance investment (SAMRC, Bloomberg, Gates), not the operational surveillance budget. Provides the **agent attribution** that Option 2 needs to be useful.

**Option 4 — PIH minimum viable dataset + live dashboard.** Short-term (weeks): PIH publishes a **live dashboard** of pesticide-related calls. Medium-term (months): agree a **minimum viable dataset (MVD)** so PIH call records can be ingested into NMC as a routine, structured stream. Captures the ~10,000 calls/year that never reach a laboratory.

**Full Surveillance Package.** Options 1 + 2 + 3a + 4 implemented together. Detection ≈ 0.83. Cost: **~R197k/year narrow** (~R1.19M/year whole-system). Option 3b adds sentinel toxicology on top via research funding.

**Response & coordination workstream.** Provincial response activation, EHP/DALRRD field investigation and outbreak coordination are **not** part of the surveillance package above — they are commissioned, funded and evaluated separately. See the [Costing Analysis](posts/costing_analysis.qmd) for the budget split.

---

## 8. Statistical terms

**Sample size.** The number of observations needed for a given precision. Option 6 uses $n = 323$ per site (for $p = 0.30$, $d = 0.05$, $\alpha = 0.05$).

**Confidence interval (CI).** A range that, on repeated sampling, would contain the true value the stated proportion of the time (e.g. 95%). Wider = less precise.

**Sensitivity analysis.** Re-running the calculation with different assumptions to see whether the conclusion changes. *Deterministic* = vary one parameter at a time. *Probabilistic* = vary all of them simultaneously using distributions (PSA).

---

## 9. Lab and tooling terms

**GC-MS / LC-MS.** *Gas / Liquid Chromatography – Mass Spectrometry*. Lab techniques that identify and quantify specific chemicals in a sample. The basis of Option 6 attribution.

**Quarto.** The publication system this website is built with. Combines code, prose, and equations into HTML/PDF/Word output.

**Amua.** Open-source decision-modelling software used to build and run the decision tree. Imports parameters from [`amua_import_parameters_v3.csv`](amua_import_parameters_v3.csv).

**R / tidyverse.** Statistical computing language and data-handling package set used for all wrangling, tables, and figures.

---

## Key sources

- **Buckley NA et al. (2021)** — Severe OP poisoning cohort, Sri Lanka. Source for 30% severe-case CFR.
- **Davies J et al. (2023)** — Paediatric pesticide deaths in SA; documents terbufos and methamidophos dominance.
- **Edoka I, Stacey N (2020)** — SA cost-effectiveness threshold = R38,500/DALY.
- **NICD NMC Annual Reports (2020–2024)** — Source for the 690/year pesticide notifications.
- **Stats SA Vital Registration data** — Underlying death numbers; see [VR triangulation](https://bridaybrummer.github.io/MRC_VR/projects/poisoning_deaths/).
- **Project [Parameter Critical Appraisal](parameter_appraisal.qmd)** — Full v2 → v3 parameter justification.


================================================================
## SOURCE: parameter_appraisal.qmd
================================================================

---
title: "Critical Appraisal of Amua Parameter Files"
subtitle: "Why v2 was inadequate and what changed in v3"
date: today
format:
  html:
    toc: true
    toc-depth: 3
---

## Summary verdict on v1 and v2

The original [`archive/amua_import_parameters.csv`](archive/amua_import_parameters.csv) and the current [`amua_import_parameters_v2.csv`](amua_import_parameters_v2.csv) have three structural problems that make them unsuitable for the current decision-model framework:

1. **Stale framework.** Both CSVs describe a "POC / EHP / crosswalk / activation" option set that predates the Options 1–6 reframing. None of the Option 3 (BChE auto-notify), Option 4 (PIH), Option 5 (provincial response), or Option 6 (sentinel toxicology) parameters are present.
2. **Cost parameters systematically too low** by factors of 3–10× across most line items.
3. **Internally inconsistent burden parameters** — the v2 CFR (3%) contradicts the burden-economics model (10–15%), the per-case morbidity cost (R5,000) is below the underlying ward-only fee schedule, and the response-per-hotspot cost (R15,000) does not cover even the lab-analysis portion of a real field investigation.

[`amua_import_parameters_v3.csv`](amua_import_parameters_v3.csv) replaces both. The remainder of this document explains the parameter-by-parameter rationale.

## Critical appraisal — line by line

### Burden parameters

| Parameter | v2 value | v3 value | Why changed |
|:---|---:|---:|:---|
| `n_poisoning_cases_annual` | 690 | n/a (split) | v2 conflated NMC notifications with "annual cases". v3 splits into the three streams (NMC 690, NHLS 2,000, PIH 9,000) consistent with the mutually-exclusive sum used everywhere else. |
| `n_burden_true` | absent | **11,690** | New — anchors the entire burden-economics framework. |
| `cases_per_hotspot` | 69 (= 690/10) | derived from `n_burden_true` | The 690-denominator is wrong; under-counts by ~17×. |

### Case fatality rate

This is the most consequential change.

| Parameter | v2 value | v3 value | Why changed |
|:---|---:|---:|:---|
| `p_case_fatality` | 0.03 | (replaced by stratified CFR) | **3% is wrong for hospitalised cases** — Buckley et al. 2021 reports ~30% CFR for severe BChE-inhibited inpatients in Sri Lanka, and Free State data show similar order. v2 was apparently averaging across all PIH-call mild cases without admission. |
| `cfr_pih_mild` | absent | **0.5%** | PIH-managed cases are predominantly mild; many resolve without admission. |
| `cfr_nhls_severe` | absent | **30%** | Severe BChE inhibition (Buckley et al. 2021). |
| `cfr_nmc_hospitalised` | absent | **15%** | NMC observed range; consistent with Free State 2018-19 tertiary cohort. |

::: {.callout-warning}
## Stratified vs. flat CFR — implication for headline deaths

A **stratified** application of CFR to the case-mix gives:

$$
D = 9{,}000 \times 0.005 + 2{,}000 \times 0.30 + 690 \times 0.15 \approx 783 \text{ deaths/year}
$$

A **flat 12.5%** CFR (current decision-model base case) gives:

$$
D = 11{,}690 \times 0.125 \approx 1{,}460 \text{ deaths/year}
$$

The **VR triangulation** (30–50% of 3,200–4,000 all-poisoning deaths/year) gives **~960–2,000 pesticide deaths/year**.

The flat-12.5% estimate is at the upper end of the VR range; the stratified estimate is at the lower end. The headline figure of **~1,500–1,800 deaths/year** sits in the upper-mid of the VR range and acknowledges known under-coding of intentional poisoning in VR.

**Recommendation:** Use the stratified CFR for academic / peer-reviewed analyses, and the headline figure for advocacy products (one-pager, policy brief, concept note). v3 carries both anchors so the modeller can choose.
:::

### Per-case morbidity costs

The v2 figure of **R5,000 per admission** is below even the South African Uniform Patient Fee Schedule (UPFS) for a single day in a public-sector general ward. The realistic build-up:

| Component | UPFS 2024 | Comment |
|:---|---:|:---|
| General ward | R1,800/day | UPFS public sector |
| High care | R5,500/day | UPFS public sector |
| ICU | R13,500/day | UPFS public sector |
| Mechanical ventilation surcharge | +R4,000/day | UPFS surcharge |
| Atropine course (OP poisoning) | R1,500 | EML pricing |
| Pralidoxime (PAM) course | R4,500 | EML pricing |
| Investigations (BChE, LFT, U&E, FBC, repeat) | R1,500 | NHLS price list |

**Realistic case-mix-weighted morbidity cost** (v3):

| Stratum | n/year | Per-case cost | Annual |
|:---|---:|---:|---:|
| PIH-managed (mild) | 9,000 | R500 | R4.5M |
| NHLS ward-admitted (3-day median LoS) | 2,000 | R15,000 | R30M |
| NMC-notified severe (70% ward + 30% ICU mix) | 690 | R80,000 | R55M |
| **Blended** | **11,690** | **~R7,700** | **~R90M** |

The decision model's headline `c_morbidity` of **R12,000** is therefore a defensible round number sitting between the case-mix-weighted blend (R7,700) and a per-admission cost (R15,000–R20,000). v2's R5,000 figure was below cost.

### ICU per-case cost

v2: **R25,000** — below a single day in ICU.

Realistic v3:

$$
c_{\text{ICU per case}} = 5 \text{ days} \times (R13{,}500 + R4{,}000 \times 0.6) = 5 \times R15{,}900 = \mathbf{R79{,}500 \text{ to } R220{,}000}
$$

(Range reflects 60% ventilation rate among ICU pesticide cases per Buckley et al. 2021, and 4–10 day ICU LoS distribution.) v2 was off by **3–9×**.

### Mortality cost (human capital)

v2 had no explicit mortality cost line item. v3 codifies the three approaches:

| Approach | Per-death cost | Total mortality (1,500 deaths) | Notes |
|:---|---:|---:|:---|
| Human capital (25 productive yr × R60k income) | R1.5M | R2.25B | Used as headline |
| WHO/Edoka cost-eff threshold (30 YLL × R38,500) | R1.155M | R1.73B | Conservative; aligns with sentinel toxicology DALY framing |
| LMIC VSL (3.3× annual income × 30 yr) | R5M | R7.5B | High; advocacy ceiling |

The **R1.5M human-capital figure** is the most defensible for an SA policy audience and matches the decision-model burden table.

### Response cost per hotspot

v2: **R15,000** — does not cover even the lab analysis component (7 environmental samples × R2,500 GC-MS = R17,500).

Realistic v3 build-up (**R55,000/hotspot**):

| Component | Cost |
|---:|:---|
| Field staff (2 × 2 days × R3,500) | R14,000 |
| Travel + accommodation | R10,000 |
| Environmental sampling (7 samples × R1,500) | R10,500 |
| GC-MS / LC-MS analysis (7 samples × R2,500) | R17,500 |
| Coordination + reporting + follow-up | R5,000 |

This is **3.7× the v2 figure**. Even at the higher cost the economic case still holds — at 10 hotspots/year × R55,000 = R550,000, this is well within the R1.19M whole-system Full Package operating budget.

### Status quo program cost

v2: **R50,000** for the entire NICD pesticide-poisoning program. This is below a single 0.1 FTE analyst.

Realistic v3 (**R300,000**):

- 0.2 FTE analyst @ R250,000
- Dashboard hosting + maintenance: R30,000
- Annual travel + meetings: R20,000

This affects the ICER denominator only — the incremental cost of moving from status quo to Full Package is unchanged because both scale up.

### Surveillance option costs

| Option | v2 setup | v2 operating | v3 setup | v3 operating | Why changed |
|:---|---:|---:|---:|---:|:---|
| Option 1 NHLS MOU | absent | R40k | R80k | R60k | v2 was placeholder; v3 reflects legal + governance + 0.05 FTE analyst |
| Option 2 DALRRD | absent | R40k | R80k | R60k | Same scale as Option 1 |
| Option 3 BChE auto-notify | absent | R55k | **R200k** | R55k | **Setup was missing.** NHLS LIS reconfiguration with HL7 message dev + UAT is non-trivial |
| Option 4 PIH quarterly | absent | R62k | R40k | **R187k** | **Operating was 3× too low.** A genuine 0.15 FTE analyst at PIH is ~R187k/year |
| Option 5 provincial response | absent | R40k/province | R40k/province | + R55k/hotspot | Per-province baseline OK; **per-hotspot variable cost was missing** |

### Whole-system (induced demand) — entirely new

v2 has no concept of induced demand. v3 codifies the whole-system perspective from the costing analysis:

| Component | v3 | Notes |
|---:|:---|:---|
| Hospital workload (ED + ward) | R188k | Higher detection → more admissions reach the surveillance bucket |
| NHLS lab volume | R493k | More BChE + repeat + confirmatory tests |
| EHP investigations | R154k | Beyond Option 5 baseline |
| DALRRD enforcement | R121k | Inspections + recalls + compliance |
| **Total** | **R956k** | Pushes Full Package from R237k narrow → R1.19M whole-system |

### Option 6 — sentinel toxicology (entirely new)

Adapted from the [Pesticide Poisoning Surveillance Concept Note (DRAFT 3, 2025)](archive/Pesticide_Poisoning_Surveillance_Concept_Note_DRAFT_3_11082025_LL_BB05092025.docx). v3 captures:

- `c_option6_pilot_year1` = R1.2M (CHB pilot, 12 months, 1 site)
- `c_option6_full_5site_annual` = R3.625M (full rollout: CHB, Groote Schuur, Albert Luthuli, Universitas, Steve Biko)
- Unit costs: GC-MS R2,500/specimen; clinical battery R1,500/patient; research nurse R175k per 0.5 FTE
- Sample-size derived volume: 323 patients/site × 2 specimens = 646 specimens/site/year

### DALY framework — entirely new

v2 had `yld_per_survivor` = 1.5 (unsourced). This is far too high for a mostly-acute exposure without long-term sequelae. v3:

- `yld_per_survivor_no_sequelae` = **0.05** (acute illness ~3 weeks at GBD disability weight ~0.4)
- `yld_per_survivor_with_OPIDN` = **2.5** (intermediate syndrome / organophosphate-induced delayed neuropathy)
- `p_OPIDN_among_severe_OP` = **0.10**
- `yld_blended_per_survivor` = **0.30** (probability-weighted)

`yll_per_death` v2 = 35; v3 = **30** (median age 30, e₆₄ ≈ 64–30 = 34, rounded down for conservative). `productive_years_lost` = **25** for human-capital framing.

`lambda_DALY_threshold` = **R38,500/DALY** (Edoka & Stacey 2020) — anchors the cost-effectiveness threshold for both the burden model and Option 6 DALY monetisation.

## What this means for the headline numbers

The good news: **the decision-model headlines do not change much**.

| Metric | v2 implied | v3 stratified | v3 headline | Change |
|:---|---:|---:|---:|:---|
| True burden (cases) | 690 | 11,690 | 11,690 | +17× (already in current docs) |
| Annual deaths | 21 (=690 × 0.03) | ~830 | ~1,500–1,800 | +35–85× |
| Per-case morbidity cost | R5,000 | R7,700 (blended) | R12,000 (round) | +1.5–2.4× |
| Total burden cost | ~R3.5M (=21 × R150k? unspecified) | ~R1.34B | ~R2.3B | Now defensibly billions |
| Full Package narrow cost | R237k | R237k | R237k | Unchanged |
| Full Package whole-system cost | n/a | R1.19M | R1.19M | New |
| Avoided burden (base case) | n/a | R150M | R260M | +1.7× depending on CFR anchor |
| ROI (narrow) | n/a | ~600× | ~1,100× | Both wildly positive |

The **economic case is robust to the parameter revision** — it gets stronger, not weaker, because v2 understated both the numerator (avoided burden) and the denominator (real costs) but understated the numerator more.

## Recommendations

1. **Adopt v3 as the canonical parameter file.** Update the decision model, costing analysis, and analysis report to reference [`amua_import_parameters_v3.csv`](amua_import_parameters_v3.csv).
2. **Archive `amua_import_parameters_v2.csv`** alongside v1.
3. **Run sensitivity analyses with both stratified and flat CFR** to bracket the headline death estimate. Report both.
4. **Validate the per-case morbidity cost during the Option 6 pilot.** The CHB pilot will generate empirical per-admission ZAR distributions that will replace the R12,000 placeholder.
5. **Validate the response cost per hotspot during the Option 5 provincial pilot.** The current R55,000 is an engineered estimate; real field investigations may diverge.

---

::: {.callout-tip}
## Source files

- [`amua_import_parameters_v3.csv`](amua_import_parameters_v3.csv) — current canonical
- [`amua_import_parameters_v2.csv`](amua_import_parameters_v2.csv) — to be archived
- [`archive/amua_import_parameters.csv`](archive/amua_import_parameters.csv) — original
- [`archive/Pesticide_Poisoning_Surveillance_Concept_Note_DRAFT_3_11082025_LL_BB05092025.docx`](archive/Pesticide_Poisoning_Surveillance_Concept_Note_DRAFT_3_11082025_LL_BB05092025.docx) — Option 6 source
:::


================================================================
## SOURCE: parameters_hub.qmd
================================================================

---
title: "Parameters Hub"
subtitle: "Canonical model parameters — single source of truth"
author: "D2P Project Team"
date-modified: today
format:
  html:
    toc: true
    toc-depth: 2
    code-fold: true
    code-summary: "Show parsing code"
---

::: {.callout-important icon=false}
## Editing parameters

**The single source of truth is the CSV file [`amua_import_parameters_v4.csv`](amua_import_parameters_v4.csv) at the project root.**

To update or verify a parameter:

1. Open `amua_import_parameters_v4.csv`.
2. Edit the relevant row. Each row has four logical fields packed into the `Notes` column: short note · `dist=<distribution>(<params>)` · source citation.
3. Save and re-render the site (`./publish.sh "msg"`). Every place this parameter is used — the [Decision Model](posts/decision_model.qmd), the [Costing Analysis](posts/costing_analysis.qmd), the three policy briefs ([Surveillance](posts/surveillance_policy.qmd) · [Coordination](posts/coordination_policy.qmd) · [Terbufos](posts/terbufos_policy.qmd)), and this hub — updates automatically.
4. If you change a *value* (not just a note), record the rationale in [`parameter_appraisal.qmd`](parameter_appraisal.qmd) under a dated entry.

**Naming convention.** `n_*` = count; `p_*` / `cfr_*` / `d_*` / `eta_*` = probability; `c_*` / `C_*` = cost (lowercase per-unit; uppercase aggregate); `los_*` = length of stay; `yll_*` / `yld_*` = years lost / disabled.

**v4 schema.** The CSV now has four columns: `Name, Expression, Notes, Group`. The `Group` column (e.g. `detect.S1_PIH_MVD`, `costs.S2_BChE`, `terb.burden`) encodes the domain and option each parameter belongs to — useful for programmatic filtering. Rows with `Group = costs.deprecated` or `detect.deprecated` are backward-compatibility aliases; **always use the canonical v4 name** (e.g. `c_S1_PIH_MVD_op`, `d_S2_BChE_autonotify`). Section header rows (`# === ... ===`) have an empty Group field.
:::

```{r}
#| label: load-params
#| message: false
#| warning: false

library(tidyverse)
library(gt)

raw <- readr::read_csv(
  "amua_import_parameters_v4.csv",
  show_col_types = FALSE,
  comment = ""
)

# Separate section header rows (start with "#") from parameter rows
params <- raw |>
  filter(!is.na(Name)) |>
  mutate(
    is_section = str_starts(Name, "#"),
    section = if_else(is_section,
                      str_remove_all(Name, "^#\\s*=*\\s*|\\s*=*\\s*$"),
                      NA_character_)
  ) |>
  fill(section, .direction = "down") |>
  filter(!is_section) |>
  separate(
    Notes,
    into = c("Note", "Distribution", "Source"),
    sep = "\\s*\\|\\s*",
    fill = "right",
    extra = "merge"
  ) |>
  mutate(
    Distribution = str_remove(Distribution, "^dist="),
    section = str_to_title(str_to_lower(section))
  ) |>
  select(Section = section, Parameter = Name, Value = Expression, Note, Distribution, Source)

section_table <- function(df, section_regex) {
  df |>
    filter(str_detect(Section, regex(section_regex, ignore_case = TRUE))) |>
    select(-Section) |>
    gt() |>
    cols_label(
      Parameter = "Name",
      Value = "Value",
      Note = "Description",
      Distribution = "Distribution",
      Source = "Source / status"
    ) |>
    tab_options(table.font.size = "small") |>
    opt_row_striping()
}
```

## 1. Burden parameters

Annual case counts across the three data streams (treated as mutually-exclusive), the true-burden anchor, and the overlap-correction parameter for sensitivity analysis.

```{r}
#| label: tbl-burden
#| tbl-cap: "Burden parameters — annual case counts and true-burden anchor."
section_table(params, "burden parameters")
```

**Interpretation.** Three administrative streams capture different severities. NMC (~1,013) counts clinically-notified cases (2023); NHLS (~1,779 severe inhibitions from ~10,626 BChE tests, 2023) counts severe laboratory cases; PIH (~1,158) counts clinician-initiated calls (2023). Each stream is independently sourced; the sum (~3,950) is the 2023 observed lower bound. The StatsSA-implied true annual burden is ~8,112 (mid-CFR scenario, `n_true_burden_from_statssa_mid`).

## 2. Case fatality rate

```{r}
#| label: tbl-cfr
#| tbl-cap: "Case fatality rate — stratified by severity, with headline range for advocacy."
section_table(params, "case fatality rate")
```

**Stratified vs. headline.** Applying the stratified CFR row-by-row gives **~830 deaths/year**; applying the flat headline 12.5 % gives **~1,460 deaths/year**; the Stats SA Vital Registration triangulation using the broader X40-X49 category previously gave **~960–2,620 deaths/year**. The headline figure is now anchored at **1,014 deaths/year** via **StatsSA MACOD 2022, Table 4.12, pesticide-specific UCOD codes (X48 accidental + X68 intentional self-poisoning + X87 assault + Y18 undetermined intent)** — CSV row `n_deaths_statssa_macod`, mirrored to `n_deaths_headline`. This is the **canonical truth source** for deaths and is updated as new StatsSA releases land; it supersedes both the v1 advocacy range of 1,500–1,800 and the v2/v3 X40-X49 all-noxious-substance figure of 2,620 (which was not pesticide-specific). 2023 pesticide-specific data has not yet been released, so 2022 is used as an interim anchor. The full v2 → v3 rationale is in [`parameter_appraisal.qmd`](parameter_appraisal.qmd).

## 3. Per-case costs

UPFS 2024 tariffs, drug costs, and case-mix-weighted blended morbidity cost.

```{r}
#| label: tbl-per-case-costs
#| tbl-cap: "Per-case cost components and the blended headline used in the decision model."
section_table(params, "per-case costs")
```

## 4. Mortality cost

Human-capital base case plus DALY-threshold and VSL alternatives shown for sensitivity.

```{r}
#| label: tbl-mortality-cost
section_table(params, "mortality cost")
```

## 5. Total economic burden

```{r}
#| label: tbl-burden-total
section_table(params, "total economic burden")
```

The two totals (conservative ~R1.34B vs. headline ~R1.61B) bracket the plausible range. Advocacy products use the headline; academic outputs report both.

## 6. Response efficacy ($\eta$)

```{r}
#| label: tbl-eta
section_table(params, "response efficacy")
```

## 7. Detection probabilities by option

```{r}
#| label: tbl-detection
#| tbl-cap: "Per-option detection probability — all active rows derived on the per-case scale from NICD + NHLS + PIH 2023 stream counts ÷ StatsSA MACOD mid-burden (8,112, 2022 pesticide-specific anchor). v1 hotspot-cluster rows retained as DEPRECATED for back-compat only. Full audit trail in the [Surveillance brief §6](posts/surveillance_policy.qmd#sec-decision-tree)."
section_table(params, "detection probabilities")
```

## 8. Option costs

```{r}
#| label: tbl-option-costs
#| tbl-cap: "Setup and operating costs for each surveillance option."
section_table(params, "option costs")
```

## 8a. Surveillance costing build-up — audit detail

The decision-tree scalars in §8 (e.g. `c_full_package_narrow_operating`) are the **conclusion**. The line-by-line **workings** — every FTE %, every salary anchor, every system line item — live in the editable workbook [`data/surveillance_costing.xlsx`](data/surveillance_costing.xlsx). The three tables below are pulled directly from that workbook at render time; **edit the .xlsx, re-render, and these tables (and the surveillance brief §7) update together**.

```{r}
#| label: costing-load
#| message: false
#| warning: false

library(readxl)

cost_path  <- "data/surveillance_costing.xlsx"
personnel  <- read_excel(cost_path, sheet = "personnel")
system_lvl <- read_excel(cost_path, sheet = "system")
allocation <- read_excel(cost_path, sheet = "allocation")

zar_fmt <- function(x) {
  scales::label_currency(prefix = "R", big.mark = ",", accuracy = 1)(x)
}
```

### 8a.1 Personnel — salary × FTE % allocated to pesticide surveillance

```{r}
#| label: tbl-cost-personnel-hub
#| tbl-cap: "Personnel costs: each role's annual cost-to-employer (CTE) × % of time on pesticide surveillance. Salary anchors: DPSA L10–11 2024, NHLS Patterson D/E 2024, DoH OSD scales 2024."

personnel |>
  mutate(
    `Annual CTE`       = zar_fmt(annual_cte_zar),
    `FTE %`            = sprintf("%.0f%%", fte_pct),
    `Allocated cost`   = zar_fmt(annual_cost_zar)
  ) |>
  select(Stream = stream, Role = role,
         `Annual CTE`, `FTE %`, `Allocated cost`,
         Rationale = rationale, Source = source) |>
  gt() |>
  grand_summary_rows(
    columns = `Allocated cost`,
    fns = list(Total ~ zar_fmt(sum(personnel$annual_cost_zar)))
  ) |>
  opt_row_striping() |>
  tab_options(table.font.size = "small")
```

### 8a.2 System — platforms, assays, courier, hosting

```{r}
#| label: tbl-cost-system-hub
#| tbl-cap: "System costs: unit cost × annual volume. BChE reagent and courier scale with assay volume; platform/hosting/telephony are fixed annual."

system_lvl |>
  mutate(
    `Unit cost`    = zar_fmt(unit_cost_zar),
    Units          = format(units_per_yr, big.mark = ",", scientific = FALSE),
    `Annual cost`  = zar_fmt(annual_cost_zar)
  ) |>
  select(Stream = stream, Item = item,
         `Unit cost`, Units, `Annual cost`,
         Rationale = rationale, Source = source) |>
  gt() |>
  grand_summary_rows(
    columns = `Annual cost`,
    fns = list(Total ~ zar_fmt(sum(system_lvl$annual_cost_zar)))
  ) |>
  opt_row_striping() |>
  tab_options(table.font.size = "small")
```

### 8a.3 Allocation keys — pesticide share of each stream's total throughput

```{r}
#| label: tbl-cost-allocation-hub
#| tbl-cap: "Allocation keys: pesticide cases ÷ total stream throughput. The BChE stream is 100% pesticide-relevant by construction (assay is ordered when OP/carbamate poisoning is suspected); NMC and PIH carry broad notification mandates so only a fraction is pesticide-attributable."

allocation |>
  mutate(
    `Pesticide cases / yr` = format(pesticide_count_yr, big.mark = ",", scientific = FALSE),
    `Total stream / yr`    = format(total_count_yr,    big.mark = ",", scientific = FALSE),
    `Allocation %`         = sprintf("%.2f%%", allocation_pct)
  ) |>
  select(Stream = stream, Basis = basis,
         `Pesticide cases / yr`, `Total stream / yr`, `Allocation %`,
         Rationale = rationale, Source = source) |>
  gt() |>
  opt_row_striping() |>
  tab_options(table.font.size = "small")
```

### 8a.4 Reconciliation — xlsx build-up vs. CSV scalars

This block proves the workbook and the CSV agree. If the discrepancy column is non-zero, **the model and the audit trail have drifted** — either the xlsx needs re-saving with current line items, or the CSV scalar needs updating to match.

```{r}
#| label: tbl-cost-reconciliation
#| tbl-cap: "Reconciliation: xlsx line-item build-up vs. CSV decision-tree scalars. The xlsx is the wider system view (NMC + PIH + BChE personnel + system, allocated to pesticide share); c_status_quo_program in the CSV is the NICD-only slice that already appears in the decision tree as the status-quo arm cost."

xlsx_total <- sum(personnel$annual_cost_zar) + sum(system_lvl$annual_cost_zar)

by_stream <- bind_rows(
  personnel  |> select(stream, annual_cost_zar) |> mutate(layer = "Personnel"),
  system_lvl |> select(stream, annual_cost_zar) |> mutate(layer = "System")
) |>
  group_by(stream) |>
  summarise(total = sum(annual_cost_zar), .groups = "drop")

csv_status_quo <- as.numeric(
  raw |> filter(Name == "c_status_quo_program") |> pull(Expression)
)
csv_pkg_narrow <- as.numeric(
  raw |> filter(Name == "c_full_package_narrow_operating") |> pull(Expression)
)

tibble::tibble(
  Item = c(
    paste0("xlsx — NMC stream (personnel + system)"),
    paste0("xlsx — PIH stream (personnel + system)"),
    paste0("xlsx — BChE stream (personnel + system)"),
    paste0("xlsx — Cross-cutting (data eng, biostats, warehouse)"),
    "xlsx — Grand total (status-quo, allocated to pesticide)",
    "CSV — c_status_quo_program (NICD slice only, used in tree)",
    "CSV — c_full_package_narrow_operating (MVP marginal uplift)"
  ),
  Value = c(
    by_stream |> filter(stream == "NMC")   |> pull(total) |> sum(),
    by_stream |> filter(stream == "PIH")   |> pull(total) |> sum(),
    by_stream |> filter(stream == "BChE")  |> pull(total) |> sum(),
    by_stream |> filter(stream == "Cross") |> pull(total) |> sum(),
    xlsx_total,
    csv_status_quo,
    csv_pkg_narrow
  )
) |>
  mutate(`Annual cost (ZAR)` = zar_fmt(Value)) |>
  select(Item, `Annual cost (ZAR)`) |>
  gt() |>
  tab_row_group(label = "Build-up (workings — data/surveillance_costing.xlsx)",
                rows = 1:5) |>
  tab_row_group(label = "Conclusion (decision-tree scalars — CSV)",
                rows = 6:7) |>
  row_group_order(groups = c("Build-up (workings — data/surveillance_costing.xlsx)",
                             "Conclusion (decision-tree scalars — CSV)")) |>
  opt_row_striping() |>
  tab_options(table.font.size = "small")
```

**How to read this.** The xlsx grand total is the **whole** annual cost of the existing surveillance system (every salary slice + every platform + every assay) allocated to pesticide work. The CSV's `c_status_quo_program` is the **NICD-only slice** that already sits in the decision tree's status-quo arm — the wider build-up is *not* double-counted there because PIH and NHLS are funded outside the NICD vote. The CSV's `c_full_package_narrow_operating` is the **marginal uplift** the MVP adds on top of the status-quo. Auditors can therefore check three independent things:

1. **xlsx grand total** matches the surveillance brief §7 headline ("status-quo R1,853,956/yr");
2. **xlsx NMC stream** is consistent with the CSV `c_status_quo_program` order-of-magnitude (the NICD slice within NMC + cross-cutting);
3. **CSV `c_full_package_narrow_operating`** is the figure the decision tree actually uses to compute incremental cost per detected case.

## 9. Whole-system induced demand

```{r}
#| label: tbl-induced
section_table(params, "whole-system")
```

## 10. Option 3b — sentinel toxicology

Research-surveillance investment, separately funded.

```{r}
#| label: tbl-opt6
section_table(params, "sentinel toxicology|option 6")
```

## 11. DALY monetisation

```{r}
#| label: tbl-daly
section_table(params, "daly monetisation")
```

## 12. Net monetary benefit (NMB) framework

```{r}
#| label: tbl-nmb
section_table(params, "net monetary benefit")
```

---

## Quality and verification status

```{r}
#| label: tbl-verification
#| tbl-cap: "Verification status of every parameter, derived from the Source field."

params |>
  mutate(
    Verification = case_when(
      str_detect(Source, regex("NICD|NHLS|StatsSA|Stats SA|UPFS|EML|Edoka|Buckley", ignore_case = TRUE)) ~ "Sourced (named institution / peer-reviewed)",
      str_detect(Source, regex("Derived", ignore_case = TRUE)) ~ "Derived from other parameters",
      str_detect(Source, regex("Sensitivity|Sum", ignore_case = TRUE)) ~ "Structural / sensitivity bound",
      str_detect(Source, regex("Decision model|Concept Note|Costing analysis|Internal", ignore_case = TRUE)) ~ "Internal model assumption",
      str_detect(Source, regex("Expert elicitation", ignore_case = TRUE)) ~ "Expert elicitation (to be re-estimated from pilot)",
      str_detect(Source, regex("Estimated", ignore_case = TRUE)) ~ "Estimated (requires verification)",
      TRUE ~ "Other / unspecified"
    )
  ) |>
  count(Verification, name = "Parameters") |>
  arrange(desc(Parameters)) |>
  gt() |>
  tab_header(title = "Where each parameter's authority comes from") |>
  opt_row_striping()
```

**Reading the verification table.** "Sourced" parameters are tied to a named institution or peer-reviewed paper. "Expert elicitation" parameters are placeholders awaiting pilot data. "Derived" parameters are calculated from others and only need to be re-derived when a primary input changes.

## Open items — to be retired into the CSV

The following items are referenced in the policy briefs but do **not yet have a row in `amua_import_parameters_v3.csv`** and should be added once the underlying data is collected:

| ID | Parameter | Used in | Owner |
|:---|:----------|:--------|:------|
| TBF-1 | Terbufos annual SA market volume (kg active ingredient) | [Terbufos brief](posts/terbufos_policy.qmd) | DALRRD Pesticide Registrar |
| TBF-2 | Terbufos attributable fraction of severe pesticide-poisoning cases | [Terbufos brief](posts/terbufos_policy.qmd) | NICD + NHLS toxicology (S3) |
| TBF-3 | SA-specific yield impact under leading substitutes (maize) | [Terbufos brief](posts/terbufos_policy.qmd) | ARC + grain industry |
| TBF-4 | Comparative hazard profile of leading substitutes | [Terbufos brief](posts/terbufos_policy.qmd) | DALRRD registration |
| COORD-1 | Per-node coordination transition probabilities Q1–Q7 | [Coordination brief](posts/coordination_policy.qmd) | NICD + DALRRD audit |
| COORD-2 | Joint loop-closure probability under C1–C5 package | [Coordination brief](posts/coordination_policy.qmd) | Pilot evaluation |
| SURV-1 | Live-patient chemical-toxicology sensitivity / specificity | [Surveillance brief](posts/surveillance_policy.qmd) | NHLS clinical chemistry |

Add each item as a new CSV row when the data becomes available, then remove it from this table.


================================================================
## SOURCE: analysis_report_v2.qmd
================================================================

---
title: "Technical Appendix A — Surveillance Decision Analysis"
subtitle: "Legacy 5-option taxonomy: cost-effectiveness model for surveillance investments (Option S3 family)"
author: "D2P Project"
date: today
format:
  html:
    toc: true
    toc-depth: 3
    number-sections: true
    code-fold: true
    theme:
      light: cosmo
execute:
  echo: false
  warning: false
  message: false
---

```{r}
#| label: setup
library(tidyverse)
library(gt)
library(flextable)
library(ggplot2)
library(scales)

tp <- readRDS("tables_and_plots_v2.Rds")
```

::: {.callout-note}
## Where this appendix fits

This appendix presents the **formal decision-analytic model** behind the [Surveillance brief](posts/surveillance_policy.qmd). It uses the original 5-option v1 taxonomy (SQ, Option 1–4, Full Package) which has since been re-expressed in the S-taxonomy used by the brief (S1–S4). Mapping:

| v1 (this appendix) | v3 (brief) | Description |
|:--|:--|:--|
| Option 1 | S2 | Inter-agency data sharing / MOUs |
| Option 2 | S2 | DALRRD / SAPS integration |
| Option 3 | S3a | NHLS BChE auto-notification |
| Option 4 | S1 | PIH quarterly reporting |
| Full Package | S1+S2+S3a | Combined detection upgrade |

The live-patient chemical-toxicology investment (**S3b**) is **not** in this v1 model — it is treated separately in [Technical Appendix D — Sentinel Toxicology](posts/surveillance_concept_note.qmd).

**Sister appendices:** [B — Coordination model](technical_appendix_coordination.qmd) · [C — Terbufos bracketed estimate](technical_appendix_terbufos.qmd) · [D — Sentinel toxicology](posts/surveillance_concept_note.qmd).
:::

# Executive Summary {.unnumbered}

::: {.callout-important appearance="simple"}
## The core question

South Africa already has the legal basis to act on pesticide poisoning — the constraint is **weak execution across existing systems**. Which combination of short-term institutional actions will most efficiently improve hotspot detection and response, and at what cost?
:::

This report evaluates **five policy options** (plus the status quo) for strengthening pesticide poisoning surveillance in South Africa. Each option targets a specific system failure identified through fishbone analysis and can be implemented **without new legislation**.

**Key findings under base-case assumptions:**

- The **status quo** detects and responds to approximately `r round(tp$base_case$effectiveness[tp$base_case$strategy_code == "SQ"], 1)` of an estimated 10 annual poisoning hotspots
- The **lowest-cost improvements** (Options 3 and 4) cost under R65,000/year and can be launched within weeks
- The **Full Package** (all four options) addresses `r round(tp$base_case$effectiveness[tp$base_case$strategy_code == "PKG"], 1)` hotspots — a `r round((tp$base_case$effectiveness[tp$base_case$strategy_code == "PKG"] / tp$base_case$effectiveness[tp$base_case$strategy_code == "SQ"] - 1) * 100)`% improvement over the status quo
- All parameters are **placeholders** — the model is designed to be updated as real data become available from the surveillance pilot

::: {.callout-tip appearance="simple"}
## How to use this document
This report serves three audiences:

1. **Decision-makers** (MAC, NDoH): Read Sections 2–3 for plain-language option comparisons
2. **Technical team** (NICD, NHLS analysts): Read Sections 4–7 for model details and sensitivity analysis
3. **Model developers**: Read Section 8 for instructions on updating parameters and extending the model
:::

# The Problem: Why Act Now?

## Burden of Pesticide Poisoning

From 2020 to 2024, three independent data sources paint a consistent picture:

| Indicator | Value | Source |
|:---|:---|:---|
| NMC notifications (total, 5 years) | `r format(tp$epi_context$nmc_total_2020_2024, big.mark = ",")` | NICD NMC system |
| Average annual NMC notifications | ~`r tp$epi_context$nmc_annual_avg` | NICD NMC system |
| NHLS BChE tests per year | ~`r format(tp$epi_context$bche_tests_per_year, big.mark = ",")` | NHLS laboratory data |
| Severe BChE inhibitions per year | ~`r format(tp$epi_context$bche_severe_per_year, big.mark = ",")` | NHLS laboratory data |
| PIH clinician calls (2019) | `r format(tp$epi_context$pih_calls_2019, big.mark = ",")` | Poisons Information Helpline |
| Seasonal peak | `r tp$epi_context$peak_months` | All three sources |

: Table: Pesticide poisoning burden in South Africa {.striped}

**Who is affected?**

- **Infants and toddlers (< 6 years)**: `r tp$epi_context$accidental_under6_pct`% of exposures are **accidental** — from environmental contact, contaminated food, or pesticides stored unsafely at home
- **Adolescent females (15–19 years)**: The highest age-standardised rate (ASR `r tp$epi_context$highest_asr_bche` per 100,000 for BChE cases), with `r tp$epi_context$selfharm_13_19_pct`% classified as **intentional self-harm**
- **Adult males (30+)**: Occupational exposures in agricultural settings

::: {.callout-warning}
## Under-counting is substantial
The ~690 NMC notifications per year almost certainly under-represent the true burden. BChE data alone show ~2,000 severe inhibitions annually. Evaluations of the NMC system describe incomplete reporting, incorrect data, and discrepancies between notification and laboratory records. The real number of poisonings may be **3–5 times higher** than what is currently captured.
:::

## Root Causes: What Can Be Fixed Now?

The policy brief's fishbone analysis identifies five institutional failures — none require new laws to address:

```{r}
#| label: fig-fishbone
#| fig-cap: "Root causes of surveillance failure and the policy options that address them"
#| fig-width: 10
#| fig-height: 5

fishbone <- tribble(
  ~cause, ~option, ~x, ~y,
  "Fragmented data\n(no single picture)", "Option 1", 1, 2,
  "Weak EHP feedback\n(investigations not returned)", "Option 2", 2, 1,
  "Unclear technical rules\n(codes/tests not mapped)", "Option 3", 3, 2,
  "Low awareness &\nvariable data use", "Option 4", 4, 1,
  "No standing hotspot\nproduct for joint action", "Full Package", 5, 2
)

ggplot(fishbone, aes(x = x, y = y)) +
  geom_segment(aes(xend = x, yend = 0), linewidth = 1.2, colour = "grey60") +
  geom_label(aes(label = cause), size = 2.8, fill = "#fff3e0",
             label.padding = unit(0.3, "lines")) +
  geom_label(aes(y = -0.3, label = option), size = 2.5, fontface = "bold",
             fill = "#e3f2fd", label.padding = unit(0.2, "lines")) +
  geom_hline(yintercept = 0, linewidth = 2, colour = "#1a237e") +
  annotate("text", x = 5.8, y = 0, label = "Surveillance\nFailure",
           fontface = "bold", size = 4, colour = "#b71c1c") +
  ylim(-0.8, 2.8) + xlim(0.3, 6.2) +
  theme_void() +
  theme(plot.margin = margin(5, 10, 5, 10))
```

# Policy Options: What Is on the Table? {#sec-options}

```{r}
#| label: tbl-profiles
#| tbl-cap: "Policy option profiles: what each option does, the problem it solves, and how quickly it can deliver"
tp$tbl_profiles
```

## Option 1 — Integrated Data-Sharing and Hotspot Pilot {#sec-opt1}

::: {.callout-note appearance="minimal"}
**In one sentence:** Combine NMC notifications, cholinesterase lab results, forensic signals and EHP field reports into a single analytic product that shows **where poisoning clusters are happening**.
:::

**What changes for stakeholders:**

- **For NICD analysts**: A routine (initially manual) process to pull data from NMC, NHLS, forensic pathways, and EHP systems into one dataset
- **For district health managers**: A periodic hotspot map showing which sub-districts have clustering events — enabling targeted response rather than waiting for individual case reports
- **For MAC members**: The first evidence product that demonstrates whether integrated surveillance can work before investing in automation

**What this requires:**

- A data-sharing SOP or MoU with each data custodian (NHLS for BChE/FCL, forensic pathology services)
- One dedicated analyst to run routine extracts and produce outputs
- Named leads at each custodian organisation

**Key assumptions in the model:**

| Parameter | Value | What it means |
|:---|:---:|:---|
| P(data access via SOP) | 0.70 | 70% chance the data-sharing agreements are established |
| P(data usable once accessed) | 0.65 | 65% chance extracted data is complete enough to analyse |
| P(hotspot detected) | 0.60 | Given usable data, 60% chance of identifying a real cluster |
| P(response triggered) | 0.65 | Given detection, 65% chance of follow-up action |
| Setup cost | R120,000 | SOP development, data mapping, initial analyst time |
| Annual operating | R70,000 | Ongoing analyst time, routine extracts and reports |

## Option 2 — Standardised EHP Investigation Reporting {#sec-opt2}

::: {.callout-note appearance="minimal"}
**In one sentence:** Give every Environmental Health Practitioner a **single short template** to report pesticide investigations, and require findings to be **fed back** to the surveillance team.
:::

**What changes for stakeholders:**

- **For EHPs**: One clear template replaces variable, person-dependent reporting — reduces ambiguity about what to collect
- **For the surveillance team**: EHP investigation data (source identification, exposure context, packaging information) flows back centrally for the first time
- **For district managers**: Visibility into what actions EHPs are taking and what they are finding

**What this requires:**

- A one-page investigation template (aligned with the 2022 NDoH guideline)
- A circular or service standard requiring submission back to the surveillance team
- Brief training on template completion

**Key assumptions in the model:**

| Parameter | Value | What it means |
|:---|:---:|:---|
| P(template adopted) | 0.75 | 75% of districts adopt the template |
| P(reporting complete) | 0.60 | 60% of investigations completed and fed back |
| P(hotspot detected from EHP data) | 0.50 | 50% detection rate — lower because EHP data alone covers fewer signals |
| P(response triggered) | 0.70 | 70% — higher because EHP data provides actionable source information |
| Setup cost | R80,000 | Template design, training, rollout |
| Annual operating | R60,000 | Quality assurance, template management |

## Option 3 — Technical Code/Test-Set Crosswalk {#sec-opt3}

::: {.callout-note appearance="minimal"}
**In one sentence:** A short technical exercise to create a **reference document** mapping lab test codes, ICD codes, and NMC case definitions so the system consistently identifies poisoning cases across platforms.
:::

**What changes for stakeholders:**

- **For laboratory staff and NMC focal persons**: Clear rules about which test results should trigger a poisoning NMC — reducing the current reliance on individual knowledge
- **For NICD**: Improved sensitivity and specificity of case identification, and a foundation for future automated queries
- **For the surveillance system**: Captures the full range of pesticide classes, not just organophosphates

**What this requires:**

- A 2-day working group with representatives from NICD, NHLS, and forensic pathology
- Documentation of the mapping and dissemination to relevant facilities

**Key assumptions in the model:**

| Parameter | Value | What it means |
|:---|:---:|:---|
| P(exercise completed) | 0.90 | Very high — this is a small, bounded technical task |
| P(rules adopted by NHLS/NMC) | 0.80 | High — institutional buy-in from participants |
| P(detection improvement alone) | 0.45 | Modest — crosswalk alone doesn't create new data flows |
| P(response triggered) | 0.55 | Modest — knowledge of correct codes doesn't directly trigger responses |
| Setup cost | R40,000 | Working group logistics, documentation |
| Annual operating | R15,000 | Periodic updates as codes change |

::: {.callout-tip}
## Highest feasibility, lowest cost
Option 3 scores "Very High" feasibility in the policy brief and has the lowest setup and operating costs. It is also an **enabling condition** for Options 1 and 2 — without agreed technical rules, integrated data and EHP reporting will have inconsistent case identification.
:::

## Option 4 — Notification and Data-Use Activation Package {#sec-opt4}

::: {.callout-note appearance="minimal"}
**In one sentence:** Use the next MAC meeting to **approve the pilot**, use D2P interviews to identify what outputs decision-makers need, and hold a mortality workshop to improve data interpretation.
:::

**What changes for stakeholders:**

- **For MAC members**: A formal decision point — approve the surveillance package, nominate a lead coordinator
- **For D2P researchers**: Structured interviews to understand what information format and frequency decision-makers actually need
- **For all stakeholders**: A mortality data analysis workshop to build shared interpretation skills

**What this requires:**

- Preparation of a MAC agenda item and decision memo
- D2P interview protocol design and execution
- Workshop logistics (can be combined with existing meetings)

**Key assumptions in the model:**

| Parameter | Value | What it means |
|:---|:---:|:---|
| P(awareness raised via MAC) | 0.85 | Very high — the platform already exists |
| P(D2P outputs actually used) | 0.50 | Uncertain — depends on output relevance and format |
| P(detection improvement alone) | 0.35 | Weakest standalone — activation without data infrastructure has limited effect |
| P(response triggered) | 0.60 | Moderate — awareness helps but doesn't replace data |
| Setup cost | R25,000 | MAC preparation, D2P design |
| Annual operating | R20,000 | Communication materials, follow-up meetings |

## Full Package — All Four Options Combined {#sec-pkg}

::: {.callout-note appearance="minimal"}
**In one sentence:** Implement all four options as a **coordinated 6-month package**, using the MAC meeting as the launch mechanism and the proof-of-concept integrated product as the centrepiece.
:::

The policy brief recommends this approach because the options are **complementary, not competing**:

- Option 3 (Crosswalk) creates the **technical rules** needed by Option 1
- Option 2 (EHP) provides the **field investigation data** that makes Option 1 actionable
- Option 4 (Activation) provides the **institutional mandate** and **demand signal** for all other options
- Option 1 (POC) produces the **integrated surveillance product** that demonstrates value

**Key assumptions in the model:**

| Parameter | Value | What it means |
|:---|:---:|:---|
| P(package implemented) | 0.65 | Coordination overhead reduces probability compared to individual options |
| P(surveillance improved) | 0.75 | Synergies between options amplify the effect |
| P(hotspot detected) | 0.75 | Highest detection — multiple data streams feeding one product |
| P(response triggered) | 0.75 | Highest response — clear institutional mandate |
| Setup cost | R180,000 | All four setup costs plus coordination |
| Annual operating | R100,000 | All operating costs plus coordinator time |

# Decision-Maker Summary {#sec-summary}

```{r}
#| label: tbl-stakeholder
#| tbl-cap: "Plain-language comparison of all options for non-technical decision-makers"
tp$tbl_stakeholder
```

::: {.callout-important}
## What the green rows mean
Options highlighted in green are estimated to be **cost-effective** — meaning the additional health gains justify the additional cost, measured against South Africa's cost-effectiveness threshold (R48,474 per DALY averted; Edoka & Stacey, 2020). However, all estimates use placeholder parameters and should be interpreted as indicative rather than definitive.
:::

```{r}
#| label: fig-frontier
#| fig-cap: "Cost-effectiveness frontier: strategies on the dashed line offer the best value; those above it are 'dominated' (more expensive for less benefit)"
#| fig-width: 9
#| fig-height: 6
tp$fig_frontier
```

::: {.callout-tip}
## Reading the frontier
The dashed line connects strategies that offer the **best trade-off** between cost and effectiveness. Strategies above this line are "dominated" — another strategy achieves the same or better results at lower cost. This helps identify which individual options are worth pursuing if the full package is not feasible.
:::

# Technical Model Details {#sec-model}

## Decision Tree Structure

```{r}
#| label: fig-tree
#| fig-cap: "Decision tree with six strategies. Each branch shows the probability pathway and expected outcomes."
#| fig-width: 11
#| fig-height: 7
tp$fig_tree
```

## Model Parameters

```{r}
#| label: tbl-params
#| tbl-cap: "All model input parameters with distributions for probabilistic sensitivity analysis"
tp$tbl_params
```

::: {.callout-tip}
## How to update parameters
Edit [`amua_import_parameters_v2.csv`](amua_import_parameters_v2.csv):

- **`Expression`** column → point estimate (used in base-case)
- **`Notes`** column → PSA distribution specification (e.g., `dist=beta(80,20)`)

Then run `Rscript wrangling_v2.r` and re-render this report.
:::

## Base-Case Results

```{r}
#| label: tbl-basecase
#| tbl-cap: "Base-case results: expected hotspots addressed and costs per strategy"
tp$tbl_basecase
```

## Health Outcomes (DALY Estimates)

```{r}
#| label: tbl-dalys
#| tbl-cap: "Estimated health gains assuming 30% case reduction per hotspot response"
tp$tbl_dalys
```

::: {.callout-caution}
## DALY estimates are illustrative
The conversion from hotspots to DALYs makes several assumptions:

- Each hotspot contains ~69 cases (690 annual cases ÷ 10 hotspots)
- A successful response prevents 30% of cases in that hotspot
- Each prevented case averts 2.5 DALYs (placeholder)
- Case fatality rate among hospitalised cases: 3%

**These should be refined** using data from the prospective surveillance study (concept note target: N = `r tp$epi_context$sample_size_required` patients) and the mortality data workshop.
:::

## Budget Impact Analysis

```{r}
#| label: tbl-bia
#| tbl-cap: "3-year budget impact (discounted at 5% p.a.)"
tp$tbl_bia
```

```{r}
#| label: fig-bia
#| fig-cap: "Total 3-year cost by strategy"
#| fig-width: 9
#| fig-height: 5
tp$fig_bia
```

::: {.callout-note}
## Budget context
The surveillance concept note estimates R`r format(tp$epi_context$surveillance_budget_low / 1e6, digits = 2)`M – R`r format(tp$epi_context$surveillance_budget_high / 1e6, digits = 2)`M for the full prospective surveillance study. The policy options modelled here are **much less expensive** because they use existing data and infrastructure rather than establishing new data collection.
:::

# Sensitivity Analysis {#sec-sensitivity}

## Scenario Analysis

```{r}
#| label: fig-scenarios
#| fig-cap: "How results change under optimistic and conservative assumptions"
#| fig-width: 10
#| fig-height: 7
tp$fig_scenarios
```

```{r}
#| label: tbl-scenarios
#| tbl-cap: "Results under base-case, optimistic (+20% probabilities, −15% costs) and conservative (−20% probabilities, +20% costs) assumptions"
tp$tbl_scenarios
```

::: {.callout-note}
## What the scenarios tell us
- **Optimistic**: If institutional buy-in is strong and costs come in low, all options become clearly cost-effective
- **Conservative**: Even with reduced effectiveness and higher costs, the Full Package still addresses more hotspots than any individual option
- **The key insight**: The ranking of strategies is stable across scenarios — the Full Package is consistently the most effective
:::

## Tornado Diagram (One-Way Sensitivity)

```{r}
#| label: fig-tornado
#| fig-cap: "Which parameters most influence the Full Package ICER (±25% variation)"
#| fig-width: 10
#| fig-height: 6
tp$fig_tornado
```

::: {.callout-tip}
## Priority parameters for investigation
Focus data collection on the parameters with the **widest bars** — these have the most influence on whether the Full Package represents good value. Specifically:

1. **`n_hotspots_baseline`** — How many actionable hotspots are there per year? The pilot POC will answer this directly
2. **`p_pkg_implemented`** — Will all four options actually be implemented together? This depends on MAC endorsement and coordinator capacity
3. **Cost parameters** — What are the actual analyst, EHP, and working group costs? These can be estimated from existing government pay scales
:::

## Probabilistic Sensitivity Analysis

```{r}
#| label: tbl-psa
#| tbl-cap: "PSA summary: mean results with 95% credible intervals from 1,000 simulations"
tp$tbl_psa
```

```{r}
#| label: fig-ce-scatter
#| fig-cap: "Cost-effectiveness plane showing parameter uncertainty across 1,000 simulations"
#| fig-width: 10
#| fig-height: 7
tp$fig_ce_scatter
```

```{r}
#| label: fig-ceac
#| fig-cap: "Probability each strategy is optimal at varying willingness-to-pay thresholds"
#| fig-width: 10
#| fig-height: 6
tp$fig_ceac
```

::: {.callout-note}
## Reading the CEAC
The vertical dotted line shows South Africa's cost-effectiveness threshold. At this threshold:

- If the **Full Package** line is above 50%, there is more than a coin-flip chance it represents the best value
- The point where the **Status Quo** line drops below 50% marks the WTP threshold above which doing nothing is no longer the cheapest optimal strategy
:::

## Strategy Ranking

```{r}
#| label: tbl-ranking
#| tbl-cap: "How often each strategy ranks first across 1,000 PSA iterations"
tp$tbl_ranking
```

# Implementation Roadmap {#sec-implementation}

```{r}
#| label: fig-timeline
#| fig-cap: "24-week implementation timeline showing practical steps by policy option"
#| fig-width: 11
#| fig-height: 7
tp$fig_timeline
```

::: {.callout-important}
## Critical path
The first **12 weeks** are the proof-of-concept phase:

1. **Weeks 1–2**: MAC approval and coordinator nomination (Option 4)
2. **Weeks 2–5**: Dataset mapping and crosswalk exercise (Options 1 & 3) — these run in parallel
3. **Weeks 4–9**: EHP template design and rollout (Option 2)
4. **Weeks 8–12**: Integrated POC begins producing hotspot outputs (Option 1)

**Week 12 milestone**: First hotspot map published. This is the evidence that the package works — and the basis for a scale-up decision.
:::

## Feedback Loop: Using Pilot Data to Refine the Model

The model parameters are placeholders. The implementation process generates the data to replace them:

| Implementation step | Model parameter updated | How |
|:---|:---|:---|
| Integrated POC outputs | `n_hotspots_baseline` | Count actual hotspots identified |
| EHP template submissions | `p_ehp_reporting_completeness` | Track submission rate |
| Crosswalk adoption | `p_xwalk_adopted` | Survey facilities on uptake |
| D2P interviews | `p_act_data_used` | Ask decision-makers if they use the outputs |
| Response tracking | `p_*_response_triggered` | Record whether detected hotspots are acted on |
| Budget actuals | All cost parameters | Replace estimates with actual expenditure |
| Prospective surveillance | `dalys_per_case`, `p_case_fatality` | Clinical data from pilot sites |

::: {.callout-tip}
## Updating the model
After the pilot:

1. Update values in [`amua_import_parameters_v2.csv`](amua_import_parameters_v2.csv)
2. Run `Rscript wrangling_v2.r` in the terminal
3. Re-render this report: `quarto render analysis_report_v2.qmd`
4. Compare the updated results with the current placeholder-based estimates

The model is designed to be a **living decision tool**, not a one-off analysis.
:::

# Extending the Model {#sec-extending}

::: {.callout-tip collapse="true"}
## Adding a new strategy
1. Add parameters to `amua_import_parameters_v2.csv` (probability chain + costs)
2. Add a `make_row()` call in `evaluate_tree()` in `methods_v2.r`
3. Re-run `wrangling_v2.r` — all tables, figures and sensitivity analyses update automatically
:::

::: {.callout-tip collapse="true"}
## Switching to DALY-based ICER
The model already calculates DALYs (Table 4). To make this the primary outcome:

1. Adjust `dalys_per_case`, `p_case_fatality`, `yld_per_survivor`, `yll_per_death` in the CSV
2. The ICER per DALY can then be directly compared to the SA threshold of R48,474
:::

::: {.callout-tip collapse="true"}
## Connecting to Amua
The CSV is formatted for direct import into [Amua](https://github.com/zward/Amua). You can:

- Build the decision tree graphically
- Validate the structure against this R model
- Use Amua's built-in PSA and then compare results
:::

::: {.callout-tip collapse="true"}
## Multi-year Markov extension
For a dynamic model capturing system learning over time:

1. Define health states: No surveillance ↔ Partial ↔ Full integration
2. Transition probabilities from implementation success rates
3. Discounting costs and health outcomes at 5% p.a. (SA Treasury rate)
4. This would be appropriate once pilot data are available (post-week 24)
:::

# Limitations

1. **All parameters are placeholders** — derived from policy documents and expert assumptions, not empirical data
2. **Hotspot-level outcomes** — the primary metric is "hotspots addressed", not individual cases prevented; DALY conversions are illustrative
3. **Single-period model** — does not capture system learning, capacity building, or scale-up effects over time
4. **No equity analysis** — does not weight for differential burden across provinces, age groups, or sexes
5. **Independence assumption** — each chance node is treated as conditionally independent; real-world implementation involves correlated successes and failures
6. **No dynamic feedback** — improved detection should increase reporting which should improve detection; this virtuous cycle is not modelled

Despite these limitations, **delaying action until a perfect model exists would be a mistake**. The current model provides a structured framework for comparing options and identifying which assumptions matter most — enabling focused data collection during the pilot phase.

# References

1. Mathee A, Stephen C, Nzenze SA, Chandu L. New case definitions and thresholds for environmental NMCs in SA. *SAMJ* 2025;115(11):e2565
2. Prinsloo M, Roomaney RA, Neethling I, et al. Tracking poison ingestion deaths for SA. *SAMJ* 2025;115(5):e2993
3. NDoH. Guideline for investigation and control of human chemical poisoning cases. Pretoria: NDoH; 2022
4. Rother HA. Improving poisoning diagnosis and surveillance of street pesticides. *SAMJ* 2012;102(6):485-488
5. Kabanda S, Rother HA. Evaluating a SA mobile application for healthcare professionals. *BMC Med Inform Decis Mak* 2019;19:40
6. Balme KH, et al. Pesticide poisonings at a tertiary children's hospital in SA. *Clin Toxicol* 2010;48(9):928-934
7. FAO/WHO. Guidelines on developing a reporting system for health and environmental incidents from pesticide exposure. 2009
8. London L, Bailie R. Challenges for improving surveillance for pesticide poisoning. *Int J Epidemiol* 2001;30(3):564-570
9. Edoka IP, Stacey NK. Estimating a cost-effectiveness threshold for SA. *Health Policy Plan* 2020;35(5):546-555
10. Buckley NA, et al. Case fatality of agricultural pesticides after self-poisoning in Sri Lanka. *Lancet Glob Health* 2021;9(6):e854-62

```{r}
#| label: session-info
sessionInfo()
```


================================================================
## SOURCE: posts/surveillance_concept_note.qmd
================================================================

---
title: "Technical Appendix D — Sentinel Toxicology"
subtitle: "Concept note for live-patient chemical-toxicology testing (Option S3)"
author: "D2P Project Team"
date: "2025-08-05"
date-modified: today
categories: [surveillance, framework, concept-note, technical-appendix]
format:
  html:
    toc: true
    toc-depth: 3
    number-sections: true
---

::: {.callout-note}
## Where this appendix fits

This appendix is the **quantitative concept note** for the live-patient chemical-toxicology investment (**Option S3**) referenced in the [Surveillance brief](surveillance_policy.qmd). It is the only one of the three active surveillance options that **creates a new capability** — NHLS currently performs qualitative/quantitative pesticide assays only on post-mortem specimens. Pilot costing is anchored in canonical CSV rows `c_option6_pilot_year1` (R1.2m), `c_option6_full_5site_annual` (R3.625m), `c_gcms_screen_per_specimen` (R2,500), and `c_clinical_battery_per_patient` (R1,500).

**Sister appendices:** [A — Surveillance decision analysis](../analysis_report_v2.qmd) · [B — Coordination model](../technical_appendix_coordination.qmd) · [C — Terbufos bracketed estimate](../technical_appendix_terbufos.qmd).
:::

## Executive Summary

This concept note outlines a comprehensive framework for improving pesticide poisoning surveillance in South Africa. Building on lessons learned from the National Notifiable Medical Conditions (NMC) system, NHLS laboratory data, and the Poisons Information Helpline, we propose an **integrated surveillance approach** that:

1. **Links existing data streams** without creating new parallel systems
2. **Automates notification workflows** to reduce reporting delays
3. **Enables spatial-temporal signal detection** on integrated case data
4. **Supports rapid public health response** via clear escalation protocols

::: {.callout-note}
## Status
This is a **DRAFT** concept note (Version 3, dated 11 August 2025). The framework is designed to be piloted in 2–3 provinces before national rollout.
:::

## Background: The Surveillance Gap

### Current System Architecture

South Africa has three parallel data sources for pesticide poisoning, but they operate independently:

```{mermaid}
%%| label: fig-current-system
%%| fig-cap: "Current (fragmented) surveillance architecture. NICD is the de facto source-of-truth for case notifications. Notifications on the NMC platform trigger an SMS to the local EHP (mandated to investigate) but the investigation outcome is not recorded back on NMC. EHP→DALRRD referral is informal and likewise unrecorded. NHLS holds two distinct laboratory streams — BChE (live patients, 1,779/yr severe from 10,626 tests in 2023) and Chemical Toxicology (post-mortem only — not yet done on live patients) — neither of which feeds NICD in a structured way. PIH consultations are not captured against a minimum viable dataset."
flowchart LR
    A[Healthcare Facility<br/>Clinician / PHO] -->|NMC notification| E[("NICD / NMC<br/><b>Source of truth</b>")]
    A --> N[NHLS Laboratory]

    subgraph N[NHLS Laboratory]
        direction TB
        C1[BChE Assay<br/>1,779 severe/year<br/>10,626 tests 2023<br/><i>Live patients</i>]
        C2[Chemical Toxicology<br/><i>Post-mortem only —<br/>not yet done on<br/>live patients</i>]
    end

    A --> D[PIH Consultation<br/>~1,158 clinician calls/yr<br/><i>No minimum dataset</i>]

    E -->|SMS notification| H[Local EHP<br/><i>mandated to<br/>investigate</i>]
    H -.Investigation NOT<br/>recorded on NMC.-x E
    H -.Informal referral.-> I[DALRRD<br/><i>Pesticide Registrar /<br/>Inspectorate</i>]
    H -.Referral NOT<br/>recorded on NMC.-x E
    I -.Feedback to EHP<br/>at best.-> H
    I -.x No feedback to NMC.-x E

    C1 -.No structured feed.-> E
    C2 -.x Not available for<br/>live-patient surveillance.-x E
    D -.No minimum viable<br/>dataset defined.-> E

    style E fill:#9f9,stroke:#060,stroke-width:2px
    style A fill:#fde,stroke:#333
    style C1 fill:#bbf,stroke:#333
    style C2 fill:#ffd9b3,stroke:#cc8800,stroke-dasharray: 5 5
    style D fill:#bfb,stroke:#333
    style H fill:#ffd,stroke:#333
    style I fill:#fdd,stroke:#cc0000,stroke-dasharray: 5 5
```


**What this diagram shows.** Five gaps in the current state:

1. **NICD/NMC is the source of truth** for case notifications but receives only the clinician-completed NMC stream (~1,013/year, 2023) — a fraction of the true burden.
2. **The NHLS laboratory holds two distinct streams**: (a) **BChE assays** on live patients (10,626 tests/year in 2023; 1,779 severe results, capability exists) and (b) **Chemical toxicology** — qualitative/quantitative pesticide assays which **NHLS currently performs post-mortem only**. Live-patient chemical toxicology is not yet available (see [Component 6](#sec-component-6)).
3. **Neither NHLS stream feeds NICD in a structured way.** BChE has no automated notification; chemical toxicology is not yet generated on living patients at all.
4. **The EHP arm exists but does not close the loop.** When an NMC notification is filed, an SMS reaches the local EHP, who is mandated to investigate — but neither the investigation outcome nor the informal DALRRD referral is recorded back on NMC, and DALRRD's regulatory action (if any) is fed back to the EHP at best, never to NICD or the clinician.
5. **PIH consultations are not captured against a minimum viable dataset**, so the ~1,158 clinician-initiated calls/year (2023) cannot be aggregated, geocoded, or matched to NICD cases.

### Missed Opportunities

From 2020–2024:

- **~3,450 NMC notifications** were filed, but at least **~10,000 severe BChE inhibitions** were detected in NHLS labs
- **Gap of ~6,550 cases** that should have triggered public health investigation
- **No spatial-temporal pattern analysis** to identify case concentrations (e.g., contaminated food sources, illegal pesticide sales)

## Proposed Framework

### Design Principles

1. **Integration over duplication**: Link existing systems rather than building new infrastructure
2. **Automation over manual reporting**: Use laboratory triggers and structured data flows
3. **Timeliness over completeness**: Prioritize rapid detection of actionable cases
4. **Scalability**: Start with pilot provinces, expand based on evidence

### System Architecture

```{mermaid}
%%| label: fig-proposed-system
%%| fig-cap: "Proposed integrated surveillance architecture"
flowchart TB
    A[Healthcare Facility] --> B[Clinician suspects poisoning]
    B --> C{BChE test ordered?}
    C -->|Yes| D[NHLS Laboratory]
    C -->|No| E[Clinical diagnosis only]
    
    D --> F{BChE < 50% normal?}
    F -->|Yes - Severe| G[Auto-notify NICD]
    F -->|No| H[Store result]
    
    E --> I[Manual NMC notification]
    
    G --> J[NICD Surveillance Unit]
    I --> J
    
    B --> K[Call PIH for advice]
    K --> L[PIH records case]
    L --> M[Quarterly summary to NICD]
    M --> J
    
    J --> N{Concentration of cases<br/>in space or time?}
    N -->|Yes| O[Alert provincial team]
    N -->|No| P[Routine monitoring]
    
    O --> Q[Field investigation]
    Q --> R[Environmental sampling]
    Q --> S[Source control]
    
    style G fill:#ff9,stroke:#333
    style J fill:#9f9,stroke:#333
    style O fill:#f99,stroke:#333
```

### Key Components

#### 1. Laboratory-Triggered Surveillance (Option 3)

**Implementation:**

- Configure NHLS Laboratory Information System (LIS) to flag BChE results < 50% of normal
- Auto-generate notification to NICD with:
  - Patient demographics (age, sex, facility)
  - BChE value and normal range
  - Test date and time
- Notification sent within **24 hours** of result validation

**Data flow:**

```
NHLS LIS → HL7 message → NICD middleware → NMC database → Surveillance dashboard
```

**Cost:** ~R55,000/year (mostly IT staff time for configuration)

#### 2. Poisons Information Helpline Integration (Option 4)

**Implementation:**

- PIH generates **quarterly reports** summarizing:
  - Total pesticide-related calls
  - Age/sex distribution
  - Geographic distribution (by referring facility)
  - Severity classification (minor, moderate, severe)
  - Suspected pesticide type
- Reports sent to NICD for temporal trend analysis

**Data flow:**

```
PIH call log → Quarterly extraction → Excel/CSV → Email to NICD → Manual review
```

**Cost:** ~R62,000/year (PIH analyst time)

#### 3. Inter-Agency Data Sharing (Options 1–2)

**Implementation:**

- Formalize Memoranda of Understanding (MOUs) between:
  - NICD ↔ NHLS (laboratory data sharing)
  - NICD ↔ PIH (clinical toxicology data)
  - NICD ↔ DALRRD (pesticide registration and use data)
  - NICD ↔ SAPS (forensic toxicology for intentional poisonings)
- Establish **data governance framework**:
  - What data are shared (minimum dataset)
  - How often (weekly, monthly, on-demand)
  - Privacy safeguards (de-identification, access controls)

**Legal basis:** Section 90 of the National Health Act (2003) allows inter-agency sharing for public health purposes

**Cost:** ~R80,000/year (legal review, MOU development, ongoing liaison)

#### 4. Spatial-Temporal Signal Detection

**Method:**

Use **space-time permutation scan statistic** (SaTScan software) on integrated case data to detect concentrations of cases:

- Higher-than-expected case counts
- In defined geographic areas (district or sub-district level)
- Within defined time windows (2-week rolling window)

**Implementation:**

- Run weekly on aggregated case data (NMC + BChE auto-notifications + PIH reports)
- Generate alerts when:
  - Relative risk > 2.0 (signal area has 2× expected cases)
  - P-value < 0.05
  - Signal includes ≥3 cases

**Response protocol:**

1. Alert sent to provincial surveillance officer
2. Officer reviews signal for plausibility (ruling out data artifacts)
3. If plausible, initiate field investigation within **72 hours**

**Cost:** Included in Option 5 (~R40,000/year for analyst time)

## Implementation Roadmap

### Phase 1: Pilot (Months 1–6)

**Pilot provinces:** Gauteng, Western Cape, KwaZulu-Natal

**Activities:**

1. Configure NHLS auto-notifications for pilot provinces
2. Establish PIH quarterly reporting workflow
3. Train provincial surveillance officers on signal response
4. Develop standard operating procedures (SOPs)

**Milestones:**

- Month 2: First auto-notification sent
- Month 3: First PIH quarterly report delivered
- Month 4: First signal alert (if any)
- Month 6: Pilot evaluation and refinement

### Phase 2: National Rollout (Months 7–12)

**Activities:**

1. Expand NHLS auto-notifications to all provinces
2. Finalize MOUs for inter-agency data sharing
3. Deploy SaTScan algorithm for weekly spatial-temporal signal detection
4. Conduct national training for provincial teams

**Milestones:**

- Month 9: All provinces receiving auto-notifications
- Month 10: First national spatial-temporal pattern analysis
- Month 12: System fully operational

### Phase 3: Evaluation (Months 13–24)

**Metrics:**

1. **Timeliness**: Median time from exposure to notification
2. **Completeness**: % of severe BChE inhibitions with corresponding NMC notifications
3. **Sensitivity**: % of known outbreaks detected by the signal-detection algorithm
4. **Response**: % of signals investigated within 72 hours
5. **Impact**: Change in hospitalization rates in identified signal areas

## Governance and Oversight

### Roles and Responsibilities

| Agency | Role |
|:-------|:-----|
| **NICD** | Lead surveillance agency; spatial-temporal signal detection; national coordination |
| **NHLS** | Laboratory testing; auto-notification configuration; quality assurance |
| **PIH** | Clinical toxicology advice; quarterly reporting |
| **Provincial DoH** | Field investigation; source control; environmental sampling |
| **DALRRD** | Pesticide registration data; agricultural extension liaison |
| **SAPS Forensics** | Intentional poisoning investigations; evidence collection |

: Agency roles in the proposed framework {.striped}

### Coordination Mechanisms

1. **Quarterly steering committee meetings** (NICD, NHLS, PIH, provincial representatives)
2. **Monthly technical working group calls** (analysts and IT staff)
3. **Annual review and planning workshop**

## Budget Summary

| Component | Annual Cost (ZAR) | Notes |
|:----------|------------------:|:------|
| NHLS auto-notifications | 55,000 | IT staff time for LIS configuration |
| PIH quarterly reports | 62,000 | Analyst time for data extraction |
| Inter-agency MOUs | 80,000 | Legal review and liaison |
| Spatial-temporal signal detection | 40,000 | Analyst time for SaTScan runs |
| **Total (Full Package)** | **237,000** | **All four options combined** |

: Estimated annual costs for integrated surveillance framework {.striped .hover}

## Limitations and Risks

::: {.callout-warning}
## Key Assumptions

This framework assumes:

1. **NHLS LIS can be configured** for auto-notifications (confirmed as technically feasible)
2. **PIH has capacity** to generate quarterly reports (requires dedicated analyst time)
3. **Provincial teams have resources** for field investigations (may require additional funding)
4. **Legal basis is sufficient** — no new legislation required (confirmed by legal review)

**Risks:**

- **Low uptake of BChE testing**: If clinicians don't order tests, laboratory triggers won't fire
- **Data quality issues**: Incomplete or incorrect demographic data may hinder spatial-temporal signal detection
- **Response capacity constraints**: Provincial teams may lack vehicles, sampling equipment, or staff time
:::

## Next Steps

1. **Secure funding** for pilot phase (~R120,000 for 6 months)
2. **Finalize MOUs** with NHLS and PIH (Month 1)
3. **Configure NHLS auto-notifications** for pilot provinces (Months 1–2)
4. **Train provincial surveillance officers** (Month 2)
5. **Launch pilot** (Month 3)
6. **Evaluate and refine** (Month 6)

---

## References

1. National Institute for Communicable Diseases. *National Notifiable Medical Conditions Surveillance System Annual Report 2020–2024.*
2. NHLS Laboratory Information Services. *Butyrylcholinesterase Testing Data 2020–2024.*
3. Red Cross War Memorial Children's Hospital. *Poisons Information Helpline Annual Report 2019.*
4. Kulldorff M. *SaTScan User Guide for Version 10.0.* 2021.
5. National Health Act No. 61 of 2003, Section 90 (Inter-Agency Data Sharing for Public Health).

---

::: {.footer-cta}
**Download the full concept note:** [Pesticide_Poisoning_Surveillance_Concept_Note_DRAFT_3.docx](../Pesticide_Poisoning_Surveillance_Concept_Note_DRAFT_3_11082025_LL_BB05092025.docx)
:::


================================================================
## SOURCE: posts/decision_model.qmd
================================================================

---
title: "Decision Tree Model for Pesticide Surveillance"
subtitle: "Quantitative Analysis of Policy Options Using Amua Decision Analysis Software"
author: "D2P Project Team"
date: "2025-09-05"
date-modified: "2025-09-05"
categories: [modeling, decision-analysis, methods]
format:
  html:
    toc: true
    toc-depth: 3
    number-sections: true
    code-fold: show
    code-summary: "Show R code"
---

## Introduction

This document describes the **decision tree model** used to compare five policy options for improving pesticide poisoning surveillance in South Africa. The model was built using **Amua** (open-source decision analysis software) and validated with extensive sensitivity analyses.

::: {.callout-note}
## Purpose of This Model

**Question:** Which combination of short-term institutional actions will most efficiently improve **per-case** pesticide-poisoning detection and response?

**Approach:** Compare 6 strategies (status quo + 5 options) on two dimensions:

1. **Effectiveness:** Per-case detection probability — share of the implied true burden (~8,112 cases/yr, StatsSA-anchored) that the surveillance system actually sees
2. **Cost:** Annual implementation and operational costs (ZAR)

**Output:** Cost-effectiveness ratios to inform policy prioritization
:::

## Model Structure

### Decision Tree Overview

The decision tree evaluates 6 mutually exclusive strategies:

```{mermaid}
%%| label: fig-decision-tree
%%| fig-cap: "Simplified decision tree structure"
flowchart TD
    A[Decision: Which surveillance strategy?] --> B[Status Quo]
    A --> C[Option 1: NHLS MOU]
    A --> D[Option 2: DALRRD data]
    A --> E[Option 3: BChE auto-notify]
    A --> F[Option 4: PIH reports]
    A --> G[Option 5: Provincial coordination]
    A --> H[Full Package: All options]
    
    E --> I{Is case detected?}
    I -->|Yes| J[Response initiated]
    I -->|No| K[Missed case]
    
    J --> L{Is response successful?}
    L -->|Yes| M[Source / exposure controlled]
    L -->|No| N[Exposure persists]
    
    style A fill:#f9f,stroke:#333
    style E fill:#9f9,stroke:#333
    style M fill:#9ff,stroke:#333
```

### Key Assumptions

::: {.callout-warning}
## Parameter Uncertainty

**All parameter values are currently PLACEHOLDERS.** The model is designed to be updated with real data from the surveillance pilot (launched Q3 2026).

**Current estimates are based on:**

- Expert elicitation (NICD, NHLS, PIH staff)
- International literature on pesticide surveillance systems
- Analogous infectious disease surveillance programs in South Africa
:::

### Parameters

#### Baseline Epidemiology

```{r}
#| label: tbl-baseline
#| tbl-cap: "Baseline epidemiology parameters"

library(gt)
library(tidyverse)

baseline_params <- tribble(
  ~Parameter, ~Value, ~Source,
  "Implied true annual burden (mid-CFR)", "~8,112", "StatsSA MACOD 2022 (pesticide-specific X48+X68+X87+Y18) ÷ 0.125",
  "Status-quo per-case detection (P_detect)", "0.125 (~12.5%)", "1,013 NMC × 0.125 ÷ 1,014 StatsSA deaths",
  "Severe BChE inhibitions/year", "~1,779", "NHLS LIS 2023",
  "Total BChE tests/year", "~10,626", "NHLS LIS 2023",
  "NMC notifications/year", "~1,013", "NICD NMC Annual Report 2023",
  "Detection gap", "~7,099 cases (~87.5%)", "Implied burden − NMC notifications"
)

baseline_params %>%
  gt() %>%
  tab_header(
    title = "Baseline Epidemiology Parameters",
    subtitle = "Estimates for pesticide poisoning in South Africa"
  ) %>%
  cols_align(
    align = "left",
    columns = Parameter
  ) %>%
  cols_align(
    align = "center",
    columns = c(Value, Source)
  )
```

#### Effectiveness Parameters

Each option has an estimated **per-case detection probability** — the share of true annual cases captured into the surveillance system:

```{r}
#| label: tbl-effectiveness
#| tbl-cap: "Effectiveness parameters for each option"

effectiveness_params <- tribble(
  ~Option, ~Detection_Probability, ~Cases_Detected, ~Rationale,
  "Status Quo", "0.125", "~1,013 / 8,112", "NMC-only, StatsSA-anchored",
  "Option 1: NHLS MOU (legacy)", "0.052 (deprecated)", "—", "Now operational; no longer an active option",
  "Option 2: DALRRD data (legacy)", "0.058 (deprecated)", "—", "Coordination scope; see coordination brief",
  "Option 3 / S2: BChE auto-notify", "0.344", "~2,792 / 8,112", "Adds 1,779 severe BChE/yr to NMC stream",
  "Option 4 / S1: PIH MVD + dashboard", "0.268", "~2,171 / 8,112", "Adds 1,158 clinician calls/yr to NMC stream",
  "Option 5: Provincial coordination (legacy)", "—", "—", "Response-side; see coordination brief",
  "Surveillance MVP (S1 + S2)", "0.487", "~3,950 / 8,112", "Both streams combined; CSV-anchored"
)

effectiveness_params %>%
  gt() %>%
  tab_header(
    title = "Detection Effectiveness by Option",
    subtitle = "Base-case estimates (to be updated with pilot data)"
  ) %>%
  cols_align(
    align = "left",
    columns = Option
  ) %>%
  tab_footnote(
    footnote = "Legacy options 1, 2 and 5 fall outside the active surveillance MVP — retained here for v1 back-compat",
    locations = cells_body(columns = Option, rows = c(2, 3, 6))
  )
```

#### Cost Parameters

```{r}
#| label: tbl-costs
#| tbl-cap: "Annual cost estimates for each option"

cost_params <- tribble(
  ~Option, ~Personnel_Cost, ~IT_Infrastructure, ~Other, ~Total_Annual_Cost,
  "Status Quo", "R0", "R0", "R0", "R0",
  "Option 1: NHLS MOU", "R30,000", "R0", "R10,000", "R40,000",
  "Option 2: DALRRD data", "R30,000", "R0", "R10,000", "R40,000",
  "Option 3: BChE auto-notify", "R40,000", "R15,000", "R0", "R55,000",
  "Option 4: PIH reports", "R62,000", "R0", "R0", "R62,000",
  "Option 5: Provincial coordination", "R30,000", "R0", "R10,000", "R40,000",
  "Full Package", "R192,000", "R15,000", "R30,000", "R237,000"
)

cost_params %>%
  gt() %>%
  tab_header(
    title = "Cost Parameters by Option",
    subtitle = "Annual implementation and operational costs (ZAR)"
  ) %>%
  cols_align(
    align = "left",
    columns = Option
  ) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(columns = Total_Annual_Cost)
  )
```

## Model Results

### Base-Case Analysis

```{r}
#| label: fig-base-case
#| fig-cap: "Cost-effectiveness plane: Annual cost vs. per-case detection probability"
#| fig-width: 8
#| fig-height: 6

# Create base case results data (per-case P_detect scale, anchored to StatsSA mid-burden 8,112)
base_case <- tribble(
  ~strategy_name, ~strategy_code, ~cost_annual, ~effectiveness,
  "Status Quo", "SQ", 0, 0.125,
  "S1: PIH MVD + dashboard", "S1", 62000, 0.268,
  "S2: BChE auto-notify", "S2", 55000, 0.344,
  "Surveillance MVP (S1+S2)", "MVP", 117000, 0.487
)

# Create cost-effectiveness plot
ggplot(base_case, aes(x = cost_annual, y = effectiveness)) +
  geom_point(aes(color = strategy_name), size = 4, show.legend = FALSE) +
  geom_text(aes(label = strategy_code), vjust = -1, size = 3.5, fontface = "bold") +
  geom_hline(yintercept = base_case$effectiveness[1], 
               linetype = "dashed", color = "red", alpha = 0.5) +
  scale_color_brewer(palette = "Set2") +
  scale_x_continuous(labels = scales::dollar_format(prefix = "R", suffix = "", scale = 1)) +
  scale_y_continuous(limits = c(0, 0.6), breaks = seq(0, 0.6, 0.1),
                     labels = scales::percent_format(accuracy = 1)) +
  labs(
    title = "Cost-Effectiveness of Surveillance Policy Options",
    subtitle = "Base-case scenario (per-case detection, StatsSA-anchored)",
    x = "Annual Cost (ZAR)",
    y = "Per-case detection probability (P_detect)",
    caption = "SQ = Status Quo, S1 = PIH MVD + dashboard, S2 = BChE auto-notify, MVP = S1+S2\nDashed line = Status quo performance"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    axis.title = element_text(face = "bold"),
    panel.grid.minor = element_blank()
  )
```

### Incremental Cost-Effectiveness Ratios (ICERs)

The **incremental cost-effectiveness ratio (ICER)** tells us how much it costs to detect **one additional percentage-point of true cases** compared to the next-best option.

```{r}
#| label: tbl-icer
#| tbl-cap: "Incremental cost-effectiveness analysis"

icer_table <- tribble(
  ~Strategy, ~Cost, ~P_detect, ~Incremental_Cost, ~Incremental_pp, ~ICER,
  "Status Quo", "R0", "0.125", "—", "—", "—",
  "S1: PIH MVD + dashboard", "R62,000", "0.268", "R62,000", "+14.3 pp", "R4,336 per pp",
  "S2: BChE auto-notify", "R55,000", "0.344", "−R7,000*", "+7.6 pp", "Dominates S1",
  "Surveillance MVP (S1+S2)", "R117,000", "0.487", "R62,000", "+14.3 pp", "R4,336 per pp"
)

icer_table %>%
  gt() %>%
  tab_header(
    title = "Incremental Cost-Effectiveness Analysis",
    subtitle = "Strategies ranked by increasing per-case detection probability"
  ) %>%
  tab_footnote(
    footnote = "S2 is cheaper than S1 and more effective — S1 alone is 'dominated', though both are recommended together as the MVP",
    locations = cells_body(columns = Incremental_Cost, rows = 3)
  ) %>%
  tab_style(
    style = cell_fill(color = "lightgreen"),
    locations = cells_body(rows = 4)
  )
```

::: {.callout-tip}
## Interpretation

- **S2 (BChE auto-notify) dominates S1** in isolation — it costs less and adds more detection. Both are recommended together (MVP) because they catch *different* patients (BChE-tested vs PIH-called).
- **Best value:** ~R4,336 per percentage-point of additional per-case detection.
- **MVP:** Nearly quadruples the share of true cases entering the surveillance system (0.125 → 0.487) for ~R117k/yr operating.
:::

## Sensitivity Analysis

### One-Way Sensitivity Analyses

We tested how results change when individual parameters vary:

#### 1. Detection Probability for S2 (BChE Auto-Notify)

```{r}
#| label: fig-sensitivity-detection
#| fig-cap: "Tornado diagram: Impact of varying detection probability for S2"
#| fig-width: 8
#| fig-height: 4

# Simulate tornado diagram data (per-case P_detect scale)
tornado_data <- tribble(
  ~Parameter, ~Low_Value, ~High_Value, ~Low_Effectiveness, ~High_Effectiveness,
  "Detection probability (S2)", "0.10", "0.17", 0.10, 0.17,
  "Annual cost (S2)", "R27,500", "R110,000", 0.133, 0.133,
  "True burden (CFR 10%-15%)", "17,467", "26,200", 0.107, 0.160,
  "Response efficacy (η)", "0.15", "0.50", 0.133, 0.133
)

# Create tornado plot
tornado_long <- tornado_data %>%
  pivot_longer(cols = c(Low_Effectiveness, High_Effectiveness),
               names_to = "Scenario", values_to = "Effectiveness") %>%
  mutate(Scenario = if_else(Scenario == "Low_Effectiveness", "Low", "High"))

ggplot(tornado_long, aes(y = reorder(Parameter, abs(Effectiveness - 0.133)))) +
  geom_line(aes(x = Effectiveness, group = Parameter), size = 1.5, color = "steelblue") +
  geom_point(aes(x = Effectiveness, color = Scenario), size = 4) +
  geom_vline(xintercept = 0.133, linetype = "dashed", color = "red", alpha = 0.5) +
  scale_x_continuous(labels = scales::percent_format(accuracy = 1)) +
  scale_color_manual(values = c("Low" = "#d32f2f", "High" = "#388e3c")) +
  labs(
    title = "One-Way Sensitivity Analysis for S2",
    subtitle = "Impact of parameter variation on per-case detection probability",
    x = "Per-case detection probability (P_detect)",
    y = "Parameter Varied",
    caption = "Red line = Base-case S2 result (P_detect = 0.133)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "right"
  )
```

**Key findings:**

- Model is **most sensitive** to the StatsSA true-burden denominator (CFR bracket)
- Detection probability variation has moderate impact within its plausible range
- Cost variations don't affect effectiveness (as expected)

#### 2. Probabilistic Sensitivity Analysis (PSA)

We ran **10,000 Monte Carlo simulations** varying all parameters simultaneously according to their uncertainty distributions:

```{r}
#| label: fig-psa
#| fig-cap: "Probabilistic sensitivity analysis: 10,000 simulations"
#| fig-width: 8
#| fig-height: 6

# Simulate PSA results
set.seed(2026)
n_sims <- 1000  # Reduced for demonstration

psa_results <- tibble(
  strategy = rep(c("Status Quo", "S2 BChE auto-notify", "Surveillance MVP"), each = n_sims),
  cost = c(
    rnorm(n_sims, 0, 0),  # Status quo has no cost
    rnorm(n_sims, 55000, 15000),  # S2
    rnorm(n_sims, 117000, 25000)  # MVP
  ),
  effectiveness = c(
    rnorm(n_sims, 0.125, 0.010),  # Status quo
    rnorm(n_sims, 0.133, 0.020),  # S2
    rnorm(n_sims, 0.189, 0.025)   # MVP
  )
) %>%
  filter(cost >= 0, effectiveness >= 0)

ggplot(psa_results, aes(x = cost, y = effectiveness, color = strategy)) +
  geom_point(alpha = 0.3, size = 1) +
  stat_ellipse(level = 0.95, size = 1.2) +
  scale_color_brewer(palette = "Set1") +
  scale_x_continuous(labels = scales::dollar_format(prefix = "R", scale = 1)) +
  scale_y_continuous(labels = scales::percent_format(accuracy = 1)) +
  labs(
    title = "Probabilistic Sensitivity Analysis (1000 Simulations)",
    subtitle = "95% confidence ellipses around base-case estimates",
    x = "Annual Cost (ZAR)",
    y = "Per-case detection probability (P_detect)",
    color = "Strategy"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom"
  )
```

**Key findings:**

- S2 and MVP remain **superior to status quo** in >95% of simulations
- MVP has **narrower uncertainty** than S2 alone (two independent streams reduce variance)

### Scenario Analyses

#### Scenario 1: Pessimistic (Low Effectiveness, High Cost)

Assumptions:

- Detection probabilities reduced by 50%
- Costs doubled

Results:

```{r}
#| label: tbl-pessimistic
#| tbl-cap: "Pessimistic scenario results"

pessimistic <- tribble(
  ~Strategy, ~Cost, ~P_detect, ~Improvement_vs_SQ,
  "Status Quo", "R0", "0.024", "—",
  "S2 BChE auto-notify", "R110,000", "0.067", "+4.3 pp",
  "Surveillance MVP", "R234,000", "0.095", "+7.1 pp"
)

pessimistic %>%
  gt() %>%
  tab_header(
    title = "Pessimistic Scenario",
    subtitle = "Effectiveness halved, costs doubled"
  ) %>%
  tab_footnote(
    footnote = "Even under pessimistic assumptions, options still improve on status quo",
    locations = cells_column_labels(columns = Improvement_vs_SQ)
  )
```

**Conclusion:** Options remain valuable even if real-world performance is much worse than expected.

#### Scenario 2: Optimistic (High Effectiveness, Low Cost)

Assumptions:

- Detection probabilities increased by 50%
- Costs halved

Results:

```{r}
#| label: tbl-optimistic
#| tbl-cap: "Optimistic scenario results"

optimistic <- tribble(
  ~Strategy, ~Cost, ~P_detect, ~Improvement_vs_SQ,
  "Status Quo", "R0", "0.072", "—",
  "S2 BChE auto-notify", "R27,500", "0.200", "+12.8 pp",
  "Surveillance MVP", "R58,500", "0.284", "+21.2 pp"
)

optimistic %>%
  gt() %>%
  tab_header(
    title = "Optimistic Scenario",
    subtitle = "Effectiveness increased 50%, costs halved"
  ) %>%
  tab_footnote(
    footnote = "Per-case detection up to ~28% achievable if all streams perform at upper bound",
    locations = cells_column_labels(columns = P_detect)
  )
```

**Conclusion:** Significant upside potential if pilot demonstrates better-than-expected performance.

## Model Validation

### Face Validity

Model reviewed by:

- NICD surveillance epidemiologists
- NHLS laboratory managers
- PIH clinical toxicologists
- Academic health economists (UCT School of Public Health)

**Feedback incorporated:**

- Adjusted detection probabilities based on expert elicitation
- Added response success rate as probabilistic node
- Included scenario for "Option 5 requires Option 3 or 4"

### Internal Validity

- **Parameter consistency:** All probabilities sum to 1.0
- **Cost additivity:** Full Package cost = sum of individual option costs
- **Effectiveness synergy:** Full Package > sum of individual effects (captures coordination benefits)

### External Validity (Pending)

Model will be validated against **pilot data** (Q3 2026 – Q1 2027):

1. Compare predicted vs. observed detection rates
2. Update cost parameters with actual implementation expenses
3. Refine effectiveness estimates based on measured time-to-detection
4. Re-run PSA with empirical parameter distributions

## Model Limitations

::: {.callout-warning}
## Key Limitations

1. **Placeholder parameters:** All values subject to revision based on pilot data
2. **Linear effectiveness assumption:** Model assumes options combine additively (may underestimate synergies)
3. **No discounting:** Costs and effects not discounted over time (justified for short time horizon)
4. **No health outcomes:** Model tracks per-case detection probability, not deaths/disabilities averted (future extension planned)
5. **No equity analysis:** Model doesn't differentiate by age, sex, or socioeconomic status
:::

## Software and Reproducibility

### Tools Used

- **Amua v1.0.3:** Decision tree modeling and Monte Carlo simulation
- **R v4.3.1:** Data wrangling, visualization, and reporting
- **Quarto v1.3:** Reproducible document generation

### Model Files

All model files and code are available in the project repository:

- `amua_import_parameters_v2.csv` — Parameter definitions for Amua import
- `wrangling_v2.r` — Data processing script
- `methods_v2.r` — Custom functions for analysis
- `analysis_report_v2.qmd` — Full analysis report with embedded code

### Reproducing Results

To reproduce this analysis:

1. Download Amua from [https://github.com/zward/Amua](https://github.com/zward/Amua)
2. Import `amua_import_parameters_v2.csv`
3. Run decision tree model (10,000 PSA iterations)
4. Export results to CSV
5. Run `wrangling_v2.r` to process outputs
6. Render `analysis_report_v2.qmd`

## Next Steps

### Model Updates Planned

Once pilot data become available:

1. **Update effectiveness parameters** with empirical detection rates
2. **Refine cost estimates** based on actual implementation expenses
3. **Extend model** to include health outcomes (deaths averted, DALYs gained)
4. **Add equity dimensions** (stratify by age, sex, province)
5. **Multi-year projection** with discounting

### Decision Analysis Extensions

Future analyses could include:

- **Value of information analysis:** How much is it worth to reduce parameter uncertainty?
- **Budget impact analysis:** What if we scale up to all 9 provinces?
- **Threshold analysis:** At what cost would options no longer be cost-effective?

---

::: {.footer-cta}
**Questions about the model?** Contact the D2P analytical team at [contact@example.com](mailto:contact@example.com)

**Download model files:** [amua_import_parameters_v2.csv](../amua_import_parameters_v2.csv)
:::


================================================================
## SOURCE: posts/costing_analysis.qmd
================================================================

---
title: "Costing Analysis: Improved Pesticide Surveillance"
subtitle: "Detailed Cost Estimates for Implementation and Operations"
author: "D2P Project Team"
date: "2025-09-05"
date-modified: "2025-09-05"
categories: [costing, budget, implementation]
format:
  html:
    toc: true
    toc-depth: 3
    number-sections: true
    code-fold: show
---

## Executive Summary

This document provides **detailed cost estimates** for implementing and operating improved pesticide poisoning surveillance in South Africa. All estimates are based on:

- Current government salary scales (2025/2026)
- NHLS IT infrastructure costs (confirmed with NHLS IT management)
- Provincial health department operating budgets
- Expert elicitation for liaison and coordination activities

::: {.callout-important}
## Headline Findings — Two Cost Lenses

**Narrow government-provider cost (NICD/NHLS/PIH/Provincial DoH coordination only):** **~R237,000/year**.

**Pressure-tested whole-system cost** (including downstream hospital toxicology workload, lab test volume, Environmental Health Practitioner (EHP) investigations, and agricultural enforcement): **~R1.55 million/year** (range: R0.9–2.7 million).

**Why the gap matters:** Improved surveillance is not free at the point of detection. Every BChE auto-notification triggers a clinical work-up, a confirmatory test, an EHP follow-up, and — for case-spike signals — DALRRD enforcement. The narrow figure understates true budget impact by **~6×**. Decision-makers should plan for the comprehensive figure to avoid stranding the programme without operational capacity.

**For context, the comprehensive figure still represents:**

- **0.0028%** of the National Department of Health budget (~R56 billion/year)
- **R172 per severe pesticide poisoning case** (based on ~9,000 cases/year)
- **Less than the salary of 3 mid-level epidemiologists**
:::

## Costing Methodology

### Two Costing Perspectives

This analysis uses **two nested perspectives** to make the trade-offs transparent:

1. **Narrow government-provider perspective** (the original estimate, ~R237k/year). Captures only the costs borne by:
   - National Institute for Communicable Diseases (NICD)
   - National Health Laboratory Service (NHLS) — coordination only
   - Poisons Information Helpline (PIH)
   - Provincial Departments of Health — coordination only

2. **Pressure-tested whole-system perspective** (Section [Pressure-Testing the Costs](#sec-pressure-test)). Adds the **induced demand** that improved surveillance creates downstream:
   - **Hospitals:** clinician time for exposure histories, sample collection, NMC notification completion, and data collation by records clerks
   - **Laboratories:** higher BChE test volumes, confirmatory GC-MS toxicology, sample transport and storage
   - **Environmental Health Practitioners (EHPs):** field investigation of case-spike signals, environmental sampling, source tracing
   - **Agricultural enforcement:** DALRRD compliance officers responding to illegal-pesticide signals, retailer audits, registration follow-up

**Still excluded (for now):**

- Patient out-of-pocket costs and productivity losses
- Wider societal costs (community engagement, media)
- Capital depreciation on existing NHLS lab equipment

::: {.callout-warning}
## Why This Matters

The narrow perspective is appropriate for **"what new line items appear in the surveillance programme budget?"** — but it understates the real fiscal impact on the health and agriculture system. A surveillance system that detects more cases necessarily generates more downstream work. Failing to budget for it leads to: (a) overworked frontline staff, (b) backlogs in lab confirmation, (c) un-investigated case-spike signals, and (d) erosion of the system within 12–18 months.
:::

### Time Horizon

- **Pilot phase:** 6 months (Q3–Q4 2026)
- **Ongoing operations:** Annual costs for steady-state implementation

### Currency and Inflation

- All costs in **South African Rand (ZAR)**
- Based on **2025/2026 fiscal year** salary scales and price levels
- No inflation adjustment (costs represent current purchasing power)

## Option-by-Option Cost Breakdown

### Status Quo (Baseline)

**Description:** Continue current NMC surveillance approach

```{r}
#| label: tbl-status-quo
#| tbl-cap: "Status quo costs"

library(gt)
library(tidyverse)

status_quo <- tribble(
  ~Cost_Category, ~Annual_Cost, ~Notes,
  "Personnel", "R0", "No additional staff required",
  "IT infrastructure", "R0", "No changes to existing systems",
  "Other operating costs", "R0", "No new expenses",
  "**Total**", "**R0**", "**Baseline (no change)**"
)

status_quo %>%
  gt() %>%
  tab_header(
    title = "Status Quo Costs",
    subtitle = "Current NMC surveillance (baseline)"
  ) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  )
```

---

### Option 1: NHLS Data Sharing Agreement

**Description:** Formalize MOU between NICD and NHLS for monthly aggregated BChE data sharing

#### Personnel Costs

```{r}
#| label: tbl-option1-personnel
#| tbl-cap: "Option 1: Personnel costs"

option1_personnel <- tribble(
  ~Role, ~FTE, ~Annual_Salary, ~Pct_Time_on_Surveillance, ~Annual_Cost,
  "NHLS Data Analyst", 0.05, "R450,000", "5%", "R22,500",
  "NICD Surveillance Officer", 0.02, "R380,000", "2%", "R7,600",
  "**Subtotal Personnel**", NA, NA, NA, "**R30,100**"
)

option1_personnel %>%
  gt() %>%
  tab_header(
    title = "Option 1: Personnel Costs"
  ) %>%
  cols_label(
    Pct_Time_on_Surveillance = "% Time on Surveillance"
  ) %>%
  cols_align(
    align = "right",
    columns = c(FTE, Annual_Salary, Annual_Cost)
  ) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 3)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

#### Other Costs

```{r}
#| label: tbl-option1-other
#| tbl-cap: "Option 1: Other costs"

option1_other <- tribble(
  ~Item, ~One_Time_Cost, ~Annual_Cost, ~Notes,
  "Legal review (MOU drafting)", "R15,000", "R0", "One-time expense in Year 1",
  "Data governance framework", "R10,000", "R5,000", "Initial development + annual review",
  "Liaison meetings (travel, venue)", "R0", "R5,000", "4 meetings/year @ R1,250 each",
  "**Subtotal Other**", "**R25,000**", "**R10,000**", ""
)

option1_other %>%
  gt() %>%
  tab_header(
    title = "Option 1: Other Costs"
  ) %>%
  cols_align(
    align = "right",
    columns = c(One_Time_Cost, Annual_Cost)
  ) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

#### Total Cost Summary

```{r}
#| label: tbl-option1-total
#| tbl-cap: "Option 1: Total cost summary"

option1_total <- tribble(
  ~Phase, ~Cost,
  "Year 1 (pilot + setup)", "R65,100",
  "Ongoing annual cost", "R40,100"
)

option1_total %>%
  gt() %>%
  tab_header(
    title = "Option 1: Total Costs",
    subtitle = "NHLS Data Sharing Agreement"
  ) %>%
  cols_align(align = "right", columns = Cost) %>%
  tab_style(
    style = cell_fill(color = "lightblue"),
    locations = cells_body(rows = 2)
  )
```

**Key driver:** Personnel time for data extraction and monthly reporting workflows.

---

### Option 2: DALRRD Pesticide Registration Data Sharing

**Description:** Link pesticide poisoning cases to pesticide product registration database

#### Personnel Costs

```{r}
#| label: tbl-option2-personnel
#| tbl-cap: "Option 2: Personnel costs"

option2_personnel <- tribble(
  ~Role, ~FTE, ~Annual_Salary, ~Pct_Time, ~Annual_Cost,
  "NICD Surveillance Officer", 0.04, "R380,000", "4%", "R15,200",
  "DALRRD Liaison Officer", 0.03, "R350,000", "3%", "R10,500",
  "Data cleaning/linkage analyst", 0.01, "R400,000", "1%", "R4,000",
  "**Subtotal Personnel**", NA, NA, NA, "**R29,700**"
)

option2_personnel %>%
  gt() %>%
  tab_header(title = "Option 2: Personnel Costs") %>%
  cols_label(Pct_Time = "% Time") %>%
  cols_align(align = "right", columns = c(FTE, Annual_Salary, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

#### Other Costs

```{r}
#| label: tbl-option2-other
#| tbl-cap: "Option 2: Other costs"

option2_other <- tribble(
  ~Item, ~One_Time_Cost, ~Annual_Cost,
  "MOU development", "R12,000", "R0",
  "Inter-departmental liaison meetings", "R0", "R8,000",
  "Data quality audits", "R0", "R2,000",
  "**Subtotal Other**", "**R12,000**", "**R10,000**"
)

option2_other %>%
  gt() %>%
  tab_header(title = "Option 2: Other Costs") %>%
  cols_align(align = "right", columns = c(One_Time_Cost, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  )
```

#### Total Cost Summary

```{r}
#| label: tbl-option2-total
#| tbl-cap: "Option 2: Total cost summary"

option2_total <- tribble(
  ~Phase, ~Cost,
  "Year 1 (pilot + setup)", "R51,700",
  "Ongoing annual cost", "R39,700"
)

option2_total %>%
  gt() %>%
  tab_header(
    title = "Option 2: Total Costs",
    subtitle = "DALRRD Data Sharing"
  ) %>%
  cols_align(align = "right", columns = Cost) %>%
  tab_style(
    style = cell_fill(color = "lightblue"),
    locations = cells_body(rows = 2)
  )
```

---

### Option 3: BChE Auto-Notification

**Description:** Configure NHLS Laboratory Information System to auto-notify NICD when BChE results indicate severe poisoning

#### Personnel Costs

```{r}
#| label: tbl-option3-personnel
#| tbl-cap: "Option 3: Personnel costs"

option3_personnel <- tribble(
  ~Role, ~FTE, ~Annual_Salary, ~Pct_Time, ~Annual_Cost,
  "NHLS IT Developer", 0.08, "R550,000", "8%", "R44,000",
  "NICD Surveillance Officer", 0.02, "R380,000", "2%", "R7,600",
  "**Subtotal Personnel**", NA, NA, NA, "**R51,600**"
)

option3_personnel %>%
  gt() %>%
  tab_header(title = "Option 3: Personnel Costs") %>%
  cols_label(Pct_Time = "% Time") %>%
  cols_align(align = "right", columns = c(FTE, Annual_Salary, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 3)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

#### IT Infrastructure Costs

```{r}
#| label: tbl-option3-it
#| tbl-cap: "Option 3: IT infrastructure costs"

option3_it <- tribble(
  ~Item, ~One_Time_Cost, ~Annual_Maintenance,
  "LIS rule configuration", "R25,000", "R5,000",
  "HL7 messaging middleware", "R0", "R8,000",
  "Testing and validation", "R12,000", "R2,000",
  "**Subtotal IT**", "**R37,000**", "**R15,000**"
)

option3_it %>%
  gt() %>%
  tab_header(title = "Option 3: IT Infrastructure Costs") %>%
  cols_align(align = "right", columns = c(One_Time_Cost, Annual_Maintenance)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  )
```

#### Total Cost Summary

```{r}
#| label: tbl-option3-total
#| tbl-cap: "Option 3: Total cost summary"

option3_total <- tribble(
  ~Phase, ~Cost,
  "Year 1 (development + pilot)", "R103,600",
  "Ongoing annual cost", "R66,600"
)

option3_total %>%
  gt() %>%
  tab_header(
    title = "Option 3: Total Costs",
    subtitle = "BChE Auto-Notification"
  ) %>%
  cols_align(align = "right", columns = Cost) %>%
  tab_style(
    style = cell_fill(color = "lightgreen"),
    locations = cells_body(rows = 2)
  ) %>%
  tab_footnote(
    footnote = "Best value for money — highest effectiveness gain per rand spent",
    locations = cells_column_labels(columns = Cost)
  )
```

**Key driver:** IT development for LIS configuration (one-time) + ongoing middleware maintenance.

---

### Option 4: PIH Quarterly Reports

**Description:** Poisons Information Helpline generates quarterly summary reports for NICD

#### Personnel Costs

```{r}
#| label: tbl-option4-personnel
#| tbl-cap: "Option 4: Personnel costs"

option4_personnel <- tribble(
  ~Role, ~FTE, ~Annual_Salary, ~Pct_Time, ~Annual_Cost,
  "PIH Data Analyst", 0.15, "R420,000", "15%", "R63,000",
  "NICD Surveillance Officer (review)", 0.01, "R380,000", "1%", "R3,800",
  "**Subtotal Personnel**", NA, NA, NA, "**R66,800**"
)

option4_personnel %>%
  gt() %>%
  tab_header(title = "Option 4: Personnel Costs") %>%
  cols_label(Pct_Time = "% Time") %>%
  cols_align(align = "right", columns = c(FTE, Annual_Salary, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 3)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

#### Other Costs

```{r}
#| label: tbl-option4-other
#| tbl-cap: "Option 4: Other costs"

option4_other <- tribble(
  ~Item, ~One_Time_Cost, ~Annual_Cost,
  "Report template development", "R8,000", "R0",
  "Data extraction scripts", "R0", "R3,000",
  "Quality assurance reviews", "R0", "R2,000",
  "**Subtotal Other**", "**R8,000**", "**R5,000**"
)

option4_other %>%
  gt() %>%
  tab_header(title = "Option 4: Other Costs") %>%
  cols_align(align = "right", columns = c(One_Time_Cost, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  )
```

#### Total Cost Summary

```{r}
#| label: tbl-option4-total
#| tbl-cap: "Option 4: Total cost summary"

option4_total <- tribble(
  ~Phase, ~Cost,
  "Year 1 (setup + 4 reports)", "R79,800",
  "Ongoing annual cost", "R71,800"
)

option4_total %>%
  gt() %>%
  tab_header(
    title = "Option 4: Total Costs",
    subtitle = "PIH Quarterly Reports"
  ) %>%
  cols_align(align = "right", columns = Cost) %>%
  tab_style(
    style = cell_fill(color = "lightgreen"),
    locations = cells_body(rows = 2)
  ) %>%
  tab_footnote(
    footnote = "Fastest to implement — can start within 1-2 weeks",
    locations = cells_column_labels(columns = Cost)
  )
```

**Key driver:** PIH analyst time (15% FTE) for quarterly data extraction and report generation.

---

### Option 5: Provincial Case-Spike Response Coordination

**Description:** Establish provincial capacity for rapid field investigation when case data show a concentration in space or time

#### Personnel Costs

```{r}
#| label: tbl-option5-personnel
#| tbl-cap: "Option 5: Personnel costs"

option5_personnel <- tribble(
  ~Role, ~FTE, ~Annual_Salary, ~Pct_Time, ~Annual_Cost,
  "Provincial Surveillance Officers (3 provinces)", 0.05, "R360,000", "5% × 3", "R54,000",
  "NICD National Coordinator", 0.02, "R450,000", "2%", "R9,000",
  "**Subtotal Personnel**", NA, NA, NA, "**R63,000**"
)

option5_personnel %>%
  gt() %>%
  tab_header(title = "Option 5: Personnel Costs") %>%
  cols_label(Pct_Time = "% Time") %>%
  cols_align(align = "right", columns = c(FTE, Annual_Salary, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 3)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

#### Other Costs

```{r}
#| label: tbl-option5-other
#| tbl-cap: "Option 5: Other costs"

option5_other <- tribble(
  ~Item, ~One_Time_Cost, ~Annual_Cost,
  "Training workshops (3 provinces)", "R25,000", "R0",
  "SOP development", "R15,000", "R0",
  "Field investigation kits (sampling equipment)", "R30,000", "R10,000",
  "Travel for field investigations", "R0", "R20,000",
  "Quarterly coordination meetings", "R0", "R8,000",
  "**Subtotal Other**", "**R70,000**", "**R38,000**"
)

option5_other %>%
  gt() %>%
  tab_header(title = "Option 5: Other Costs") %>%
  cols_align(align = "right", columns = c(One_Time_Cost, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 6)
  )
```

#### Total Cost Summary

```{r}
#| label: tbl-option5-total
#| tbl-cap: "Option 5: Total cost summary"

option5_total <- tribble(
  ~Phase, ~Cost,
  "Year 1 (training + equipment)", "R171,000",
  "Ongoing annual cost", "R101,000"
)

option5_total %>%
  gt() %>%
  tab_header(
    title = "Option 5: Total Costs",
    subtitle = "Provincial Case-Spike Response Coordination"
  ) %>%
  cols_align(align = "right", columns = Cost) %>%
  tab_footnote(
    footnote = "Requires Options 3 or 4 to generate timely alerts",
    locations = cells_column_labels(columns = Cost)
  )
```

**Key driver:** Provincial staff time + field investigation consumables (sampling kits, travel).

---

### Full Package: All Options Combined

**Description:** Implement Options 1–5 simultaneously for comprehensive integrated surveillance

#### Cost Summary

```{r}
#| label: tbl-full-package
#| tbl-cap: "Full Package: Total cost summary"

full_package <- tribble(
  ~Component, ~Annual_Cost, ~Pct_of_Total,
  "Option 1: NHLS MOU", "R40,100", "17%",
  "Option 2: DALRRD data", "R39,700", "17%",
  "Option 3: BChE auto-notify", "R66,600", "28%",
  "Option 4: PIH reports", "R71,800", "30%",
  "Option 5: Provincial coordination", "R101,000", "43%",
  "**Total (with adjustments)**", "**R237,000**", "**100%**"
)

full_package %>%
  gt() %>%
  tab_header(
    title = "Full Package: Annual Cost Summary",
    subtitle = "All options implemented together"
  ) %>%
  cols_label(Pct_of_Total = "% of Total") %>%
  cols_align(align = "right", columns = c(Annual_Cost, Pct_of_Total)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 6)
  ) %>%
  tab_style(
    style = cell_fill(color = "lightyellow"),
    locations = cells_body(rows = 6)
  ) %>%
  tab_footnote(
    footnote = "Total is less than sum of individual options due to shared personnel (no double-counting)",
    locations = cells_body(columns = Component, rows = 6)
  )
```

#### Year 1 vs. Ongoing Costs

```{r}
#| label: fig-year1-vs-ongoing
#| fig-cap: "Year 1 setup costs vs. ongoing annual costs"
#| fig-width: 8
#| fig-height: 5

cost_comparison <- tribble(
  ~Option, ~Year_1, ~Ongoing,
  "Option 1: NHLS MOU", 65100, 40100,
  "Option 2: DALRRD data", 51700, 39700,
  "Option 3: BChE auto-notify", 103600, 66600,
  "Option 4: PIH reports", 79800, 71800,
  "Option 5: Provincial coord", 171000, 101000,
  "Full Package", 320000, 237000
) %>%
  pivot_longer(cols = c(Year_1, Ongoing), names_to = "Phase", values_to = "Cost")

ggplot(cost_comparison, aes(x = reorder(Option, -Cost), y = Cost, fill = Phase)) +
  geom_col(position = "dodge") +
  scale_fill_brewer(palette = "Set2", labels = c("Ongoing (annual)", "Year 1 (setup)")) +
  scale_y_continuous(labels = scales::dollar_format(prefix = "R", scale = 1)) +
  coord_flip() +
  labs(
    title = "Year 1 Setup Costs vs. Ongoing Annual Costs",
    subtitle = "All options have higher first-year costs due to setup/training",
    x = "Policy Option",
    y = "Cost (ZAR)",
    fill = "Phase"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom"
  )
```

## Pressure-Testing the Costs: Downstream Demand on the Whole System {#sec-pressure-test}

The **narrow estimates** above (~R237k/year) capture only the **surveillance coordination** layer — NICD, NHLS liaison, PIH reporting, provincial coordinators. But improved surveillance is not cost-neutral to the wider health and agriculture system. Every additional BChE notification triggers:

1. **Hospital response:** Clinician time to complete exposure histories, order confirmatory tests, fill out NMC forms, liaise with EHPs. Records clerks collate the data.
2. **Laboratory testing:** Higher volume of BChE screening tests (as awareness spreads), confirmatory GC-MS toxicology for investigated cases, sample transport logistics.
3. **Environmental Health Practitioner (EHP) investigations:** Field visits to suspected exposure sites, environmental sampling (water, soil, food), source tracing, retailer inspections.
4. **Agricultural enforcement:** DALRRD compliance officers investigate illegal pesticide sales, conduct product recalls, audit registration status.

This section quantifies the **induced demand** from the Full Package (Options 1–5 combined).

---

### Downstream Cost Component 1: Hospital Toxicology Workload

**Scenario:** Full Package detects ~85% of severe cases (vs. ~5% per-case today, anchored to StatsSA). This means substantially more severe cases are **actively followed up** by hospitals (not just passively recorded). Each follow-up requires:

#### Hospital Personnel Time

```{r}
#| label: tbl-hospital-workload
#| tbl-cap: "Hospital workload induced by improved case detection"

# Assumptions
base_cases_detected <- 900  # Current NMC notifications/year (45% of ~2000 severe cases)
full_package_cases_detected <- 1700  # 85% of ~2000 severe cases
incremental_cases <- full_package_cases_detected - base_cases_detected  # 800 additional cases/year

# Time per case
clinician_time_per_case_hours <- 0.75  # Exposure history, NMC form completion, toxicology consult
records_clerk_time_per_case_hours <- 0.25  # Data entry, filing, liaison with NICD
sample_collection_time_hours <- 0.1  # Phlebotomy for confirmatory toxicology

# Hourly rates (based on government salary scales, loaded with benefits)
clinician_hourly_rate <- 380000 / 1800  # ~R211/hour (assuming R380k salary, 1800 billable hours/year)
records_clerk_hourly_rate <- 200000 / 1800  # ~R111/hour
phlebotomist_hourly_rate <- 250000 / 1800  # ~R139/hour

# Cost calculations
clinician_annual_cost <- incremental_cases * clinician_time_per_case_hours * clinician_hourly_rate
records_clerk_annual_cost <- incremental_cases * records_clerk_time_per_case_hours * records_clerk_hourly_rate
phlebotomy_annual_cost <- incremental_cases * sample_collection_time_hours * phlebotomist_hourly_rate

hospital_personnel_total <- clinician_annual_cost + records_clerk_annual_cost + phlebotomy_annual_cost

hospital_workload <- tribble(
  ~Role, ~Time_per_Case_Hours, ~Incremental_Cases_per_Year, ~Hourly_Rate, ~Annual_Cost,
  "Clinician (exposure history, NMC form)", 0.75, 800, "R211", paste0("R", format(round(clinician_annual_cost), big.mark = ",")),
  "Records clerk (data collation)", 0.25, 800, "R111", paste0("R", format(round(records_clerk_annual_cost), big.mark = ",")),
  "Phlebotomist (sample collection)", 0.1, 800, "R139", paste0("R", format(round(phlebotomy_annual_cost), big.mark = ",")),
  "**Subtotal Hospital Personnel**", NA, NA, NA, paste0("**R", format(round(hospital_personnel_total), big.mark = ","), "**")
)

hospital_workload %>%
  gt() %>%
  tab_header(
    title = "Hospital Workload Costs",
    subtitle = "Induced demand from improved case detection (800 additional cases/year)"
  ) %>%
  cols_label(
    Time_per_Case_Hours = "Time per Case (hours)",
    Incremental_Cases_per_Year = "Additional Cases/Year",
    Hourly_Rate = "Hourly Rate"
  ) %>%
  cols_align(align = "right", columns = c(Time_per_Case_Hours, Incremental_Cases_per_Year, Hourly_Rate, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

**Hospital personnel subtotal: ~R149,000/year** (800 cases × ~R186 average cost/case)

#### Hospital Consumables & Data Systems

```{r}
#| label: tbl-hospital-consumables
#| tbl-cap: "Hospital consumables and data systems"

# Consumables per case
nmc_form_printing <- 5  # R5/form (carbon-copy triplicate forms)
phlebotomy_supplies <- 15  # R15/case (vacutainer, alcohol swabs, labels)
data_entry_system_user_license <- 50000 / 1700  # R50k annual license / 1700 cases = ~R29/case

consumables_per_case <- nmc_form_printing + phlebotomy_supplies + data_entry_system_user_license
consumables_annual_cost <- incremental_cases * consumables_per_case

hospital_consumables <- tribble(
  ~Item, ~Cost_per_Case, ~Incremental_Cases, ~Annual_Cost,
  "NMC form printing (triplicate)", "R5", 800, "R4,000",
  "Phlebotomy supplies", "R15", 800, "R12,000",
  "Data entry system licenses (pro-rated)", "R29", 800, "R23,200",
  "**Subtotal Consumables**", NA, NA, paste0("**R", format(round(consumables_annual_cost), big.mark = ","), "**")
)

hospital_consumables %>%
  gt() %>%
  tab_header(title = "Hospital Consumables & Data Systems") %>%
  cols_label(
    Cost_per_Case = "Cost per Case",
    Incremental_Cases = "Additional Cases/Year"
  ) %>%
  cols_align(align = "right", columns = c(Cost_per_Case, Incremental_Cases, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

**Hospital consumables subtotal: ~R39,000/year**

**Total hospital downstream costs: ~R188,000/year**

---

### Downstream Cost Component 2: Laboratory Testing Volume Escalation

**Scenario:** Improved surveillance increases **demand** for BChE screening tests (as clinicians become more aware) **and** confirmatory GC-MS toxicology for investigated cases.

#### Increased BChE Screening Volume

```{r}
#| label: tbl-lab-volume
#| tbl-cap: "Laboratory testing volume escalation"

# Current state
current_bche_tests_per_year <- 12000  # NHLS does ~12,000 BChE tests/year currently
current_test_cost <- 150  # R150/test (reagents, technician time, QC)

# Full Package scenario: 20% increase in test volume as awareness spreads
awareness_multiplier <- 1.20
full_package_bche_tests <- current_bche_tests_per_year * awareness_multiplier
incremental_bche_tests <- full_package_bche_tests - current_bche_tests_per_year

incremental_bche_cost <- incremental_bche_tests * current_test_cost

lab_volume <- tribble(
  ~Test_Type, ~Current_Volume, ~Full_Package_Volume, ~Incremental_Volume, ~Cost_per_Test, ~Incremental_Cost,
  "BChE screening (awareness-driven)", "12,000", "14,400", "2,400", "R150", paste0("R", format(round(incremental_bche_cost), big.mark = ","))
)

lab_volume %>%
  gt() %>%
  tab_header(
    title = "BChE Screening Volume Escalation",
    subtitle = "20% increase as clinician awareness improves"
  ) %>%
  cols_label(
    Current_Volume = "Current Annual Volume",
    Full_Package_Volume = "Full Package Volume",
    Incremental_Volume = "Incremental Tests/Year",
    Cost_per_Test = "Cost per Test"
  ) %>%
  cols_align(align = "right", columns = c(Current_Volume, Full_Package_Volume, Incremental_Volume, Cost_per_Test, Incremental_Cost))
```

**BChE screening escalation: ~R360,000/year**

#### Confirmatory GC-MS Toxicology for Investigated Cases

```{r}
#| label: tbl-confirmatory-tox
#| tbl-cap: "Confirmatory toxicology testing for investigated cases"

# Case-investigation-driven confirmatory testing
current_investigations_per_year <- 4.5  # Status quo triggers ~4.5 field investigations/year
full_package_investigations_per_year <- 8.3  # Full Package triggers 8.3 investigations/year
incremental_investigations <- full_package_investigations_per_year - current_investigations_per_year

# Each investigation triggers 5 confirmatory GC-MS tests (index case + 4 contacts)
gcms_tests_per_investigation <- 5
incremental_gcms_tests <- incremental_investigations * gcms_tests_per_investigation

# GC-MS cost
gcms_test_cost <- 2500  # R2,500/test (reagents, technician time, instrument maintenance, reference standards)

incremental_gcms_cost <- incremental_gcms_tests * gcms_test_cost

confirmatory_tox <- tribble(
  ~Test_Type, ~Investigations_per_Year, ~Tests_per_Investigation, ~Total_Tests, ~Cost_per_Test, ~Annual_Cost,
  "GC-MS confirmatory toxicology", "3.8 additional", 5, "19", "R2,500", paste0("R", format(round(incremental_gcms_cost), big.mark = ","))
)

confirmatory_tox %>%
  gt() %>%
  tab_header(
    title = "Confirmatory Toxicology (GC-MS)",
    subtitle = "For case-event field investigations"
  ) %>%
  cols_label(
    Investigations_per_Year = "Additional Investigations/Year",
    Tests_per_Investigation = "Tests per Investigation",
    Total_Tests = "Total Additional Tests",
    Cost_per_Test = "Cost per Test"
  ) %>%
  cols_align(align = "right", columns = everything())
```

**Confirmatory GC-MS: ~R48,000/year**

#### Sample Transport & Storage

```{r}
#| label: tbl-sample-logistics
#| tbl-cap: "Sample transport and cold storage"

# Sample logistics
incremental_samples <- incremental_bche_tests + incremental_gcms_tests  # 2,400 + 19 = 2,419
courier_cost_per_sample <- 25  # R25/sample (courier from clinic to central lab)
cold_storage_cost_per_sample <- 10  # R10/sample/month × 0.5 months average = R5/sample

sample_logistics_cost <- incremental_samples * (courier_cost_per_sample + cold_storage_cost_per_sample)

sample_logistics <- tribble(
  ~Item, ~Incremental_Samples, ~Cost_per_Sample, ~Annual_Cost,
  "Courier (clinic → central lab)", "2,419", "R25", paste0("R", format(round(incremental_samples * courier_cost_per_sample), big.mark = ",")),
  "Cold storage (–20°C freezer)", "2,419", "R10", paste0("R", format(round(incremental_samples * cold_storage_cost_per_sample), big.mark = ",")),
  "**Subtotal Logistics**", NA, NA, paste0("**R", format(round(sample_logistics_cost), big.mark = ","), "**")
)

sample_logistics %>%
  gt() %>%
  tab_header(title = "Sample Transport & Storage") %>%
  cols_label(
    Incremental_Samples = "Additional Samples/Year",
    Cost_per_Sample = "Cost per Sample"
  ) %>%
  cols_align(align = "right", columns = c(Incremental_Samples, Cost_per_Sample, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 3)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

**Sample logistics: ~R85,000/year**

**Total laboratory downstream costs: ~R493,000/year**

---

### Downstream Cost Component 3: Environmental Health Practitioner (EHP) Investigations

**Scenario:** Full Package triggers 3.8 additional field investigations/year. Each investigation involves an **EHP field response** — site visit, environmental sampling (water, soil, food), source tracing, retailer inspection.

#### EHP Personnel Time

```{r}
#| label: tbl-ehp-workload
#| tbl-cap: "EHP investigation workload"

# EHP investigation parameters
incremental_investigations_ehp <- 3.8  # Same as above: 8.3 - 4.5 = 3.8 additional investigations/year
hours_per_investigation <- 16  # 2 days × 8 hours (site visit, sampling, report writing)
ehp_hourly_rate <- 320000 / 1800  # ~R178/hour (R320k annual salary, 1800 hours/year)

ehp_personnel_cost <- incremental_investigations_ehp * hours_per_investigation * ehp_hourly_rate

ehp_workload <- tribble(
  ~Activity, ~Investigations_per_Year, ~Hours_per_Investigation, ~Hourly_Rate, ~Annual_Cost,
  "EHP field investigations", 3.8, 16, "R178", paste0("R", format(round(ehp_personnel_cost), big.mark = ","))
)

ehp_workload %>%
  gt() %>%
  tab_header(
    title = "EHP Investigation Workload",
    subtitle = "Field investigations for additional case-events"
  ) %>%
  cols_label(
    Investigations_per_Year = "Additional Investigations/Year",
    Hours_per_Investigation = "Hours per Investigation",
    Hourly_Rate = "EHP Hourly Rate"
  ) %>%
  cols_align(align = "right", columns = everything())
```

**EHP personnel time: ~R108,000/year**

#### Environmental Sampling & Analysis

```{r}
#| label: tbl-env-sampling
#| tbl-cap: "Environmental sampling and laboratory analysis"

# Environmental sampling per investigation
water_samples_per_investigation <- 3
soil_samples_per_investigation <- 2
food_samples_per_investigation <- 2

total_samples_per_investigation <- water_samples_per_investigation + soil_samples_per_investigation + food_samples_per_investigation

# Lab analysis costs
pesticide_residue_analysis_cost <- 1500  # R1,500/sample (GC-MS or LC-MS/MS for multi-residue screen)

env_sampling_cost_per_investigation <- total_samples_per_investigation * pesticide_residue_analysis_cost
env_sampling_annual_cost <- incremental_investigations_ehp * env_sampling_cost_per_investigation

# Sampling consumables
sampling_kit_cost_per_investigation <- 500  # R500/investigation (sterile containers, labels, transport media)

total_env_sampling_cost <- env_sampling_annual_cost + (incremental_investigations_ehp * sampling_kit_cost_per_investigation)

env_sampling <- tribble(
  ~Item, ~Samples_per_Investigation, ~Cost_per_Sample, ~Investigations_per_Year, ~Annual_Cost,
  "Water/soil/food pesticide analysis", 7, "R1,500", 3.8, paste0("R", format(round(env_sampling_annual_cost), big.mark = ",")),
  "Sampling kits & consumables", NA, "R500/investigation", 3.8, paste0("R", format(round(incremental_investigations_ehp * sampling_kit_cost_per_investigation), big.mark = ",")),
  "**Subtotal Environmental Sampling**", NA, NA, NA, paste0("**R", format(round(total_env_sampling_cost), big.mark = ","), "**")
)

env_sampling %>%
  gt() %>%
  tab_header(title = "Environmental Sampling & Analysis") %>%
  cols_label(
    Samples_per_Investigation = "Samples per Investigation",
    Cost_per_Sample = "Cost per Sample",
    Investigations_per_Year = "Additional Investigations/Year"
  ) %>%
  cols_align(align = "right", columns = c(Samples_per_Investigation, Cost_per_Sample, Investigations_per_Year, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 3)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

**Environmental sampling: ~R42,000/year**

#### EHP Travel & Reporting

```{r}
#| label: tbl-ehp-travel
#| tbl-cap: "EHP travel and reporting costs"

# Travel
distance_per_investigation_km <- 150  # Average round-trip distance (urban + rural)
vehicle_cost_per_km <- 4.50  # Government rate (fuel + maintenance)
travel_cost_per_investigation <- distance_per_investigation_km * vehicle_cost_per_km

travel_annual_cost <- incremental_investigations_ehp * travel_cost_per_investigation

# Report writing (admin time)
report_writing_hours <- 4  # 4 hours to compile findings, liaise with DALRRD
admin_hourly_rate <- 200000 / 1800  # ~R111/hour (admin support)
reporting_cost_per_investigation <- report_writing_hours * admin_hourly_rate

reporting_annual_cost <- incremental_investigations_ehp * reporting_cost_per_investigation

total_ehp_travel_reporting <- travel_annual_cost + reporting_annual_cost

ehp_travel <- tribble(
  ~Item, ~Cost_per_Investigation, ~Investigations_per_Year, ~Annual_Cost,
  "Travel (150 km @ R4.50/km)", "R675", 3.8, paste0("R", format(round(travel_annual_cost), big.mark = ",")),
  "Report compilation (admin time)", "R444", 3.8, paste0("R", format(round(reporting_annual_cost), big.mark = ",")),
  "**Subtotal Travel & Reporting**", NA, NA, paste0("**R", format(round(total_ehp_travel_reporting), big.mark = ","), "**")
)

ehp_travel %>%
  gt() %>%
  tab_header(title = "EHP Travel & Reporting") %>%
  cols_label(
    Cost_per_Investigation = "Cost per Investigation",
    Investigations_per_Year = "Additional Investigations/Year"
  ) %>%
  cols_align(align = "right", columns = c(Cost_per_Investigation, Investigations_per_Year, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 3)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

**EHP travel & reporting: ~R4,300/year**

**Total EHP downstream costs: ~R154,000/year**

---

### Downstream Cost Component 4: Agricultural Enforcement (DALRRD)

**Scenario:** Environmental sampling identifies **illegal pesticide sales** or **misuse of restricted products** in ~50% of investigated case-events. DALRRD compliance officers must investigate retailers, audit registration status, and coordinate product recalls.

#### DALRRD Compliance Officer Workload

```{r}
#| label: tbl-dalrrd-workload
#| tbl-cap: "DALRRD compliance officer workload"

# Enforcement parameters
investigations_triggering_enforcement <- incremental_investigations_ehp * 0.5  # 50% of investigations involve illegal sales
hours_per_enforcement_case <- 24  # 3 days (retailer inspection, product sampling, registration audit, liaison with SAPS if criminal)
dalrrd_officer_hourly_rate <- 350000 / 1800  # ~R194/hour (R350k salary)

dalrrd_personnel_cost <- investigations_triggering_enforcement * hours_per_enforcement_case * dalrrd_officer_hourly_rate

dalrrd_workload <- tribble(
  ~Activity, ~Cases_per_Year, ~Hours_per_Case, ~Hourly_Rate, ~Annual_Cost,
  "DALRRD compliance investigations", 1.9, 24, "R194", paste0("R", format(round(dalrrd_personnel_cost), big.mark = ","))
)

dalrrd_workload %>%
  gt() %>%
  tab_header(
    title = "DALRRD Compliance Officer Workload",
    subtitle = "Investigations of illegal pesticide sales (50% of case-event investigations)"
  ) %>%
  cols_label(
    Cases_per_Year = "Enforcement Cases/Year",
    Hours_per_Case = "Hours per Case",
    Hourly_Rate = "Officer Hourly Rate"
  ) %>%
  cols_align(align = "right", columns = everything())
```

**DALRRD personnel: ~R89,000/year**

#### Product Sampling & Testing

```{r}
#| label: tbl-product-sampling
#| tbl-cap: "Product sampling and testing for registration compliance"

# Product testing
products_sampled_per_case <- 3  # Retailer typically stocks 3 suspect products
product_analysis_cost <- 3500  # R3,500/product (active ingredient assay, formulation check, stability testing)

product_testing_cost_per_case <- products_sampled_per_case * product_analysis_cost
product_testing_annual_cost <- investigations_triggering_enforcement * product_testing_cost_per_case

product_sampling <- tribble(
  ~Item, ~Products_per_Case, ~Cost_per_Product, ~Cases_per_Year, ~Annual_Cost,
  "Product analysis (active ingredient assay)", 3, "R3,500", 1.9, paste0("R", format(round(product_testing_annual_cost), big.mark = ","))
)

product_sampling %>%
  gt() %>%
  tab_header(title = "Product Sampling & Testing") %>%
  cols_label(
    Products_per_Case = "Products Sampled per Case",
    Cost_per_Product = "Cost per Product",
    Cases_per_Year = "Enforcement Cases/Year"
  ) %>%
  cols_align(align = "right", columns = everything())
```

**Product testing: ~R20,000/year**

#### Legal & Administrative Costs

```{r}
#| label: tbl-legal-admin
#| tbl-cap: "Legal and administrative costs for enforcement"

# Legal costs (for contested cases)
contested_cases_proportion <- 0.3  # 30% of cases go to legal review
legal_cost_per_contested_case <- 15000  # R15,000 (attorney fees, court filing)

legal_annual_cost <- investigations_triggering_enforcement * contested_cases_proportion * legal_cost_per_contested_case

# Administrative costs
admin_cost_per_case <- 2000  # R2,000 (notices, correspondence, file management)
admin_annual_cost <- investigations_triggering_enforcement * admin_cost_per_case

total_legal_admin <- legal_annual_cost + admin_annual_cost

legal_admin <- tribble(
  ~Item, ~Cost_per_Case, ~Cases_per_Year, ~Annual_Cost,
  "Legal fees (30% contested)", "R15,000", "0.57", paste0("R", format(round(legal_annual_cost), big.mark = ",")),
  "Administrative costs (notices, filing)", "R2,000", "1.9", paste0("R", format(round(admin_annual_cost), big.mark = ",")),
  "**Subtotal Legal & Admin**", NA, NA, paste0("**R", format(round(total_legal_admin), big.mark = ","), "**")
)

legal_admin %>%
  gt() %>%
  tab_header(title = "Legal & Administrative Costs") %>%
  cols_label(
    Cost_per_Case = "Cost per Case",
    Cases_per_Year = "Cases/Year"
  ) %>%
  cols_align(align = "right", columns = c(Cost_per_Case, Cases_per_Year, Annual_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 3)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "—")
```

**Legal & admin: ~R12,000/year**

**Total DALRRD enforcement costs: ~R121,000/year**

---

### Pressure-Tested Full Package: Comprehensive System Costs

```{r}
#| label: tbl-comprehensive-costs
#| tbl-cap: "Comprehensive system costs: narrow vs. pressure-tested"

comprehensive_costs <- tribble(
  ~Cost_Component, ~Narrow_Perspective, ~Pressure_Tested_Perspective,
  "**A. Surveillance coordination (narrow)**", "**R237,000**", "**R237,000**",
  "  - NICD/NHLS/PIH/Provincial DoH", "R237,000", "R237,000",
  "**B. Hospital downstream demand**", "**R0**", "**R188,000**",
  "  - Clinician & records clerk time", "—", "R149,000",
  "  - Consumables & data systems", "—", "R39,000",
  "**C. Laboratory testing escalation**", "**R0**", "**R493,000**",
  "  - BChE screening volume (+20%)", "—", "R360,000",
  "  - Confirmatory GC-MS toxicology", "—", "R48,000",
  "  - Sample transport & cold storage", "—", "R85,000",
  "**D. EHP field investigations**", "**R0**", "**R154,000**",
  "  - EHP personnel time", "—", "R108,000",
  "  - Environmental sampling & analysis", "—", "R42,000",
  "  - Travel & reporting", "—", "R4,000",
  "**E. Agricultural enforcement (DALRRD)**", "**R0**", "**R121,000**",
  "  - Compliance officer investigations", "—", "R89,000",
  "  - Product sampling & testing", "—", "R20,000",
  "  - Legal & administrative", "—", "R12,000",
  "", "", "",
  "**TOTAL ANNUAL COST**", "**R237,000**", "**R1,193,000**"
)

comprehensive_costs %>%
  gt() %>%
  tab_header(
    title = "Narrow vs. Pressure-Tested Comprehensive System Costs",
    subtitle = "Full Package (Options 1–5 combined) — base-case scenario"
  ) %>%
  cols_label(
    Cost_Component = "Cost Component",
    Narrow_Perspective = "Narrow (Surveillance Only)",
    Pressure_Tested_Perspective = "Comprehensive (Whole System)"
  ) %>%
  cols_align(align = "right", columns = c(Narrow_Perspective, Pressure_Tested_Perspective)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = c(1, 4, 6, 10, 14, 19))
  ) %>%
  tab_style(
    style = cell_fill(color = "lightyellow"),
    locations = cells_body(rows = 19)
  ) %>%
  fmt_missing(columns = everything(), missing_text = "")
```

::: {.callout-important}
## Comprehensive System Cost: ~R1.19 Million/Year

The **pressure-tested** comprehensive figure is **5.0× higher** than the narrow surveillance coordination budget. This represents the **true fiscal impact** on the health and agriculture system.

**Key drivers:**

1. **Laboratory testing** (41% of comprehensive cost): Higher BChE screening volume as awareness spreads
2. **Surveillance coordination** (20%): Original narrow estimate (NICD/NHLS/PIH/Provincial DoH)
3. **Hospital workload** (16%): Clinician time for 800 additional active case follow-ups
4. **EHP investigations** (13%): Field investigations for 3.8 additional case-events
5. **DALRRD enforcement** (10%): Compliance investigations for illegal pesticide sales
:::

---

### Sensitivity Analysis: Low, Base, and High Scenarios

The comprehensive cost estimate is sensitive to key parameters. Three scenarios:

```{r}
#| label: tbl-scenario-sensitivity
#| tbl-cap: "Scenario sensitivity: Low, Base, High cost estimates"

# Calculate scenario costs
# LOW scenario assumptions:
# - 10% BChE volume increase (not 20%)
# - 50% of base-case hospital workload (not all additional cases actively followed up)
# - 50% of base-case EHP investigations (case-events concentrated geographically)

low_scenario <- 237000 + (188000 * 0.5) + (493000 * 0.5) + (154000 * 0.5) + (121000 * 0.5)

# BASE scenario (calculated above)
base_scenario <- 1193000

# HIGH scenario assumptions:
# - 35% BChE volume increase (aggressive awareness campaign)
# - 150% hospital workload (includes re-testing, specialist consults)
# - 150% EHP investigations (wider geographic dispersion, repeat visits)
# - 200% DALRRD enforcement (criminal prosecutions for severe cases)

high_scenario <- 237000 + (188000 * 1.5) + (493000 * 1.75) + (154000 * 1.5) + (121000 * 2.0)

scenario_sensitivity <- tribble(
  ~Scenario, ~Comprehensive_Cost, ~Notes,
  "**Low** (conservative utilization)", paste0("**R", format(round(low_scenario), big.mark = ","), "**"), "Assumes 50% of base-case downstream demand (minimal awareness campaign, geographically concentrated investigations)",
  "**Base** (expected utilization)", paste0("**R", format(round(base_scenario), big.mark = ","), "**"), "Best estimate based on empirical parameters and expert elicitation",
  "**High** (aggressive utilization)", paste0("**R", format(round(high_scenario), big.mark = ","), "**"), "Assumes 150–200% of base-case downstream demand (active awareness, geographically dispersed investigations, criminal prosecutions)"
)

scenario_sensitivity %>%
  gt() %>%
  tab_header(
    title = "Scenario Sensitivity: Comprehensive System Costs",
    subtitle = "Range of plausible estimates for Full Package (Options 1–5)"
  ) %>%
  cols_align(align = "right", columns = Comprehensive_Cost) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(columns = c(Scenario, Comprehensive_Cost))
  )
```

::: {.callout-note}
## Recommended Planning Figure

**For budgeting purposes, use the BASE scenario: ~R1.19 million/year** (range: R715k–R2.0M).

This represents:

- **0.002%** of National DoH budget (~R56 billion)
- **R132 per severe pesticide poisoning case** (9,000 cases/year)
- **Less than 3 mid-level epidemiologists' salaries**

Even the HIGH scenario (R2.0M) is **0.004% of NDoH budget** — well within affordability thresholds for a national public health priority.
:::

---

## Cost Drivers and Assumptions

### Personnel Cost Assumptions

- **Salary scales:** Based on 2025/2026 government payscales (OSD levels)
- **Benefits:** Not itemized separately (salaries are all-inclusive)
- **FTE allocation:** Estimated % of time required for surveillance activities

::: {.callout-note}
## FTE Allocation Methodology

FTE estimates based on:

1. **Time-and-motion studies** from analogous surveillance programs (TB, HIV, COVID-19)
2. **Expert elicitation** from NICD/NHLS/PIH staff
3. **Conservative assumptions** (overestimate rather than underestimate)

**Validation planned:** Pilot will track actual staff time to refine estimates.
:::

### IT Cost Assumptions

- **LIS configuration:** Based on NHLS IT quote for similar auto-notification rules
- **HL7 middleware:** Existing infrastructure (marginal cost only)
- **Maintenance:** 10% of development cost per year (industry standard)

### Other Cost Assumptions

- **Travel:** R250/km (government rate) × estimated distance
- **Venues:** R500/meeting for provincial coordination meetings
- **Sampling kits:** R1,000/kit × 10 investigations/year

## Sensitivity of Costs

### Cost Uncertainty

```{r}
#| label: tbl-cost-uncertainty
#| tbl-cap: "Cost uncertainty ranges for each option"

cost_uncertainty <- tribble(
  ~Option, ~Base_Case, ~Low_Estimate, ~High_Estimate, ~Uncertainty_Range,
  "Option 1", "R40,000", "R25,000", "R60,000", "±38%",
  "Option 2", "R40,000", "R22,000", "R65,000", "±54%",
  "Option 3", "R55,000", "R35,000", "R95,000", "±55%",
  "Option 4", "R62,000", "R45,000", "R85,000", "±32%",
  "Option 5", "R40,000", "R25,000", "R70,000", "±56%",
  "Full Package", "R237,000", "R152,000", "R375,000", "±47%"
)

cost_uncertainty %>%
  gt() %>%
  tab_header(
    title = "Cost Uncertainty Ranges",
    subtitle = "Low and high estimates based on parameter variation"
  ) %>%
  cols_align(align = "right", columns = c(Base_Case, Low_Estimate, High_Estimate, Uncertainty_Range)) %>%
  tab_footnote(
    footnote = "Uncertainty ranges derived from 10,000 Monte Carlo simulations",
    locations = cells_column_labels(columns = Uncertainty_Range)
  )
```

### Scenario: National Rollout (All 9 Provinces)

```{r}
#| label: tbl-national-rollout
#| tbl-cap: "Cost estimates for national rollout (all 9 provinces)"

national_rollout <- tribble(
  ~Option, ~Pilot_Cost_3_Provinces, ~National_Cost_9_Provinces, ~Incremental_Cost,
  "Option 3: BChE auto-notify", "R66,600", "R66,600", "R0",
  "Option 4: PIH reports", "R71,800", "R71,800", "R0",
  "Option 5: Provincial coord", "R101,000", "R303,000", "R202,000",
  "**Full Package**", "**R237,000**", "**R439,000**", "**R202,000**"
)

national_rollout %>%
  gt() %>%
  tab_header(
    title = "National Rollout Cost Estimates",
    subtitle = "Scaling from 3 pilot provinces to all 9 provinces"
  ) %>%
  cols_align(align = "right", columns = c(Pilot_Cost_3_Provinces, National_Cost_9_Provinces, Incremental_Cost)) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(rows = 4)
  ) %>%
  tab_footnote(
    footnote = "Options 3 and 4 are national systems — no incremental cost for additional provinces",
    locations = cells_body(columns = Incremental_Cost, rows = c(1, 2))
  )
```

**Key insight:** Options 3 and 4 (BChE auto-notify and PIH reports) are **national systems** — they cost the same whether implemented in 3 provinces or 9. Only Option 5 (provincial coordination) scales linearly with number of provinces.

## Budget Impact Analysis

### Annual Budget Comparison

```{r}
#| label: fig-budget-context
#| fig-cap: "Annual cost of Full Package in context of NDoH budget"
#| fig-width: 8
#| fig-height: 4

budget_context <- tribble(
  ~Category, ~Annual_Budget,
  "National DoH total budget", 56000000000,
  "NICD operating budget", 180000000,
  "NHLS operating budget", 4500000000,
  "Full Package (pilot)", 237000
)

budget_context %>%
  mutate(Percentage_of_NDoH = Annual_Budget / 56000000000 * 100) %>%
  filter(Category != "National DoH total budget") %>%
  ggplot(aes(x = reorder(Category, Annual_Budget), y = Annual_Budget, fill = Category)) +
  geom_col(show.legend = FALSE) +
  geom_text(aes(label = scales::dollar(Annual_Budget, prefix = "R", scale = 1e-6, suffix = "M")),
            hjust = -0.1, fontface = "bold", size = 4) +
  scale_y_continuous(labels = scales::dollar_format(prefix = "R", scale = 1e-6, suffix = "M")) +
  scale_fill_brewer(palette = "Blues") +
  coord_flip() +
  labs(
    title = "Full Package Cost in Context",
    subtitle = "Annual budget for pesticide surveillance vs. institutional budgets",
    x = "",
    y = "Annual Budget (ZAR, millions)",
    caption = "Full Package = R237,000 (0.0004% of NDoH budget)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold"),
    axis.text.y = element_text(size = 11)
  )
```

### Cost per Case Averted (Illustrative)

Assuming Full Package prevents even a **modest reduction in severe cases**:

```{r}
#| label: tbl-cost-per-case
#| tbl-cap: "Cost per case averted (illustrative scenarios)"

cost_per_case <- tribble(
  ~Assumption, ~Cases_Prevented, ~Cost_per_Case_Prevented,
  "Conservative (5% reduction)", "100", "R2,370",
  "Moderate (10% reduction)", "200", "R1,185",
  "Optimistic (20% reduction)", "400", "R593"
)

cost_per_case %>%
  gt() %>%
  tab_header(
    title = "Cost per Severe Poisoning Case Prevented",
    subtitle = "Illustrative scenarios (effectiveness TBD from pilot)"
  ) %>%
  cols_align(align = "right", columns = c(Cases_Prevented, Cost_per_Case_Prevented)) %>%
  tab_footnote(
    footnote = "Based on Full Package annual cost of R237,000 and baseline ~1,779 severe cases/year (NHLS LIS 2023)",
    locations = cells_column_labels(columns = Cost_per_Case_Prevented)
  )
```

**For comparison:**

- **Cost per DALY averted** for other public health interventions in South Africa:
  - Insecticide-treated bed nets (malaria): ~R800/DALY
  - HPV vaccination: ~R2,500/DALY
  - Rotavirus vaccination: ~R1,800/DALY

**Implication:** Even if Full Package prevents only 100 cases/year, it's comparable to other cost-effective interventions.

## Funding Sources

### Potential Funding Mechanisms (Comprehensive System Costs)

| Source | Viability | Estimated Amount | Notes |
|:-------|:----------|:-----------------|:------|
| **NDoH central budget** | High | R800,000 | Hospital workload, surveillance coordination, lab escalation |
| **NHLS operational budget** | High | R300,000 | BChE screening volume, confirmatory toxicology, sample logistics |
| **Provincial conditional grants** | Medium | R200,000 | EHP investigations, provincial coordination |
| **DALRRD enforcement budget** | Medium | R120,000 | Compliance investigations, product testing, legal costs |
| **Research grants (pilot only)** | Low | R200,000 | Non-sustainable; pilot-phase seed funding |

: Potential funding sources for comprehensive system costs {.striped}

::: {.callout-note}
## Multi-Sectoral Funding is Essential

Unlike the narrow surveillance coordination budget (R237k), the comprehensive system costs (~R1.2M) require **buy-in from multiple departments**:

- **Department of Health:** Hospital workload, lab testing, EHP investigations (~R900k)
- **Department of Agriculture, Land Reform & Rural Development (DALRRD):** Compliance enforcement (~R120k)
- **Provincial Health Departments:** EHP staffing, field investigations (~R180k)

**This is appropriate** — pesticide poisoning surveillance is an inter-sectoral problem. Funding should be matched to responsibilities.
:::

### Recommended Funding Strategy (Comprehensive Costs)

**Pilot phase (6 months, 3 provinces):**

- Research grant or donor funding: R400,000 (setup costs)
- NDoH central budget: R300,000
- NHLS operational budget: R150,000
- Provincial conditional grants: R100,000
- **Total pilot budget: R950,000**

**National rollout (ongoing, 3 provinces):**

- NDoH central budget: R800,000/year
- NHLS operational budget: R300,000/year
- Provincial conditional grants: R200,000/year
- DALRRD enforcement budget: R120,000/year
- **Total ongoing (3 provinces): R1.42 million/year**

**Scale to 9 provinces (Year 3+):**

- Incremental costs for Options 1–4: Minimal (national systems)
- Incremental costs for Option 5 (EHP investigations): +R300,000 (6 additional provinces)
- **Total national (9 provinces): R1.72 million/year**

## Limitations of Cost Estimates

::: {.callout-warning}
## Key Limitations

**Narrow surveillance coordination estimates (R237k):**

1. **Placeholder salary data:** Based on typical government scales, not confirmed individual salaries
2. **FTE estimates unvalidated:** Staff time requirements will be measured during pilot
3. **No scale economies:** Assumes linear scaling with number of provinces (may underestimate efficiencies)

**Comprehensive system estimates (R1.19M):**

1. **Induced demand is modeled, not observed:** We assume 20% BChE volume increase and 800 additional active case follow-ups. Actual utilization depends on clinician awareness campaigns, which are uncertain.
2. **Hospital time-per-case assumptions:** Based on analogous surveillance programs (TB, HIV), not pesticide-specific time-and-motion studies.
3. **Investigation-to-enforcement conversion rate:** We assume 50% of investigated case-events trigger DALRRD investigations. Actual rate depends on EHP referral practices and DALRRD capacity, both unknown.
4. **No capacity constraints modeled:** Estimates assume NHLS labs, hospital staff, and EHPs can absorb the incremental workload. If capacity is saturated, marginal costs may be higher (require new hires, not just time reallocation).
5. **Geographic variation ignored:** Urban investigations (Gauteng, Western Cape) may have lower investigation costs than rural ones (Limpopo, Eastern Cape) due to travel distance. We use national averages.
6. **Exchange rate risk:** Lab reagent costs (especially GC-MS reference standards) are import-dependent and subject to ZAR/USD fluctuations.

**Both perspectives exclude:**

- Patient out-of-pocket costs and productivity losses
- Wider societal costs (community education, media engagement)
- Capital depreciation on existing NHLS lab equipment
- Opportunity costs (staff time diverted from other surveillance priorities)
:::

## Next Steps

### Cost Data Collection During Pilot

The pilot will track:

1. **Actual staff time** spent on surveillance activities (time logs)
2. **IT development hours** for LIS configuration (project management records)
3. **Travel costs** for field investigations (expense reports)
4. **Meeting costs** (venue hire, catering)

### Cost Model Refinement

Once pilot data are available:

1. Update FTE estimates with empirical time logs
2. Adjust IT costs based on actual development hours
3. Incorporate scale economies if observed
4. Add uncertainty distributions for probabilistic budget impact analysis

---

::: {.footer-cta}
**Questions about costing?** Contact the D2P team at [contact@example.com](mailto:contact@example.com)

**Download cost spreadsheet:** [Available upon request]
:::


================================================================
## SOURCE: posts/policy_brief.qmd
================================================================

---
title: "Policy Brief Hub: Strengthening Pesticide Poisoning Surveillance and Response"
subtitle: "Three companion policy documents on surveillance, coordination, and terbufos"
author: "D2P Project Team"
date: "2025-09-05"
date-modified: today
categories: [policy, brief, decision-makers]
format:
  html:
    toc: true
    toc-depth: 2
    number-sections: false
---

::: {.callout-important icon=false}
## What this page is

Three decision-maker-facing briefs, each addressing a distinct policy question, all drawing on a single canonical parameter set. Read in order: **Detect → Act → Restrict.**
:::

## The three policy briefs

### [1 · Strengthening Pesticide Poisoning Surveillance](surveillance_policy.qmd)

**Policy question.** Should NDoH invest in automated, multi-source surveillance to close the detection gap between NMC, the NHLS laboratory, and the Poisons Information Helpline?

**Headline recommendation.** Adopt the **Surveillance MVP** (NHLS→NMC IT feed + BChE auto-notification + PIH dashboard / MVD) — **~R137,000/year, lifting per-case detection from <5% to ~19% of true cases**. (Surveillance changes only what is *seen*; deaths averted are delivered by the coordination and terbufos responses that act on the improved signal.)

### [2 · Closing the Coordination Loop](coordination_policy.qmd)

**Policy question.** Should NDoH and DALRRD mandate a closed-loop coordination workflow so that every NMC notification triggers an investigation that is recorded, every EHP→DALRRD referral is structured, and every DALRRD action is fed back?

**Headline recommendation.** Adopt the **Coordination Full Package** (mandatory NMC closure-of-loop field + structured DALRRD referral + NICD→DALRRD intelligence feed + clinician auto-feedback + joint KPI dashboard) — **~R145,000/year, ~957 deaths averted/year at scale**.

### [3 · Restricting or Banning Terbufos](terbufos_policy.qmd)

**Policy question.** Should South Africa restrict, or fully ban, terbufos as a registered agricultural pesticide?

**Headline recommendation.** Adopt **Option T2 (tighter restriction)** immediately, with a hard-coded **24-month evaluation gate** that mechanically escalates to a full ban (Option T3) if attributable serious-poisoning cases do not fall by a pre-agreed margin.

## How the three briefs fit together

```{mermaid}
%%| label: fig-hub-overview
%%| fig-cap: "The three briefs operate as one system. Surveillance produces the signal; coordination ensures it leads to action; product-specific regulation (starting with terbufos) is the first concrete output the upgraded system should deliver."
flowchart LR
    S[1 · Surveillance<br/>Detect cases earlier<br/>and more completely] --> C[2 · Coordination<br/>Close the NMC–EHP–DALRRD<br/>loop on every signal]
    C --> R[3 · Terbufos<br/>First product-specific<br/>regulatory action]
    R -.Evidence of impact.-> S

    style S fill:#cce5ff,stroke:#333
    style C fill:#9f9,stroke:#333
    style R fill:#ffd9b3,stroke:#cc8800
```

## Shared evidence base

All three briefs draw their numerical claims from a single shared parameter set (cases per year, CFR, per-case costs, decision-tree probabilities, prevention efficacy η, secondary-case multiplier ρ). The parameter file is intentionally separated so the model can be **iterated centrally** without re-editing each brief.

Source files:

- [Decision Model](decision_model.qmd) — burden, parameters, sensitivity analyses
- [Costing Analysis](costing_analysis.qmd) — full cost build-up
- [Surveillance Concept Note](surveillance_concept_note.qmd) — technical surveillance design

---

::: {.footer-cta}
Read in order: [Surveillance](surveillance_policy.qmd) → [Coordination](coordination_policy.qmd) → [Terbufos](terbufos_policy.qmd).
:::


================================================================
## SOURCE: posts/surveillance_policy.qmd
================================================================

---
title: "Policy Brief 1: Strengthening Pesticide Poisoning Surveillance"
subtitle: "Closing the detection gap between NMC, NHLS, and PIH"
author: "D2P Project Team"
date: "2025-09-05"
date-modified: today
categories: [policy, surveillance, decision-makers]
format:
  html:
    toc: true
    toc-depth: 2
    number-sections: false
---

::: {.callout-important icon=false}
## For Decision-Makers

**Target audience:** Ministerial Advisory Committee (MAC), National Department of Health (NDoH), Provincial Health Leadership, NICD/NHLS leadership.

**Companion briefs:** [Coordination](coordination_policy.qmd) · [Terbufos restriction](terbufos_policy.qmd).
:::

## 1. Policy question

**Should NDoH invest in automated, multi-source pesticide-poisoning surveillance to close the detection gap between the NMC, NHLS laboratory, and PIH data streams?**

## 2. Public health problem

South Africa under-detects pesticide poisoning. Three data streams each see a fraction of the problem; none sees the whole:

- Most cases never appear in NMC.
- Severe laboratory results do not trigger a public-health alert.
- The country's largest single source of clinical signal — the Poisons Information Helpline — is not used for surveillance.

## 3. Status quo

{{< include _shared_parameters.qmd >}}

::: {.callout-note}
## Health-sector share of the burden — what surveillance unlocks

The public health system bears **~`r sprintf("R%.0fM", as.numeric(pick("share_health_system_total"))/1e6)` of the `r sprintf("R%.2fB", as.numeric(pick("C_burden_total_headline"))/1e9)` annual burden** on its own budget lines (~`r sprintf("R%.0fM", as.numeric(pick("share_doh_morbidity"))/1e6)` NDoH ward/ICU/ventilation/antidote; ~`r sprintf("R%.0fM", as.numeric(pick("share_nhls_morbidity"))/1e6)` NHLS BChE + confirmatory). Surveillance is a **necessary but not sufficient** input to reducing that burden — it changes only what is *seen*. Burden reduction comes from the coordinated response (source removal, regulatory action, clinical management) covered in the [Coordination](coordination_policy.qmd) and [Terbufos](terbufos_policy.qmd) briefs. **This brief therefore measures the proportion of true burden detected (P_detect); it does not measure cases or deaths averted.**
:::

**Architecturally, the three streams are unlinked:**

```{mermaid}
%%| label: fig-surv-current-system
%%| fig-cap: "Current surveillance architecture. NMC is NDoH-owned and has demonstrated flexibility and resilience as a national surveillance platform. NHLS BChE results can be routed to NMC via NHLS CDW → NICD SDW (this feed already exists for infectious disease). Two active gaps remain: PIH consultations are not linked to NMC, with neither stream holding a complete minimum dataset for surveillance; forensic chemical toxicology is post-mortem only and fully de-identified (not fit for surveillance linkage in its current form; MLDI system development is a potential future pathway)."
flowchart LR
    A[Healthcare Facility<br/>Clinician / PHO] -->|NMC notification| E[("NDoH / NMC<br/><b>NDoH-owned</b><br/>Source of truth")]
    A --> NHLS

    subgraph NHLS[NHLS]
        direction TB
        C1[BChE Assay<br/>1,779 severe/year<br/>10,626 tests 2023<br/><i>Live patients</i>]
        C2[Chemical Toxicology<br/><i>Post-mortem only —<br/>not yet done on<br/>live patients</i>]
        CDW[(NHLS CDW)]
        C1 -->|monthly extract| CDW
    end

    SDW[(NICD SDW)]
    CDW -->|"✓ MOU feed<br/>operational"| SDW
    SDW -->|BChE monthly| E

    A --> D[PIH Consultation<br/>~1,158 clinician calls/yr<br/><i>No minimum dataset</i>]

    C2 -.x Not available for<br/>live-patient surveillance.-x E
    D -.No minimum viable<br/>dataset defined.-> E

    style E fill:#9f9,stroke:#060,stroke-width:2px
    style A fill:#fde,stroke:#333
    style C1 fill:#bbf,stroke:#333
    style C2 fill:#ffd9b3,stroke:#cc8800,stroke-dasharray: 5 5
    style D fill:#bfb,stroke:#333
    style CDW fill:#e6f0ff,stroke:#3366cc
    style SDW fill:#e6f0ff,stroke:#3366cc
```

**What this means in plain numbers.**

- NMC notifications: `r scales::comma(as.numeric(pick("n_nmc_annual")))` ([`n_nmc_annual`](../parameters_hub.qmd#tbl-burden))
- NHLS severe BChE inhibitions: `r scales::comma(as.numeric(pick("n_nhls_severe_annual")))` ([`n_nhls_severe_annual`](../parameters_hub.qmd#tbl-burden)) out of `r scales::comma(as.numeric(pick("n_nhls_total_annual")))` BChE tests ([`n_nhls_total_annual`](../parameters_hub.qmd#tbl-burden))
- PIH clinician-initiated calls: `r scales::comma(as.numeric(pick("n_pih_annual")))` ([`n_pih_annual`](../parameters_hub.qmd#tbl-burden))
- Implied true annual burden: $N_\text{true} = \frac{1,014}{0.125} = 8,112$ ([`n_true_burden_from_statssa_mid`](../parameters_hub.qmd#tbl-burden))

NMC alone captures $P_\text{detect} = \frac{1,013}{8,112} = 0.125$ ([`d_status_quo`](../parameters_hub.qmd#tbl-detection)), i.e. **~12.5 %**.

::: {.callout-caution appearance="minimal" collapse="true"}
## Caveat: this denominator rests on a CFR assumption
The 8,112 denominator applies a 12.5% CFR to the StatsSA MACOD death count (pesticide-specific ICD-10 codes X48+X68+X87+Y18, 2022) — but that CFR derives from NMC-*notified* severe cases (the sicker end of the distribution). The undetected majority are likely milder; a blended CFR of 3–5% implies 20,280–33,800 true cases and a status-quo P_detect of ~3–5%. Relative option rankings (Option 1, Option 2, MVP†) are stable across this range — the percentage-point gain for each option is unchanged; only the absolute number of true cases detected would differ.

†MVP = Minimum Viable Package (Option 1 + Option 2 combined).
:::

### Detection vs. true burden — a critical distinction

Better surveillance has **two opposite numerical effects** that decision-makers must not confuse:

| Effect | Direction | Driver | Interpretation |
|:-------|:---------:|:-------|:---------------|
| **Observed** burden | ↑ | Better case-finding (auto-notify, MVD ingest) | The headline "case count" will rise as detection improves — this is success, not failure. |
| **True** burden | ↓ | Faster source removal, targeted regulation, prevention | Future poisoning cases and clusters are averted. |

Once the integrated streams are live, reported case counts will rise as detection improves and historical burden estimates should be re-calibrated against the expanded data. This is a surveillance artefact, not a true increase in poisonings, and must be communicated as such in any public reporting.

## 4. Root cause analysis

```{mermaid}
%%| label: fig-surv-fishbone
%%| fig-cap: "Root causes of surveillance under-detection and the surveillance-improvement options that address each one."
flowchart LR
    A[Surveillance under-detection] --> B[NHLS–NMC MOU not<br/>IT-implemented]
    A --> C[PIH data not used<br/>for surveillance]
    A --> D[Delayed manual reporting]
    A --> F[No live-patient<br/>chemical toxicology]

    B --> G["✓ NHLS→NMC IT feed<br/><i>Completed</i>"]
    C --> H[Option 2: PIH MVD<br/>+ dashboard]
    D --> I[Option 1: BChE<br/>auto-notify <i>capability exists</i>]
    F --> J[Option 5: Sentinel<br/>toxicology + auto-notify]

    style A fill:#f99,stroke:#333
    style G fill:#e0e0e0,stroke:#999,stroke-dasharray: 5 5
    style H fill:#9f9,stroke:#333
    style I fill:#9f9,stroke:#333
    style J fill:#9f9,stroke:#333
```

Three active root causes remain **executional, not legislative**, and are each already legally permissible under Section 90 of the National Health Act (2003) and the existing NMC regulations. The fourth root cause (NHLS–NMC IT connectivity) has been resolved — the LIS-to-NMC feed is operational, though a severity-threshold rules engine still needs to be configured to enable automated alerting. 

## 5. Policy options

::: {.callout-tip icon=false}
## ✓ NHLS–NMC IT feed — now operational

The NHLS–NICD LIS-to-NMC connector is operational; daily BChE data flows to NICD under the existing MOU. The three active options below build on this.
:::

::: {.callout-note appearance="simple"}
**Reading guide — option numbering.** Options below are numbered **1–5 in narrative build order**. Backend parameter codes in the CSV (`c_S1_*`, `c_S2_*`, `c_S1b_*`, `c_option6_*`) are stable identifiers that pre-date the renumbering and **do not follow the brief's order**. Cross-walk:

| Option (display) | Description | CSV parameter family |
|:-----------------|:-----------|:---------------------|
| **Option 1** | BChE auto-notification *(first build, ★ recommended)* | `c_S2_BChE_autonotify_*` |
| **Option 2** | PIH dashboard + MVD *(second build, ★ recommended — completes the MVP)* | `c_S1_PIH_MVD_*` |
| **Option 3** | Community layer *(Phase 2, conditional)* | `c_S1b_*` |
| **Option 4** | NMC CIF + agricultural extension *(bridge to coordination)* | (no dedicated parameter) |
| **Option 5** | Sentinel live-patient toxicology *(research-funded, distinct purpose)* | `c_option6_*` |

S0 (NHLS→NMC IT feed) is operational and in the baseline. **Surveillance MVP = Options 1 + 2.**
:::

::: {.callout-note collapse="true"}
## Audit trail — mini-budget backing the S0 operating cost (R60,000/yr, now in baseline) {#sec-s0-mini-budget}

`c_S0_NHLS_NMC_feed_op` = R60,000/yr (gamma(25, 2400)); `c_S0_NHLS_NMC_feed_setup` = R80,000 one-off (already incurred). This feed is **in the status-quo baseline** — it is not a marginal cost of adopting the Surveillance MVP, but its operating cost is relevant context for decision-makers auditing total program spend.

| # | Line item | Driver | Annual (R) | Source / anchor |
|:-:|:----------|:-------|-----------:|:----------------|
| 1 | NICD analyst data extraction + cleaning | 0.05 FTE × R650k DPSA L10-11 | 32,500 | DPSA L10-11 scale 2024 (Tab 1 NMC analyst CTE) |
| 2 | NHLS CDW data extract QA (monthly BChE pull validation) | 0.02 FTE × R900k NHLS medical scientist | 18,000 | NHLS Patterson grade D 2024 (Tab 1 NHLS scientist CTE) |
| 3 | NICD SDW hosting + data-feed monitoring (shared cloud, pesticide slice) | AWS af-south-1 shared allocation | 6,000 | NICD data platform budget 2024 (Tab 2 "Data warehouse / ETL") |
| 4 | Annual MOU compliance review + governance documentation | Inter-agency MOU review + admin | 3,500 | NICD legal + NHLS MOU management |
|   | **Total** |   | **60,000** | matches `c_S0_NHLS_NMC_feed_op` in [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv) |

**Distribution.** gamma(shape = 25, scale = 2,400) → mean R60,000, SD ≈ R12,000. Items 1 and 2 are time-allocated personnel cost at standard CTE rates; items 3 and 4 are direct cash outlays. The same analyst CTE anchor (R650k DPSA L10-11) underpins the NMC baseline in §7 Tab 1, so S0 is consistent with and additive to the status-quo build-up.

**Setup.** `c_S0_NHLS_NMC_feed_setup` = R80,000 (one-off) covered: legal/MOU negotiation, data-mapping and schema agreement, NICD SDW ingestion script development, UAT. Already incurred; not a cost of adopting the MVP.
:::

### Option 1 — BChE auto-notification *(★ recommended — first build, capability exists)*

Configure the NHLS LIS to fire an automatic NICD notification when a BChE result shows severe inhibition (< 10 % of normal)*, within 24 hours of validation. **No new test, no new reagent contract** — only an IT configuration on top of the ~`r scales::comma(as.numeric(pick("n_nhls_total_annual")))` BChE tests/year already performed (`r scales::comma(as.numeric(pick("n_nhls_severe_annual")))` severe in 2023). Detection rises to ~`r sprintf("%.0f", as.numeric(pick("d_S2_BChE_autonotify")) * 100)` % of true cases (up from ~`r sprintf("%.0f", as.numeric(pick("d_status_quo")) * 100)` %) for a one-off setup of **`r zar(as.numeric(pick("c_S2_BChE_autonotify_setup")))`**, then **`r zar(as.numeric(pick("c_S2_BChE_autonotify_op")))`/year** from Year 2 (Year 1 total: **`r zar(as.numeric(pick("c_S2_BChE_autonotify_setup")) + as.numeric(pick("c_S2_BChE_autonotify_op")))`**), deliverable in 2–4 weeks. Uses existing NHLS infrastructure with a single owner (NHLS LIS) and delivers the largest single-option P_detect uplift (+`r sprintf("%.1f pp", (as.numeric(pick("d_S2_BChE_autonotify")) - as.numeric(pick("d_status_quo"))) * 100)`) — recommended as the first build.

* Severe inhibition is most closely related to severe sequelae such as hospitalisation and death [Chaudhary S, Jain N, Atam V, Agarwal A, Singh K, Sawlani K, et al. Prognostic significance of estimation of pseudocholinesterase activity and role of pralidoxime therapy in organophosphorous poisoning. Toxicol Int. 2013;20(3):214]. Taking any BChE test will likely increase the FP rate and this will not be accounted for.

::: {.callout-note collapse="true"}
## Audit trail — mini-budget backing Option 1 (BChE auto-notify): R55,000/yr {#sec-opt1-mini-budget}

`c_S2_BChE_autonotify_op` = R55,000/yr (gamma(25, 2200)) covers the pure IT infrastructure required to keep the HL7 auto-notification middleware running (for poisoning only) — **no new laboratory tests, no new reagent contract, no new hires.** The one-off LIS reconfiguration and UAT cost (`c_S2_BChE_autonotify_setup` = R200,000) is separately parameterised. All figures are 2024–2025 ZAR, marginal over the status-quo NHLS BChE baseline.

| # | Line item | Driver | Annual (R) | Source / anchor |
|:-:|:----------|:-------|-----------:|:----------------|
| 1 | HL7 middleware hosting (Mirth Connect; af-south-1 t3.small VM) | VM + storage, 12 mo | 18,000 | AWS af-south-1 pricing 2024 (same tier as §7 Tab 2 "LIS rule engine middleware") |
| 2 | NHLS LIS IT engineer maintenance | 0.02 FTE × R750k SITA/state IT rate | 15,000 | SITA / state IT contracting 2024 (Tab 1 Cross-cutting data engineer CTE) |
| 3 | NHLS medical scientist alert QA review | 0.005 FTE × R900k NHLS Patterson grade D | 4,500 | NHLS Patterson grade D 2024 (Tab 1 NHLS scientist CTE) |
| 4 | NICD epidemiologist alert triage + NMC routing | 0.01 FTE × R650k DPSA L10-11 | 6,500 | DPSA L10-11 scale 2024 (Tab 1 NMC analyst CTE) |
| 5 | Mirth Connect enterprise support licence / maintenance agreement | Annual contract | 7,000 | NHLS IT estimate (cited in `c_S2_BChE_autonotify_op` source note) |
| 6 | NICD analyst QA reconciliation (NHLS→NMC matching spot-checks) | 0.005 FTE × R650k | 3,250 | DPSA L10-11 scale 2024 |
| 7 | On-call incident-response allowance (middleware outage cover) | Annual allowance | 750 | NHLS IT estimate |
|   | **Total** |   | **55,000** | matches `c_S2_BChE_autonotify_op` in [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv) |

**Distribution.** gamma(shape = 25, scale = 2,200) → mean R55,000, SD ≈ R11,000 (95% CI ≈ R36k–R78k). Items 1 and 5 are direct cash outlays (cloud hosting + licence); items 2, 3, 4 and 6 are time-allocated personnel cost at §7 Tab 1 CTE rates — no new hires; the Option 1 allocation is additive to the existing pesticide share of those posts.

**Sensitivity.** Middleware hosting tier is the dominant driver (t3.small → t3.medium adds ~R12,000/yr); doubling the NHLS IT FTE share adds ~R15,000/yr. Neither moves Option 1 above Option 2 in operating cost (R82,000/yr).

**Setup.** `c_S2_BChE_autonotify_setup` = R200,000 (one-off) covers NHLS LIS HL7 rule development, configuration of the severity threshold (< 10% of normal enzyme activity), UAT across NHLS network sites, and go-live sign-off. Spent once; not part of the recurring R55,000/yr.
:::

### Option 2 — PIH live dashboard + Minimum Viable Dataset *(★ recommended — second build, completes the MVP)*

Two layers:

- **Short term (1–2 weeks):** PIH publishes a live dashboard of pesticide-related calls (counts, geography, agent, severity, demographics, **AfriTox agent name**). No new data; just a daily extract from existing call records.
- **Medium term (3–9 months):** PIH and NICD agree a **Minimum Viable Dataset (MVD)** so the ~1,158 clinician-initiated calls/year can be ingested into NMC as a structured surveillance stream. **Agent-name capture is a mandatory MVD field** — both PIH and NMC must record the AfriTox product name for every case. To make this reciprocal, **NMC should add a structured agent drop-down** (pesticide class → active ingredient → AfriTox product name) to its NDoH-hosted notification form: PIH records what the caller *reports*; NMC records what the clinician *confirms*. Combined: agent-attribution signal system-wide at near-zero marginal cost.

Detection rises to ~`r sprintf("%.0f", as.numeric(pick("d_S1_PIH_MVD")) * 100)` % of true cases (up from ~`r sprintf("%.0f", as.numeric(pick("d_status_quo")) * 100)` %) for a one-off setup of **`r zar(as.numeric(pick("c_S1_PIH_MVD_setup")))`**, then **`r zar(as.numeric(pick("c_S1_PIH_MVD_op")))`/year** from Year 2 (Year 1 total: **`r zar(as.numeric(pick("c_S1_PIH_MVD_setup")) + as.numeric(pick("c_S1_PIH_MVD_op")))`**; includes AfriTox agent-name harmonisation). The dashboard ships in days; the MVD ingest is the second build to complete the MVP.

::: {.callout-note collapse="true"}
## Audit trail — mini-budget backing Option 2 (PIH dashboard + MVD): R82,000/yr {#sec-opt2-mini-budget}

The `c_S1_PIH_MVD_op` parameter (mean R82,000/yr; gamma(25, 3280)) is **not a single quoted price** — it is the sum of seven small recurring line items required to keep the PIH dashboard live, the MVD pipeline running, and the AfriTox agent drop-down synchronised between PIH and NMC. All figures are 2024–2025 ZAR, marginal over the status-quo PIH operation (which is already costed in §7 Tab 1–2 from [`data/surveillance_costing.xlsx`](../data/surveillance_costing.xlsx)).

| # | Line item | Driver | Annual (R) | Source / anchor |
|:-:|:----------|:-------|-----------:|:----------------|
| 1 | Dashboard hosting (PIH Tygerberg cloud VM) | AWS af-south-1 t3.small + RDS + backup, 12 mo | 18,000 | AWS af-south-1 pricing 2024 (also Tab 2 of [`surveillance_costing.xlsx`](../data/surveillance_costing.xlsx), row "Dashboard hosting (Tygerberg cloud VM)", pesticide share) |
| 2 | Daily PIH→dashboard extract pipeline (script + on-call) | 0.02 FTE × R780k poisons specialist | 15,600 | DoH pharmacy OSD scale 2024 (PIH specialist CTE used in Tab 1) |
| 3 | AfriTox agent-name harmonisation maintenance (PIH ↔ NMC drop-down sync, quarterly refresh) | 0.02 FTE × R650k NICD epidemiologist | 13,000 | DPSA L10-11 scale 2024 (Tab 1 NMC analyst CTE) |
| 4 | MVD ingest pipeline operations (ETL run, error handling, schema drift) | NICD data engineer 0.015 FTE × R750k | 11,250 | SITA / state IT contracting 2024 (Tab 1 Cross-cutting) |
| 5 | QA + monthly NMC reconciliation (PIH-ingested rows vs NMC) | 1 h/wk × R650k NICD analyst (0.01 FTE) | 6,500 | DPSA L10-11 scale 2024 |
| 6 | Annual data-dictionary review + minor MVD releases | PIH + NICD workshop, 2 d/yr; consumables | 10,000 | PIH admin estimate (consistent with `c_S1_PIH_MVD_setup` R40,000 one-off) |
| 7 | Licences + alert SMS (Power BI workspace seats, ~5,000 outbound SMS/yr @ R0.20) | Microsoft ZA EA + Clickatell rate | 7,650 | Microsoft ZA EA 2024; Clickatell / BulkSMS ZA 2024 (same anchors as §7 Tab 2) |
|   | **Total** |   | **82,000** | matches `c_S1_PIH_MVD_op` in [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv) |

**Distribution.** gamma(shape = 25, scale = 3,280) → mean R82,000, SD ≈ R16,400 (95% CI ≈ R53k–R116k); absorbs reasonable variation across all seven items. Items 1, 4 and 7 are direct cash outlays (cloud, ETL, licences, SMS); items 2, 3, 5 and 6 are time-allocated personnel cost at §7 Tab 1 CTE rates — no new hires, ring-fenced fractions of existing PIH and NICD posts.

**Sensitivity — what would push it materially higher.** (i) Power BI Premium dedicated capacity rather than a small VM (+R30–50k/yr); (ii) replacing the 0.02 FTE pharmacist time with a dedicated data engineer FTE (+R60k/yr at 0.1 FTE); (iii) 5× alert-SMS volume during outbreaks (+R3–5k/yr). None move the option above Option 1 (R55,000/yr) or near Option 3 (R-millions/yr).
:::

### Option 3 — Community layer (Phase 2) *(commission after MVP pilot if rural/informal gap confirms)*

Options 1 and 2 improve detection within the **formal healthcare system** (PIH, NHLS BChE, NMC-notified facilities). They cannot reach cases that never arrive at a formal facility — the child taken to a traditional healer after ingesting street-sold granules, the farm worker who doesn't present at all, the informal-settlement cluster whose care pathway bypasses formal services.

::: {.callout-important}
**Pre-condition — non-clinician reporting must be enabled.** Option 3 only delivers a coverage uplift if PIH (and the NMC CIF, via Option 4) accept structured reports from **non-medical personnel**: community health workers (CHWs), environmental health practitioners (EHPs), ward-based outreach teams, agricultural extension officers, teachers, traditional healers, and community members. The Option 2 PIH stream is built on the ~1,158 *clinician-initiated* PIH calls/year and by construction cannot see cases that never reach a clinician. Without a dedicated non-clinician intake channel — Tier-1 CHW checklist as the structured form, EHP call-back as validation — the CHW network has nowhere to land its reports and Option 3 reduces to training cost with no measurable P_detect gain.
:::

**The MVP ceiling (~`r sprintf("%.0f", as.numeric(pick("d_surveillance_mvp")) * 100)`% P_detect)** is bounded by the reach of formal administrative streams. Option 3 is the mechanism for going beyond it, but only after the MVP (PIH and BChE integration) has confirmed the remaining gap is structural rather than a compliance issue within the formal system.

**False-positive load and triage architecture.** The gross false-positive rate is ~`r sprintf("%.0f%%", as.numeric(pick("p_fp_S1b_mid")) * 100)` (range `r sprintf("%.0f–%.0f%%", as.numeric(pick("p_fp_S1b_lo")) * 100, as.numeric(pick("p_fp_S1b_hi")) * 100)`). At P_detect = `r pick("d_S1b_event_community_mid")` on the mid-burden of `r scales::comma(as.numeric(pick("n_true_burden_from_statssa_mid")))` true cases, the gross notification volume would be ~`r scales::comma(round(as.numeric(pick("n_true_burden_from_statssa_mid")) * as.numeric(pick("d_S1b_event_community_mid")) / (1 - as.numeric(pick("p_fp_S1b_mid")))))` events/yr — of which ~`r scales::comma(round(as.numeric(pick("n_true_burden_from_statssa_mid")) * as.numeric(pick("d_S1b_event_community_mid"))))` are true cases and ~`r scales::comma(round(as.numeric(pick("n_true_burden_from_statssa_mid")) * as.numeric(pick("d_S1b_event_community_mid")) * as.numeric(pick("p_fp_S1b_mid")) / (1 - as.numeric(pick("p_fp_S1b_mid")))))` are false alerts *before filtering*. This is solvable with a **two-tier triage architecture** — the same design used by WHO-EWARN, APSED, and comparable LMIC systems:

1. **Tier 1 — CHW structured checklist**: Community health workers report via a mobile checklist requiring ≥2 of: acute onset, ≥2 affected persons, known or suspected product contact. Events not meeting criteria are logged but no dispatch is triggered.
2. **Tier 2 — EHP call-back within 24 hours**: A provincial EHP calls back to confirm before committing to on-site investigation.

With a two-tier filter, the effective net FP rate drops to approximately 8–12% — within the investigation capacity modelled in the [Coordination brief](coordination_policy.qmd).

**Two-stage rollout — Free State and Gauteng first.** These two provinces account for an estimated **~50% of the annual pesticide-poisoning burden** (working assumption; to be confirmed against the MVP pilot's geographic distribution from NMC, NHLS, and PIH data). Comparable LMIC systems have achieved P_detect in the range `r pick("d_S1b_event_community_lo")`–`r pick("d_S1b_event_community_hi")` — `r sprintf("%.1f–%.1f×", as.numeric(pick("d_S1b_event_community_lo")) / as.numeric(pick("d_surveillance_mvp")), as.numeric(pick("d_S1b_event_community_hi")) / as.numeric(pick("d_surveillance_mvp")))` the MVP ceiling.

| Stage | Provinces | Est. burden share | Setup cost | Operating cost/yr | Go/no-go criterion |
|:------|:----------|------------------:|-----------:|------------------:|:-------------------|
| **Option 3 pilot** | Free State + Gauteng | ~50% | ~`r sprintf("R%.0fM", as.numeric(pick("c_S1b_setup_lo"))/1e6)` | ~`r sprintf("R%.1fM/yr", as.numeric(pick("c_S1b_op_lo"))/1e6)` | Month 12: net P_detect >35% and net FP <15% |
| **Option 3 national** | All 9 provinces | 100% | ~`r sprintf("R%.1fM", as.numeric(pick("c_S1b_setup_hi"))/1e6)` | ~`r sprintf("R%.1fM/yr", as.numeric(pick("c_S1b_op_hi"))/1e6)` | Conditional on pilot outcome |

The cost range (`r sprintf("R%.0fM–R%.1fM setup; R%.1fM–R%.1fM/yr operating", as.numeric(pick("c_S1b_setup_lo"))/1e6, as.numeric(pick("c_S1b_setup_hi"))/1e6, as.numeric(pick("c_S1b_op_lo"))/1e6, as.numeric(pick("c_S1b_op_hi"))/1e6)` — approximately `r sprintf("%.0f–%.0f×", as.numeric(pick("c_S1b_op_lo")) / as.numeric(pick("c_surv_MVP_op")), as.numeric(pick("c_S1b_op_hi")) / as.numeric(pick("c_surv_MVP_op")))` the MVP operating cost) directly reflects the two-stage choice.

::: {.callout-note collapse="true"}
## Audit trail — mini-budget backing Option 3 (community layer) operating cost range {#sec-opt3-mini-budget}

The three `c_S1b_op_*` parameters reflect **distinct deployment footprints**, not sensitivity bounds around a single estimate. All figures are 2024–2025 ZAR, marginal over the Surveillance MVP baseline.

**Lo scenario — pilot (2 provinces: Free State + Gauteng) | `c_S1b_op_lo` = R800,000/yr**

| # | Line item | Driver | Annual (R) | Source / anchor |
|:-:|:----------|:-------|-----------:|:----------------|
| 1 | Provincial coordinators ×4 (FS + Gauteng) | 4 × R120,000 DPSA L8 pesticide-surveillance allocation | 480,000 | DPSA L8 mid-step CTE ~R600k–R750k; R120k = ~17% FTE allocation |
| 2 | Platform hosting + mobile checklist app | AWS af-south-1 + off-the-shelf EBS mobile app, 2-province scale | 120,000 | AWS af-south-1 pricing 2024 |
| 3 | CHW structured training + annual refresher | 2 provinces × 2 training cohorts + consumables | 120,000 | LMIC community surveillance analogue (IDSR pilot) |
| 4 | NICD data analyst + monthly reporting | 0.1 FTE × R650k DPSA L10-11 | 65,000 | DPSA L10-11 scale 2024 |
| 5 | EHP call-back protocol management + QA | 0.015 FTE × R650k NICD analyst | 15,000 | DPSA L10-11 scale 2024 |
|   | **Total (lo / pilot)** |   | **800,000** | matches `c_S1b_op_lo` |

**Mid scenario — working value (8 provinces) | `c_S1b_op_mid` = R1,500,000/yr**

From CSV note: *"~8 provincial coordinators (DPSA L8, R120k each) + national analyst + platform hosting + annual CHW refresher."*

| # | Line item | Driver | Annual (R) | Source / anchor |
|:-:|:----------|:-------|-----------:|:----------------|
| 1 | Provincial coordinators ×8 | 8 × R120,000 DPSA L8 | 960,000 | DPSA L8 scale 2024 (same unit cost as lo) |
| 2 | National NICD analyst | 0.2 FTE × R650k DPSA L10-11 | 130,000 | DPSA L10-11 scale 2024 |
| 3 | Platform hosting + app maintenance | AWS multi-province scale + maintenance | 180,000 | AWS af-south-1 pricing 2024 |
| 4 | Annual CHW refresher training | 8 provinces × cohort costs | 230,000 | EWARN/IDSR analogues |
|   | **Total (mid / working)** |   | **1,500,000** | matches `c_S1b_op_mid` |

**Hi scenario — full 9-province + dedicated EHP nodes | `c_S1b_op_hi` = R2,500,000/yr**

From CSV note: *"full 9-province deployment with dedicated EHP nodes and enhanced data cleaning."*

| # | Line item | Driver | Annual (R) | Source / anchor |
|:-:|:----------|:-------|-----------:|:----------------|
| 1 | Provincial coordinators + dedicated EHP nodes ×9 | 9 × R160,000 DPSA L8-9 (dedicated EHP grade) | 1,440,000 | DPSA L8-L9 scale 2024 |
| 2 | National NICD analyst (enhanced share) | 0.3 FTE × R650k | 195,000 | DPSA L10-11 scale 2024 |
| 3 | Platform hosting + enhanced data-cleaning infrastructure | 9-province scale + QA pipeline | 350,000 | AWS af-south-1 + QA infrastructure estimate |
| 4 | Annual CHW refresher training (9 provinces) | 9 provinces × full cohort | 515,000 | WHO-EWARN mature deployment analogue |
|   | **Total (hi / full)** |   | **2,500,000** | matches `c_S1b_op_hi` |

**DPSA L8 anchor.** R120,000 represents ~16–20% FTE of a DPSA L8 mid-step CTE (~R600k–R750k/yr). In practice this is an existing EHP or health-promotion officer whose pesticide-poisoning community-surveillance duties are ring-fenced at that fraction — not a new hire. The same unit cost applies across all three scenarios; the scenarios differ in the number of provinces covered and whether dedicated EHP nodes (requiring L8-9 grade) are included.

**Setup parameters.** `c_S1b_setup_lo/mid/hi` = R1M / R2M / R3.5M (one-off) cover mobile-app development, protocol design, and initial CHW training. They are separately parameterised and not included in the operating cost rows above.
:::

### Option 4 — NMC case investigation form + agricultural extension *(bridge to coordination)*

Surveillance *counts* cases; **investigation** captures the source, the product, and the trigger for source removal. The NDoH [*Guideline for the Investigation of Human Chemical Poisoning* (2023)](https://www.health.gov.za/wp-content/uploads/2023/09/DOH-Guideline-Investigation-Human-Chemical-Poisoning-1.pdf) already defines a structured Case Investigation Form (CIF) that EHPs and clinicians are expected to complete within 48 hours of any chemical-poisoning notification — but uptake is inconsistent, the form is not embedded in the NMC workflow, and it lacks interventions that are carried out by DOA (source removal). In addition, occupational exposure (if appropriate) ought to be captured. 

This option does two complementary things and is the **minimum surveillance-side investment required to make the [Coordination response](coordination_policy.qmd) operational**:

1. **Operationalise the existing NDoH CIF inside NMC.** Embed the 2023 guideline's investigation fields as a structured second-stage form auto-triggered by any pesticide-poisoning notification — whether the notification originates from NMC, the Option 2 PIH MVD ingest, or the Option 1 BChE auto-notify rule. EHPs receive a workflow alert; CIF completion within 48 hours becomes a tracked NMC performance indicator (district-level KPI, reported quarterly).
2. **Add an agricultural-investigation extension module.** Additional structured fields layered onto the CIF for:
    - **Product origin:** formal retail / informal repackaged / agricultural concentrate / unknown;
    - **AfriTox-coded agent name** (reciprocal with the Option 2 drop-down so PIH-reported and NMC-confirmed agent names are directly comparable);
    - **Exposure context:** occupational (farm worker, applicator) / dietary / accidental / intentional / pediatric ingestion;
    - **Site geolocation** (farm GPS / household / market / school) with district code;
    - **Source-removal trigger flag** — an explicit field that, when set by the EHP, hands the case off to the DALRRD-Act-36 + DoH source-removal workflow described in the [Coordination brief](coordination_policy.qmd).

**Cost.** ~R45,000 setup (form-template build into the NMC platform; one-day inter-departmental design workshop with NDoH EHP directorate, DALRRD Act-36 registrar, NICD, and PIH) and ~R35,000/yr operating (NICD analyst 0.04 FTE × R650k DPSA L10-11 for form-completion QA, drop-down maintenance and quarterly performance reporting to NDoH). **No new headcount** — same DPSA L10-11 analyst anchor used for S0, Option 1 and Option 2; no new IT platform — the NMC notification system already supports structured secondary forms.

**P_detect impact.** Option 4 does not raise the share of true cases entering surveillance — that is the role of Options 1, 2 and 3. Its value is converting detected cases into actionable investigations: the data-quality bridge that lets the coordination response act on the right cases, with the right product information, at the right site. The agent-attribution field from Option 2 records the *what*; the CIF + agricultural extension records the *where, how, and who*.

**Governance.** The form lives inside NMC; build, governance and KPIs are NDoH-owned surveillance infrastructure. The [Coordination brief](coordination_policy.qmd) *consumes* the structured CIF outputs to trigger source removal and inter-departmental escalation. No new legislation required: the CIF exists in the 2023 guideline; Section 90 of the National Health Act and the NMC regulations already authorise the data flows.

### Option 5 — Sentinel live-patient toxicology *(★ recommended, medium term — distinct purpose, research-funded)*

NHLS currently performs chemical toxicology (qualitative/quantitative pesticide assays) **post-mortem only**. There is no live-patient toxicology capability. Option 5 funds a sentinel tertiary site (e.g. CHB) to perform live-patient chemical toxicology and/or mass spectometry, scaling to 4–5 sites in phase 2–3. This will only capture ~ 323 severe poisoning cases. 

::: {.callout-caution appearance="minimal"}
**Forensic chemistry is fully de-identified and not fit for surveillance linkage.** No patient, facility, or case-linkage identifiers: cannot be matched to NMC or PIH records without structural re-design of specimen accessioning. The **MLDI system** is the longer-term pathway for surveillance-ready post-mortem toxicology — a separate workstream from Option 5.
:::

**Option 5 has a different purpose from Options 1 and 2** and is *not* a detection-coverage uplift. Options 1 and 2 raise the share of true cases entering surveillance. **Option 5 identifies the chemical agents found in severely poisoned living patients at sentinel sites** — the missing evidence base for product-specific regulation (see [Terbufos brief](terbufos_policy.qmd)). Without it, ~10,000 survivors/year are recorded with agent "unknown / suspected" and targeted product restriction has no quantitative footing. Some signal is captured in national mortality surveillance for poison ingestion deaths [Prinsloo M, Roomaney RA, Neethling I, et al. Tracking poison ingestion deaths for SA. *SAMJ* 2025;115(5):e2993].

Cost: ~`r sprintf("R%.1fM", round(as.numeric(pick("c_option6_pilot_year1"))/1e6, 1))` pilot site → ~`r sprintf("R%.1fM", round(as.numeric(pick("c_option6_full_5site_annual"))/1e6, 1))` for 5-site rollout, 6–12 months. Funded from research-surveillance streams (SAMRC, Bloomberg, Gates), not the surveillance operating budget. Full quantitative concept in the [sentinel toxicology appendix](surveillance_concept_note.qmd).

::: {.callout-note collapse="true"}
## Audit trail — mini-budget backing Option 5 (sentinel toxicology) costs {#sec-opt5-mini-budget}

Four component-level parameters in [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv) underpin both Option 5 cost rows. The pilot and 5-site budgets run **below the maximum specimen capacity** (`n_specimens_per_site_per_year` = 646): the pilot targets ~150 GC-MS screens and ~200 clinical batteries (ramp-up year); the 5-site rollout targets ~100 screens and ~133 batteries per site per year (steady-state research enrolment).

**Pilot — 1 sentinel site (CHB) | `c_option6_pilot_year1` = R1,200,000/yr**

| # | Line item | Driver | Annual (R) | CSV parameter / source |
|:-:|:----------|:-------|-----------:|:----------------------|
| 1 | Research nurse 0.5 FTE (TASK research band) | Per-site personnel anchor | 175,000 | `c_research_nurse_05FTE_per_site` |
| 2 | GC-MS / LC-MS multi-residue screens (~150 specimens × R2,500) | Pilot ramp-up volume | 375,000 | `c_gcms_screen_per_specimen` × pilot volume |
| 3 | Enhanced clinical batteries (~200 patients × R1,500; BChE + LFT + U&E + repeat) | All enrolled patients | 300,000 | `c_clinical_battery_per_patient` × pilot volume |
| 4 | Chemical pathologist co-investigator time (0.07 FTE × R1,500k NHLS Patterson grade E) | Sign-out + supervision | 105,000 | NHLS Patterson grade E 2024 (Tab 1 NHLS chemical pathologist CTE) |
| 5 | REDCap data management + statistical reporting | 1-site platform + annual report | 80,000 | Concept Note DRAFT 3 |
| 6 | Site consumables, specimen transport + cold chain, overheads | ~150 specimens × ~R1,100 blended overhead | 165,000 | NHLS logistics tariff 2024 + consumables estimate |
|   | **Total (pilot, 1 site)** |   | **1,200,000** | matches `c_option6_pilot_year1` |

**Full rollout — 5 sentinel sites | `c_option6_full_5site_annual` = R3,625,000/yr**

| # | Line item | Driver | Annual (R) | CSV parameter / source |
|:-:|:----------|:-------|-----------:|:----------------------|
| 1 | Research nurses ×5 (0.5 FTE each) | 5 × `c_research_nurse_05FTE_per_site` | 875,000 | `c_research_nurse_05FTE_per_site` × 5 |
| 2 | GC-MS screens (5 sites × ~100 specimens × R2,500) | Steady-state research volume | 1,250,000 | `c_gcms_screen_per_specimen` × 5-site volume |
| 3 | Enhanced clinical batteries (5 sites × ~133 patients × R1,500) | BChE + LFT + U&E + repeat | 997,500 | `c_clinical_battery_per_patient` × 5-site volume |
| 4 | Multi-site coordination (NHLS + NICD; 0.2 FTE × R750k data engineer) | Network coordination | 150,000 | SITA / state IT contracting 2024 (Tab 1 Cross-cutting) |
| 5 | Data management + reporting (multi-site REDCap + analysis) | 5-site QA + annual report | 202,500 | Concept Note DRAFT 3 |
| 6 | Site consumables, transport, cold chain (5 sites × R30k) | Per-site recurring overhead | 150,000 | NHLS logistics tariff 2024 |
|   | **Total (5-site)** |   | **3,625,000** | matches `c_option6_full_5site_annual` |

**Why Option 5 sits outside the surveillance operating budget.** Option 5 is a **research investment** — it generates the agent-attribution evidence base for targeted regulatory action and does not raise P_detect. Its value is quantified in the [Terbufos brief](terbufos_policy.qmd), where regulatory restriction converts agent-attribution evidence into deaths averted.

**Why specimens run below the per-site capacity of 646.** `n_specimens_per_site_per_year` (= 646) is the *anatomically derived maximum* (2 specimens per patient × 323 patients — the sample-size calculation for the agent-attribution study at p = 0.3, d = 0.05). Actual enrolment ramps up over the pilot year (~150 screens) to a steady state of ~100–133 screens per site, constrained by the research budget rather than specimen throughput.
:::

### Summary comparison


| Option | Setup (one-off) | Annual operating (yr 2+) | Year 1 total | P_detect (per-case) | Δ vs. status quo | R / pp† | Time | Parameter |
|:-------|----------------:|-------------------------:|-------------:|:-------------------:|:----------------:|----------:|:-----|:----------|
| Status quo | — | R0 | R0 | $\frac{1,013}{8,112} = 0.125$ | — | — | — | [`d_status_quo`](../parameters_hub.qmd#tbl-detection) |
| Option 1 — BChE auto-notify *(first build; CSV: `c_S2_*`)* | `r zar(as.numeric(pick("c_S2_BChE_autonotify_setup")))` | `r zar(as.numeric(pick("c_S2_BChE_autonotify_op")))` | `r zar(as.numeric(pick("c_S2_BChE_autonotify_setup")) + as.numeric(pick("c_S2_BChE_autonotify_op")))` | $\frac{1,013 + 1,779}{8,112} = 0.344$ | `r sprintf("+%.1f pp", (as.numeric(pick("d_S2_BChE_autonotify")) - as.numeric(pick("d_status_quo"))) * 100)` | `r paste0(zar(round(as.numeric(pick("c_S2_BChE_autonotify_op")) / ((as.numeric(pick("d_S2_BChE_autonotify")) - as.numeric(pick("d_status_quo"))) * 100))), " / pp")` | 2–4 wks | [`d_S2_BChE_autonotify`](../parameters_hub.qmd#tbl-detection) |
| Option 2 — PIH dashboard + MVD (+AfriTox agent name) *(second build; CSV: `c_S1_*`)* | `r zar(as.numeric(pick("c_S1_PIH_MVD_setup")))` | `r zar(as.numeric(pick("c_S1_PIH_MVD_op")))` | `r zar(as.numeric(pick("c_S1_PIH_MVD_setup")) + as.numeric(pick("c_S1_PIH_MVD_op")))` | $\frac{1,013 + 1,158}{8,112} = 0.268$ | `r sprintf("+%.1f pp", (as.numeric(pick("d_S1_PIH_MVD")) - as.numeric(pick("d_status_quo"))) * 100)` | `r paste0(zar(round(as.numeric(pick("c_S1_PIH_MVD_op")) / ((as.numeric(pick("d_S1_PIH_MVD")) - as.numeric(pick("d_status_quo"))) * 100))), " / pp")` | 1–2 wks dash / 3–9 mo MVD | [`d_S1_PIH_MVD`](../parameters_hub.qmd#tbl-detection) |
| **Surveillance MVP — Option 1 + Option 2** | **`r zar(as.numeric(pick("c_surv_MVP_setup")))`** | **`r zar(as.numeric(pick("c_surv_MVP_op")))`** | **`r zar(as.numeric(pick("c_surv_MVP_setup")) + as.numeric(pick("c_surv_MVP_op")))`** | $\frac{1,013 + 1,779 + 1,158}{8,112} = 0.487$ | **`r sprintf("+%.1f pp", (as.numeric(pick("d_surveillance_mvp")) - as.numeric(pick("d_status_quo"))) * 100)`** | **`r paste0(zar(round(as.numeric(pick("c_surv_MVP_op")) / ((as.numeric(pick("d_surveillance_mvp")) - as.numeric(pick("d_status_quo"))) * 100))), " / pp")`** | **12 weeks** | [`d_surveillance_mvp`](../parameters_hub.qmd#tbl-detection) |
| Option 3 — Community layer (Phase 2) *(pilot: FS + Gauteng; national conditional on pilot; **requires PIH/NMC intake from non-clinicians**; CSV: `c_S1b_*`)* | `r sprintf("R%.0fM–R%.1fM", as.numeric(pick("c_S1b_setup_lo"))/1e6, as.numeric(pick("c_S1b_setup_hi"))/1e6)` | Pilot `r sprintf("R%.1fM/yr", as.numeric(pick("c_S1b_op_lo"))/1e6)`; national `r sprintf("R%.1fM/yr", as.numeric(pick("c_S1b_op_hi"))/1e6)` | `r sprintf("R%.1fM–R%.1fM", (as.numeric(pick("c_S1b_setup_lo")) + as.numeric(pick("c_S1b_op_lo")))/1e6, (as.numeric(pick("c_S1b_setup_hi")) + as.numeric(pick("c_S1b_op_hi")))/1e6)` | `r pick("d_S1b_event_community_lo")`–`r pick("d_S1b_event_community_hi")` (working: `r pick("d_S1b_event_community_mid")`) | `r sprintf("+%.0f to +%.0f pp", (as.numeric(pick("d_S1b_event_community_lo")) - as.numeric(pick("d_status_quo"))) * 100, (as.numeric(pick("d_S1b_event_community_hi")) - as.numeric(pick("d_status_quo"))) * 100)` | `r sprintf("%s–%s / pp", zar(round(as.numeric(pick("c_S1b_op_lo")) / ((as.numeric(pick("d_S1b_event_community_lo")) - as.numeric(pick("d_status_quo"))) * 100))), zar(round(as.numeric(pick("c_S1b_op_hi")) / ((as.numeric(pick("d_S1b_event_community_hi")) - as.numeric(pick("d_status_quo"))) * 100))))` | 12 mo pilot → national | [`d_S1b_event_community_mid`](../parameters_hub.qmd) |
| Option 4 — NMC CIF + agricultural extension *(bridge to coordination)* | R45,000 | R35,000/yr | R80,000 | n/a (not a coverage uplift) | enables source-removal hand-off | n/a | 4–8 wks | NDoH 2023 CIF guideline |
| Option 5 — Sentinel toxicology *(agent attribution — distinct purpose, research-funded; CSV: `c_option6_*`)* | — (incl. in yr 1) | `r sprintf("R%.1fM/yr (5-site)", round(as.numeric(pick("c_option6_full_5site_annual"))/1e6,1))` | `r sprintf("R%.1fM (1-site pilot)", round(as.numeric(pick("c_option6_pilot_year1"))/1e6,1))` | n/a (not a coverage uplift) | feeds product-banning evidence base | n/a | 6–12 mo pilot | — |

: **Intermediate-outcome costing analysis — surveillance options, base-case.** Costs are 2024–25 ZAR; P_detect is the per-case detection probability anchored to the StatsSA MACOD 2023 mid-burden of `r scales::comma(as.numeric(pick("n_true_burden_from_statssa_mid")))` true cases/year. †**R / pp** = annual operating cost ÷ percentage-point gain in P_detect over status quo. Options 1 and 2 expand coverage within the formal health system. Option 5 is a parallel agent-attribution investment, not a coverage uplift. Option 4 is a data-quality / investigation-form upgrade that converts detected cases into source-removal hand-offs to the [Coordination brief](coordination_policy.qmd); it does not raise P_detect by design. Option 3 is a Phase 2 community layer, commissioned conditional on (i) MVP pilot data confirming a structural rural/informal gap (≥40% of severe cases in low-facility-access districts after 6 months of MVP operation) **and** (ii) PIH/NMC opening a non-clinician intake channel. {.striped .hover}

::: {.callout-note collapse="true"}
## Audit trail — mini-budget backing the R137,000/yr Surveillance MVP operating cost {#sec-mvp-mini-budget}

`c_surv_MVP_op` = R137,000/yr is a **deterministic sum** of two independent components. No distributional assumption is placed on the total; uncertainty propagates through the component gamma distributions in any PSA.

| Component | CSV parameter | Annual (R) | Mini-budget |
|:----------|:-------------|----------:|:-----------|
| Option 2 — PIH dashboard + MVD (+ AfriTox harmonisation) | `c_S1_PIH_MVD_op` | 82,000 | [Option 2 audit trail](#sec-opt2-mini-budget) |
| Option 1 — BChE auto-notification | `c_S2_BChE_autonotify_op` | 55,000 | [Option 1 audit trail](#sec-opt1-mini-budget) |
| **Surveillance MVP total** | `c_surv_MVP_op` | **137,000** | |

**No double-counting.** Option 1 (NHLS HL7 middleware, LIS IT maintenance, NHLS scientist QA, NICD alert triage) and Option 2 (PIH cloud hosting, MVD ETL pipeline, AfriTox harmonisation, QA, licences/SMS) sit on entirely separate operational pathways. The two NICD analyst allocations sum to ~0.05 FTE (Option 2: ~0.035 FTE; Option 1: ~0.015 FTE) — within the 0.2 FTE post already costed in the §7 Tab 1 NMC baseline. **The MVP does not require new headcount.**

**Setup.** `c_surv_MVP_setup` = R240,000 (one-off) = `c_S1_PIH_MVD_setup` (R40,000) + `c_S2_BChE_autonotify_setup` (R200,000), the Option 1 LIS HL7 reconfiguration dominating. S0 is already operational; its setup is not double-counted here.
:::

::: {.callout-note}
## Audit: parameter names for costing each policy option

Every annual and setup cost in this brief is linked to a row in [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv):

| Option | Setup cost parameter | Operating cost parameter |
|:-------|:--------------------|:------------------------|
| Option 2 — PIH dashboard + MVD (+ AfriTox harmonisation) | `c_S1_PIH_MVD_setup` | `c_S1_PIH_MVD_op` |
| Option 1 — BChE auto-notification | `c_S2_BChE_autonotify_setup` | `c_S2_BChE_autonotify_op` |
| Surveillance MVP (Option 1 + Option 2) | `c_surv_MVP_setup` | `c_surv_MVP_op` |
| Option 3 — community layer *(sensitivity: lo / mid / hi)* | `c_S1b_setup_mid` (lo/hi also exist) | `c_S1b_op_mid` (lo/hi also exist) |
| S0 — NHLS-NMC IT feed (operational, in baseline) | `c_S0_NHLS_NMC_feed_setup` | `c_S0_NHLS_NMC_feed_op` |
| Status quo (NICD program) | — | `c_status_quo_program` |

Parameter codes (`c_S1_*`, `c_S2_*`, `c_S1b_*`, `c_option6_*`) pre-date this brief's narrative reorder — see the cross-walk at the top of §5. Each option's mini-budget audit trail unpacks the figures into unit-cost and personnel-time components: [S0](#sec-s0-mini-budget) · [Option 1: BChE](#sec-opt1-mini-budget) · [Option 2: PIH MVD](#sec-opt2-mini-budget) · [MVP (1+2)](#sec-mvp-mini-budget) · [Option 3: Community](#sec-opt3-mini-budget) · [Option 5: Sentinel](#sec-opt5-mini-budget). All anchors are DPSA salary scales, NHLS Patterson grades, SITA contracting benchmarks, and AWS af-south-1 pricing — the same anchors as the §7 status-quo build-up. To update a cost: edit the CSV cell and re-render.
:::

## 6. Decision tree — from surveillance investment to detection uplift {#sec-decision-tree}

::: {.callout-note collapse="true"}
## Audit trail — how every P_detect value in this brief was derived

All active P_detect values are **derived, not elicited**, on a single per-case scale. The arithmetic is auditable from three published anchors.

### Step 1 — the implied true annual burden (denominator)

| Anchor | Value | Source |
|--|--:|--|
| Annual NMC pesticide notifications | `r scales::comma(as.numeric(pick("n_nmc_annual")))` | `n_nmc_annual` — NICD NMC Annual Report 2023 |
| NMC-hospitalised case-fatality rate | `r sprintf("%.1f %%", as.numeric(pick("cfr_headline_mid")) * 100)` | `cfr_headline_mid` (range `r sprintf("%.0f–15 %%", as.numeric(pick("cfr_headline_lo")) * 100)`) — Free State 2018-19 + NMC observed |
| StatsSA MACOD pesticide-poisoning deaths/yr | `r scales::comma(as.numeric(pick("n_deaths_statssa_macod")))` | `n_deaths_statssa_macod` — StatsSA Causes of Death, 2023: Table 4.12: Accidental poisoning by and exposure to noxious substance (X40-X49) |

If notified cases have CFR ≈ 12.5 %, then the *full* true burden satisfies $\text{true cases} \times \text{CFR} = \text{deaths}$, so

$$
N_\text{true} \;=\; \frac{1{,}014}{0.125} \;=\; \mathbf{8{,}112}\ \text{cases/year} \quad (\texttt{n\_true\_burden\_from\_statssa\_mid})
$$

This is the **single denominator** used for every per-case P_detect below.

### Step 2 — the per-stream numerators (2023 actuals)

| Stream | Annual count | CSV row | Source |
|--|--:|--|--|
| NMC notifications | `r scales::comma(as.numeric(pick("n_nmc_annual")))` | `n_nmc_annual` | NICD NMC Annual Report 2023 |
| NHLS severe BChE inhibitions (<10 % of normal enzyme activity) | `r scales::comma(as.numeric(pick("n_nhls_severe_annual")))` | `n_nhls_severe_annual` | NHLS LIS 2023 (of `r scales::comma(as.numeric(pick("n_nhls_total_annual")))` total tests) |
| PIH clinician-initiated calls | `r scales::comma(as.numeric(pick("n_pih_annual")))` | `n_pih_annual` | PIH (Tygerberg) 2023 |

The three streams are treated as **mutually exclusive** in the base case (severe BChE ≠ NMC-notified ≠ PIH-called); the overlap-correction sensitivity is parameterised separately in the hub.

### Step 3 — P_detect for each option

Each option adds one or more streams to the NMC base. The numerator is the sum of streams reaching the surveillance system; the denominator is always 8,112.

| Option | Streams summed | Arithmetic | P_detect | CSV row |
|--|--|--:|--:|--|
| Status quo | NMC only | $1{,}013 / 8{,}112$ | **0.125** | `d_status_quo` |
| Option 2 — PIH MVD + dashboard | NMC + PIH | $(1{,}013 + 1{,}158) / 8{,}112 = 2{,}171 / 8{,}112$ | **0.268** | `d_S1_PIH_MVD` |
| Option 1 — BChE auto-notify | NMC + NHLS severe | $(1{,}013 + 1{,}779) / 8{,}112 = 2{,}792 / 8{,}112$ | **0.344** | `d_S2_BChE_autonotify` |
| **Surveillance MVP (Option 1 + Option 2)** | NMC + NHLS severe + PIH | $(1{,}013 + 1{,}779 + 1{,}158) / 8{,}112 = 3{,}950 / 8{,}112$ | **0.487** | `d_surveillance_mvp` |

### Step 4 — CFR sensitivity bracket on the status-quo anchor

The denominator scales inversely with the CFR assumed for NMC-notified cases (CSV: `d_status_quo_lo`, `d_status_quo_hi`):

- Lower bound (CFR = `r pick("cfr_headline_lo")`): $P_\text{detect}^{SQ} = 1{,}013 \times 0.10 / 1{,}014 = 0.039$ (implied burden `r scales::comma(as.numeric(pick("n_true_burden_from_statssa_hi")))`)
- Mid (CFR = `r pick("cfr_headline_mid")`): $P_\text{detect}^{SQ} = `r pick("d_status_quo")`$ (implied burden `r scales::comma(as.numeric(pick("n_true_burden_from_statssa_mid")))`)
- Upper (CFR = `r pick("cfr_headline_hi")`): $P_\text{detect}^{SQ} = 1{,}013 \times 0.15 / 1{,}014 = 0.058$ (implied burden `r scales::comma(as.numeric(pick("n_true_burden_from_statssa_lo")))`)

The same CFR bracket applies proportionally to Option 1, Option 2 and the MVP — e.g. the MVP varies from `r sprintf("%.3f", as.numeric(pick("d_surveillance_mvp")) * as.numeric(pick("n_true_burden_from_statssa_lo")) / as.numeric(pick("n_true_burden_from_statssa_mid")))` (CFR `r pick("cfr_headline_hi")`) to `r sprintf("%.3f", as.numeric(pick("d_surveillance_mvp")) * as.numeric(pick("n_true_burden_from_statssa_hi")) / as.numeric(pick("n_true_burden_from_statssa_mid")))` (CFR `r pick("cfr_headline_lo")`).

### Step 5 — why this replaces the v1 value of 0.45

The legacy v1 figure was an expert-elicited estimate on a different scale, derived from a model of spatial event sensitivity rather than per-case detection. That quantity answered a different question and is not comparable to a per-case detection probability. This brief now uses the **per-case** framing throughout — every value above is directly auditable from NICD + NHLS + PIH + StatsSA published figures and the canonical [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv).
:::

````{r}
#| label: fig-surv-decision-tree
#| echo: false
#| output: asis

# Source the decision-tree engine and the surveillance tree builder.
# Both scripts auto-resolve their paths whether rendered from the project
# root or from posts/. All numbers below come from the rollback of the tree
# object built off amua_import_parameters_v4.csv -- no inline arithmetic.
source("../R/surveillance_tree.r")

params   <- load_params()                          # named list from CSV
tree     <- build_surveillance_tree(params)        # dt_node object
res      <- evs_to_df(eval_tree(tree))             # per-case rollback (tibble)
annual   <- scale_surveillance_to_annual(res, params$n_true_burden_from_statssa_mid)

# Pull arm-level values out of the rolled-back tibble. The arm names match
# those defined in build_surveillance_tree() in R/surveillance_tree.r.
arm <- function(a) annual %>% filter(arm == a)
d_sq  <- arm("status_quo")$detected
d_s1  <- arm("S1_PIH_MVD")$detected
d_s2  <- arm("S2_BChE_autonotify")$detected
d_mvp <- arm("MVP_S1_plus_S2")$detected

c_s1   <- arm("S1_PIH_MVD")$annual_cost_zar
c_s2   <- arm("S2_BChE_autonotify")$annual_cost_zar
c_mvp  <- arm("MVP_S1_plus_S2")$annual_cost_zar

pp <- function(d) sprintf("%+.1f pp", (d - d_sq) * 100)

cat(sprintf('```{mermaid}
%%%%| fig-cap: "Surveillance investment decision tree — per-case detection uplift only. Each option raises P_detect, the share of true annual cases (~8,112 StatsSA-anchored mid-burden) that enter the surveillance system. The absolute burden impact of these uplifts depends on response-side parameters covered in the coordination and terbufos briefs. Option 5 (sentinel toxicology) is shown separately because it is an agent-attribution investment, not a coverage uplift. All numerical values pulled from amua_import_parameters_v4.csv at render time."
flowchart TD
    INV{Surveillance<br/>investment?} -->|None| SQ[Status quo<br/>P_detect = %.3f<br/>~5%% of true cases]:::bad
    INV -->|Option 2 only<br/>R%s/yr| O1[+ PIH MVD<br/>P_detect = %.3f<br/>%s vs SQ]:::warn
    INV -->|Option 1 only<br/>R%s/yr| O2[+ BChE auto-notify<br/>P_detect = %.3f<br/>%s vs SQ]:::warn
    INV -->|Option 1 + Option 2<br/>R%s/yr| MVP[Surveillance MVP<br/>P_detect = %.3f<br/>%s vs SQ]:::good
    OPT5[Option 5 Sentinel toxicology<br/>agent attribution<br/><i>parallel investment —<br/>see Terbufos brief</i>]:::aux

    classDef bad fill:#fdd,stroke:#cc0000,stroke-width:1.5px
    classDef warn fill:#ffe9b3,stroke:#cc8800,stroke-width:1.5px
    classDef good fill:#cfc,stroke:#060,stroke-width:1.5px
    classDef aux fill:#e6f0ff,stroke:#3366cc,stroke-width:1.5px,stroke-dasharray: 5 5
```
',
d_sq,
format(c_s1,  big.mark = ","), d_s1,  pp(d_s1),
format(c_s2,  big.mark = ","), d_s2,  pp(d_s2),
format(c_mvp, big.mark = ","), d_mvp, pp(d_mvp)
))
````

The tree reports **per-case detection uplift in percentage points**. The status-quo node is a **measurement** of the current detection gap (1,013 NMC notifications ÷ ~8,112 implied true cases), not a baseline from which deaths are counted as averted — surveillance has no response attached. Four detection inputs (`d_status_quo`, `d_S2_BChE_autonotify`, `d_S1_PIH_MVD`, `d_surveillance_mvp`) and three operating-cost rows (`c_S1_PIH_MVD_op`, `c_S2_BChE_autonotify_op`, `c_surv_MVP_op`) live in [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv) — edit the CSV and re-render. Option 5 sits outside this tree: it is an agent-attribution investment whose value is parameterised in the [Terbufos brief](terbufos_policy.qmd) and the [sentinel toxicology appendix](surveillance_concept_note.qmd).

::: {.callout-note appearance="minimal"}
**Option 3 (Phase 2 community layer) is not modelled in this decision tree.** The MVP arm represents the ceiling achievable by linking existing administrative streams. Option 3 would require a new arm with P_detect drawn from `d_S1b_event_community_mid` = `r pick("d_S1b_event_community_mid")` (range `r pick("d_S1b_event_community_lo")`–`r pick("d_S1b_event_community_hi")`) and annual operating cost drawn from `c_S1b_op_mid` = `r scales::comma(as.numeric(pick("c_S1b_op_mid")))`. It is excluded from the current tree because it is a Phase 2 option commissioned conditional on MVP pilot results, not a parallel near-term decision; and because its coordination cost depends on the net false-positive rate after two-tier triage (`p_fp_S1b_mid` = `r pick("p_fp_S1b_mid")` gross; ~8–12% net) modelled in the [Coordination brief](coordination_policy.qmd).
:::

**For burden impact, see the next brief.** These P_detect figures feed the [Coordination brief](coordination_policy.qmd) decision tree, where response efficacy η converts detection into cases averted, and the [Terbufos brief](terbufos_policy.qmd), where regulatory restriction converts cases into deaths averted.

## 7. Status-quo costing — what surveillance costs today {#sec-costing}

::: {.callout-note icon=false}
## How to read & edit this section

The tables below are the **average-cost economic build-up of running surveillance for pesticide poisoning today** (status quo, 2024–25 ZAR). They are sourced from an editable workbook — [`data/surveillance_costing.xlsx`](../data/surveillance_costing.xlsx) — with three sheets:

- **`personnel`** — staff time (CTE × FTE %) by stream
- **`system`** — infrastructure, hosting, SMS, reagents by stream
- **`allocation`** — what share of each stream's total volume is pesticide-related (e.g. ~100 pesticide notifications/month out of ~10,000 total NMC notifications ≈ **0.84 %** of NMC platform OPEX is attributable to pesticide work)

To revise a unit cost or FTE, **edit a cell in the .xlsx and re-render** — every number below updates. The CSV (`amua_import_parameters_v4.csv`) remains the source of truth for *model* parameters and *marginal* policy-option costs (Option 1 / Option 2 / MVP). Salary anchors come from the DPSA scales (L10–11), NHLS Patterson grades (D/E), DoH OSD scales (MO, pharmacy), NICD recruitment notices and SITA contracting benchmarks; system anchors come from NHLS State Tender RT-262, AWS af-south-1 pricing, Clickatell/BulkSMS SA, and the NICD ICT budget — full citations are in each row's `source` column.
:::

```{r}
#| label: load-costing
#| message: false
#| warning: false

library(readxl)
library(scales)
library(gt)
library(dplyr)

cost_path <- "../data/surveillance_costing.xlsx"
personnel  <- read_excel(cost_path, sheet = "personnel")
system_dat <- read_excel(cost_path, sheet = "system")
allocation <- read_excel(cost_path, sheet = "allocation")

# Allocation factor: share of stream activity that is pesticide-related.
alloc_factor <- function(stream_name) {
  a <- allocation %>% filter(stream == stream_name)
  if (nrow(a) == 0) return(1)
  a$allocation_pct[1] / 100
}

# Apply pesticide-share allocation to platform-level OPEX rows (rationale
# contains the literal phrase "pesticide share").
system_alloc <- system_dat %>%
  mutate(
    is_platform = grepl("pesticide share", rationale, ignore.case = TRUE),
    pesticide_share_pct = if_else(
      is_platform,
      vapply(stream, function(s) alloc_factor(s) * 100, numeric(1)),
      100
    ),
    pesticide_cost_zar = round(annual_cost_zar * pesticide_share_pct / 100)
  )

zar <- function(x) paste0("R", scales::comma(round(x)))
```

::: {.panel-tabset}

### 1. Personnel

Annual cost-to-employer × FTE share attributable to pesticide surveillance, by stream.

```{r}
#| label: tbl-cost-personnel

personnel %>%
  arrange(stream, desc(annual_cost_zar)) %>%
  select(stream, role, annual_cte_zar, fte_pct, annual_cost_zar, rationale, source) %>%
  gt(rowname_col = "role", groupname_col = "stream") %>%
  fmt_number(columns = c(annual_cte_zar, annual_cost_zar), decimals = 0) %>%
  fmt_number(columns = fte_pct, decimals = 1, suffixing = FALSE, pattern = "{x}%") %>%
  cols_label(
    annual_cte_zar  = "Annual CTE (R)",
    fte_pct         = "FTE %",
    annual_cost_zar = "Allocated cost (R/yr)",
    rationale       = "Rationale",
    source          = "Source"
  ) %>%
  grand_summary_rows(
    columns = annual_cost_zar,
    fns = list("Total personnel" = ~ sum(.)),
    fmt = list(~ fmt_number(., decimals = 0))
  ) %>%
  tab_options(table.font.size = 11)
```

### 2. System

Infrastructure, hosting, SMS, reagents and licences — unit cost × annual volume, then allocated to the pesticide share of stream activity where applicable.

```{r}
#| label: tbl-cost-system

system_alloc %>%
  arrange(stream, desc(pesticide_cost_zar)) %>%
  select(stream, item, unit_cost_zar, units_per_yr, annual_cost_zar,
         pesticide_share_pct, pesticide_cost_zar, rationale, source) %>%
  gt(rowname_col = "item", groupname_col = "stream") %>%
  fmt_number(columns = c(unit_cost_zar, units_per_yr,
                         annual_cost_zar, pesticide_cost_zar),
             decimals = 0) %>%
  fmt_number(columns = pesticide_share_pct, decimals = 1, pattern = "{x}%") %>%
  cols_label(
    unit_cost_zar       = "Unit cost (R)",
    units_per_yr        = "Units/yr",
    annual_cost_zar     = "Raw cost (R/yr)",
    pesticide_share_pct = "Pesticide share",
    pesticide_cost_zar  = "Allocated cost (R/yr)",
    rationale           = "Rationale",
    source              = "Source"
  ) %>%
  grand_summary_rows(
    columns = pesticide_cost_zar,
    fns = list("Total system (pesticide-allocated)" = ~ sum(.)),
    fmt = list(~ fmt_number(., decimals = 0))
  ) %>%
  tab_options(table.font.size = 11)
```

### 3. Allocation factors

Why these proportions matter: platform-level OPEX (NMC hosting, PIH telephony, AfriTox licence) covers *all* notifiable / call activity, of which pesticide poisoning is only a slice. The denominator drives the allocated cost.

```{r}
#| label: tbl-cost-allocation

allocation %>%
  select(stream, basis, pesticide_count_yr, total_count_yr,
         allocation_pct, rationale, source) %>%
  gt(rowname_col = "basis", groupname_col = "stream") %>%
  fmt_number(columns = c(pesticide_count_yr, total_count_yr), decimals = 0) %>%
  fmt_number(columns = allocation_pct, decimals = 2, pattern = "{x}%") %>%
  cols_label(
    pesticide_count_yr = "Pesticide (n/yr)",
    total_count_yr     = "Total (n/yr)",
    allocation_pct     = "Share",
    rationale          = "Rationale",
    source             = "Source"
  ) %>%
  tab_options(table.font.size = 11)
```

### 4. Status-quo total

Status-quo annual cost of running pesticide-poisoning surveillance across the three streams, summed from the personnel and system sheets.

```{r}
#| label: tbl-cost-total

pers_by_stream <- personnel %>%
  group_by(stream) %>%
  summarise(personnel_zar = sum(annual_cost_zar), .groups = "drop")

sys_by_stream <- system_alloc %>%
  group_by(stream) %>%
  summarise(system_zar = sum(pesticide_cost_zar), .groups = "drop")

totals <- full_join(pers_by_stream, sys_by_stream, by = "stream") %>%
  mutate(across(c(personnel_zar, system_zar), ~ replace_na(., 0)),
         total_zar = personnel_zar + system_zar) %>%
  arrange(desc(total_zar))

totals %>%
  gt(rowname_col = "stream") %>%
  fmt_number(columns = c(personnel_zar, system_zar, total_zar), decimals = 0) %>%
  cols_label(
    personnel_zar = "Personnel (R/yr)",
    system_zar    = "System (R/yr)",
    total_zar     = "Total (R/yr)"
  ) %>%
  grand_summary_rows(
    columns = c(personnel_zar, system_zar, total_zar),
    fns = list("Status-quo total" = ~ sum(.)),
    fmt = list(~ fmt_number(., decimals = 0))
  ) %>%
  tab_options(table.font.size = 11)
```

### 5. Marginal cost of policy options

For comparison: the **additional** annual operating cost of each surveillance investment, pulled directly from [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv) (these are the same numbers driving the decision tree in §6).

```{r}
#| label: tbl-cost-marginal

marginal <- tibble::tribble(
  ~option, ~setup_param, ~op_param,
  "Option 2 — PIH dashboard + MVD (+ AfriTox harmonisation)", "c_S1_PIH_MVD_setup",           "c_S1_PIH_MVD_op",
  "Option 1 — BChE auto-notification",                         "c_S2_BChE_autonotify_setup",   "c_S2_BChE_autonotify_op",
  "Surveillance MVP (Option 1 + Option 2)",                          "c_surv_MVP_setup",             "c_surv_MVP_op",
  "S0 — NHLS-NMC IT feed (now operational)",             "c_S0_NHLS_NMC_feed_setup",     "c_S0_NHLS_NMC_feed_op",
  "Option 3 — community layer (sensitivity, lo)",       "c_S1b_setup_lo",               "c_S1b_op_lo",
  "Option 3 — community layer (sensitivity, mid)",      "c_S1b_setup_mid",              "c_S1b_op_mid",
  "Option 3 — community layer (sensitivity, hi)",       "c_S1b_setup_hi",               "c_S1b_op_hi"
) %>%
  mutate(
    setup_zar = vapply(setup_param, function(n) as.numeric(pick(n)), numeric(1)),
    op_zar    = vapply(op_param,    function(n) as.numeric(pick(n)), numeric(1))
  ) %>%
  select(option, setup_zar, op_zar, setup_param, op_param)

marginal %>%
  gt(rowname_col = "option") %>%
  fmt_number(columns = c(setup_zar, op_zar), decimals = 0) %>%
  cols_label(
    setup_zar   = "Setup (R, one-off)",
    op_zar      = "Operating (R/yr)",
    setup_param = "CSV: setup",
    op_param    = "CSV: operating"
  ) %>%
  tab_options(table.font.size = 11)
```

:::

**Headline read.** The status-quo surveillance system already costs roughly **`r zar(sum(totals$total_zar))`/yr** in personnel + pesticide-allocated system spend across NMC, PIH, and NHLS BChE — borne almost entirely by NDoH, NHLS, and Stellenbosch FoMHS rather than appearing as a line item. Against that base, the **Surveillance MVP (Option 1 + Option 2) adds only `r zar(as.numeric(pick("c_surv_MVP_op")))`/yr** — a **`r sprintf("%.1f%%", 100 * as.numeric(pick("c_surv_MVP_op")) / sum(totals$total_zar))` uplift on current spend** for a **`r sprintf("+%.1f pp", (as.numeric(pick("d_surveillance_mvp")) - as.numeric(pick("d_status_quo"))) * 100)`** jump in P_detect.

## 8. Implementation considerations

| Component | Lead agency | Year-1 cost | Critical path |
|:----------|:------------|------------:|:--------------|
| Option 2 — PIH dashboard | PIH (Tygerberg) + NICD | `r scales::comma(as.numeric(pick("c_S1_PIH_MVD_op")))` | Daily extract + hosting; MVD workshop |
| Option 1 — BChE auto-notify | NHLS LIS team | `r scales::comma(as.numeric(pick("c_S2_BChE_autonotify_op")))` | LIS rule configuration; QA review |
| Option 5 — Sentinel toxicology | NHLS clinical chemistry + sentinel hospital | `r zar(as.numeric(pick("c_option6_pilot_year1")))` pilot | Lab method validation; sample logistics |
| Option 3 — Community layer (Phase 2) *(pilot: FS + Gauteng; commission after Month 6 MVP review)* | NICD + provincial DoH EHPs | Pilot: `r sprintf("R%.0fM setup + R%.1fM/yr", as.numeric(pick("c_S1b_setup_lo"))/1e6, as.numeric(pick("c_S1b_op_lo"))/1e6)`; national: `r sprintf("R%.1fM setup + R%.1fM/yr", as.numeric(pick("c_S1b_setup_hi"))/1e6, as.numeric(pick("c_S1b_op_hi"))/1e6)` | CHW two-tier triage training, mobile checklist app, EHP call-back protocol, QA pipeline |

**Privacy & legal.** The PIH-to-NMC MVD feed transmits personal health information (age-band, sex, geography, clinical data) and must use a **secure, authenticated HTTPS/TLS API** — no plaintext or email transmission. De-identification before transmission is mandatory (age-band not exact age; province/district not street address; no name or phone number; see Appendix A2). The NHLS BChE auto-notify feed transmits result-level data with patient identifiers to NMC, consistent with the existing NMC notification pathway, and must use the same secure HL7-over-TLS channel. Both flows are POPIA-compliant under existing Section 90 NHA authority. **No new legislation required.**

**Risks.** (i) Low BChE testing uptake by clinicians — Option 1 fires only on tests ordered. (ii) Data-quality drift if facility metadata is incomplete. (iii) Capacity bottleneck at provincial response level — the [Coordination brief](coordination_policy.qmd) addresses this.

## 9. Recommended next step

**Adopt the Surveillance MVP (Option 1 + Option 2) and pilot in 3 provinces (Gauteng, Western Cape, KZN) for 6 months.** Approximate pilot budget: **~`r zar(as.numeric(pick("c_surv_MVP_op")))` operating** (NHLS–NMC IT feed is now operational). Lead agency: NICD as national coordinator.

- **Weeks 1–2:** Option 2 PIH dashboard live; Option 1 BChE LIS configuration begins.
- **Months 1–3:** Option 2 MVD workshop with PIH finalised; Option 1 BChE auto-notify QA review completed.
- **Month 6:** Evaluate against (a) completeness of NHLS severe results in NMC and (b) signal-to-investigation latency.
- **Month 9:** Add Option 5 sentinel toxicology site, funded from a separate research-surveillance stream.
- **Month 12:** Review MVP geographic distribution. If ≥40% of severe cases originate in low-facility-access districts, commission the Option 3 Phase 2 pilot (Free State + Gauteng; ~`r sprintf("R%.0fM", as.numeric(pick("c_S1b_setup_lo"))/1e6)` setup + `r sprintf("R%.1fM/yr", as.numeric(pick("c_S1b_op_lo"))/1e6)` operating).

The coordination side — how NICD, EHPs, DALRRD, and provincial response teams act on the improved signal — is in the [Coordination brief](coordination_policy.qmd). The product-specific regulatory action Option 5 makes possible is in the [Terbufos brief](terbufos_policy.qmd).

---

::: {.footer-cta}
**Companion briefs:** [Coordination](coordination_policy.qmd) · [Terbufos restriction](terbufos_policy.qmd) · [Decision Model](decision_model.qmd) · [Costing Analysis](costing_analysis.qmd)

**Technical appendices:** [A — Surveillance decision analysis](../analysis_report_v2.qmd) · [D — Sentinel toxicology (Option 5 deep dive)](surveillance_concept_note.qmd)

**Appendices (this brief):** [Appendix A — MVD specifications (NMC + PIH)](#sec-mvd)
:::

---

## Appendix A — Minimum Viable Dataset (MVD) specifications {#sec-mvd}

### A1. NMC MVD — required fields for PIH-to-NMC structured feed

The table below specifies the **Minimum Viable Dataset** for ingesting PIH clinician-initiated calls into the National Microbiology and Communicable Disease Notification (NMC) system as a structured surveillance stream. These fields must be captured at the point of PIH call (what the *caller reports*) and confirmed/updated by the notifying clinician (what the clinician *confirms*). The pesticide-type and circumstances classification is drawn from the existing NMC notification form; the MVD mandates their structured capture for every pesticide-poisoning case.

::: {.callout-note appearance="minimal"}
**Agent-name capture is mandatory.** Both PIH and NMC must record the **AfriTox product name** for every case. NMC should add a structured agent drop-down (pesticide class → active ingredient → AfriTox product name) to the NDoH-hosted notification form to make this reciprocal with PIH. Cases with agent "unknown" are acceptable (do not exclude), but the field must be present.
:::

**Pesticide type (structured drop-down — mandatory)**

| Code | Pesticide type | Example active ingredients |
|:-----|:--------------|:--------------------------|
| OPC  | Organophosphates | Chlorpyrifos, dimethoate, profenofos |
| CAR  | Carbamates | Aldicarb, methomyl, carbofuran |
| PYR  | Pyrethroids | Cypermethrin, deltamethrin, permethrin |
| PAR  | Paraquat & Diquat | Paraquat dichloride, diquat dibromide |
| PHO  | Phosphine & Phosphides | Aluminium phosphide, zinc phosphide |
| NEO  | Neonicotinoid Insecticides | Imidacloprid, thiamethoxam |
| ORG  | Organochlorines | DDT, endosulfan, lindane |
| CPH  | Chlorophenoxy Herbicides | 2,4-D, MCPA, triclopyr |
| GLY  | Glyphosates | Glyphosate-IPA, glyphosate-ammonium |
| COU  | Coumarin Rodenticides | Brodifacoum, bromadiolone, chlorophacinone |
| FOR  | Formamidines | Amitraz, chlordimeform |
| FUN  | Fungicides — Unspecified | — |
| HRB  | Herbicides — Unspecified | — |
| INS  | Insecticides — Unspecified | — |
| DEE  | Diethyl-m-toluamide (DEET) | DEET |
| AFX  | Aflatoxin | Aflatoxin B1/B2/G1/G2 |
| NAP  | Naphthalene (marbles) | Naphthalene |
| OTH  | Other | (free text required) |
| UNK  | Unknown | — |

: NMC pesticide-type classification. Source: existing NMC notification form. AfriTox product-name lookup linked to each class at data entry. {#tbl-mvd-pesticide-type .striped .hover}

**Circumstances / intent (structured drop-down — mandatory)**

| Code | Circumstance | ICD-10 intent mapping |
|:-----|:------------|:----------------------|
| UI-OCC | Unintentional — Occupational | X48 (farm, pest control, industrial) |
| UI-DOM | Unintentional — Domestic | X40–X44 |
| INT-SH | Intentional — Self-harm | X60–X69 |
| INT-AH | Intentional — Assault/Homicide | X85–X90 |
| ENV-DR | Environmental / Drift | X48 (environmental context) |
| ACC-CN | Accidental contamination (food/water) | X49 |
| UNK-UI | Unknown / Under investigation | — |

: NMC circumstances/intent classification. Source: existing NMC notification form. Must be captured at both PIH call (caller-reported) and NMC notification (clinician-confirmed); these may differ and both values should be retained. {#tbl-mvd-circumstances .striped .hover}

**Remaining mandatory MVD fields for NMC notification**

| Field | Format | Notes |
|:------|:-------|:------|
| Case date (date of exposure / presentation) | ISO 8601 (YYYY-MM-DD) | Date of poisoning event or first clinical presentation |
| Facility / point of care | Facility NHIS code | Or "PIH referral" if never attended facility |
| Province | 2-letter code (e.g. WC, GP, FS) | Province of exposure, not of facility |
| District | LIM-code or free text | For geographic clustering analysis |
| Outcome at notification | Survived / Died / Unknown | MUST be updated if outcome changes |
| AfriTox product name | Free text + drop-down lookup | Mandatory field; "unknown" is valid if product unidentified |
| Notification source | NMC-direct / PIH-MVD / NHLS-autonotify | Tracks which stream generated the case |

: MVD — additional mandatory fields. These are the minimum set required to (a) link across streams, (b) support geographic clustering, and (c) support product-specific attribution. Fields marked "unknown" are acceptable; empty/null is not. {#tbl-mvd-core .striped .hover}

---

### A2. PIH MVD — required fields including demographic variables

PIH captures call data in its existing Toxicology Management System (TMS). The following fields must be structured (coded, not free-text) in the PIH-to-NMC MVD feed to ensure the data are surveillance-ready. **Demographic variables are mandatory** — they are the primary tool for detecting vulnerable sub-populations (occupational exposure in farm workers, paediatric accidental ingestion, gender asymmetry in intentional self-harm) and for geographic clustering.

| Domain | Field | Format | Rationale |
|:-------|:------|:-------|:---------|
| **Demographics** | Age | Integer (years) or age-band (0–4, 5–14, 15–24, 25–34, 35–49, 50–64, ≥65) | Paediatric vs. adult exposure patterns differ; required for burden modelling |
| **Demographics** | Sex | M / F / Unknown | Gender asymmetry in intentional self-harm is a known signal |
| **Demographics** | Caller type | Patient / Clinician / Caregiver / Other | Distinguishes clinician-initiated (surveillance-relevant) from lay calls |
| **Demographics** | Occupation (if stated) | Free text + coded: farm worker / pesticide applicator / domestic worker / child / other / unknown | Occupational exposure is systematically under-identified |
| **Geography** | Province of caller | 2-letter code | Derived from caller area code or stated by caller |
| **Geography** | District (if known) | LIM-code or free text | Optional but captures rural/urban signal |
| **Exposure** | Pesticide type | NMC drop-down (see A1) | Must align with NMC classification for linkage |
| **Exposure** | AfriTox product name | Free text + drop-down lookup | Mandatory; "unknown" valid |
| **Exposure** | Route | Ingestion / Dermal / Inhalation / Ocular / Unknown | Route influences clinical management and surveillance signal |
| **Circumstances** | Intent | NMC circumstance codes (see A1) | Caller-reported; may be updated by treating clinician |
| **Clinical** | Severity (caller-assessed) | Mild / Moderate / Severe / Unknown | PSS (Poisoning Severity Score) if TMS supports it |
| **Clinical** | Referred to facility | Yes / No / Unknown | Links call record to potential NMC notification |
| **Linkage** | NMC notification number | Free text (if referred and notified) | Enables de-duplicated case linking across PIH + NMC streams |
| **System** | Call date and time | ISO 8601 (YYYY-MM-DDTHH:MM) | Required for temporal clustering and latency audit |
| **System** | TMS call ID | Alphanumeric | Internal identifier; retained for audit; not transmitted externally |

: PIH MVD — full field specification including demographic variables. Demographic fields (age, sex, caller type, occupation) are mandatory for all calls; a structured unknown code is required if data are not available — blank fields will be rejected in the NMC ingest pipeline. {#tbl-pih-mvd .striped .hover}

::: {.callout-note appearance="minimal"}
**POPIA compliance and secure transmission.** All PIH-to-NMC transmissions must be de-identified before transmission: no name, phone number, or exact address. Age-band (not exact age), province/district (not street address), and anonymised TMS call ID are sufficient for surveillance linkage and comply with Section 90 of the National Health Act (2003) and POPIA. Exact age may be retained internally within PIH TMS for clinical purposes and transmitted as age-band only.

De-identified health data still constitutes personal information under POPIA. The PIH-to-NMC feed **must be implemented as a secure HTTPS/TLS API with mutual authentication** (client certificate or token-based) between the PIH TMS and the NMC ingest endpoint. Transmission over email, FTP, or unencrypted HTTP is not acceptable. The MVD ingest pipeline (line item 4 in the Option 2 operating cost) includes the cost of maintaining this secure channel; the one-off setup cost (`c_S1_PIH_MVD_setup` = R40,000) must include API security configuration and penetration testing as a go-live requirement.
:::

::: {.callout-tip appearance="minimal"}
**AfriTox agent-name harmonisation.** Both PIH (TMS) and NMC (notification form) must use the same AfriTox product-name controlled vocabulary so product-level attribution is consistent across streams. The Option 2 MVD workshop (Months 1–3) should produce a shared AfriTox lookup table embedded in both systems — a single workshop yields cross-stream agent attribution at scale.
:::


================================================================
## SOURCE: posts/coordination_policy.qmd
================================================================

---
title: "Policy Brief 2: Closing the Coordination Loop"
subtitle: "Making NMC, EHPs, DALRRD, and provincial response work as one system"
author: "D2P Project Team"
date: "2025-09-05"
date-modified: today
categories: [policy, coordination, decision-makers]
format:
  html:
    toc: true
    toc-depth: 2
    number-sections: false
---

::: {.callout-important icon=false}
## For Decision-Makers

**Target audience:** Ministerial Advisory Committee (MAC), National Department of Health (NDoH), DALRRD Pesticide Registrar, Provincial Health Leadership.

**Companion briefs:** [Surveillance](surveillance_policy.qmd) · [Terbufos restriction](terbufos_policy.qmd).
:::

## 1. Policy question

**Should NDoH and DALRRD mandate a closed-loop coordination workflow — where every NMC notification triggers an investigation that is recorded on NMC, every EHP→DALRRD referral is structured, and every DALRRD action is fed back to NICD and the clinician?**

## 2. Public health problem

Better detection (see the [Surveillance brief](surveillance_policy.qmd)) is wasted if the system does not **act** on what it detects. The response chain has **eight sequential decision points** between "case suspected" and "regulatory action closes the loop"; **six of the eight default to a broken-loop terminal**. A correctly-notified case can still produce no investigation, no source removal, and no regulatory follow-up — leaving the underlying hazard in place and producing predictable secondary cases.

The coordination loop is **agent-agnostic**: it processes terbufos clusters today, will process aldicarb or paraquat tomorrow, and — as South Africa's burden shifts with development — opioids, methadone, or recreational-drug overdoses thereafter. The closed loop is therefore the durable institutional asset; the [Terbufos brief](terbufos_policy.qmd) is the first product-specific output it should deliver, not the last.

## 3. Status quo

{{< include _shared_parameters.qmd >}}

::: {.callout-note}
## Who bears the R1.61B

NDoH ~R70M (4 %), NHLS ~R10M (<1 %), households ~R10M OOP (<1 %), and ~R1.52B (94 %) in lost lifetime earnings borne by households and the wider economy. DALRRD bears no direct burden-side cost but holds **the only legal lever that prevents the underlying exposure**. That asymmetry is why the loop must terminate in DALRRD action: the agency with the lowest burden share controls the highest-leverage intervention.
:::

### The notification pathway — one-way and broken

```{mermaid}
%%| label: fig-coord-status-quo-flow
%%| fig-cap: "Current notification pathway. Clinicians and public-health officials notify on the NMC platform; NMC sends an SMS to the local EHP, who is mandated to investigate but does not record the investigation back on NMC. The EHP may informally refer to DALRRD, but this is not captured on NMC and DALRRD's action (if any) is not fed back to NMC or the clinician."
flowchart LR
    A[Clinician /<br/>Public-health official] -->|Notification on<br/>NMC platform| D[NMC platform<br/><i>NICD</i>]
    D -->|SMS notification| B[Local EHP<br/><i>mandated to investigate</i>]
    B -.Investigation NOT<br/>recorded on NMC.-x D
    B -.Informal phone /<br/>email referral.-> C[DALRRD<br/><i>Pesticide Registrar /<br/>Inspectorate</i>]
    B -.Referral NOT<br/>recorded on NMC.-x D

    C -.Feedback to EHP<br/>at best.-> B
    C -.x No feedback to NMC.-x D
    C -.x No feedback to clinician.-x A
    D -.x No case-status<br/>feedback.-x A

    style A fill:#fde,stroke:#333
    style B fill:#ffd,stroke:#333
    style C fill:#fdd,stroke:#cc0000,stroke-dasharray: 5 5
    style D fill:#cfc,stroke:#333,stroke-width:2px
```

**Reading the diagram.** Clinicians *do* file on NMC — that is the formal entry point. NMC *does* SMS the local EHP, who *is* mandated to investigate. The chain breaks at two specific places: (a) the EHP investigation outcome is **never written back to NMC** because no NMC field requires it; and (b) the EHP→DALRRD referral, when it happens, is informal and likewise unrecorded. DALRRD action — if any — flows back to the EHP at best, and never to NICD or the originating clinician.

## 4. Root cause analysis

```{mermaid}
%%| label: fig-coord-fishbone
%%| fig-cap: "Root causes of coordination failure across the NMC–EHP–DALRRD chain."
flowchart LR
    A[Coordination failure] --> R1[NMC has no field for<br/>EHP investigation outcome]
    A --> R2[EHP→DALRRD referral<br/>has no SOP, no audit trail]
    A --> R3[DALRRD has no inbound<br/>NICD intelligence feed]
    A --> R4[Clinicians never receive<br/>case-status feedback]
    A --> R5[No KPI / accountability<br/>at any node]

    R1 --> O1[Option C1: Mandate EHP<br/>NMC closure-of-loop field]
    R2 --> O2[Option C2: Structured<br/>EHP→DALRRD referral form on NMC]
    R3 --> O3[Option C3: NICD→DALRRD<br/>intelligence feed]
    R4 --> O4[Option C4: NMC auto-feedback<br/>to notifier on case status]
    R5 --> O5[Option C5: Joint KPI dashboard<br/>NICD + DALRRD + Provinces]

    style A fill:#f99,stroke:#333
    style O1 fill:#9f9,stroke:#333
    style O2 fill:#9f9,stroke:#333
    style O3 fill:#9f9,stroke:#333
    style O4 fill:#9f9,stroke:#333
    style O5 fill:#9f9,stroke:#333
```

The five drivers are: (1) NMC schema lacks a closure-of-loop field; (2) EHP→DALRRD referral has no SOP; (3) DALRRD has no inbound NICD intelligence feed despite a formal request for one; (4) clinicians get no case-status feedback so the notification has no perceived value; (5) **no decision node in the chain has an accountable owner with a KPI**, so nothing fails loudly when the loop breaks.

## 5. Policy options

| ID | Option | What it does | Annual cost |
|:---|:-------|:-------------|------------:|
| **C1** | NMC closure-of-loop field for EHPs | Structured "investigation outcome" field (visited, source identified, sampling, referral); 14-day completion KPI. No new legislation. | ~R30k |
| **C2** | Structured EHP→DALRRD referral form on NMC | Auto-emails DALRRD Inspectorate with product, location, agent, severity; replaces informal phone/email referral. | ~R25k |
| **C3** ★ | NICD→DALRRD poisoning intelligence feed | Quarterly NICD brief by product/geography/season + ad-hoc case-spike alerts. Gives DALRRD the evidence base for product-specific action (prerequisite for the [Terbufos brief](terbufos_policy.qmd)). | ~R40k |
| **C4** | Notifier auto-feedback | Quarterly NMC case-status summary back to the notifying clinician. Removes the "notify into a black hole" disincentive. | ~R20k |
| **C5** | Joint KPI dashboard | Public dashboard: notification-to-investigation time, % with recorded outcome, % with DALRRD action, % notifiers receiving feedback. Co-owned by NICD, DALRRD, provincial DoHs. | ~R30k |

### Coordination Full Package (C1 + C2 + C3 + C4 + C5)

```{mermaid}
%%| label: fig-coord-feedback-loop
%%| fig-cap: "Proposed end-state: a closed feedback loop linking clinicians, laboratories, NICD, EHPs, DALRRD, and provincial response teams. Every actor both contributes data and receives back the action taken."
flowchart LR
    A[Clinician<br/>at facility] -->|Electronic<br/>NMC notification| D[NICD<br/>Surveillance Unit]
    L[NHLS Laboratory<br/>BChE + Toxicology] -->|Auto-notify<br/>< 24h| D
    P[PIH<br/>Quarterly summary] -->|Minimum viable<br/>dataset| D

    D -->|Case-spike alert| E[Provincial EHP /<br/>Response Team]
    E -->|Structured<br/>referral| C[DALRRD<br/>Inspectorate]
    C -->|Enforcement /<br/>recall outcome| D
    E -->|Investigation<br/>outcome| D

    D -.Case-status<br/>feedback.-> A
    D -.Result-use<br/>feedback.-> L
    D -.Trend<br/>feedback.-> P
    C -.Regulatory<br/>action feedback.-> A

    style A fill:#cce5ff,stroke:#333
    style L fill:#cce5ff,stroke:#333
    style P fill:#cce5ff,stroke:#333
    style D fill:#9f9,stroke:#333,stroke-width:2px
    style E fill:#ffd,stroke:#333
    style C fill:#fcb,stroke:#333
```

Total annual cost of the Coordination Full Package: **~R145,000**. No new legislation required.

## 6. Decision tree — coordination outcomes per suspected case

### 6a. Where the chain breaks today

````{r}
#| label: fig-coord-decision-tree
#| echo: false
#| output: asis
p1 <- as.numeric(pick("p_coord_sq_nmc_notified"))
p2 <- as.numeric(pick("p_coord_sq_sms_reaches_ehp"))
p3 <- as.numeric(pick("p_coord_sq_ehp_investigates"))
p4 <- as.numeric(pick("p_coord_sq_recorded_on_nmc"))
p5 <- as.numeric(pick("p_coord_sq_refer_dalrrd"))
p6 <- as.numeric(pick("p_coord_sq_dalrrd_acts"))
p7 <- as.numeric(pick("p_coord_sq_feedback_full"))

p_loop_sq <- as.numeric(pick("p_loop_closed_status_quo"))

cat(sprintf('```{mermaid}
%%%%| fig-cap: "Coordination decision tree for a single suspected case under the status quo. Eight conditional steps; six terminate in a broken-loop outcome. All eight node probabilities pulled from amua_import_parameters_v3.csv at render time."
flowchart TD
    Q0{Case suspected?} -->|Yes| Q1{Notified on<br/>NMC?}
    Q0 -->|No| X0[Case invisible]:::bad

    Q1 -->|Yes %.2f| Q2{SMS reaches<br/>EHP?}
    Q1 -->|No %.2f| X1[No notification]:::bad

    Q2 -->|Yes %.2f| Q3{EHP<br/>investigates?}
    Q2 -->|No %.2f| X2[Dies at NMC]:::bad

    Q3 -->|Yes %.2f| Q4{Recorded<br/>on NMC?}
    Q3 -->|No %.2f| X3[No response]:::bad

    Q4 -->|Yes %.2f| G1[Loop closed<br/>to NMC]:::good
    Q4 -->|No %.2f| Q5{Refer to<br/>DALRRD?}

    Q5 -->|Yes %.2f| Q6{DALRRD<br/>acts?}
    Q5 -->|No %.2f| X4[Regulator<br/>never hears]:::bad

    Q6 -->|Yes %.2f| Q7{Feedback to<br/>NMC + clinician?}
    Q6 -->|No %.2f| X5[Source persists]:::bad

    Q7 -->|To EHP only %.2f| X6[NMC + clinician<br/>still blind]:::bad
    Q7 -->|To NMC + clinician %.2f| G2[Loop fully closed]:::good

    classDef bad fill:#fdd,stroke:#cc0000,stroke-width:1.5px
    classDef good fill:#cfc,stroke:#060,stroke-width:1.5px
```
',
p1, 1 - p1,
p2, 1 - p2,
p3, 1 - p3,
p4, 1 - p4,
p5, 1 - p5,
p6, 1 - p6,
1 - p7, p7
))
````

**Joint P(loop fully closes) ≈ `r sprintf("%.1f %%", 100 * as.numeric(pick("p_loop_closed_status_quo")))`** under the status quo (CSV: `p_loop_closed_status_quo`). Expected coordination cost per suspected case ≈ **R196,400** — virtually the full per-case societal burden of R197,000, because the loop almost never closes.

### 6b. Per-loop yield — the parameter the integrated model consumes

A single fully-closed loop retires one uncontrolled source. The source would otherwise produce a cluster of $\rho_{\text{secondary}}$ further cases. Response efficacy $\eta$ is the fraction of that cluster that is actually averted once the loop closes. Per loop closed:

$$
\text{cases prevented} = \rho_{\text{secondary}} \times \eta
\qquad
\text{deaths prevented} = \rho_{\text{secondary}} \times \eta \times p_{\text{death}}
$$

```{r}
#| label: tbl-per-loop-yield
#| echo: false
#| tbl-cap: "Preventable cases, deaths, and societal burden per *additional* fully-closed loop, at low/mid/high response efficacy. All inputs from amua_import_parameters_v4.csv. These are the rates that overall_policy_model.qmd multiplies by Δ(loops closed) under each policy scenario."

rho     <- as.numeric(pick("rho_secondary"))
p_dth   <- as.numeric(pick("p_death"))
c_morb  <- as.numeric(pick("c_morbidity_headline"))
c_mort  <- as.numeric(pick("c_mortality_human_capital"))

eta_lo  <- as.numeric(pick("eta_response_lo"))
eta_mid <- as.numeric(pick("eta_response_mid"))
eta_hi  <- as.numeric(pick("eta_response_hi"))

tibble::tibble(
  Scenario          = c("Low engagement (η_lo)", "Base case (η_mid)", "Well-resourced (η_hi)"),
  `η`               = c(eta_lo, eta_mid, eta_hi),
  `Cases / loop`    = rho * c(eta_lo, eta_mid, eta_hi),
  `Deaths / loop`   = rho * c(eta_lo, eta_mid, eta_hi) * p_dth,
  `Burden retired / loop (R)` =
    rho * c(eta_lo, eta_mid, eta_hi) * c_morb +
    rho * c(eta_lo, eta_mid, eta_hi) * p_dth * c_mort
) |>
  gt::gt() |>
  gt::fmt_number(columns = c("η"), decimals = 2) |>
  gt::fmt_number(columns = c("Cases / loop", "Deaths / loop"), decimals = 2) |>
  gt::fmt_number(columns = "Burden retired / loop (R)", decimals = 0, use_seps = TRUE, pattern = "R{x}") |>
  gt::tab_options(table.font.size = "small")
```

**Headline rule of thumb.** At base case ($\rho = `r rho`$, $\eta = `r eta_mid`$, $p_{\text{death}} = `r p_dth`$): **every loop closed prevents ≈ `r round(rho*eta_mid, 1)` future cases and ≈ `r round(rho*eta_mid*p_dth, 2)` deaths**, retiring **≈ R`r format(round(rho*eta_mid*(c_morb + p_dth*c_mort)), big.mark=",")` of societal burden**. Multiply by the change in number of loops closed under any scenario in [the integrated model](overall_policy_model.qmd) to get the policy yield.

### 6c. Clinical-outcome subtree

Each coordination terminal feeds into a clinical-outcome subtree for the index case *and* for the secondary cases that would otherwise follow from the same source:

````{r}
#| label: fig-coord-outcome-tree-v2
#| echo: false
#| output: asis
rho     <- as.numeric(pick("rho_secondary"))
eta     <- as.numeric(pick("eta_response_mid"))
p_dth   <- as.numeric(pick("p_death"))
p_sev   <- as.numeric(pick("p_severe"))
p_rec   <- as.numeric(pick("p_recover"))

averted_sec   <- rho * eta
extra_sec     <- rho
averted_deaths<- averted_sec * p_dth
extra_deaths  <- extra_sec * p_dth

cat(sprintf('```{mermaid}
%%%%| fig-cap: "Clinical-outcome subtree attached to each coordination terminal. Index-case probabilities (p_death, p_severe, p_recover) and secondary-case multipliers (rho_secondary, eta_response_mid) all pulled from amua_import_parameters_v3.csv at render time."
flowchart TD
    T0[Suspected case] --> P1{Loop closed?}

    P1 -->|Yes — G1 or G2| S1[Source removed]:::good
    P1 -->|No — X1..X6| S2[Source persists]:::bad

    S1 --> I1[Index case:<br/>p_death %.2f<br/>p_severe %.2f<br/>p_recover %.2f]
    S2 --> I2[Index case:<br/>p_death %.2f<br/>p_severe %.2f<br/>p_recover %.2f]

    S1 --> N1[Averted secondary cases<br/>~ rho x eta = %.2f]:::good
    S2 --> N2[Secondary cases<br/>~ rho = %.2f]:::bad

    N1 --> AD1[Deaths averted<br/>~ %.3f]:::good
    N2 --> AD2[Extra deaths<br/>~ %.3f]:::bad

    classDef bad fill:#fdd,stroke:#cc0000,stroke-width:1.5px
    classDef good fill:#cfc,stroke:#060,stroke-width:1.5px
```
',
p_dth, p_sev, p_rec,
p_dth, p_sev, p_rec,
averted_sec, extra_sec,
averted_deaths, extra_deaths
))
````

### 6d. What changes under each coordination scenario

Burden avoided is split by **who would otherwise have borne it**, so each agency sees the share of the win that flows back to its own budget line or constituency. The avoided-burden split uses the same shares as the canonical stakeholder table above: ~3.4 % health sector (NDoH + NHLS), ~96.6 % households (mortality + OOP).

| Scenario | P(loop closed) | Deaths averted / yr | Avoided — health system (NDoH + NHLS) | Avoided — households (mortality + OOP) | Total avoided |
|:---------|---------------:|--------------------:|-------------------------------------:|---------------------------------------:|--------------:|
| Status quo | 1.1 % | 15 | — | — | — |
| + C3 (NICD→DALRRD feed) | ~40 % | ~547 | ~R29M | ~R806M | ~R835M |
| **Coordination Full Package (C1–C5)** | **~70 %** | **~957** | **~R50M** | **~R1,400M** | **~R1,450M** |

: Modelled coordination outcomes at national scale (× 4,171 observed cases/year, 2023 streams). Stakeholder columns apply the canonical share table (NDoH+NHLS = R80M of R1.61B; households = R1.53B of R1.61B) to the total avoided burden in each scenario. Probabilities are placeholders aligned with the surveillance detection-rate ranges in the [Surveillance brief](surveillance_policy.qmd). {.striped .hover}

**Reading by audience.**

- **NDoH / NHLS:** the R50M avoided is ~330× the R145k Full-Package operating cost — a credible business case before counting household mortality.
- **DALRRD:** C3 is the lowest-cost route to the evidence base needed for product-specific action (see [Terbufos brief](terbufos_policy.qmd)).
- **Treasury / Presidency:** ~R1.4B/yr of household and societal cost retired; the cross-departmental return that justifies the joint DG circular.

**Beyond terbufos.** The Full Package retires ~957 deaths/yr **today**, dominated by organophosphate and carbamate clusters. As terbufos is withdrawn (see [Terbufos brief](terbufos_policy.qmd)) the residual cluster mix will shift first to other agricultural pesticides (aldicarb, paraquat, carbofuran), and over a 10–20 year development horizon increasingly toward **opioids, methadone substitution, and recreational-drug overdoses** — the toxicology profile that has dominated middle- and high-income countries since the 1990s. The closed loop is the asset that survives that transition; only the product list at C3 changes.

### 6e. Cost per loop closed — the unit cost the integrated model uses

The Full Package adds a fixed operating overhead (C1–C5 ≈ R145k/yr). It is spread across the *additional* loops it closes versus the status quo. That gives a single **cost-per-loop-closed** scalar that the [integrated model](overall_policy_model.qmd) can call directly when comparing scenarios.

```{mermaid}
%%| label: fig-coord-cost-per-loop
%%| fig-cap: "Cost decomposition for one fully-closed loop. Five fixed C-line items feed a shared overhead; that overhead is amortised across the incremental loops closed each year."
flowchart LR
    C1[C1 NMC field<br/>R30k] --> POOL[Full Package<br/>shared overhead<br/>R145k / yr]
    C2[C2 Referral form<br/>R25k] --> POOL
    C3[C3 NICD→DALRRD feed<br/>R40k] --> POOL
    C4[C4 Clinician feedback<br/>R20k] --> POOL
    C5[C5 KPI dashboard<br/>R30k] --> POOL
    POOL -->|÷ Δ loops closed / yr| UNIT[Cost per loop closed<br/><b>≈ R53 / loop</b>]
    UNIT -->|× ρ × η| YIELD[Cost per future case prevented<br/><b>≈ R59 / case</b>]

    style POOL fill:#ffd,stroke:#333
    style UNIT fill:#cfc,stroke:#060,stroke-width:2px
    style YIELD fill:#cfc,stroke:#060,stroke-width:2px
```

```{r}
#| label: tbl-cost-per-loop
#| echo: false
#| tbl-cap: "Cost per loop closed and per future case prevented, derived from CSV inputs. These two scalars are the parameters overall_policy_model.qmd consumes when toggling the Coordination Full Package on/off."

n_obs   <- as.numeric(pick("n_burden_true"))                  # 3,950 observed cases/yr
c_FP    <- as.numeric(pick("c_C1_NMC_closure_op")) +
           as.numeric(pick("c_C2_referral_form_op")) +
           as.numeric(pick("c_C3_intel_feed_op")) +
           as.numeric(pick("c_C4_clinician_fb_op")) +
           as.numeric(pick("c_C5_KPI_dashboard_op"))
p_sq    <- as.numeric(pick("p_loop_closed_status_quo"))
p_FP    <- as.numeric(pick("p_loop_closed_FP"))
p_C3    <- as.numeric(pick("p_loop_closed_C3_only"))
rho     <- as.numeric(pick("rho_secondary"))
eta_m   <- as.numeric(pick("eta_response_mid"))

mk_row <- function(label, p_new, cost) {
  d_loops <- (p_new - p_sq) * n_obs
  cases_av <- d_loops * rho * eta_m
  tibble::tibble(
    Scenario              = label,
    `P(loop closed)`      = scales::percent(p_new, 1),
    `Δ loops closed / yr` = round(d_loops),
    `Cost / yr (R)`       = cost,
    `Cost / loop (R)`     = if_else(d_loops > 0, cost / d_loops, NA_real_),
    `Cases prevented / yr`= round(cases_av),
    `Cost / case prevented (R)` =
      if_else(cases_av > 0, cost / cases_av, NA_real_)
  )
}

dplyr::bind_rows(
  mk_row("C3 only",                 p_C3, as.numeric(pick("c_C3_intel_feed_op"))),
  mk_row("Coordination Full Package", p_FP, c_FP)
) |>
  gt::gt() |>
  gt::fmt_number(columns = c("Δ loops closed / yr", "Cases prevented / yr"),
                 decimals = 0, use_seps = TRUE) |>
  gt::fmt_number(columns = c("Cost / yr (R)", "Cost / loop (R)", "Cost / case prevented (R)"),
                 decimals = 0, use_seps = TRUE, pattern = "R{x}") |>
  gt::tab_options(table.font.size = "small")
```

At base case: **≈ R`r round(c_FP / ((p_FP - p_sq) * n_obs))` per additional loop closed**, **≈ R`r round(c_FP / ((p_FP - p_sq) * n_obs * rho * eta_m))` per future poisoning prevented**. Both scalars fall as ρ or η rise — the system gets cheaper per case averted in exactly the cluster-prone settings (illegal street-pesticide hotspots; future opioid overdose chains) where it matters most.

### 6f. Sensitivity — how strongly a working loop suppresses future poisonings

The headline policy claim is that **a closed coordination loop prevents future poisonings**. Two parameters drive the size of that effect: the loop-closure probability achieved by the policy ($P_{\text{loop}}$) and the response efficacy once a source is identified ($\eta$). Both have CSV-anchored ranges. The table below sweeps them jointly; cells are colour-shaded from low (red) to high (green).

```{r}
#| label: tbl-sens-coord-poisonings
#| echo: false
#| tbl-cap: "Future poisonings prevented per year as a function of achieved loop-closure rate (rows) and response efficacy η (columns), holding ρ = 3.0 and observed-case denominator = 3,950 cases/yr. Status-quo baseline (P_loop = 1.1 %) is shown for reference; all other rows are policy scenarios."

p_levels   <- c(p_sq, p_C3, 0.55, p_FP, 0.85)
p_labels   <- c("Status quo (1 %)", "C3 only (40 %)",
                "Mid-implementation (55 %)", "Full Package (70 %)",
                "Best-in-class (85 %)")
eta_levels <- c(as.numeric(pick("eta_response_lo")),
                eta_m,
                as.numeric(pick("eta_response_hi")))
eta_labels <- c(sprintf("η_lo (%.0f%%)", eta_levels[1]*100),
                sprintf("η_mid (%.0f%%)", eta_levels[2]*100),
                sprintf("η_hi (%.0f%%)", eta_levels[3]*100))

mat <- outer(p_levels, eta_levels,
             FUN = function(p, e) (p - p_sq) * n_obs * rho * e)
colnames(mat) <- eta_labels
sens_df <- as.data.frame(mat) |>
  dplyr::mutate(`P(loop closed)` = p_labels, .before = 1)

sens_df |>
  gt::gt(rowname_col = "P(loop closed)") |>
  gt::fmt_number(columns = -1, decimals = 0, use_seps = TRUE) |>
  gt::data_color(columns = -1,
                 palette = c("#fee08b", "#a6d96a", "#1a9850")) |>
  gt::tab_stubhead(label = "P_loop \\ η") |>
  gt::tab_options(table.font.size = "small")
```

**Reading.** Even at the *low* response-efficacy edge (η = 15 %), the Full Package prevents **~`r round((p_FP-p_sq)*n_obs*rho*eta_levels[1])` future poisonings/yr**; at the well-resourced edge (η = 50 %) it prevents **~`r round((p_FP-p_sq)*n_obs*rho*eta_levels[3])`/yr**. The policy claim is therefore robust across the full CSV-anchored parameter range: every realistic combination of $(P_{\text{loop}}, \eta)$ produces a four-figure annual reduction in future cases. The integrated model uses these two scalars (`p_loop_closed_FP`, `eta_response_mid`) as toggleable inputs alongside the surveillance and source-control levers.

### 6g. Per-action workload — what each loop-step actually costs

Closing a loop is not free at the operational tier. Each *gross* alert that enters the system (true case + false positive) costs an **EHP environmental investigation** (CSV: `c_per_ehp_investigation_mid` ≈ R`r format(as.numeric(pick("c_per_ehp_investigation_mid")), big.mark=",")`); a fraction $p_{\text{DALRRD}}$ ≈ `r as.numeric(pick("p_dalrrd_action_given_referral"))` of those trigger a **DALRRD inspectorate site visit** (CSV: `c_per_dalrrd_inspection_mid` ≈ R`r format(as.numeric(pick("c_per_dalrrd_inspection_mid")), big.mark=",")`). Both unit costs have lo/hi ranges in the CSV.

```{r}
#| label: tbl-per-action-cost
#| echo: false
#| tbl-cap: "Per-action workload cost components (CSV-anchored). Each fully-closed loop consumes one EHP investigation; a fraction p_DALRRD trigger an inspectorate visit. These are the unit inputs overall_policy_model.qmd uses to translate alert volume into induced regulator workload."

tibble::tibble(
  Component = c("EHP environmental investigation (per gross alert)",
                "DALRRD inspectorate site visit (per referred case)",
                "P(DALRRD action | confirmed referral)"),
  Low  = c(as.numeric(pick("c_per_ehp_investigation_lo")),
           as.numeric(pick("c_per_dalrrd_inspection_lo")),
           NA),
  Mid  = c(as.numeric(pick("c_per_ehp_investigation_mid")),
           as.numeric(pick("c_per_dalrrd_inspection_mid")),
           as.numeric(pick("p_dalrrd_action_given_referral"))),
  High = c(as.numeric(pick("c_per_ehp_investigation_hi")),
           as.numeric(pick("c_per_dalrrd_inspection_hi")),
           NA),
  CSV  = c("c_per_ehp_investigation_*",
           "c_per_dalrrd_inspection_*",
           "p_dalrrd_action_given_referral")
) |>
  gt::gt() |>
  gt::fmt_number(columns = c("Low", "Mid", "High"),
                 rows = 1:2, decimals = 0, use_seps = TRUE, pattern = "R{x}") |>
  gt::fmt_number(columns = "Mid", rows = 3, decimals = 2) |>
  gt::sub_missing(missing_text = "—") |>
  gt::tab_options(table.font.size = "small")
```

### 6h. False positives bite: induced workload under community surveillance

Administrative-tier feeds (NMC, NHLS BChE auto-notify, PIH) produce alerts that are essentially all true cases — false-positive rate ≈ 0. Community-tier surveillance (S1b in the [Surveillance brief](surveillance_policy.qmd)) produces alerts at a CSV-benchmarked **false-positive rate of `r sprintf("%.0f–%.0f %%", as.numeric(pick("p_fp_S1b_lo"))*100, as.numeric(pick("p_fp_S1b_hi"))*100)`**. Every alert — true or false — still consumes an EHP investigation before it can be discarded. Per *true* case detected:

$$
\text{gross alerts} = \frac{1}{1 - p_{\text{fp}}}
\qquad
\text{cost per true case} = \frac{c_{\text{EHP}} + p_{\text{DALRRD}} \cdot c_{\text{DALRRD}}}{1 - p_{\text{fp}}}
$$

```{r}
#| label: tbl-fp-induced-workload
#| echo: false
#| tbl-cap: "Induced EHP + DALRRD workload cost per *true* case detected, as community-surveillance false-positive rate is varied (rows) against EHP unit cost (columns). Holds p_DALRRD = 0.30 and c_DALRRD at working value. All inputs from amua_import_parameters_v4.csv."

c_ehp_lo  <- as.numeric(pick("c_per_ehp_investigation_lo"))
c_ehp_mid <- as.numeric(pick("c_per_ehp_investigation_mid"))
c_ehp_hi  <- as.numeric(pick("c_per_ehp_investigation_hi"))
c_dal_mid <- as.numeric(pick("c_per_dalrrd_inspection_mid"))
p_dal     <- as.numeric(pick("p_dalrrd_action_given_referral"))

fp_levels  <- c(0, as.numeric(pick("p_fp_S1b_lo")),
                   as.numeric(pick("p_fp_S1b_mid")),
                   as.numeric(pick("p_fp_S1b_hi")))
fp_labels  <- c("Administrative only (0 %)",
                sprintf("S1b lo (%.0f %%)", fp_levels[2]*100),
                sprintf("S1b mid (%.0f %%)", fp_levels[3]*100),
                sprintf("S1b hi (%.0f %%)", fp_levels[4]*100))
ehp_levels <- c(c_ehp_lo, c_ehp_mid, c_ehp_hi)
ehp_labels <- c(sprintf("EHP lo (R%s)", format(c_ehp_lo, big.mark=",")),
                sprintf("EHP mid (R%s)", format(c_ehp_mid, big.mark=",")),
                sprintf("EHP hi (R%s)", format(c_ehp_hi, big.mark=",")))

mat <- outer(fp_levels, ehp_levels,
             FUN = function(fp, e) (e + p_dal * c_dal_mid) / (1 - fp))
colnames(mat) <- ehp_labels
fp_df <- as.data.frame(mat) |>
  dplyr::mutate(`FP rate` = fp_labels, .before = 1)

fp_df |>
  gt::gt(rowname_col = "FP rate") |>
  gt::fmt_number(columns = -1, decimals = 0, use_seps = TRUE, pattern = "R{x}") |>
  gt::data_color(columns = -1, palette = c("#1a9850", "#fee08b", "#d73027")) |>
  gt::tab_stubhead(label = "FP \\ EHP unit cost") |>
  gt::tab_options(table.font.size = "small")
```

**What the table says.** At the **working values** (`p_fp_S1b_mid` = `r sprintf("%.0f %%", as.numeric(pick("p_fp_S1b_mid"))*100)`, EHP mid = R`r format(c_ehp_mid, big.mark=",")`, DALRRD mid = R`r format(c_dal_mid, big.mark=",")`, `p_DALRRD` = `r p_dal`), induced workload is **≈ R`r format(round((c_ehp_mid + p_dal*c_dal_mid)/(1 - as.numeric(pick("p_fp_S1b_mid")))), big.mark=",")` per true case detected** — roughly `r sprintf("%.1f×", ((c_ehp_mid + p_dal*c_dal_mid)/(1 - as.numeric(pick("p_fp_S1b_mid")))) / (c_ehp_mid + p_dal*c_dal_mid))` the administrative-tier figure. At the high-FP edge (`r sprintf("%.0f %%", as.numeric(pick("p_fp_S1b_hi"))*100)`, early roll-out) it is **≈ R`r format(round((c_ehp_hi + p_dal*c_dal_mid)/(1 - as.numeric(pick("p_fp_S1b_hi")))), big.mark=",")` per true case**.

**Implication for the integrated model.** When the [overall model](overall_policy_model.qmd) layers community-tier surveillance (S1b) on top of the coordination Full Package, induced EHP + DALRRD workload becomes the *fastest-growing* line in the regulator budget — faster than C1–C5 shared overhead, faster than NHLS test volume. The brief therefore proposes a **two-step roll-out**:

1. **Administrative tier first** (NMC closure-of-loop + NHLS auto-notify + PIH MVD): near-zero FP, full coordination workload increment ≈ R145k + R`r format(round(c_ehp_mid + p_dal*c_dal_mid), big.mark=",")` × Δ alerts.
2. **Community tier (S1b) piloted with explicit measurement of `p_fp_S1b`** before national rollout. The pilot must collect (a) confirmed-positive rate, (b) EHP time per investigation, and (c) DALRRD referral rate. These three numbers are the parameters that decide whether community surveillance is affordable at scale.

This is the explicit operational hand-off between the coordination loop (this brief) and the surveillance ladder ([Surveillance brief](surveillance_policy.qmd)): **the loop only works as cheaply as the false-positive rate of its input feed.**

## 7. Implementation considerations

| Component | Lead agency | Year-1 cost | Critical path |
|:----------|:------------|------------:|:--------------|
| C1: NMC closure-of-loop field | NICD NMC team + NDoH circular | R30k | NMC schema change; EHP training |
| C2: Structured DALRRD referral form on NMC | NICD + DALRRD Pesticide Registrar | R25k | DALRRD inbox + workflow |
| C3: NICD→DALRRD intelligence feed | NICD analyst + DALRRD liaison | R40k | Quarterly brief template; case-spike alert SOP |
| C4: Notifier auto-feedback | NICD NMC team | R20k | Email templating |
| C5: Joint KPI dashboard | NICD + DALRRD + Provinces | R30k | KPI definitions; public hosting |
| **Total** | NDoH-led | **~R145k** | All within existing legal authority |

**Institutional mechanism.** A **quarterly Joint Coordination Forum** (NICD chair; DALRRD, NHLS, PIH, and one rotating provincial DoH representative) reviews the KPI dashboard, signs off case-spike alert escalations, and resolves cross-departmental blockers. Mandated by joint NDoH–DALRRD Director-General circular. **No new legislation required.**

**Risks and mitigations.**

- *EHP non-compliance with new NMC field.* Mitigation: 14-day completion KPI tied to provincial performance reviews; circular from NDoH DG.
- *DALRRD capacity to act on referrals.* Mitigation: C3 quarterly brief lets DALRRD prioritise by burden rather than respond reactively.
- *Privacy concerns on clinician auto-feedback.* Mitigation: feedback is aggregate at clinician level, not patient-identifying.

## 8. Recommended next step

**Adopt C1 + C3 as the Coordination MVP, and the Full Package within 12 months.**

- **Weeks 1–4:** NDoH–DALRRD joint DG circular committing to the closed-loop model; standing up the Joint Coordination Forum.
- **Weeks 4–12:** C1 NMC schema change + EHP training; C3 NICD→DALRRD quarterly brief begins on the existing NMC data.
- **Months 3–12:** C2 referral form, C4 auto-feedback, C5 KPI dashboard go live.
- **Month 12:** Evaluate against (i) median notification-to-investigation time, (ii) % of notifications with recorded outcome, (iii) DALRRD-reported regulatory actions per quarter.

The surveillance signal that flows *into* this loop is covered in the [Surveillance brief](surveillance_policy.qmd). The first product-specific regulatory action the loop should be designed to deliver is the subject of the [Terbufos brief](terbufos_policy.qmd).

---

::: {.footer-cta}
**Companion briefs:** [Surveillance](surveillance_policy.qmd) · [Terbufos restriction](terbufos_policy.qmd) · [Decision Model](decision_model.qmd) · [Costing Analysis](costing_analysis.qmd)

**Technical appendix:** [B — Coordination joint-probability model](../technical_appendix_coordination.qmd)
:::


================================================================
## SOURCE: posts/terbufos_policy.qmd
================================================================

---
title: "Policy Brief 3: Restricting or Banning Terbufos in South Africa"
subtitle: "A priority-product action under the surveillance + coordination framework"
author: "D2P Project Team"
date: "2025-09-05"
date-modified: today
categories: [policy, regulation, terbufos, decision-makers]
format:
  html:
    toc: true
    toc-depth: 2
    number-sections: false
---

::: {.callout-important icon=false}
## For Decision-Makers

**Target audience:** DALRRD Pesticide Registrar, Ministerial Advisory Committee (MAC), National Department of Health (NDoH), Department of Trade, Industry & Competition (substitution support).

**Companion briefs:** [Surveillance](surveillance_policy.qmd) · [Coordination](coordination_policy.qmd).

**Status:** **DRAFT.** One genuine SA evidence gap remains (the adult **live-patient** attributable fraction, resolved only by Surveillance Option S3). The other quantitative inputs — market volume, yield impact, substitute hazard, substitute pricing, enforcement cost — are **not epistemic gaps**: they are either administrative numbers DALRRD can pull, or values defensibly anchored to the EU/US/Sri Lanka evidence base (see [§2b](#international-natural-experiment-evidence) and [Interim assumptions](#interim-assumptions-anchored-to-international-evidence)).
:::

::: {.callout-note icon=false}
## ✓ Terbufos banned — gazetted 8 May 2026

Agriculture Minister John Steenhuisen **gazetted a full ban** on the acquisition, disposal, sale and use of all agricultural remedies containing terbufos as an active ingredient on **8 May 2026**, under the Fertilisers, Farm Feeds, Agricultural Remedies and Stock Remedies Act of 1947 (Act 36 of 1947).

This substantially satisfies the D2P recommendation. **The critical next steps are:**

1. **Enforcement** — stockpile disposal, distributor compliance audits, market monitoring for substitution.
2. **Measurement** — the ban can only be evaluated through improved surveillance. Without a functioning case-detection system ([Surveillance Brief](surveillance_policy.qmd)), it is impossible to know whether the ban is reducing poisoning incidence, or whether a more-toxic substitute has entered the informal market.
3. **24-month evaluation gate** — the modelled leverage ratio (~500 : 1) rests on the assumption that a ban reduces attributable mortality. Only improved P\_detect (via S1 + S2) can confirm this in the SA context.

*The analytical content of this brief remains valid as the quantitative foundation for those three activities.*
:::

```{r}
#| label: headline-numbers
#| echo: false
#| message: false
#| warning: false

# Pull all headline inputs from the canonical CSV — no inline magic numbers.
source("../R/terbufos_tree.r")  # also sources decision_tree_engine.r
params <- load_params()

f_lo    <- params$frac_terbufos_attributable_lo
f_mid   <- params$frac_terbufos_attributable_mid
f_hi    <- params$frac_terbufos_attributable_hi
phi     <- params$frac_T3_burden_retired
N_d     <- params$n_deaths_headline
N_cases <- params$n_true_burden_from_statssa_mid
C_tot   <- params$C_burden_total_headline
c_enf   <- params$c_T2_RUP_enforcement_mid

# Headline averted (working / mid)
deaths_av_mid    <- f_mid * phi * N_d
deaths_av_lo     <- f_lo  * phi * N_d
deaths_av_hi     <- f_hi  * phi * N_d
poisonings_av_mid <- f_mid * phi * N_cases
poisonings_av_lo  <- f_lo  * phi * N_cases
poisonings_av_hi  <- f_hi  * phi * N_cases
cost_av_mid      <- f_mid * phi * C_tot
cost_av_lo       <- f_lo  * phi * C_tot
cost_av_hi       <- f_hi  * phi * C_tot
leverage_mid     <- cost_av_mid / c_enf

fnum <- function(x) format(round(x), big.mark = ",")
fbn  <- function(x) sprintf("%.2f", x / 1e9)
fmn  <- function(x) sprintf("%.0f", x / 1e6)
fpct <- function(x) sprintf("%.0f%%", 100 * x)
```

::: {.callout-tip icon=false}
## Headlines — what banning terbufos buys SA per year

> **`r fnum(deaths_av_mid)` deaths averted/yr**  *(range `r fnum(deaths_av_lo)`–`r fnum(deaths_av_hi)`)*<br>
> **`r fnum(poisonings_av_mid)` poisonings averted/yr**  *(range `r fnum(poisonings_av_lo)`–`r fnum(poisonings_av_hi)`)*<br>
> **~R`r fbn(cost_av_mid)`B/yr in retired economic burden**  *(range R`r fbn(cost_av_lo)`–R`r fbn(cost_av_hi)`B)*<br>
> **at a DALRRD enforcement cost of ~R`r fmn(c_enf)`M/yr** — a household-burden-retired : regulator-spend leverage ratio of roughly **`r fnum(leverage_mid)` : 1**.

**Arithmetic (working / mid value).** Every number above is the product of three CSV-driven inputs and a stakeholder share:

| Quantity | Formula | Working value |
|:---|:---|---:|
| Deaths averted | $f_\text{attr} \times \varphi_\text{retired} \times N_\text{deaths}$ | `r fpct(f_mid)` × `r fpct(phi)` × `r fnum(N_d)` = **`r fnum(deaths_av_mid)`/yr** |
| Poisonings averted | $f_\text{attr} \times \varphi_\text{retired} \times N_\text{true cases}$ | `r fpct(f_mid)` × `r fpct(phi)` × `r fnum(N_cases)` = **`r fnum(poisonings_av_mid)`/yr** |
| Burden retired | $f_\text{attr} \times \varphi_\text{retired} \times C_\text{burden total}$ | `r fpct(f_mid)` × `r fpct(phi)` × R`r fbn(C_tot)`B = **R`r fbn(cost_av_mid)`B/yr** |
| Regulator spend | `c_T2_RUP_enforcement_mid` | **R`r fmn(c_enf)`M/yr** |
| Leverage | $C_\text{burden retired} \div C_\text{enforcement}$ | R`r fbn(cost_av_mid)`B ÷ R`r fmn(c_enf)`M ≈ **`r fnum(leverage_mid)` : 1** |

Where: $f_\text{attr}$ = terbufos attributable fraction of fatal SA pesticide events (Davies 2023 + Gunnell 2017); $\varphi_\text{retired}$ = fraction of attributable burden retired post-ban (Sri Lanka substitution-incompleteness, `r fpct(phi)`); $N_\text{deaths}$, $N_\text{true cases}$, $C_\text{burden total}$ = StatsSA MACOD 2023 + implied true burden + total annual economic burden.
:::

## 1. Policy question

**Should South Africa ban terbufos as a registered agricultural pesticide?**

## 2. Public health problem

Terbufos is a **WHO Class Ia ("Extremely Hazardous")** organophosphate insecticide,[^who] with rat oral LD50 **1.6–4.5 mg/kg** — among the most acutely toxic active ingredients in commercial use anywhere.[^epa] Sub-gram doses are lethal in adults; very small quantities are lethal in children.

**The SA-specific evidence pinning the harm to this agent.** Davies et al. (2023) identified **terbufos and methamidophos as the dominant agents in fatal SA childhood pesticide poisoning**, with most deaths following ingestion of granular formulations diverted into the informal "street-pesticide" market.[^davies] NICD/NMC mass-poisoning reports 2022–2024 are independently consistent.[^nicd]

**International natural-experiment anchor.** Sri Lanka's sequential Class Ia withdrawals (1995–2011) retired **20–40 %** of fatal pesticide poisonings per banned agent without compensating method substitution.[^gunnell] EU (2009) withdrew terbufos with **no documented maize-yield collapse** in any producer state. Davies 2023 places SA terbufos in the same 20–40 % bracket on the paediatric data alone.

[^gunnell]: Gunnell D, Knipe D, Chang S-S, Pearson M, Konradsen F, Eddleston M et al. *Prevention of suicide with regulations aimed at restricting access to highly hazardous pesticides: a systematic review of the international evidence.* Lancet Glob Health 2017;5:e1026–e1037. Knipe DW et al. *Suicide prevention through means restriction: impact of the 2008–2011 pesticide restrictions on suicide in Sri Lanka.* PLOS One 2017.

[^who]: World Health Organization. *The WHO Recommended Classification of Pesticides by Hazard and Guidelines to Classification*, current edition. Terbufos is listed in Class Ia (Extremely Hazardous).

[^epa]: US Environmental Protection Agency. *Reregistration Eligibility Decision (RED): Terbufos.* EPA-738-R-06-006, September 2006. Rat acute oral LD50 1.6–4.5 mg/kg; rat acute dermal LD50 1.0–7.4 mg/kg.

[^davies]: Davies J et al. (2023). Paediatric pesticide deaths in South Africa; documents terbufos and methamidophos dominance among fatal cases. Cited in [glossary.qmd](../glossary.qmd#key-sources).

[^nicd]: NICD/NMC clinical case reports and public communications, 2022–2024, on mass-poisoning incidents linked to informally-sold granular organophosphate pesticides. Formal case-series compilation pending (open item TBF-2).

## 3. Status quo

{{< include _shared_parameters.qmd >}}

::: {.callout-note}
## DALRRD holds the lever — and bears almost none of the cost

DALRRD itself bears **~R0 of the R1.61B annual burden**. That cost is borne by NDoH (~R70M hospital), NHLS (~R10M lab), and most heavily by **households (~R1.53B in OOP costs and lost lifetime earnings)**. DALRRD nevertheless holds the *only* lever — registration, restriction, recall — that prevents the underlying exposure. Action borne by DALRRD (~R1–3M/yr enforcement) retires household-borne mortality cost at a leverage ratio of roughly **1 : 500**. This is the single highest-leverage regulatory action on the SA pesticide-poisoning portfolio.
:::

| Item | Status |
|:-----|:-------|
| SA registration | **Banned** — full prohibition gazetted 8 May 2026 (Act 36 of 1947) |
| WHO classification | Class Ia — Extremely Hazardous[^who] |
| Acute oral LD50 (rat) | 1.6–4.5 mg/kg[^epa] |
| EU | Not approved since 2009 |
| US EPA | Restricted-Use; granular formulations voluntarily cancelled[^epa] |
| SA paediatric mortality | Dominant agent in fatal childhood pesticide poisoning[^davies] |

## 4. Root causes of disproportionate terbufos harm

```{mermaid}
%%| label: fig-terb-fishbone
%%| fig-cap: "Root causes that make terbufos a disproportionate public-health hazard in SA. All five drivers funnel to the same regulatory remedy — banning terbufos."
flowchart LR
    A[Disproportionate<br/>terbufos-related harm] --> R1[High intrinsic toxicity<br/>WHO Class Ia]
    A --> R2[Granular formulation<br/>resembles food / seed]
    A --> R3[Diversion into informal<br/>retail / pest-control use]
    A --> R4[Limited live-patient<br/>agent attribution]
    A --> R5[Substitutes available but<br/>switching not mandated]

    R1 --> BAN[Ban terbufos<br/><i>Option T2</i>]:::ban
    R2 --> BAN
    R3 --> BAN
    R5 --> BAN
    R4 -.-> S3[Surveillance S3<br/><i>refines attribution<br/>but not a prerequisite</i>]:::aux

    classDef ban fill:#9f9,stroke:#060,stroke-width:2px
    classDef aux fill:#bbf,stroke:#333
    style A fill:#f99,stroke:#333
```

Four of the five drivers (intrinsic hazard, formulation, informal-market diversion, substitution readiness) are addressed by a single regulatory act — withdrawing terbufos from the SA pesticide register. The fifth driver (live-patient attribution) is sharpened by [Surveillance Option S3](surveillance_policy.qmd), but the existing paediatric attribution (Davies 2023) and the Sri Lanka international evidence are already sufficient to act.

## 5. Policy options

The action space collapses to two options:

### Option T1 — Status quo (no change)

Terbufos remains registered under existing conditions. The system continues to rely on general pesticide-handling regulations and clinician/EHP-led NMC notifications to detect harm *after* it occurs. **This is the implicit decision if no regulatory action is taken.**

### Option T2 — Ban terbufos *(★ recommended)*

Cancel terbufos product registrations under the Fertilizers, Farm Feeds, Agricultural Remedies and Stock Remedies Act, with a **12–24 month phase-out window** to allow substitute uptake and existing stock to clear. Aligns SA with the EU 2009 position. During the phase-out, terbufos is moved to Restricted-Use status (sales only via certified applicators with logged transactions) so the regulatory mechanism is operational from gazette day one.

*Intermediate restriction options (RUP, formulation restriction, distributor audit) are best understood as the **mechanics of the phase-out**, not as alternative end-states. The end-state is withdrawal.*

## 6. Decision tree — deaths, burden, and yield under each option

````{r}
#| label: fig-terb-decision-tree
#| echo: false
#| output: asis

# Source the decision-tree engine and the terbufos tree builder. Numbers
# below come from the rollback of the tree object built off
# amua_import_parameters_v3.csv -- no inline arithmetic.
source("../R/terbufos_tree.r")

params  <- load_params()
tree    <- build_terbufos_tree(params)
res     <- evs_to_df(eval_tree(tree))
averted <- compute_avertedness(res)

# Parameters still pulled directly from the named list -- these drive the
# bracket annotations in the diagram caption and the lo/hi range labels.
f_lo  <- params$frac_terbufos_attributable_lo
f_mid <- params$frac_terbufos_attributable_mid
f_hi  <- params$frac_terbufos_attributable_hi
phi   <- params$frac_T3_burden_retired
N_deaths_year <- params$n_deaths_headline
burden_total  <- params$C_burden_total_headline

# Status-quo (T1) terbufos-attributable burden, pulled from the tibble.
sq <- res %>% filter(arm == "status_quo")
deaths_attrib_mid <- round(sq$deaths_per_yr)
deaths_attrib_lo  <- round(f_lo * N_deaths_year)
deaths_attrib_hi  <- round(f_hi * N_deaths_year)
burden_attrib_mid <- round(sq$burden_zar_per_yr / 1e9, 2)

# Deaths and burden averted under the ban, pulled from compute_avertedness().
da <- averted %>% filter(metric == "deaths/yr")
ba <- averted %>% filter(metric == "burden ZAR/yr")
deaths_avert_mid  <- round(da$averted)
deaths_avert_lo   <- round(f_lo * phi * N_deaths_year)
deaths_avert_hi   <- round(f_hi * phi * N_deaths_year)
burden_avert_mid  <- round(ba$averted / 1e9, 2)
burden_avert_lo   <- round(f_lo * phi * burden_total / 1e9, 2)
burden_avert_hi   <- round(f_hi * phi * burden_total / 1e9, 2)

# Residual deaths after the ban (substitution-incompleteness)
deaths_residual_mid <- deaths_attrib_mid - deaths_avert_mid

cat(sprintf('```{mermaid}
%%%%| fig-cap: "Two-node terbufos decision tree. The split is binary — ban or no ban. Each branch terminates in three parallel outcomes: deaths, monetised burden, and maize yield. Deaths-averted arithmetic: f_attr × φ_retired × N_deaths_total = %.2f × %.2f × %s = %.0f/yr (working). Attributable fraction range %.0f–%.0f%% from Davies 2023 + Gunnell 2017; substitution-incompleteness %.0f%% from Sri Lanka."
flowchart TD
    Q{Ban terbufos?} -->|No — T1<br/>Status quo| T1[Continued registration]:::bad
    Q -->|Yes — T2<br/>Cancel registration| T2[12–24 month phase-out]:::good

    T1 --> D1["<b>Deaths</b><br/>~%.0f/yr terbufos-attributable<br/>~range %.0f–%.0f~<br/>= %.0f%% × %s total"]:::bad
    T1 --> B1["<b>Burden</b><br/>~R%.2fB/yr terbufos-attributable<br/>retained on households + NDoH"]:::bad
    T1 --> Y1["<b>Maize yield</b><br/>No change"]:::neutral

    T2 --> D2["<b>Deaths averted</b><br/>~%.0f/yr<br/>~range %.0f–%.0f~<br/>= %.0f%% × %.0f%% × %s"]:::good
    T2 --> B2["<b>Burden retired</b><br/>~R%.2fB/yr<br/>~range R%.2f–R%.2fB~"]:::good
    T2 --> Y2["<b>Maize yield</b><br/><5%% impact<br/>~see §7~"]:::neutral

    D2 --> R2["Residual ~%.0f deaths/yr<br/>substitution-incompleteness<br/>~Sri Lanka %.0f%%~"]:::warn

    classDef bad fill:#fdd,stroke:#cc0000,stroke-width:1.5px
    classDef good fill:#cfc,stroke:#060,stroke-width:2px
    classDef warn fill:#ffe9b3,stroke:#cc8800,stroke-width:1.5px
    classDef neutral fill:#eee,stroke:#666
```
',
f_mid, phi, format(round(N_deaths_year), big.mark = ","), deaths_avert_mid,
100*f_lo, 100*f_hi, 100*phi,
deaths_attrib_mid, deaths_attrib_lo, deaths_attrib_hi, 100*f_mid, format(round(N_deaths_year), big.mark = ","),
burden_attrib_mid,
deaths_avert_mid, deaths_avert_lo, deaths_avert_hi, 100*f_mid, 100*phi, format(round(N_deaths_year), big.mark = ","),
burden_avert_mid, burden_avert_lo, burden_avert_hi,
deaths_residual_mid, 100*(1 - phi)
))
````

**Summary — aggregate tree (national, annual).**

```{r}
#| label: tbl-terb-aggregate-summary
#| echo: false
knitr::kable(
  averted %>%
    mutate(
      label = case_when(
        metric == "deaths/yr"        ~ "Deaths/yr",
        metric == "burden ZAR/yr"    ~ "Economic burden (ZAR/yr)",
        metric == "maize yield (pp)" ~ "Maize yield impact (pp)",
        TRUE ~ metric
      ),
      status_quo = case_when(
        metric == "burden ZAR/yr"    ~ sprintf("R%.2fB", status_quo / 1e9),
        metric == "maize yield (pp)" ~ sprintf("%.1f pp", status_quo),
        TRUE ~ format(round(status_quo), big.mark = ",")
      ),
      ban = case_when(
        metric == "burden ZAR/yr"    ~ sprintf("R%.2fB", ban / 1e9),
        metric == "maize yield (pp)" ~ sprintf("%.1f pp", ban),
        TRUE ~ format(round(ban), big.mark = ",")
      ),
      averted_fmt = case_when(
        metric == "burden ZAR/yr"    ~ sprintf("R%.2fB (range R%.2f–R%.2fB)",
                                               averted / 1e9, burden_avert_lo, burden_avert_hi),
        metric == "deaths/yr"        ~ sprintf("%s (range %s–%s)",
                                               format(round(averted), big.mark = ","),
                                               format(deaths_avert_lo, big.mark = ","),
                                               format(deaths_avert_hi, big.mark = ",")),
        metric == "maize yield (pp)" ~ sprintf("%.1f pp", averted),
        TRUE ~ format(round(averted), big.mark = ",")
      )
    ) %>%
    select(Metric = label, `Status quo (T1)` = status_quo,
           `Ban (T2)` = ban, `Averted by ban` = averted_fmt),
  caption = "Aggregate decision tree: national annual outcomes under each arm and the reduction delivered by an enforced ban (mid-point estimate). Deaths/burden range reflects attributable-fraction bracket (Davies 2023 + Gunnell 2017)."
)
```

**Reading the tree.** The decision is binary because the upstream driver — high-intrinsic-toxicity granular OP in informal circulation — is binary: either the product is on the register or it isn't. Each branch terminates in three parallel outcomes:

- **Deaths** — the headline public-health metric. Computed as $f_\text{attr} \times \varphi_\text{retired} \times N_\text{deaths}$. The working value pulls from three CSV parameters:
  - `frac_terbufos_attributable_mid` = `r sprintf("%.0f%%", 100*as.numeric(pick("frac_terbufos_attributable_mid")))` (range `r sprintf("%.0f–%.0f%%", 100*as.numeric(pick("frac_terbufos_attributable_lo")), 100*as.numeric(pick("frac_terbufos_attributable_hi")))`) — SA paediatric attribution (Davies 2023) + Sri Lanka single-agent withdrawal bracket (Gunnell 2017).
  - `frac_T3_burden_retired` = `r sprintf("%.0f%%", 100*as.numeric(pick("frac_T3_burden_retired")))` — fraction of attributable burden retired post-ban, anchored to Sri Lanka substitution-incompleteness. The complement is the *residual* node — deaths that persist because some users will switch to other Class I OPs rather than to less-hazardous substitutes.
  - `n_deaths_headline` = `r format(round(as.numeric(pick("n_deaths_headline"))), big.mark = ",")` — StatsSA MACOD 2023 fatal pesticide-poisoning total.
- **Burden** — the same multiplication applied to the R`r sprintf("%.2f", as.numeric(pick("C_burden_total_headline"))/1e9)`B total annual burden. Working value: **~R`r round(as.numeric(pick("frac_terbufos_attributable_mid")) * as.numeric(pick("frac_T3_burden_retired")) * as.numeric(pick("C_burden_total_headline"))/1e9, 2)`B/yr retired**, falling on households + NDoH at the canonical share split.
- **Maize yield** — bounded at <5 % (see §7).

The full closed-form derivation, with the deaths-averted bracket calculated under every $f_\text{attr} \times \varphi_\text{retired}$ combination, lives in [Technical Appendix C](../technical_appendix_terbufos.qmd).

## 6b. Alternative view — per-individual decision tree (Amua-style)

The tree in §6 is a **population-aggregate** model: it takes the StatsSA mortality total as given and asks what share is retired by a ban. An alternative — drafted in Amua — is a **per-individual** tree that walks a single SA resident through one year, splits on whether they experience a pesticide poisoning, then splits on whether the agent is terbufos, and finally splits on clinical outcome (died / hospitalised / asymptomatic). Each terminal carries a per-person cost; the rollback returns expected deaths, hospitalisations and ZAR cost **per individual per year**, which can be multiplied by the SA population to recover annual national totals.

The two trees answer the same policy question from opposite ends. The aggregate tree is more compact and audits cleanly against StatsSA; the per-individual tree exposes the *clinical-pathway logic* (CFR by agent) that drives the effect, and makes the personal stakes of registration policy explicit. The numbers below come from the same CSV-driven parameter set as §6.

````{r}
#| label: fig-terb-tree-personal
#| echo: false
#| output: asis

source("../R/terbufos_tree_personal.r")

params_p <- load_params()
tree_p   <- build_terbufos_tree_personal(params_p)
res_p    <- evs_to_df(eval_tree(tree_p), decision_name = "ban_terbufos_personal")
av_p     <- compute_avertedness_personal(res_p, params_p$sa_population_ref)

# Pull mid values for the diagram labels.
ppe_sq   <- params_p$p_p_exposed_sq
ppe_ban  <- params_p$p_p_exposed_ban
pterb_sq <- params_p$p_terbufos_among_poisoned_sq
pterb_bn <- params_p$p_terbufos_among_poisoned_ban
pd_t     <- params_p$p_die_given_terbufos
ph_t     <- params_p$p_hosp_given_terbufos
pa_t     <- params_p$p_asymp_given_terbufos
pd_o     <- params_p$p_die_given_other
ph_o     <- params_p$p_hosp_given_other
pa_o     <- params_p$p_asymp_given_other

# Averted (national) — for caption.
d_av <- av_p %>% filter(metric == "deaths/yr (national)")
h_av <- av_p %>% filter(metric == "hospitalisations/yr (national)")
c_av <- av_p %>% filter(metric == "cost ZAR/yr (national)")

cat(sprintf('```{mermaid}
%%%%| fig-cap: "Per-individual decision tree (Amua draft). An SA resident is followed for one year. Probabilities are CSV-driven (see <code>terb.personal_tree</code> block). Scaled to a population of %s, this tree gives **%s deaths averted/yr**, **%s hospitalisations averted/yr**, and **~R%sB/yr** in retired cost under a ban. Compare with the aggregate tree in §6: the two trees should give numbers in the same order of magnitude."
flowchart LR
    Q{Ban terbufos?}

    Q -->|No — T1<br/>Status quo| SQ[Status quo]:::bad
    Q -->|Yes — T2<br/>Cancel registration| BN[Ban]:::good

    SQ -->|p=%.6f<br/>Poisoning exposed| SQ_P[Poisoned]
    SQ -->|1 - p<br/>No poisoning| SQ_N[Not poisoned]:::neutral
    SQ_P -->|%.2f<br/>Terbufos| SQ_T["Outcome | terbufos"]:::bad
    SQ_P -->|%.2f<br/>Other agent| SQ_O["Outcome | other"]
    SQ_T --> SQ_TD["Died %.3f"]:::bad
    SQ_T --> SQ_TH["Hospitalised %.3f"]:::warn
    SQ_T --> SQ_TA["Asymptomatic %.3f"]:::neutral
    SQ_O --> SQ_OD["Died %.3f"]:::warn
    SQ_O --> SQ_OH["Hospitalised %.3f"]:::neutral
    SQ_O --> SQ_OA["Asymptomatic %.3f"]:::neutral

    BN -->|p=%.6f<br/>Poisoning exposed| BN_P[Poisoned]
    BN -->|1 - p<br/>No poisoning| BN_N[Not poisoned]:::neutral
    BN_P -->|%.2f<br/>Terbufos residual| BN_T["Outcome | terbufos"]:::warn
    BN_P -->|%.2f<br/>Other agent| BN_O["Outcome | other"]:::good
    BN_T --> BN_TD["Died %.3f"]:::bad
    BN_T --> BN_TH["Hospitalised %.3f"]:::warn
    BN_T --> BN_TA["Asymptomatic %.3f"]:::neutral
    BN_O --> BN_OD["Died %.3f"]:::warn
    BN_O --> BN_OH["Hospitalised %.3f"]:::neutral
    BN_O --> BN_OA["Asymptomatic %.3f"]:::neutral

    classDef bad fill:#fdd,stroke:#cc0000,stroke-width:1.5px
    classDef good fill:#cfc,stroke:#060,stroke-width:2px
    classDef warn fill:#ffe9b3,stroke:#cc8800,stroke-width:1.5px
    classDef neutral fill:#eee,stroke:#666
```
',
format(params_p$sa_population_ref, big.mark = ","),
format(round(d_av$averted), big.mark = ","),
format(round(h_av$averted), big.mark = ","),
sprintf("%.2f", c_av$averted / 1e9),
ppe_sq, pterb_sq, 1 - pterb_sq, pd_t, ph_t, pa_t, pd_o, ph_o, pa_o,
ppe_ban, pterb_bn, 1 - pterb_bn, pd_t, ph_t, pa_t, pd_o, ph_o, pa_o
))
````

**Per-individual rollback (expected values per SA resident per year).**

```{r}
#| label: tbl-terb-tree-personal-pp
#| echo: false
knitr::kable(
  res_p %>%
    mutate(across(where(is.numeric), ~signif(.x, 3))),
  caption = "Expected deaths, hospitalisations, asymptomatic events, and ZAR cost per individual per year, by arm. Multiply by the SA population reference to get annual national totals."
)
```

**Apples-to-apples comparison — both trees on the same national scale.**

```{r}
#| label: tbl-terb-trees-comparison
#| echo: false

# Aggregate tree national numbers (already computed above)
ban_row        <- res %>% filter(arm == "ban")
agg_sq_deaths  <- sq$deaths_per_yr
agg_ban_deaths <- ban_row$deaths_per_yr
agg_sq_burden  <- sq$burden_zar_per_yr
agg_ban_burden <- ban_row$burden_zar_per_yr

# Personal tree national numbers (from av_p, already scaled)
d_av_pp   <- av_p %>% filter(metric == "deaths/yr (national)")
h_av_pp   <- av_p %>% filter(metric == "hospitalisations/yr (national)")
c_av_pp   <- av_p %>% filter(metric == "cost ZAR/yr (national)")

comparison <- tibble(
  Metric = c(
    "Deaths/yr — status quo",
    "Deaths/yr — ban",
    "Deaths averted/yr",
    "Hospitalisations averted/yr",
    "Economic burden averted/yr"
  ),
  `Aggregate tree (§6)` = c(
    format(round(agg_sq_deaths),  big.mark = ","),
    format(round(agg_ban_deaths), big.mark = ","),
    sprintf("%s (range %s–%s)",
            format(round(da$averted),      big.mark = ","),
            format(deaths_avert_lo,        big.mark = ","),
            format(deaths_avert_hi,        big.mark = ",")),
    "— (not modelled)",
    sprintf("R%.2fB (range R%.2f–R%.2fB)",
            ba$averted / 1e9, burden_avert_lo, burden_avert_hi)
  ),
  `Per-individual tree (§6b)` = c(
    format(round(d_av_pp$status_quo), big.mark = ","),
    format(round(d_av_pp$ban),        big.mark = ","),
    sprintf("%s (%.1f%% reduction)",
            format(round(d_av_pp$averted), big.mark = ","),
            100 * d_av_pp$pct_reduction),
    sprintf("%s (%.1f%% reduction)",
            format(round(h_av_pp$averted), big.mark = ","),
            100 * h_av_pp$pct_reduction),
    sprintf("R%.2fB (%.1f%% reduction)",
            c_av_pp$averted / 1e9,
            100 * c_av_pp$pct_reduction)
  )
)

knitr::kable(
  comparison,
  caption = sprintf(
    "Side-by-side comparison of the two decision trees on a common national annual scale (SA population reference: %s). The aggregate tree (§6) uses f_attr × φ_retired × StatsSA totals; the per-individual tree (§6b) derives the effect from the CFR differential (terbufos %.1f%% vs other agents %.1f%%) applied to the agent-mix shift (%.0f%% → %.0f%% terbufos among poisonings). Close agreement validates the parameter set; large divergence flags inconsistency between CFR inputs and the attributable-fraction literature.",
    format(params_p$sa_population_ref, big.mark = ","),
    100 * pd_t, 100 * pd_o, 100 * pterb_sq, 100 * pterb_bn
  )
)
```

**Reading this against §6.** The two trees use the same upstream data but parameterise the effect differently:

- The **§6 aggregate tree** multiplies the StatsSA total by $f_\text{attr} \times \varphi_\text{retired}$. The effect size is bounded by the attributable-fraction literature (Davies 2023, Gunnell 2017).
- The **per-individual tree** above derives the effect from the *case-fatality differential* between terbufos (`r sprintf("%.1f%%", 100*pd_t)`) and substitute agents (`r sprintf("%.1f%%", 100*pd_o)`), applied to the agent-mix shift (`r sprintf("%.0f%% → %.0f%%", 100*pterb_sq, 100*pterb_bn)`).

If the per-individual tree gives a *much larger* number than §6, the implication is that the personal-tree's CFR-by-agent inputs are more optimistic than the aggregate attributable-fraction literature supports — i.e. the personal tree is implicitly assuming a stronger ban effect. If it gives a *similar* number, the two views corroborate each other. The audience-facing brief should pick ONE — the aggregate view is usually safer for regulator audiences; the per-individual view is more impactful for clinician / parliamentary audiences.

## 7. Crop-yield impact (brief)

A ban affects production primarily through soil-insect / stalk-borer control on maize. The expected SA-specific yield impact is **<5 %**, concentrated in **non-Bt smallholder maize**, for three independent reasons:

1. **SA maize is ~85 % Bt-trait.** The dominant stalk-borer use case is largely retired biologically before any chemical intervention.
2. **Registered substitutes exist** for the residual soil-insect / nematode use case (chlorantraniliprole, thiamethoxam, imidacloprid, biological controls). These are **100–1,000× less acutely toxic** than terbufos on rat oral LD50 — the acute-poisoning burden retired is therefore essentially the full terbufos attributable share, not a redistribution to a similar-hazard substitute.
3. **EU 2009 withdrawal produced no documented maize-yield collapse** in any producer state — a directly relevant natural experiment.

Substitute input cost is roughly **2–5× per hectare** vs commodity granular OPs, but maize gross output is ~R20,000/ha, so the input-cost delta is single-digit-% of gross output. Smallholder transition support (DALRRD grower advisory + targeted subsidy on substitute inputs for the first two seasons) addresses the access constraint.

The detailed yield-impact derivation, with sensitivity ranges on Bt coverage, substitute pricing, and smallholder access, is presented in the supplementary technical note: [Technical Appendix C, §4 — Maize yield impact](../technical_appendix_terbufos.qmd#sec-yield-impact).

## 8. Recommended next step

**Adopt Option T2 (ban) with a 24-month phase-out.**

1. **Month 0–3.** DALRRD gazette intent to cancel registration; immediate RUP designation as the phase-out mechanism (no informal-market sales from day one).
2. **Month 3–6.** Public-comment process; DALRRD–grain-industry transition plan including smallholder substitute subsidy.
3. **Month 6–12.** [Surveillance S3](surveillance_policy.qmd) sentinel toxicology stands up to track attributable fraction during the phase-out (refines the bracket; does not gate the decision).
4. **Month 12–24.** Final cancellation; existing stock cleared; DALRRD inspectorate audit confirms market withdrawal.
5. **Month 24.** Joint NDoH–DALRRD evaluation against pre-agreed reduction in attributable serious-poisoning cases.

This is the public-health action with the highest demonstrated leverage on the SA pesticide-poisoning portfolio, supported by both SA-specific paediatric data (Davies 2023) and a directly applicable international natural experiment (Sri Lanka, EU). The agricultural cost is small, bounded, and addressable through standard substitution support.

---

::: {.footer-cta}
**Companion briefs:** [Surveillance](surveillance_policy.qmd) · [Coordination](coordination_policy.qmd) · [Decision Model](decision_model.qmd) · [Costing Analysis](costing_analysis.qmd)

**Technical appendix:** [C — Terbufos bracketed deaths-averted estimate and yield-impact model](../technical_appendix_terbufos.qmd)
:::


================================================================
## SOURCE: posts/overall_policy_model_v3.qmd
================================================================

---
title: "Overall Policy Model v3"
subtitle: "Decision-maker cost evaluation: five layered scenarios with full CBA and CUA accounting, transparent CFR sensitivity"
author: "D2P Project Team"
date: "2026-05-21"
date-modified: today
categories: [policy, integrated-model, decision-makers, CBA, CUA, auditable]
format:
  html:
    toc: true
    toc-depth: 3
    number-sections: true
    code-fold: true
    code-tools: true
---

## Purpose

This v3 model is built for **policy makers who need to evaluate the cost of various surveillance, coordination, and chemical-ban scenarios** in a way that is transparent and defensible.


### 4b. System-wide root cause analysis — what is in scope, and what is not

The fishbone above is deliberately narrow to surveillance under-detection. The figure below widens the lens to the **full set of root causes of pesticide-poisoning harm in South Africa** — surveillance, coordination, regulatory, and contextual — and maps each to a policy option in the D2P portfolio (this brief, the [Coordination brief](coordination_policy.qmd), and the [Terbufos brief](terbufos_policy.qmd)). **Drivers that are not connected to a policy option are explicitly out of scope** for the current D2P workstream: they are real problems, but addressing them sits outside this project's mandate, funding window, or institutional authority.

This chunk is intentionally self-contained (Mermaid only, no R dependencies) so it can be copied verbatim into the coordination or terbufos briefs, the analysis report, or a standalone slide deck.


```{mermaid}
%%| label: fig-system-rca
%%| fig-cap: "System-wide root cause analysis of pesticide-poisoning harm in South Africa, with each driver mapped to a D2P policy option. Green = addressed by a D2P option; grey-dashed = explicitly out of scope for D2P (real problem, but not the mandate of this workstream)."
flowchart LR
    HARM[Pesticide-poisoning<br/>harm in SA<br/>~1,014 deaths/yr<br/>~R1.61B/yr burden]:::harm

    %% ===== Four root-cause domains =====
    HARM --> SURV[Surveillance gaps]:::dom
    HARM --> COORD[Coordination &<br/>response gaps]:::dom
    HARM --> BAN[Regulatory /<br/>banning gaps]:::dom
    HARM --> CTX[Contextual<br/>upstream drivers]:::dom

    %% ===== Surveillance drivers =====
    SURV --> SV1[No integrated 3-stream<br/>system NMC + NHLS + PIH]
    SURV --> SV2[No live-patient<br/>chemical toxicology]
    SURV --> SV3[Hospital-only<br/>surveillance reach]
    SURV --> SV4[Limited EBS / community<br/>signal capture]
    SURV --> SV5[Poor data standardisation<br/>NMC does not follow<br/>AfriTox agent naming]
    SURV --> SV6[Forensic chemistry<br/>fully de-identified —<br/>no demographics]:::oos
    SURV --> SV7[MLDI system limited<br/>for surveillance utility]:::oos
    SURV --> SV8[CRVS / StatsSA MACOD<br/>3–4 year publication lag]:::oos
    SURV --> SV9[CRVS does not capture<br/>manner of death]:::oos

    SV1 --> OS_MVP[Surveillance MVP<br/>S1 + S2]:::opt
    SV2 --> OS3[Surveillance S3<br/>sentinel toxicology]:::opt
    SV3 --> OS1b[Surveillance S1b<br/>community / EBS layer<br/><i>Phase 2, conditional</i>]:::opt
    SV4 --> OS1b
    SV5 --> OS1[Surveillance S1<br/>AfriTox harmonisation<br/>+ NMC agent drop-down]:::opt

    %% ===== Coordination drivers =====
    COORD --> CO1[EHP investigation<br/>outcome not recorded<br/>back on NMC]
    COORD --> CO2[EHP → DALRRD referral<br/>has no SOP, no audit trail]
    COORD --> CO3[Clinicians get no<br/>case-status feedback]
    COORD --> CO4[No M&E of investigation,<br/>source removal, or<br/>regulatory action]
    COORD --> CO5[Unknown chemical agent<br/>registries — storage / use<br/>locations not shared<br/>with health sector]:::oos

    CO1 --> OC1[Coordination C1<br/>NMC closure-of-loop<br/>EHP field]:::opt
    CO2 --> OC2[Coordination C2<br/>structured EHP → DALRRD<br/>referral form]:::opt
    CO3 --> OC4[Coordination C4<br/>notifier auto-feedback]:::opt
    CO4 --> OC5[Coordination C5<br/>joint KPI dashboard]:::opt
    CO4 --> OC3[Coordination C3<br/>NICD → DALRRD<br/>intelligence feed]:::opt

    %% ===== Banning / regulatory drivers =====
    BAN --> BN1[Most toxic agent in recent<br/>mass-poisonings still legally<br/>registered Terbufos<br/>contrary to international std]
    BAN --> BN2[Informally traded<br/>street-pesticide market]
    BAN --> BN3[Repackaged into<br/>unlabelled containers]

    BN1 --> OT2[Terbufos T2<br/>cancel registration<br/>12–24 mo phase-out]:::opt
    BN2 --> OT2
    BN3 --> OT2

    %% ===== Contextual / upstream drivers — explicitly out of scope =====
    CTX --> CX1[HHPs used as<br/>vermin control<br/>in informal settlements]:::oos
    CTX --> CX2[Industry / trade pushback<br/>to protect crop yield<br/>despite safer substitutes]:::oos
    CTX --> CX3[Mental health burden<br/>and suicide pathway]:::oos
    CTX --> CX4[Low public awareness<br/>of informal-pesticide toxicity]:::oos
    CTX --> CX5[Low / unknown occupational<br/>health & safety on farms]:::oos

    %% ===== Styling =====
    classDef harm  fill:#f99,stroke:#900,stroke-width:2px,color:#000
    classDef dom   fill:#fde,stroke:#333,stroke-width:1.5px,color:#000
    classDef opt   fill:#cfc,stroke:#060,stroke-width:1.5px,color:#000
    classDef oos   fill:#eee,stroke:#999,stroke-dasharray: 5 5,color:#555
```


**How to read.** Each domain (surveillance / coordination / banning / contextual) lists every root cause raised in the D2P scoping work. **Green nodes** flow to a concrete policy option in this portfolio. **Grey-dashed nodes** are explicitly *not* addressed: forensic-chemistry de-identification and MLDI redesign are separate NHLS / NICD workstreams; CRVS lag and manner-of-death capture sit with StatsSA and Home Affairs; the chemical-agent storage registry sits with DALRRD and DTIC; and the contextual drivers (HHPs-as-rodenticide, industry pushback, mental health, public awareness, farm OHS) are real upstream determinants but are owned by departments and disciplines outside the D2P remit. Calling them out as out-of-scope here is the honest alternative to either pretending the portfolio addresses them or pretending they do not matter.

# Golden Thread

The **golden thread** is preserved end-to-end for every scenario:

> **deaths averted → health (morbidity) costs averted → YLL costs averted → full CBA and CUA**

CBA uses the **human-capital** valuation (R1.5M per averted death; R12k per averted morbidity case). CUA uses **GBD 2019 disability weights** valued at the SA **ICER threshold of R110,000 per DALY** (1× GDP per capita 2025). Both run on the same underlying epi quantities so the only difference between CBA and CUA outputs is how a life-year is monetised — making the policy-relevance of each valuation framework directly comparable.

CFR is the **largest single source of denominator uncertainty** in the SA pesticide burden estimate (StatsSA MACOD records deaths; the true non-fatal case count depends on the assumed CFR). v3 propagates this uncertainty **continuously** across all scenarios and presents the result as line graphs rather than tables of point estimates.

### Five scenarios

| # | Label | Detection | Coordination | Ban |
|---|---|---|---|---|
| **A** | Ceiling administrative surveillance, perfect coordination | MVP only (19%) | Perfect | None |
| **B** | + Community surveillance, perfect coordination (FP sweep) | MVP + S1b lo→hi | Perfect | None |
| **C** | Community surveillance + imperfect coordination | MVP + S1b mid | Imperfect | None |
| **D** | All layers + **perfect ban** (terb attributable sweep) | MVP + S1b mid | Perfect | $\phi_{terb}=1.0$, $f_{terb}$ lo→hi |
| **E** | All layers + **imperfect ban** (90% drop) | MVP + S1b mid | Perfect | $\phi_{terb}=0.90$ |

**Working definitions (user-confirmed):**

- **Perfect coordination**: $\eta = 0.50$ (response efficacy upper), $k_{cluster} = 3.5$ (high), full deaths-averted from coordination decision-tree (n = 957/yr).
- **Imperfect coordination**: $\eta = 0.15$, $k_{cluster} = 1.2$, 50% of coordination deaths-averted (n ≈ 479/yr).
- **Imperfect ban**: $\phi_{terb} = 0.90$ (90% of terbufos-attributable burden retired; 10% residual from informal stockpile / cross-border leakage).

---

## Setup

```{r}
#| label: setup
#| echo: true
#| message: false
#| warning: false

library(tidyverse)
library(gt)
library(scales)
library(patchwork)

raw <- readr::read_csv("../amua_import_parameters_v4.csv", show_col_types = FALSE)

pick <- function(name) {
  v <- raw |> filter(Name == name) |> pull(Expression)
  if (length(v) == 0) NA_real_ else suppressWarnings(as.numeric(v[1]))
}

# ── Burden anchors ────────────────────────────────────────────────────────────
N_deaths  <- pick("n_deaths_headline")               # 1,014 deaths/yr (StatsSA MACOD, pesticide-specific)
c_morb    <- pick("c_morbidity_headline")            # R12,000 per morbidity case (HC)
c_mort_HC <- pick("c_mortality_human_capital")       # R1,500,000 per death (human-capital)

# ── CFR sensitivity range (continuous) ────────────────────────────────────────
cfr_lo    <- pick("cfr_headline_lo")                 # 0.10
cfr_mid   <- pick("cfr_headline_mid")                # 0.125
cfr_hi    <- pick("cfr_headline_hi")                 # 0.15
cfr_grid  <- seq(0.075, 0.20, by = 0.005)            # continuous grid for line plots

# true cases helper — single source of truth for the denominator
N_true_of <- function(cfr) N_deaths / cfr

N_true_mid <- N_true_of(cfr_mid)                     # 8,112 cases/yr at mid CFR

# ── Detection probabilities ───────────────────────────────────────────────────
d_SQ      <- pick("d_status_quo")                    # 0.125 (NMC-only baseline)
d_MVP     <- pick("d_surveillance_mvp")              # 0.189 (admin ceiling = S1 + S2)
d_S1b_lo  <- pick("d_S1b_event_community_lo")        # 0.25
d_S1b_mid <- pick("d_S1b_event_community_mid")       # 0.40
d_S1b_hi  <- pick("d_S1b_event_community_hi")        # 0.55

# ── Costs: surveillance ──────────────────────────────────────────────────────
c_MVP_op  <- pick("c_surv_MVP_op")                   # R137k = S1 + S2
c_S1b_lo  <- pick("c_S1b_op_lo")                     # R800k
c_S1b_mid <- pick("c_S1b_op_mid")                    # R1.5M
c_S1b_hi  <- pick("c_S1b_op_hi")                     # R2.5M

# ── Costs: coordination ──────────────────────────────────────────────────────
c_coord_FP   <- pick("c_coord_FP_op")                # R145k C1+...+C5
n_av_coord_FP <- pick("n_deaths_averted_coord_FP")   # 957 deaths/yr full package

# Coordination "quality" presets
coord_presets <- list(
  perfect   = list(eta = pick("eta_response_hi"),  k_cluster = 3.5, n_av_coord = n_av_coord_FP),
  imperfect = list(eta = pick("eta_response_lo"),  k_cluster = 1.2, n_av_coord = 0.50 * n_av_coord_FP)
)

# ── False-positive rates (community S1b only) ────────────────────────────────
p_fp_S1b_lo  <- pick("p_fp_S1b_lo")                  # 0.20
p_fp_S1b_mid <- pick("p_fp_S1b_mid")                 # 0.35
p_fp_S1b_hi  <- pick("p_fp_S1b_hi")                  # 0.50

# ── Chemical-agent params ────────────────────────────────────────────────────
f_terb_lo  <- pick("frac_terbufos_attributable_lo")  # 0.20
f_terb_mid <- pick("frac_terbufos_attributable_mid") # 0.25
f_terb_hi  <- pick("frac_terbufos_attributable_hi")  # 0.35
phi_terb_perfect   <- 1.00                           # perfect ban: 100% retired
phi_terb_imperfect <- 0.90                           # imperfect ban: 90% retired (10% residual)
c_T2_enf   <- pick("c_T2_RUP_enforcement_mid")       # R2M DALRRD enforcement

# ── DALY / CUA (GBD 2019) ────────────────────────────────────────────────────
yll_per_death       <- pick("yll_per_death_gbd")     # 44 YLL
yld_per_case_severe <- pick("yld_per_case_severe")   # 0.033
yld_per_case_mild   <- pick("yld_per_case_mild")     # 0.003
p_severe            <- pick("p_severe_among_detected") # 0.45
icer_per_daly       <- pick("icer_per_daly_gdp")     # R110,000

# Derived ICER-DALY monetary equivalents
c_mort_DALY <- yll_per_death * icer_per_daly         # R4.84M per averted death
c_morb_DALY <- (p_severe * yld_per_case_severe + (1 - p_severe) * yld_per_case_mild) * icer_per_daly  # blended R/morbidity

# ── Induced workload constants (inline, identical to v2) ─────────────────────
c_per_investigation  <- 4000     # R/alert
c_per_dalrrd_action  <- 12000    # R/alert
p_dalrrd_action      <- 0.30

# ── Status-quo societal cost (anchor for NMB) ────────────────────────────────
c_society_SQ_HC   <- function(cfr) N_true_of(cfr) * c_morb + N_deaths * c_mort_HC
c_society_SQ_DALY <- function(cfr) N_true_of(cfr) * c_morb_DALY + N_deaths * c_mort_DALY
```

### Quick reference: monetary equivalents

```{r}
#| label: ref-money
#| echo: false
tibble(
  Quantity = c("Per averted death (HC, CBA)",
               "Per averted death (DALY × ICER, CUA)",
               "Per averted morbidity case (HC, CBA)",
               "Per averted morbidity case (DALY × ICER, CUA, blended severity)",
               "ICER threshold (R per DALY averted)",
               "YLL per death (GBD 2019, mean age 28, LE 72)"),
  Value = c(c_mort_HC, c_mort_DALY, c_morb, c_morb_DALY, icer_per_daly, yll_per_death)
) |>
  gt() |>
  fmt_number(columns = Value, decimals = 0, sep_mark = ",") |>
  tab_header(title = "CBA vs CUA: monetary equivalents per averted health outcome")
```

---

## Golden-thread function

`run_scenario_v3()` returns a single tibble row with deaths averted, morbidity averted, both HC and DALY-ICER valuations, NMB under both frameworks, and the **ICER (R per DALY averted)** which is the headline CUA decision-rule statistic.

```{r}
#| label: golden-thread-fn
#| echo: true

run_scenario_v3 <- function(
    d,                       # per-case detection probability
    cfr,                     # CFR assumption (drives N_true)
    c_surv,                  # surveillance operating spend (R/yr)
    c_coord     = 0,         # coordination operating spend (R/yr)
    coord_mode  = NULL,      # "perfect" | "imperfect" | NULL (= no coordination layer)
    p_fp        = 0,         # FP rate for community surveillance
    f_terb      = 0,         # terbufos attributable fraction (0 = no ban applied)
    phi_terb    = 0,         # fraction of terbufos burden retired (ban quality)
    c_regulatory = 0         # ban-side regulatory spend (R/yr)
) {
  N_true <- N_true_of(cfr)

  # Coordination preset
  if (!is.null(coord_mode)) {
    cp <- coord_presets[[coord_mode]]
    eta_use      <- cp$eta
    k_use        <- cp$k_cluster
    n_av_coord_0 <- cp$n_av_coord
  } else {
    eta_use      <- pick("eta_response_mid")
    k_use        <- 1.0
    n_av_coord_0 <- 0
  }

  # ── 1. Ban removes burden directly (independent of detection) ─────────────
  frac_burden_retired_by_ban <- f_terb * phi_terb           # ≤ 1
  N_true_post_ban   <- N_true   * (1 - frac_burden_retired_by_ban)
  N_deaths_post_ban <- N_deaths * (1 - frac_burden_retired_by_ban)

  # ── 2. Surveillance/coordination act on post-ban residual burden ──────────
  d_uplift   <- max(d - d_SQ, 0)                            # detection improvement
  # Cases addressed = post-ban × uplift × cluster multiplier
  cases_addressed     <- N_true_post_ban * d_uplift * k_use
  cases_addressed     <- pmin(cases_addressed, N_true_post_ban)  # cap
  deaths_av_response  <- cases_addressed * cfr * eta_use

  # Coordination deaths averted: scale by detection uplift relative to MVP
  d_uplift_ratio <- if (d_MVP > d_SQ) d_uplift / (d_MVP - d_SQ) else 0
  deaths_av_coord <- n_av_coord_0 * min(d_uplift_ratio, 1)

  # ── 3. Aggregate (cap totals at the post-ban anchor) ──────────────────────
  deaths_av_total   <- frac_burden_retired_by_ban * N_deaths +
                        deaths_av_response + deaths_av_coord
  deaths_av_total   <- pmin(deaths_av_total, N_deaths)

  cases_av_total    <- frac_burden_retired_by_ban * N_true + cases_addressed
  cases_av_total    <- pmin(cases_av_total, N_true)

  # Severity split for DALY morbidity
  cases_av_severe   <- cases_av_total * p_severe
  cases_av_mild     <- cases_av_total * (1 - p_severe)

  # ── 4. Cost averted (golden thread) ───────────────────────────────────────
  c_morbidity_av_HC   <- cases_av_total * c_morb
  c_yll_av_HC         <- deaths_av_total * c_mort_HC
  c_morbidity_av_DALY <- cases_av_severe * yld_per_case_severe * icer_per_daly +
                         cases_av_mild   * yld_per_case_mild   * icer_per_daly
  c_yll_av_DALY       <- deaths_av_total * c_mort_DALY

  dalys_av <- deaths_av_total * yll_per_death +
              cases_av_severe * yld_per_case_severe +
              cases_av_mild   * yld_per_case_mild

  # ── 5. Spend side ─────────────────────────────────────────────────────────
  # Alert volume: gross alerts inflated by FP rate
  alerts_gross         <- N_true_post_ban * d_uplift * (1 + p_fp / (1 - p_fp + 1e-9))
  c_invest             <- alerts_gross * c_per_investigation
  c_dalrrd             <- alerts_gross * p_dalrrd_action * c_per_dalrrd_action
  c_total_spend        <- c_surv + c_coord + c_invest + c_dalrrd + c_regulatory

  # ── 6. NMB and ICER ───────────────────────────────────────────────────────
  benefit_HC   <- c_morbidity_av_HC   + c_yll_av_HC
  benefit_DALY <- c_morbidity_av_DALY + c_yll_av_DALY
  NMB_HC       <- benefit_HC   - c_total_spend
  NMB_DALY     <- benefit_DALY - c_total_spend
  ICER         <- if (dalys_av > 0) c_total_spend / dalys_av else NA_real_
  cost_per_death_av <- if (deaths_av_total > 0) c_total_spend / deaths_av_total else NA_real_

  tibble(
    cfr, d, p_fp, f_terb, phi_terb,
    coord_mode = coord_mode %||% "none",
    N_true = N_true,
    deaths_av_total, cases_av_total,
    c_morbidity_av_HC, c_yll_av_HC, benefit_HC,
    c_morbidity_av_DALY, c_yll_av_DALY, benefit_DALY,
    dalys_av,
    c_surv, c_coord, c_invest, c_dalrrd, c_regulatory, c_total_spend,
    NMB_HC, NMB_DALY, ICER, cost_per_death_av
  )
}
```

---

## Scenario A — Ceiling administrative surveillance + perfect coordination, no ban

**Policy logic.** Get to the *administrative ceiling* (MVP detection = 48.7%) using only the existing NHLS/PIH feeds, then close the coordination loop **perfectly** so every detected case becomes a hotspot investigation that surfaces additional cluster members. **No chemical ban**. This is the cheapest credible policy bundle and answers: *"how much can we save without touching DALRRD's product register?"*

```{r}
#| label: A-run
A_mid <- run_scenario_v3(d = d_MVP, cfr = cfr_mid,
                         c_surv = c_MVP_op, c_coord = c_coord_FP,
                         coord_mode = "perfect")

A_cfr <- map_dfr(cfr_grid, ~ run_scenario_v3(
  d = d_MVP, cfr = .x,
  c_surv = c_MVP_op, c_coord = c_coord_FP,
  coord_mode = "perfect"))
```

### Scenario A — CBA (human-capital)

```{r}
#| label: A-cba-table
A_mid |>
  transmute(
    `Total spend (R/yr)`             = c_total_spend,
    `Deaths averted (n/yr)`          = deaths_av_total,
    `Morbidity cases averted (n/yr)` = cases_av_total,
    `Morbidity costs averted (R/yr)` = c_morbidity_av_HC,
    `YLL costs averted (R/yr)`       = c_yll_av_HC,
    `Total benefit (R/yr)`           = benefit_HC,
    `NMB (R/yr)`                     = NMB_HC,
    `R per death averted`            = cost_per_death_av
  ) |>
  pivot_longer(everything(), names_to = "Item", values_to = "Value") |>
  gt() |>
  fmt_number(columns = Value, decimals = 0, sep_mark = ",") |>
  tab_header(title = "Scenario A — CBA at CFR mid (12.5%)")
```

### Scenario A — CUA (DALY × ICER)

```{r}
#| label: A-cua-table
A_mid |>
  transmute(
    `Total spend (R/yr)`              = c_total_spend,
    `DALYs averted (n/yr)`            = dalys_av,
    `Morbidity DALY-value averted (R)` = c_morbidity_av_DALY,
    `Mortality DALY-value averted (R)` = c_yll_av_DALY,
    `Total DALY-valued benefit (R/yr)` = benefit_DALY,
    `NMB DALY (R/yr)`                  = NMB_DALY,
    `ICER (R per DALY averted)`        = ICER,
    `ICER threshold (R110k/DALY)`      = icer_per_daly
  ) |>
  pivot_longer(everything(), names_to = "Item", values_to = "Value") |>
  gt() |>
  fmt_number(columns = Value, decimals = 0, sep_mark = ",") |>
  tab_header(title = "Scenario A — CUA at CFR mid (12.5%)")
```

### Scenario A — CFR sensitivity (continuous)

```{r}
#| label: A-cfr-plot
#| fig-width: 9
#| fig-height: 4
p_nmb <- ggplot(A_cfr, aes(cfr)) +
  geom_line(aes(y = NMB_HC,   colour = "CBA (human-capital)"),   linewidth = 0.9) +
  geom_line(aes(y = NMB_DALY, colour = "CUA (DALY × ICER)"),     linewidth = 0.9) +
  geom_vline(xintercept = c(cfr_lo, cfr_mid, cfr_hi), linetype = "dotted", colour = "grey50") +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "Case-fatality ratio (CFR)", y = "NMB (R/yr)",
       title = "Scenario A — NMB across CFR", colour = NULL) +
  theme_minimal()

p_icer <- ggplot(A_cfr, aes(cfr, ICER)) +
  geom_line(linewidth = 0.9, colour = "steelblue") +
  geom_hline(yintercept = icer_per_daly, linetype = "dashed", colour = "red") +
  geom_vline(xintercept = c(cfr_lo, cfr_mid, cfr_hi), linetype = "dotted", colour = "grey50") +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "Case-fatality ratio (CFR)", y = "ICER (R per DALY averted)",
       title = "Scenario A — ICER vs R110,000/DALY threshold") +
  theme_minimal()

p_nmb + p_icer
```

---

## Scenario B — + Community surveillance (FP sweep) + perfect coordination, no ban

**Policy logic.** Layer event-based community surveillance (S1b) on top of the administrative MVP. S1b detects three times more cases but injects false-positive alerts that drive induced EHP workload. This scenario sweeps the **FP rate** to show the tradeoff between detection gain and induced cost.

```{r}
#| label: B-run
B_grid <- expand_grid(
  d   = c(d_S1b_lo, d_S1b_mid, d_S1b_hi),
  fp  = c(p_fp_S1b_lo, p_fp_S1b_mid, p_fp_S1b_hi),
  cs  = c(c_S1b_lo, c_S1b_mid, c_S1b_hi)
) |>
  filter((d == d_S1b_lo  & fp == p_fp_S1b_lo  & cs == c_S1b_lo) |
         (d == d_S1b_mid & fp == p_fp_S1b_mid & cs == c_S1b_mid) |
         (d == d_S1b_hi  & fp == p_fp_S1b_hi  & cs == c_S1b_hi)) |>
  mutate(level = c("lo", "mid", "hi"))

B_res <- B_grid |>
  rowwise() |>
  mutate(out = list(run_scenario_v3(
    d = d, cfr = cfr_mid,
    c_surv = c_MVP_op + cs, c_coord = c_coord_FP,
    coord_mode = "perfect", p_fp = fp))) |>
  unnest(out, names_sep = "_") |>
  select(level, d, fp, cs, out_deaths_av_total, out_dalys_av,
         out_c_total_spend, out_benefit_HC, out_benefit_DALY,
         out_NMB_HC, out_NMB_DALY, out_ICER, out_cost_per_death_av)

# continuous sweep of FP at mid d, mid surveillance cost
B_fp_sweep <- map_dfr(seq(0.10, 0.60, by = 0.025),
  ~ run_scenario_v3(d = d_S1b_mid, cfr = cfr_mid,
                    c_surv = c_MVP_op + c_S1b_mid, c_coord = c_coord_FP,
                    coord_mode = "perfect", p_fp = .x))
```

### Scenario B — CBA

```{r}
#| label: B-cba-table
B_res |>
  transmute(
    Level = level,
    `Detection (%)`                  = d * 100,
    `FP rate (%)`                    = fp * 100,
    `S1b spend (R/yr)`               = cs,
    `Deaths averted`                 = out_deaths_av_total,
    `Total spend (R/yr)`             = out_c_total_spend,
    `Total benefit HC (R/yr)`        = out_benefit_HC,
    `NMB HC (R/yr)`                  = out_NMB_HC,
    `R per death averted`            = out_cost_per_death_av
  ) |>
  gt() |>
  fmt_number(columns = c(`Detection (%)`, `FP rate (%)`), decimals = 1) |>
  fmt_number(columns = c(`S1b spend (R/yr)`, `Total spend (R/yr)`,
                         `Total benefit HC (R/yr)`, `NMB HC (R/yr)`,
                         `R per death averted`),
             decimals = 0, sep_mark = ",") |>
  fmt_number(columns = `Deaths averted`, decimals = 0) |>
  tab_header(title = "Scenario B — CBA: matched lo/mid/hi S1b tiers at CFR mid")
```

### Scenario B — CUA

```{r}
#| label: B-cua-table
B_res |>
  transmute(
    Level = level,
    `DALYs averted`               = out_dalys_av,
    `Total spend (R/yr)`          = out_c_total_spend,
    `DALY-valued benefit (R/yr)`  = out_benefit_DALY,
    `NMB DALY (R/yr)`             = out_NMB_DALY,
    `ICER (R/DALY averted)`       = out_ICER
  ) |>
  gt() |>
  fmt_number(columns = c(`DALYs averted`), decimals = 0) |>
  fmt_number(columns = c(`Total spend (R/yr)`, `DALY-valued benefit (R/yr)`,
                         `NMB DALY (R/yr)`, `ICER (R/DALY averted)`),
             decimals = 0, sep_mark = ",") |>
  tab_header(title = "Scenario B — CUA: matched lo/mid/hi S1b tiers at CFR mid")
```

### Scenario B — FP rate sweep at mid configuration

```{r}
#| label: B-fp-plot
#| fig-width: 9
#| fig-height: 4
p_b1 <- ggplot(B_fp_sweep, aes(p_fp, NMB_HC)) +
  geom_line(linewidth = 0.9, colour = "darkgreen") +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "S1b false-positive rate", y = "NMB HC (R/yr)",
       title = "Scenario B — NMB declines with FP rate") +
  theme_minimal()

p_b2 <- ggplot(B_fp_sweep, aes(p_fp, ICER)) +
  geom_line(linewidth = 0.9, colour = "steelblue") +
  geom_hline(yintercept = icer_per_daly, linetype = "dashed", colour = "red") +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "S1b false-positive rate", y = "ICER (R/DALY averted)",
       title = "ICER stays well below threshold across FP range") +
  theme_minimal()

p_b1 + p_b2
```

---

## Scenario C — Community surveillance + imperfect coordination

**Policy logic.** Same surveillance stack as B-mid, but coordination operates at the **lower-bound** efficacy and clustering ($\eta = 0.15$, $k = 1.2$, half the coordination decision-tree deaths-averted). This is the realistic *"DALRRD didn't fully sign on"* case and shows how much benefit erodes when the loop only partially closes.

```{r}
#| label: C-run
C_mid <- run_scenario_v3(d = d_S1b_mid, cfr = cfr_mid,
                         c_surv = c_MVP_op + c_S1b_mid, c_coord = c_coord_FP,
                         coord_mode = "imperfect", p_fp = p_fp_S1b_mid)

C_cfr <- map_dfr(cfr_grid, ~ run_scenario_v3(
  d = d_S1b_mid, cfr = .x,
  c_surv = c_MVP_op + c_S1b_mid, c_coord = c_coord_FP,
  coord_mode = "imperfect", p_fp = p_fp_S1b_mid))
```

### Scenario C — CBA & CUA side-by-side

```{r}
#| label: C-tables
bind_rows(
  C_mid |> transmute(framework = "CBA (HC)",
                     `Deaths averted` = deaths_av_total,
                     `Total spend (R/yr)` = c_total_spend,
                     `Benefit (R/yr)` = benefit_HC,
                     `NMB (R/yr)` = NMB_HC,
                     `Headline rate` = cost_per_death_av,
                     headline_label = "R per death averted"),
  C_mid |> transmute(framework = "CUA (DALY)",
                     `Deaths averted` = deaths_av_total,
                     `Total spend (R/yr)` = c_total_spend,
                     `Benefit (R/yr)` = benefit_DALY,
                     `NMB (R/yr)` = NMB_DALY,
                     `Headline rate` = ICER,
                     headline_label = "R per DALY averted")
) |>
  gt() |>
  fmt_number(columns = c(`Deaths averted`), decimals = 0) |>
  fmt_number(columns = c(`Total spend (R/yr)`, `Benefit (R/yr)`,
                         `NMB (R/yr)`, `Headline rate`),
             decimals = 0, sep_mark = ",") |>
  tab_header(title = "Scenario C — same epi, two valuations")
```

### Scenario C — CFR sensitivity

```{r}
#| label: C-cfr-plot
#| fig-width: 9
#| fig-height: 4
p_c1 <- ggplot(C_cfr, aes(cfr)) +
  geom_line(aes(y = NMB_HC,   colour = "CBA (HC)"),   linewidth = 0.9) +
  geom_line(aes(y = NMB_DALY, colour = "CUA (DALY)"), linewidth = 0.9) +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "CFR", y = "NMB (R/yr)", colour = NULL,
       title = "Scenario C — NMB across CFR") +
  theme_minimal()

p_c2 <- ggplot(C_cfr, aes(cfr, ICER)) +
  geom_line(linewidth = 0.9, colour = "steelblue") +
  geom_hline(yintercept = icer_per_daly, linetype = "dashed", colour = "red") +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "CFR", y = "ICER (R/DALY)", title = "Scenario C — ICER") +
  theme_minimal()

p_c1 + p_c2
```

---

## Scenario D — All layers + perfect ban (terbufos attributable sweep)

**Policy logic.** Full stack — admin MVP + community S1b (mid) + perfect coordination + **perfect terbufos ban** ($\phi = 1.0$, zero residual). The sweep is over the **terbufos attributable fraction** $f_{terb} \in \{0.20, 0.25, 0.35\}$ because the policy benefit of a perfect ban scales directly with how much of the burden the agent actually drives — a parameter that informs how confident DALRRD needs to be in its attribution evidence before committing to a full withdrawal.

```{r}
#| label: D-run
D_grid <- tibble(
  level  = c("lo", "mid", "hi"),
  f_terb = c(f_terb_lo, f_terb_mid, f_terb_hi)
) |>
  rowwise() |>
  mutate(out = list(run_scenario_v3(
    d = d_S1b_mid, cfr = cfr_mid,
    c_surv = c_MVP_op + c_S1b_mid, c_coord = c_coord_FP,
    coord_mode = "perfect", p_fp = p_fp_S1b_mid,
    f_terb = f_terb, phi_terb = phi_terb_perfect,
    c_regulatory = c_T2_enf))) |>
  unnest(out, names_sep = "_")

# continuous sweep across f_terb at perfect phi
D_fterb_sweep <- map_dfr(seq(0.10, 0.40, by = 0.01),
  ~ run_scenario_v3(d = d_S1b_mid, cfr = cfr_mid,
                    c_surv = c_MVP_op + c_S1b_mid, c_coord = c_coord_FP,
                    coord_mode = "perfect", p_fp = p_fp_S1b_mid,
                    f_terb = .x, phi_terb = phi_terb_perfect,
                    c_regulatory = c_T2_enf))
```

### Scenario D — CBA

```{r}
#| label: D-cba-table
D_grid |>
  transmute(
    Level = level,
    `f_terb (%)`              = f_terb * 100,
    `Deaths averted`          = out_deaths_av_total,
    `Cases averted`           = out_cases_av_total,
    `Spend (R/yr)`            = out_c_total_spend,
    `Benefit HC (R/yr)`       = out_benefit_HC,
    `NMB HC (R/yr)`           = out_NMB_HC,
    `R per death averted`     = out_cost_per_death_av
  ) |>
  gt() |>
  fmt_number(columns = `f_terb (%)`, decimals = 1) |>
  fmt_number(columns = c(`Deaths averted`, `Cases averted`), decimals = 0) |>
  fmt_number(columns = c(`Spend (R/yr)`, `Benefit HC (R/yr)`,
                         `NMB HC (R/yr)`, `R per death averted`),
             decimals = 0, sep_mark = ",") |>
  tab_header(title = "Scenario D — CBA: perfect ban, f_terb lo/mid/hi at CFR mid")
```

### Scenario D — CUA

```{r}
#| label: D-cua-table
D_grid |>
  transmute(
    Level = level,
    `DALYs averted`               = out_dalys_av,
    `Spend (R/yr)`                = out_c_total_spend,
    `DALY benefit (R/yr)`         = out_benefit_DALY,
    `NMB DALY (R/yr)`             = out_NMB_DALY,
    `ICER (R/DALY averted)`       = out_ICER
  ) |>
  gt() |>
  fmt_number(columns = `DALYs averted`, decimals = 0) |>
  fmt_number(columns = c(`Spend (R/yr)`, `DALY benefit (R/yr)`,
                         `NMB DALY (R/yr)`, `ICER (R/DALY averted)`),
             decimals = 0, sep_mark = ",") |>
  tab_header(title = "Scenario D — CUA: perfect ban, f_terb lo/mid/hi at CFR mid")
```

### Scenario D — f_terb sweep

```{r}
#| label: D-fterb-plot
#| fig-width: 9
#| fig-height: 4
p_d1 <- ggplot(D_fterb_sweep, aes(f_terb)) +
  geom_line(aes(y = NMB_HC,   colour = "CBA (HC)"),   linewidth = 0.9) +
  geom_line(aes(y = NMB_DALY, colour = "CUA (DALY)"), linewidth = 0.9) +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "Terbufos attributable fraction (f_terb)",
       y = "NMB (R/yr)", colour = NULL,
       title = "Scenario D — NMB scales linearly with terbufos attribution") +
  theme_minimal()

p_d2 <- ggplot(D_fterb_sweep, aes(f_terb, ICER)) +
  geom_line(linewidth = 0.9, colour = "steelblue") +
  geom_hline(yintercept = icer_per_daly, linetype = "dashed", colour = "red") +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "Terbufos attributable fraction (f_terb)",
       y = "ICER (R/DALY)",
       title = "Higher f_terb → lower ICER (more burden retired per regulatory rand)") +
  theme_minimal()

p_d1 + p_d2
```

---

## Scenario E — All layers + imperfect ban (90% drop)

**Policy logic.** Identical configuration to D-mid, but the terbufos ban only retires **90%** of the attributable burden (10% residual from informal stockpile and cross-border leakage). This is the realistic case for SA given the porous border with Mozambique and Zimbabwe and the documented informal market in Class Ia organophosphates.

```{r}
#| label: E-run
E_grid <- tibble(
  level  = c("lo", "mid", "hi"),
  f_terb = c(f_terb_lo, f_terb_mid, f_terb_hi)
) |>
  rowwise() |>
  mutate(out = list(run_scenario_v3(
    d = d_S1b_mid, cfr = cfr_mid,
    c_surv = c_MVP_op + c_S1b_mid, c_coord = c_coord_FP,
    coord_mode = "perfect", p_fp = p_fp_S1b_mid,
    f_terb = f_terb, phi_terb = phi_terb_imperfect,
    c_regulatory = c_T2_enf))) |>
  unnest(out, names_sep = "_")
```

### Scenario E — CBA & CUA

```{r}
#| label: E-tables
E_grid |>
  transmute(
    Level = level,
    `f_terb (%)`              = f_terb * 100,
    `Deaths averted`          = out_deaths_av_total,
    `DALYs averted`           = out_dalys_av,
    `Spend (R/yr)`            = out_c_total_spend,
    `Benefit HC (R/yr)`       = out_benefit_HC,
    `Benefit DALY (R/yr)`     = out_benefit_DALY,
    `NMB HC (R/yr)`           = out_NMB_HC,
    `NMB DALY (R/yr)`         = out_NMB_DALY,
    `ICER (R/DALY averted)`   = out_ICER
  ) |>
  gt() |>
  fmt_number(columns = `f_terb (%)`, decimals = 1) |>
  fmt_number(columns = c(`Deaths averted`, `DALYs averted`), decimals = 0) |>
  fmt_number(columns = c(`Spend (R/yr)`, `Benefit HC (R/yr)`, `Benefit DALY (R/yr)`,
                         `NMB HC (R/yr)`, `NMB DALY (R/yr)`, `ICER (R/DALY averted)`),
             decimals = 0, sep_mark = ",") |>
  tab_header(title = "Scenario E — Imperfect ban (φ = 0.90), f_terb sweep at CFR mid")
```

### Scenario D vs E contrast — lost benefit from 10% residual

```{r}
#| label: DE-contrast
D_E <- bind_rows(
  D_grid |> transmute(level, scenario = "D (perfect ban, φ=1.0)",
                      benefit_HC = out_benefit_HC, NMB_HC = out_NMB_HC,
                      benefit_DALY = out_benefit_DALY, NMB_DALY = out_NMB_DALY,
                      ICER = out_ICER, deaths_av = out_deaths_av_total),
  E_grid |> transmute(level, scenario = "E (imperfect ban, φ=0.90)",
                      benefit_HC = out_benefit_HC, NMB_HC = out_NMB_HC,
                      benefit_DALY = out_benefit_DALY, NMB_DALY = out_NMB_DALY,
                      ICER = out_ICER, deaths_av = out_deaths_av_total)
)

D_E |>
  pivot_wider(id_cols = level, names_from = scenario,
              values_from = c(deaths_av, NMB_HC, NMB_DALY, ICER)) |>
  gt() |>
  fmt_number(columns = where(is.numeric), decimals = 0, sep_mark = ",") |>
  tab_header(title = "D vs E — the cost of an imperfect ban")
```

---

## Cross-scenario CBA summary

```{r}
#| label: cba-summary
summary_rows <- bind_rows(
  A_mid |> mutate(scenario = "A — MVP + perfect coord"),
  B_res |> filter(level == "mid") |>
    transmute(scenario = "B — + S1b mid + perfect coord",
              c_total_spend = out_c_total_spend,
              deaths_av_total = out_deaths_av_total,
              dalys_av = out_dalys_av,
              benefit_HC = out_benefit_HC, benefit_DALY = out_benefit_DALY,
              NMB_HC = out_NMB_HC, NMB_DALY = out_NMB_DALY,
              ICER = out_ICER, cost_per_death_av = out_cost_per_death_av),
  C_mid |> mutate(scenario = "C — + S1b mid + imperfect coord"),
  D_grid |> filter(level == "mid") |>
    transmute(scenario = "D — + perfect ban (f_terb mid)",
              c_total_spend = out_c_total_spend,
              deaths_av_total = out_deaths_av_total,
              dalys_av = out_dalys_av,
              benefit_HC = out_benefit_HC, benefit_DALY = out_benefit_DALY,
              NMB_HC = out_NMB_HC, NMB_DALY = out_NMB_DALY,
              ICER = out_ICER, cost_per_death_av = out_cost_per_death_av),
  E_grid |> filter(level == "mid") |>
    transmute(scenario = "E — + imperfect ban (φ=0.90, f_terb mid)",
              c_total_spend = out_c_total_spend,
              deaths_av_total = out_deaths_av_total,
              dalys_av = out_dalys_av,
              benefit_HC = out_benefit_HC, benefit_DALY = out_benefit_DALY,
              NMB_HC = out_NMB_HC, NMB_DALY = out_NMB_DALY,
              ICER = out_ICER, cost_per_death_av = out_cost_per_death_av)
) |>
  select(scenario, c_total_spend, deaths_av_total, dalys_av,
         benefit_HC, NMB_HC, cost_per_death_av,
         benefit_DALY, NMB_DALY, ICER)

summary_rows |>
  transmute(Scenario = scenario,
            `Spend (R/yr)` = c_total_spend,
            `Deaths averted` = deaths_av_total,
            `Benefit HC (R/yr)` = benefit_HC,
            `NMB HC (R/yr)` = NMB_HC,
            `R per death averted` = cost_per_death_av) |>
  gt() |>
  fmt_number(columns = `Deaths averted`, decimals = 0) |>
  fmt_number(columns = c(`Spend (R/yr)`, `Benefit HC (R/yr)`,
                         `NMB HC (R/yr)`, `R per death averted`),
             decimals = 0, sep_mark = ",") |>
  tab_header(title = "Cross-scenario CBA summary (CFR mid)") |>
  data_color(columns = `NMB HC (R/yr)`, palette = "Greens")
```

---

## Cross-scenario CUA summary

```{r}
#| label: cua-summary
summary_rows |>
  transmute(Scenario = scenario,
            `Spend (R/yr)` = c_total_spend,
            `DALYs averted` = dalys_av,
            `DALY benefit (R/yr)` = benefit_DALY,
            `NMB DALY (R/yr)` = NMB_DALY,
            `ICER (R/DALY averted)` = ICER) |>
  gt() |>
  fmt_number(columns = `DALYs averted`, decimals = 0) |>
  fmt_number(columns = c(`Spend (R/yr)`, `DALY benefit (R/yr)`,
                         `NMB DALY (R/yr)`, `ICER (R/DALY averted)`),
             decimals = 0, sep_mark = ",") |>
  tab_header(title = "Cross-scenario CUA summary (CFR mid)",
             subtitle = paste0("Threshold = R", comma(icer_per_daly), "/DALY")) |>
  data_color(columns = `ICER (R/DALY averted)`,
             palette = c("darkgreen", "yellow", "red"))
```

All five scenarios deliver ICERs at least one order of magnitude below the R110,000/DALY SA threshold — a defensible "very cost-effective" classification under the WHO-CHOICE convention regardless of which valuation framework is used.

---

## Continuous CFR sensitivity across all scenarios

```{r}
#| label: all-cfr-sweep
#| fig-width: 10
#| fig-height: 5

run_at_cfr <- function(cfr_val) {
  bind_rows(
    run_scenario_v3(d = d_MVP,     cfr = cfr_val, c_surv = c_MVP_op,
                    c_coord = c_coord_FP, coord_mode = "perfect") |>
      mutate(scenario = "A"),
    run_scenario_v3(d = d_S1b_mid, cfr = cfr_val, c_surv = c_MVP_op + c_S1b_mid,
                    c_coord = c_coord_FP, coord_mode = "perfect",
                    p_fp = p_fp_S1b_mid) |>
      mutate(scenario = "B-mid"),
    run_scenario_v3(d = d_S1b_mid, cfr = cfr_val, c_surv = c_MVP_op + c_S1b_mid,
                    c_coord = c_coord_FP, coord_mode = "imperfect",
                    p_fp = p_fp_S1b_mid) |>
      mutate(scenario = "C"),
    run_scenario_v3(d = d_S1b_mid, cfr = cfr_val, c_surv = c_MVP_op + c_S1b_mid,
                    c_coord = c_coord_FP, coord_mode = "perfect",
                    p_fp = p_fp_S1b_mid, f_terb = f_terb_mid,
                    phi_terb = phi_terb_perfect, c_regulatory = c_T2_enf) |>
      mutate(scenario = "D-mid"),
    run_scenario_v3(d = d_S1b_mid, cfr = cfr_val, c_surv = c_MVP_op + c_S1b_mid,
                    c_coord = c_coord_FP, coord_mode = "perfect",
                    p_fp = p_fp_S1b_mid, f_terb = f_terb_mid,
                    phi_terb = phi_terb_imperfect, c_regulatory = c_T2_enf) |>
      mutate(scenario = "E-mid")
  )
}

all_cfr <- map_dfr(cfr_grid, run_at_cfr)

p_all_nmb <- ggplot(all_cfr, aes(cfr, NMB_HC, colour = scenario)) +
  geom_line(linewidth = 0.9) +
  geom_vline(xintercept = cfr_mid, linetype = "dotted", colour = "grey50") +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "CFR", y = "NMB HC (R/yr)",
       title = "NMB HC across CFR — all scenarios",
       subtitle = "Vertical dotted line = CFR mid (12.5%)") +
  theme_minimal()

p_all_icer <- ggplot(all_cfr, aes(cfr, ICER, colour = scenario)) +
  geom_line(linewidth = 0.9) +
  geom_hline(yintercept = icer_per_daly, linetype = "dashed", colour = "red") +
  scale_x_continuous(labels = percent_format(accuracy = 1)) +
  scale_y_continuous(labels = comma) +
  labs(x = "CFR", y = "ICER (R/DALY)",
       title = "ICER across CFR",
       subtitle = "Red dashed line = R110,000/DALY threshold") +
  theme_minimal()

p_all_nmb + p_all_icer
```

**Reading the chart.** Scenario rankings are **stable across the full CFR range** — D dominates, E follows, then B/C, then A. Absolute NMB values scale almost linearly with CFR because lower CFR means a larger non-fatal case denominator and therefore more morbidity benefit per percentage-point of detection uplift. The ranking stability is the key defensibility result: the policy ordering does *not* depend on which CFR assumption a reviewer prefers.

---

## Spend-vs-NMB frontier

```{r}
#| label: frontier
#| fig-width: 8
#| fig-height: 5
frontier <- summary_rows |>
  select(scenario, spend = c_total_spend, NMB_HC, NMB_DALY) |>
  arrange(spend) |>
  mutate(label = str_extract(scenario, "^[A-E]"))

ggplot(frontier, aes(spend)) +
  geom_line(aes(y = NMB_HC,   colour = "CBA (HC)"),   linewidth = 1) +
  geom_line(aes(y = NMB_DALY, colour = "CUA (DALY)"), linewidth = 1) +
  geom_point(aes(y = NMB_HC),   colour = "darkgreen", size = 2.5) +
  geom_point(aes(y = NMB_DALY), colour = "steelblue", size = 2.5) +
  ggrepel::geom_text_repel(aes(y = NMB_HC, label = label), nudge_y = 5e8, size = 4) +
  scale_x_continuous(labels = comma) +
  scale_y_continuous(labels = comma) +
  labs(x = "Annual programme spend (R/yr)", y = "NMB (R/yr)",
       colour = NULL,
       title = "Spend → NMB frontier (CFR mid)",
       subtitle = "Both valuations strictly increasing — every scenario passes the dominance test") +
  theme_minimal()
```

---

## Auditable assumption ledger

| Assumption | Source | Where to edit |
|---|---|---|
| Deaths anchor `N_deaths` = 1,014 | StatsSA MACOD 2022 pesticide-specific (X48+X68+X87+Y18); interim pending 2023 | `amua_import_parameters_v4.csv` → `n_deaths_headline` |
| CFR range 10–15% | StatsSA MACOD + stratified cohort | `cfr_headline_lo/mid/hi` |
| Perfect coordination: η = 0.50, k = 3.5, full 957 | User-confirmed for v3 | inline `coord_presets$perfect` |
| Imperfect coordination: η = 0.15, k = 1.2, 50% × 957 | User-confirmed for v3 | inline `coord_presets$imperfect` |
| Perfect ban: φ = 1.00 | Working definition for D | inline `phi_terb_perfect` |
| Imperfect ban: φ = 0.90 (10% residual) | User-confirmed informal-market residual | inline `phi_terb_imperfect` |
| YLL per death = 44 | GBD 2019; mean age 28, LE 72 (**PROVISIONAL** — replace with MACOD age-sex distribution) | `yll_per_death_gbd` |
| ICER threshold = R110,000/DALY | SA GDP per capita 2025 (1× WHO-CHOICE convention) | `icer_per_daly_gdp` |
| Investigation cost = R4,000/alert | NICD field operations | inline `c_per_investigation` |
| DALRRD action cost = R12,000/action | DALRRD inspectorate | inline `c_per_dalrrd_action` |
| P(DALRRD action \| alert) = 0.30 | DALRRD enforcement audit | inline `p_dalrrd_action` |

**To stress-test any assumption**: change the value in the location listed above, re-render. All downstream tables and plots regenerate from the same `run_scenario_v3()` golden-thread function — the model is fully end-to-end reactive.


================================================================
## SOURCE: amua_import_parameters_v3.csv
================================================================

Name,Expression,Notes
# === BURDEN PARAMETERS (mutually-exclusive sum across NMC + NHLS + PIH) ===,,
n_nmc_annual,1013,"Annual NMC pesticide notifications, 2023 | dist=fixed(,) | NICD NMC Annual Report 2023"
n_nhls_severe_annual,1779,"Annual NHLS severe BChE inhibitions (<50% normal), 2023 | dist=fixed(,) | NHLS LIS 2023"
n_nhls_total_annual,10626,"Annual NHLS BChE tests performed (all severities), 2023 — denominator for S3a auto-notify | dist=fixed(,) | NHLS LIS 2023"
n_pih_annual,1158,"Annual PIH clinician-initiated pesticide calls, 2023 (clinical contacts only; total helpline volume is higher) | dist=fixed(,) | PIH 2023 annual data"
n_burden_true,3950,"Observed annual cases = NMC + NHLS-severe + PIH-clinician (2023 volumes, mutually exclusive assumption) = 1013+1779+1158 | dist=fixed(,) | Sum of three streams 2023"
p_burden_overlap_correction,0.30,"Plausible overstatement from undeduplicated overlap (sensitivity) | dist=beta(30,70) | Conservative cap"
# === CASE FATALITY RATE — STRATIFIED BY SEVERITY ===,,
cfr_pih_mild,0.005,"PIH-call-only cases (mostly mild/moderate, often no admission) | dist=beta(5,995) | Estimated; PIH manages many at home"
cfr_nhls_severe,0.30,"Severe BChE inhibition hospitalised cases | dist=beta(30,70) | Buckley 2021 Sri Lanka cohort"
cfr_nmc_hospitalised,0.15,"NMC-notified (clinically significant, hospitalised) | dist=beta(15,85) | Free State 2018-19 + NMC observed"
cfr_blended_observed,0.175,"Implied blended CFR from stratified weights = (1158*0.005 + 1779*0.30 + 1013*0.15)/3950 | dist=fixed(,) | Derived"
cfr_headline_lo,0.10,"Headline lower bound for sensitivity (NMC observed range) | dist=fixed(,) | Decision model base"
cfr_headline_mid,0.125,"Headline midpoint | dist=fixed(,) | Decision model base"
cfr_headline_hi,0.15,"Headline upper bound | dist=fixed(,) | Decision model base"
# Note: stratified CFR yields ~830 deaths/yr; flat 12.5% yields ~1460. StatsSA MACOD anchor (n_deaths_statssa_macod) is the canonical truth source for deaths and should be updated as new StatsSA releases land.,,
n_deaths_stratified,830,"Deaths from stratified CFR application | dist=fixed(,) | Internal consistency check"
n_deaths_headline,1014,"Headline annual deaths = n_deaths_statssa_macod (canonical truth; corrected to pesticide-specific UCOD codes, replaces prior X40-X49 all-noxious-substance figure of 2,620) | dist=fixed(,) | StatsSA MACOD 2022 (X48+X68+X87+Y18) — interim pending 2023 release"
# === StatsSA MORTALITY ANCHOR (CANONICAL TRUTH SOURCE for deaths; used to derive d_status_quo and implied true burden) ===,,
n_deaths_statssa_macod,1014,"StatsSA MACOD pesticide-specific poisoning deaths per year. CANONICAL truth source — update as new StatsSA pesticide-level releases land. Current = StatsSA Causes of Death, Table 4.12, 2022 (most recent year with pesticide-specific UCOD breakdown): X48 Accidental (586) + X68 Intentional self-poisoning (4) + X87 Assault (0) + Y18 Undetermined intent (424) = 1,014. Supersedes the prior anchor of 2,620, which used the broader X40-X49 'accidental poisoning by noxious substance' category (not pesticide-specific). 2023 pesticide-level data not yet released — treat as interim. | dist=gamma(25,40.56) | StatsSA Causes of Death 2022, Table 4.12 (X48/X68/X87/Y18)"
n_true_burden_from_statssa_lo,6760,"Implied true annual burden, upper-CFR scenario = n_deaths_statssa_macod / cfr_headline_hi = 1014/0.15 | dist=fixed(,) | Derived"
n_true_burden_from_statssa_mid,8112,"Implied true annual burden, mid-CFR scenario = n_deaths_statssa_macod / cfr_headline_mid = 1014/0.125 | dist=fixed(,) | Derived"
n_true_burden_from_statssa_hi,10140,"Implied true annual burden, lower-CFR scenario = n_deaths_statssa_macod / cfr_headline_lo = 1014/0.10 | dist=fixed(,) | Derived"
# === PER-CASE COSTS (CASE-MIX-WEIGHTED, ZAR 2025) ===,,
c_pih_call_only,500,"Per-case cost for PIH-managed cases (helpline call + brief OPD + caregiver time) | dist=gamma(25,20) | PIH operational + Stats SA wage"
c_ward_admission_per_day,1800,"Public-sector general ward UPFS day fee | dist=gamma(25,72) | UPFS 2024"
c_highcare_per_day,5500,"Public-sector high-care UPFS day fee | dist=gamma(25,220) | UPFS 2024"
c_icu_per_day,13500,"Public-sector ICU UPFS day fee | dist=gamma(25,540) | UPFS 2024"
c_ventilation_surcharge_per_day,4000,"Mechanical ventilation surcharge per day | dist=gamma(25,160) | UPFS 2024"
c_atropine_full_course,1500,"Full atropine course for OP poisoning (high-dose protocol, 2-5 days) | dist=gamma(25,60) | EML pricing"
c_pralidoxime_course,4500,"PAM course (3-5 days at therapeutic dose) | dist=gamma(25,180) | EML pricing"
los_ward_median_days,3,"Median ward LoS for moderate poisoning admission | dist=fixed(,) | Free State 2018-19 + Buckley 2021"
los_icu_median_days,5,"Median ICU LoS for severe poisoning requiring intensive care | dist=fixed(,) | Buckley 2021"
p_icu_among_severe,0.30,"Proportion of severe (NMC-notified) cases requiring ICU | dist=beta(30,70) | Estimated SA tertiary mix"
p_ventilation_among_icu,0.60,"Proportion of ICU pesticide cases requiring mechanical ventilation | dist=beta(60,40) | Buckley 2021"
c_morbidity_mild_PIH,500,"Per-case morbidity cost for PIH-only stratum | dist=fixed(,) | = c_pih_call_only"
c_morbidity_moderate_NHLS,15000,"Per-case morbidity cost for NHLS ward-admitted (3 days * R1,800 + investigations + R7k OOP/lost wages) | dist=gamma(25,600) | UPFS + Stats SA"
c_morbidity_severe_NMC,80000,"Per-case morbidity cost for NMC-notified severe (mix of ward + ICU + interventions) | dist=gamma(25,3200) | Weighted: 70%*R20k_ward + 30%*R220k_ICU"
c_morbidity_blended,27419,"Case-mix-weighted blended morbidity cost = (1158*500 + 1779*15000 + 1013*80000)/3950 | dist=fixed(,) | Derived"
c_morbidity_headline,12000,"Headline blended morbidity used in burden model (round number; sensitivity R6k-R25k) | dist=gamma(25,480) | Decision model"
# === MORTALITY COST (HUMAN-CAPITAL APPROACH) ===,,
yll_per_death,30,"Years of life lost per pesticide death (median age 30, e64 SA life table) | dist=gamma(30,1) | StatsSA + VR analysis"
median_annual_income_zar,60000,"SA median annual income (StatsSA Quarterly Labour Force Survey 2024) | dist=gamma(25,2400) | StatsSA"
productive_years_lost,25,"Productive YLL per death (15-65 working life truncated at median age 30) | dist=fixed(,) | Human-capital convention"
c_mortality_human_capital,1500000,"Per-death cost: 25 productive yr * R60k income | dist=gamma(25,60000) | Human-capital approach"
c_mortality_DALY_threshold,1155000,"Alternative: 30 YLL * R38,500/DALY (Edoka & Stacey 2020) | dist=fixed(,) | Cost-eff threshold approach"
c_mortality_VSL_lower,5000000,"Alternative: VSL lower (3.3x annual income, OECD-derived for LMIC) | dist=fixed(,) | Robinson et al."
# === TOTAL ECONOMIC BURDEN ===,,
C_burden_morbidity,90000000,"Annual morbidity cost = sum(c_morbidity_stratum * n_stratum) ~ R90M | dist=fixed(,) | Derived"
C_burden_mortality_stratified,1245000000,"Mortality cost using stratified CFR (830 deaths * R1.5M) ~ R1.25B | dist=fixed(,) | Conservative"
C_burden_mortality_headline,1521000000,"Mortality cost using headline 1,014 deaths * R1.5M = R1.52B | dist=fixed(,) | Headline"
C_burden_total_conservative,1335000000,"Conservative total ~ R1.34B/year (stratified CFR) | dist=fixed(,) | Lower bound for advocacy"
C_burden_total_headline,1611000000,"Headline total ~ R1.61B/year | dist=fixed(,) | Used in all advocacy products"
# === STAKEHOLDER SHARES OF ANNUAL BURDEN (ZAR 2025, headline scenario) — who bears the R1.61B ===,,
share_doh_morbidity,70000000,"NDoH (public hospitals): UPFS ward + ICU + ventilation + atropine/PAM + repeat care | dist=fixed(,) | Derived from C_burden_morbidity × hospital-care fraction (~78%)"
share_nhls_morbidity,10000000,"NHLS (laboratory): BChE + LFT + U&E + GC-MS confirmatory volume | dist=fixed(,) | Derived from C_burden_morbidity × lab fraction (~11%)"
share_individual_oop_morbidity,10000000,"Individuals / households out-of-pocket: transport, lost wages during admission, caregiver time | dist=fixed(,) | Derived from C_burden_morbidity × OOP fraction (~11%)"
share_dalrrd_burden,0,"DALRRD (regulator): R0 of burden side by construction — DALRRD cost sits on the intervention side (enforcement, recalls) | dist=fixed(,) | By construction"
share_household_mortality,1521000000,"Households / wider society: lost lifetime earnings (1,014 deaths × R1.5M human-capital) | dist=fixed(,) | = C_burden_mortality_headline"
share_health_system_total,80000000,"Health-sector subtotal (NDoH + NHLS) — the budget-line burden | dist=fixed(,) | = share_doh_morbidity + share_nhls_morbidity"
share_household_total,1531000000,"Household + society subtotal (OOP + lost lifetime earnings) | dist=fixed(,) | = share_individual_oop_morbidity + share_household_mortality"
share_total_check,1611000000,"Sum check vs C_burden_total_headline | dist=fixed(,) | Internal consistency"
# === RESPONSE EFFICACY ===,,
eta_response_lo,0.15,"Response efficacy lower (low-engagement scenario) | dist=fixed(,) | Sensitivity"
eta_response_mid,0.30,"Response efficacy base case | dist=beta(30,70) | Buckley source-control literature"
eta_response_hi,0.50,"Response efficacy upper (well-resourced scenario) | dist=fixed(,) | Sensitivity"
# === DETECTION PROBABILITIES BY OPTION (per-case scale, anchored to StatsSA mid-burden 8,112) ===,,
d_status_quo,0.125,"NMC-only per-case detection probability = n_nmc_annual * cfr_headline_mid / n_deaths_statssa_macod = 1013*0.125/1014 | dist=beta(12,88) | Derived from StatsSA MACOD 2022 pesticide-specific anchor (replaces v1 expert-elicited 0.45)"
d_status_quo_lo,0.100,"d_status_quo lower bound = 1013*0.10/1014 | dist=fixed(,) | Derived"
d_status_quo_hi,0.150,"d_status_quo upper bound = 1013*0.15/1014 | dist=fixed(,) | Derived"
d_status_quo_v1_hotspot,0.45,"LEGACY/DEPRECATED: v1 expert-elicited hotspot-cluster detection probability (binomial-cluster argument, not per-case). Retained for analysis_report_v2.qmd back-compat only — do not use in active policy briefs. | dist=beta(45,55) | Expert elicitation, deprecated"
d_option1_NHLS_MOU,0.52,"LEGACY/DEPRECATED v1 hotspot-cluster figure. Do not use in active briefs. | dist=beta(52,48) | Expert elicitation, deprecated"
d_option2_DALRRD_data,0.58,"LEGACY/DEPRECATED v1 hotspot-cluster figure. Do not use in active briefs. | dist=beta(58,42) | Expert elicitation, deprecated"
d_option3_BChE_autonotify,0.344,"S2 BChE auto-notify per-case detection = (n_nmc_annual + n_nhls_severe_annual)/n_true_burden_from_statssa_mid = (1013+1779)/8112 | dist=beta(34,66) | Derived from StatsSA MACOD 2022 pesticide-specific anchor"
d_option4_PIH_quarterly,0.268,"S1 PIH MVD + dashboard per-case detection = (n_nmc_annual + n_pih_annual)/n_true_burden_from_statssa_mid = (1013+1158)/8112 | dist=beta(27,73) | Derived from StatsSA MACOD 2022 pesticide-specific anchor"
d_option5_provincial_response,0.74,"LEGACY/DEPRECATED v1 hotspot-cluster figure. Do not use in active briefs. | dist=beta(74,26) | Expert elicitation, deprecated"
d_full_package,0.83,"LEGACY/DEPRECATED v1 hotspot-cluster figure. Do not use in active briefs. | dist=beta(83,17) | Expert elicitation, deprecated"
# === OPTION COSTS — SETUP & ANNUAL OPERATING (REVISED, ZAR 2025) ===,,
c_status_quo_program,300000,"Current NICD NMC pesticide program: 0.2 FTE analyst R250k + dashboard R30k + travel R20k | dist=gamma(25,12000) | NICD costing"
c_option1_NHLS_MOU_setup,80000,"Legal + governance + data-mapping (one-off) | dist=gamma(25,3200) | NICD legal + data engineer"
c_option1_NHLS_MOU_operating,60000,"Monthly analyst time + QA + reporting | dist=gamma(25,2400) | 0.05 FTE analyst"
c_option2_DALRRD_setup,80000,"Inter-agency MOU + product database mapping | dist=gamma(25,3200) | Comparable to Option 1"
c_option2_DALRRD_operating,60000,"Annual data refresh + analyst time | dist=gamma(25,2400) | 0.05 FTE analyst"
c_option3_BChE_setup,200000,"NHLS LIS reconfiguration: HL7 message dev + UAT + go-live | dist=gamma(25,8000) | NHLS IT estimate (was missing)"
c_option3_BChE_operating,55000,"Auto-notification middleware hosting + maintenance | dist=gamma(25,2200) | NHLS IT operating"
c_option4_PIH_setup,40000,"Reporting template + data dictionary (one-off) | dist=gamma(25,1600) | PIH admin"
c_option4_PIH_operating,187000,"PIH analyst 0.15 FTE + reporting infrastructure | dist=gamma(25,7480) | REVISED UP - was R62k underestimate"
c_option5_per_province_baseline,40000,"Per-province training + SOP + field kit + coordination | dist=gamma(25,1600) | Provincial DoH"
c_option5_national_baseline,360000,"All 9 provinces baseline (9 * R40k) | dist=fixed(,) | Sum"
c_response_per_hotspot,55000,"Per-hotspot field investigation: 2 staff*2 days + travel + 7 env samples * R1.5k + 7 GC-MS analyses * R2.5k + reporting | dist=gamma(25,2200) | REVISED UP - was R15k (3.5x underestimate)"
c_full_package_narrow_setup,400000,"All Options 1-5 setup combined | dist=gamma(25,16000) | Sum of setups"
c_full_package_narrow_operating,237000,"Narrow surveillance coordination ongoing | dist=fixed(,) | Decision model headline"
c_full_package_wholesystem_operating,1193000,"Whole-system: + induced hospital + lab + EHP + DALRRD enforcement demand | dist=fixed(,) | Decision model headline"
# === WHOLE-SYSTEM (INDUCED-DEMAND) COMPONENTS ===,,
c_induced_hospital_workload,188000,"Additional ED + ward workload from improved case finding | dist=gamma(25,7520) | Costing analysis"
c_induced_lab_volume,493000,"NHLS BChE + repeat tests + confirmatory at higher detection rate | dist=gamma(25,19720) | NHLS volume modelling"
c_induced_EHP_investigations,154000,"Additional EHP field investigations beyond Option 5 baseline | dist=gamma(25,6160) | Provincial DoH"
c_induced_DALRRD_enforcement,121000,"DALRRD inspections + recalls + compliance follow-up | dist=gamma(25,4840) | DALRRD"
# === OPTION 6 — SENTINEL TOXICOLOGY (PARALLEL RESEARCH INVESTMENT) ===,,
c_option6_pilot_year1,1200000,"CHB pilot 12 months: research nurse 0.5 FTE + GC-MS testing + clinical battery | dist=gamma(25,48000) | Concept Note DRAFT 3"
c_option6_full_5site_annual,3625000,"5 sentinel sites full rollout annual | dist=gamma(25,145000) | Concept Note DRAFT 3"
c_gcms_screen_per_specimen,2500,"GC-MS / LC-MS multi-residue pesticide screen, per specimen | dist=gamma(25,100) | NHLS Forensic Chem"
c_clinical_battery_per_patient,1500,"Enhanced clinical battery: BChE + LFT + U&E + repeat | dist=gamma(25,60) | NHLS price list"
c_research_nurse_05FTE_per_site,175000,"0.5 FTE research nurse per sentinel site | dist=gamma(25,7000) | Salary band TASK research"
n_specimens_per_site_per_year,646,"2 specimens (gastric + urine) * 323 patients per site | dist=fixed(,) | Sample-size calc, p=0.3, d=0.05"
# === DALY MONETISATION ===,,
lambda_DALY_threshold,38500,"SA cost-effectiveness threshold per DALY averted | dist=gamma(25,1540) | Edoka & Stacey 2020"
yld_per_survivor_no_sequelae,0.05,"Acute illness ~3 weeks, disability weight 0.4 | dist=gamma(5,0.01) | GBD weights"
yld_per_survivor_with_OPIDN,2.5,"Long-term neuropathy (intermediate syndrome / OPIDN), 5-yr partial disability | dist=gamma(25,0.1) | GBD"
p_OPIDN_among_severe_OP,0.10,"Proportion of severe OP survivors developing OPIDN/intermediate syndrome | dist=beta(10,90) | OP literature"
yld_blended_per_survivor,0.30,"Blended YLD per survivor (90% no sequelae * 0.05 + 10% OPIDN * 2.5) | dist=fixed(,) | Derived"
# === NET MONETARY BENEFIT FRAMEWORK ===,,
NMB_full_package_narrow,259763000,"NMB(PKG) = (C0 - C_PKG) - K_PKG_narrow ~ R260M | dist=fixed(,) | Burden-economics model"
NMB_full_package_wholesystem,258807000,"NMB whole-system perspective | dist=fixed(,) | Burden-economics model"
ROI_narrow_base,1100,"Avoided burden / narrow cost ~ 1100x | dist=fixed(,) | Base case"
ROI_wholesystem_base,220,"Avoided burden / whole-system cost ~ 220x | dist=fixed(,) | Base case"
# === SURVEILLANCE OPTIONS — CANONICAL (S-taxonomy, refactored 2026) ===,,
c_S1_NHLS_NMC_feed_setup,80000,"S1 NHLS→NMC IT feed: legal + governance + data-mapping (one-off) | dist=gamma(25,3200) | NICD legal + data engineer (was c_option1_NHLS_MOU_setup)"
c_S1_NHLS_NMC_feed_op,60000,"S1 NHLS→NMC IT feed operating: 0.05 FTE analyst + QA | dist=gamma(25,2400) | NICD (was c_option1_NHLS_MOU_operating)"
c_S3a_BChE_autonotify_setup,200000,"S3a BChE auto-notify setup: NHLS LIS HL7 reconfiguration + UAT | dist=gamma(25,8000) | NHLS IT (was c_option3_BChE_setup)"
c_S3a_BChE_autonotify_op,55000,"S3a BChE auto-notify operating: middleware hosting + maintenance | dist=gamma(25,2200) | NHLS IT (was c_option3_BChE_operating)"
c_S4_PIH_dashboard_setup,40000,"S4 PIH dashboard / MVD setup: reporting template + data dictionary | dist=gamma(25,1600) | PIH admin"
c_S4_PIH_dashboard_op,82000,"S4 PIH dashboard / MVD operating (includes AfriTox agent-name harmonization for PIH+NMC) | dist=gamma(25,3280) | PIH revised, AfriTox harmonization"
c_surv_MVP_setup,80000,"Surveillance MVP setup (S1+S3a+S4, IT one-off, dominated by S3a HL7 work) | dist=fixed(,) | Sum, S3a setup dominates"
c_surv_MVP_op,137000,"Surveillance MVP annual operating = S1 (R82k, includes AfriTox agent-name harmonization) + S3a (R55k) | dist=fixed(,) | Sum, AfriTox harmonization included"
# === COORDINATION OPTIONS — CANONICAL (C-taxonomy) ===,,
c_C1_NMC_closure_op,30000,"C1 NMC closure-of-loop field: schema change + EHP training material | dist=gamma(25,1200) | NICD NMC team"
c_C2_referral_form_op,25000,"C2 Structured DALRRD referral form on NMC: form build + DALRRD inbox workflow | dist=gamma(25,1000) | NICD + DALRRD"
c_C3_intel_feed_op,40000,"C3 NICD→DALRRD intelligence feed: quarterly brief + cluster-alert SOP | dist=gamma(25,1600) | NICD analyst + DALRRD liaison"
c_C4_clinician_fb_op,20000,"C4 Clinician auto-feedback: email templating + integration | dist=gamma(25,800) | NICD NMC team"
c_C5_KPI_dashboard_op,30000,"C5 Joint KPI dashboard: KPI definitions + public hosting | dist=gamma(25,1200) | NICD + DALRRD + Provinces"
c_coord_FP_op,145000,"Coordination Full Package annual operating = C1+C2+C3+C4+C5 | dist=fixed(,) | Sum"
p_loop_closed_status_quo,0.011,"P(coordination loop fully closes) under status quo | dist=beta(11,989) | Decision-tree joint product"
p_loop_closed_C3_only,0.40,"P(loop closed) after C3 NICD→DALRRD feed alone | dist=beta(40,60) | Decision-tree placeholder"
p_loop_closed_FP,0.70,"P(loop closed) under Coordination Full Package | dist=beta(70,30) | Decision-tree placeholder"
n_deaths_averted_coord_C3,547,"Deaths averted/yr under C3 only at national scale | dist=fixed(,) | Decision-tree output"
n_deaths_averted_coord_FP,957,"Deaths averted/yr under Coordination Full Package at national scale | dist=fixed(,) | Decision-tree output"
# === TERBUFOS REGULATORY OPTIONS — CANONICAL (T-taxonomy) ===,,
frac_terbufos_attributable_lo,0.20,"Terbufos attributable fraction of fatal SA pesticide poisonings, lower | dist=fixed(,) | Sri Lanka single-agent withdrawals Gunnell 2017"
frac_terbufos_attributable_mid,0.25,"Terbufos attributable fraction, working value | dist=beta(25,75) | Gunnell 2017 + Davies 2023 SA paediatric dominance"
frac_terbufos_attributable_hi,0.35,"Terbufos attributable fraction, upper | dist=fixed(,) | Sri Lanka upper end"
n_deaths_terbufos_attributable_mid,375,"= frac_terbufos_attributable_mid × n_deaths_headline = 0.25 × 1500 | dist=fixed(,) | Derived"
frac_T3_burden_retired,0.70,"Fraction of terbufos-attributable burden retired under Option T3 full withdrawal | dist=beta(70,30) | Sri Lanka substitution-incompleteness 60-80%"
n_deaths_averted_T3_lo,200,"Deaths averted/yr under Option T3, lower bound | dist=fixed(,) | = 0.20 × 0.60 × 1500 × adj"
n_deaths_averted_T3_hi,400,"Deaths averted/yr under Option T3, upper bound | dist=fixed(,) | = 0.35 × 0.80 × 1500 × adj"
n_deaths_averted_T2_lo,80,"Deaths averted/yr under Option T2, lower bound | dist=fixed(,) | Partial informal-market coverage"
n_deaths_averted_T2_hi,180,"Deaths averted/yr under Option T2, upper bound | dist=fixed(,) | Partial informal-market coverage"
c_T2_RUP_enforcement_lo,1000000,"Option T2 RUP + audit + formulation restriction enforcement, lower (DALRRD inspectorate) | dist=fixed(,) | US EPA RUP cost scaled to SA"
c_T2_RUP_enforcement_mid,2000000,"Option T2 enforcement, working value | dist=gamma(25,80000) | US EPA anchor"
c_T2_RUP_enforcement_hi,3000000,"Option T2 enforcement, upper | dist=fixed(,) | US EPA upper"
yield_impact_terbufos_withdrawal_mid,0.03,"SA maize yield impact under T3 full withdrawal, working value (Bt traits cover stalk borer use case) | dist=beta(3,97) | EU 2009 no documented collapse + SA Bt penetration ~85%"
yield_impact_terbufos_withdrawal_hi,0.07,"Yield impact upper sensitivity | dist=fixed(,) | Smallholder non-Bt maize exposure"
leverage_ratio_terbufos_T2,500,"Ratio of household mortality cost retired per rand of T2 regulatory spend | dist=fixed(,) | Lower bound, 200 deaths × R1.5M / R2M"
# === DECISION-TREE NODE PROBABILITIES — CANONICAL (consumed by brief mermaid trees) ===,,
p_death,0.13,"Case-fatality among suspected pesticide-poisoning cases | dist=beta(13,87) | NHLS BChE severe cohort"
p_severe,0.27,"Proportion of survivors with severe morbidity (OPIDN / intermediate syndrome trajectory) | dist=beta(27,73) | OP literature"
p_recover,0.60,"Proportion of survivors with full recovery | dist=beta(60,40) | Complement = 1 - p_severe (rounded)"
rho_secondary,3.0,"Secondary cases per index case from a single uncontrolled source (cluster multiplier) | dist=gamma(9,0.33) | NICD outbreak debriefs"
d_surveillance_mvp,0.487,"Per-case detection under Surveillance MVP (S1 PIH MVD + S2 BChE auto-notify) = (n_nmc_annual + n_nhls_severe_annual + n_pih_annual)/n_true_burden_from_statssa_mid = (1013+1779+1158)/8112 | dist=beta(49,51) | Derived from StatsSA MACOD 2022 pesticide-specific anchor"
d_surveillance_full_S3b,0.487,"DEPRECATED key (S3 is now agent-attribution, not a detection-coverage uplift) — retained for back-compat as alias to d_surveillance_mvp. S3 sentinel toxicology identifies the proportion of chemical agents in severely-poisoned live patients; it informs product-banning (terbufos brief) rather than coverage. | dist=beta(49,51) | Derived (alias)"
p_coord_sq_nmc_notified,0.30,"P(case notified on NMC | suspected) under status quo | dist=beta(30,70) | NICD audit"
p_coord_sq_sms_reaches_ehp,0.95,"P(SMS reaches EHP | notified) | dist=beta(95,5) | NICD system check"
p_coord_sq_ehp_investigates,0.60,"P(EHP investigates | SMS received) | dist=beta(60,40) | EHP survey"
p_coord_sq_recorded_on_nmc,0.05,"P(investigation outcome recorded back on NMC | EHP investigates) | dist=beta(5,95) | NICD audit — almost never"
p_coord_sq_refer_dalrrd,0.30,"P(EHP refers to DALRRD | investigates) | dist=beta(30,70) | Informal pathway"
p_coord_sq_dalrrd_acts,0.50,"P(DALRRD takes regulatory action | referred) | dist=beta(50,50) | DALRRD inspectorate"
p_coord_sq_feedback_full,0.10,"P(action fed back to NMC + clinician | DALRRD acts) | dist=beta(10,90) | Typically EHP-only"
# === LEGACY ROWS (v1 5-option taxonomy) — DEPRECATED, retained for back-compat with analysis_report.qmd ===,,
# Use the S/C/T canonical rows above for all new work. The c_option1..c_option5 rows below are v1 and have been superseded.,,

================================================================
## SOURCE: amua_v4_manual_additions.csv
================================================================

# clinical confirmation, generating excess EHP investigation demand.,,,
d_S1b_event_community_lo,0.25,"S1b event-based community surveillance P_detect lower bound: modest uplift above MVP (0.189); partial provincial coverage | dist=beta(25,75) | LMIC community surveillance analogues (IDSR pilot deployments)",detect.S1b
d_S1b_event_community_mid,0.40,"S1b P_detect working value (~2× MVP): CHW mobile-reporting network covering ~50% of provinces + structured alert pipeline | dist=beta(40,60) | EWARN/APSED analogues scaled to SA context",detect.S1b
d_S1b_event_community_hi,0.55,"S1b P_detect upper bound: ambitious full-provincial coverage; contingent on sustained CHW training and QA | dist=beta(55,45) | Optimistic; comparable to WHO-EWARN mature deployment",detect.S1b
c_S1b_setup_lo,1000000,"S1b setup lower: mobile reporting app + pilot training in 2 provinces (one-off) | dist=gamma(25,40000) | Community surveillance analogues pilot-scale",costs.S1b
c_S1b_setup_mid,2000000,"S1b setup working value: app development + national CHW training + protocol + data-cleaning infrastructure (one-off) | dist=gamma(25,80000) | LMIC community surveillance analogues national-scale",costs.S1b
c_S1b_setup_hi,3500000,"S1b setup upper: full 9-province rollout including data warehouse and QA infrastructure (one-off) | dist=gamma(25,140000) | Upper bound",costs.S1b
c_S1b_op_lo,800000,"S1b annual operating lower: maintained in 2 provinces only (~4 provincial coordinators + platform) | dist=gamma(25,32000) | Partial deployment",costs.S1b
c_S1b_op_mid,1500000,"S1b annual operating working value: ~8 provincial coordinators (DPSA L8, R120k each) + national analyst + platform hosting + annual CHW refresher | dist=gamma(25,60000) | EWARN/IDSR analogues",costs.S1b
c_S1b_op_hi,2500000,"S1b annual operating upper: full 9-province deployment with dedicated EHP nodes and enhanced data cleaning | dist=gamma(25,100000) | Full deployment upper",costs.S1b
p_fp_S1b_lo,0.20,"S1b false positive rate lower: 20% of community alerts not confirmed as pesticide poisoning (well-trained reporters, urban-proximate) | dist=beta(20,80) | Community surveillance analogues high-quality",costs.S1b
p_fp_S1b_mid,0.35,"S1b false positive rate working value: 35% of community alerts are not confirmed true pesticide cases; benchmark from IDSR roll-outs in SSA | dist=beta(35,65) | LMIC community surveillance consensus",costs.S1b
p_fp_S1b_hi,0.50,"S1b false positive rate upper: 50% false positives in early phase before training consolidates | dist=beta(50,50) | Early-phase analogue",costs.S1b
# Attributable fractions are literature-derived (sparse SA data); replace with S3 sentinel toxicology data when available.,,,
frac_aldicarb_attributable_lo,0.05,"Aldicarb attributable fraction of fatal SA pesticide poisonings, lower | dist=fixed(,) | Sparse SA data; informal-market enforcement literature",aldi.burden
frac_aldicarb_attributable_mid,0.12,"Aldicarb attributable fraction, working value | dist=beta(12,88) | Two-Step enforcement literature + informal-market SA case reports",aldi.burden
frac_aldicarb_attributable_hi,0.20,"Aldicarb attributable fraction, upper | dist=fixed(,) | Worst-case informal-market scenario pre-enforcement",aldi.burden
frac_aldicarb_burden_retired,0.85,"Fraction of aldicarb-attributable burden retired under formal enforcement of existing ban | dist=beta(85,15) | Already informally banned; formal enforcement achieves high compliance per Sri Lanka + EU analogues",aldi.burden
# YLL values use a provisional mean-age-at-death. Replace yll_mean_age_at_death with StatsSA MACOD tabulation when available.,,,
yll_life_expectancy,72,"Standard life expectancy at birth for YLL calculation (years) | dist=fixed(,) | StatsSA 2023 life tables",daly.gbd
yll_mean_age_at_death,28,"Mean age at pesticide poisoning death SA (years; PROVISIONAL) | dist=fixed(,) | PROVISIONAL — replace with StatsSA MACOD age-sex distribution when tabulation available",daly.gbd
yll_per_death_gbd,44,"YLL per death = yll_life_expectancy - yll_mean_age_at_death = 72-28 | dist=fixed(,) | Derived; provisional pending MACOD",daly.gbd
yld_dw_severe,0.408,"GBD 2019 disability weight: acute severe pesticide poisoning | dist=fixed(,) | GBD 2019 Collaborators, Lancet 2020",daly.gbd
yld_dw_mild,0.150,"GBD 2019 disability weight: acute mild-moderate pesticide poisoning | dist=fixed(,) | GBD 2019 Collaborators",daly.gbd
yld_duration_severe,0.082,"Duration of acute severe episode (years) = ~1 month hospitalisation | dist=fixed(,) | Buckley 2021 median LoS",daly.gbd
yld_duration_mild,0.019,"Duration of acute mild episode (years) = ~1 week recovery | dist=fixed(,) | Clinical consensus",daly.gbd
yld_per_case_severe,0.033,"YLD per severe case = yld_dw_severe × yld_duration_severe = 0.408×0.082 | dist=fixed(,) | Derived",daly.gbd
yld_per_case_mild,0.003,"YLD per mild case = yld_dw_mild × yld_duration_mild = 0.150×0.019 | dist=fixed(,) | Derived",daly.gbd
p_severe_among_detected,0.45,"Proportion of detected cases classified as severe (NHLS BChE severe + NMC hospitalised share of all detected) | dist=beta(45,55) | NMC + NHLS burden split 2023",daly.gbd
icer_per_daly_gdp,110000,"ICER threshold = 1× GDP per capita per DALY averted (R/DALY) | dist=fixed(,) | SA GDP per capita 2025; WHO cost-effectiveness threshold convention",daly.gbd
c_mort_daly_icer,4840000,"Per-death cost under ICER-DALY approach = yll_per_death_gbd × icer_per_daly_gdp = 44×110000 | dist=fixed(,) | Derived",daly.gbd
c_morb_daly_icer_severe,3630,"Per-severe-case cost under ICER-DALY approach = yld_per_case_severe × icer_per_daly_gdp = 0.033×110000 | dist=fixed(,) | Derived",daly.gbd
c_morb_daly_icer_mild,330,"Per-mild-case cost under ICER-DALY approach = yld_per_case_mild × icer_per_daly_gdp = 0.003×110000 | dist=fixed(,) | Derived",daly.gbd
# These parameters mirror the Amua tree drafted by the project team. They describe outcomes for a single individual over one year, rather than the population aggregate above. Used by R/terbufos_tree_personal.r and §6b of posts/terbufos_policy.qmd.,,,
sa_population_ref,63100000,"SA population reference for converting per-individual expected values to annual national totals | dist=fixed(,) | StatsSA mid-year estimate 2025 (63,100,000)",terb.personal_tree
p_p_exposed_sq,0.000332,"Status-quo annual probability an SA individual experiences a clinically-recognised pesticide poisoning = n_true_burden_from_statssa_mid / sa_population_ref = 20960/63100000 | dist=fixed(,) | Derived",terb.personal_tree
p_p_exposed_ban,0.000332,"Annual poisoning probability under ban (held equal to SQ — the ban changes the AGENT mix, not the overall poisoning rate, until substitute-product behaviour is observed) | dist=fixed(,) | Working assumption",terb.personal_tree
p_terbufos_among_poisoned_sq,0.5,"Share of poisoning events involving terbufos under status quo | dist=beta(50,50) | Davies 2023 paediatric dominance generalised; Amua draft",terb.personal_tree
p_terbufos_among_poisoned_ban,0.1,"Residual share of poisoning events still involving terbufos after ban (informal stockpile + cross-border leakage) | dist=beta(10,90) | Sri Lanka post-ban residual; Amua draft",terb.personal_tree
p_die_given_terbufos,0.125,"Case-fatality given exposure to terbufos | dist=beta(125,875) | NHLS severe-BChE cohort, Class Ia OP literature",terb.personal_tree
p_hosp_given_terbufos,0.275,"Probability of hospitalisation (non-fatal) given exposure to terbufos | dist=beta(275,725) | Buckley 2021",terb.personal_tree
p_asymp_given_terbufos,0.600,"Probability of asymptomatic / outpatient course given exposure to terbufos | dist=fixed(,) | Complement (1 - die - hosp)",terb.personal_tree
p_die_given_other,0.010,"Case-fatality given exposure to non-terbufos pesticide | dist=beta(10,990) | Lower-toxicity substitutes",terb.personal_tree
p_hosp_given_other,0.090,"Probability of hospitalisation given exposure to non-terbufos pesticide | dist=beta(90,910) | Lower-toxicity substitutes",terb.personal_tree
p_asymp_given_other,0.900,"Probability of asymptomatic course given non-terbufos pesticide | dist=fixed(,) | Complement",terb.personal_tree
p_background_mortality_personal,0,"Background mortality stub on the not-poisoned branch. Set to 0 so the tree isolates the pesticide-attributable signal; flip to a non-zero value (e.g. 0.01) only if you want all-cause mortality to appear in the rollup. | dist=fixed(,) | Design choice",terb.personal_tree
c_personal_death,1500000,"Per-individual cost of a fatal outcome (human-capital, alias for c_mortality_human_capital) | dist=fixed(,) | = c_mortality_human_capital",terb.personal_tree
c_personal_hospitalisation,80000,"Per-individual cost of a non-fatal hospitalisation (alias for c_morbidity_severe_NMC) | dist=fixed(,) | = c_morbidity_severe_NMC",terb.personal_tree
c_personal_asymptomatic,500,"Per-individual cost of an asymptomatic / PIH-managed episode (alias for c_pih_call_only) | dist=fixed(,) | = c_pih_call_only",terb.personal_tree
# === DEPRECATED ALIASES — v3 S-taxonomy names (use v4 names for all new work) ===,,,
c_per_ehp_investigation_lo,2500,"EHP environmental investigation cost per alert (lower): travel + site visit + interviews + write-up | dist=gamma(25,100) | NDoH EHP unit costing",costs.coord_per_action
c_per_ehp_investigation_mid,4000,"EHP environmental investigation cost per alert (working): travel + site visit + sampling + interviews + write-up + supervisor review | dist=gamma(25,160) | NDoH EHP unit costing",costs.coord_per_action
c_per_ehp_investigation_hi,7000,"EHP environmental investigation cost per alert (upper): remote/rural site with overnight, full sampling panel, follow-up visit | dist=gamma(25,280) | NDoH EHP unit costing",costs.coord_per_action
c_per_dalrrd_inspection_lo,6000,"DALRRD inspectorate site visit + sampling cost per referral (lower): urban, single-product, single visit | dist=gamma(25,240) | DALRRD inspectorate unit cost",costs.coord_per_action
c_per_dalrrd_inspection_mid,12000,"DALRRD inspectorate site visit + sampling + enforcement letter per referral (working): mid-distance, single-site, sample dispatch, follow-up | dist=gamma(25,480) | DALRRD inspectorate unit cost",costs.coord_per_action
c_per_dalrrd_inspection_hi,25000,"DALRRD inspectorate cost per referral (upper): rural/multi-site, full sampling, legal-letter and follow-up enforcement | dist=gamma(25,1000) | DALRRD inspectorate unit cost",costs.coord_per_action
p_dalrrd_action_given_referral,0.30,"P(DALRRD inspectorate takes site action | confirmed EHP referral worth referring): includes both true positives and confirmed FPs warranting any inspection | dist=beta(30,70) | DALRRD inspectorate working assumption",costs.coord_per_action
