# =============================================================================
# build_surveillance_costing_xlsx.R
# -----------------------------------------------------------------------------
# One-off generator for data/surveillance_costing.xlsx -- the policy-maker-
# facing, editable workbook that feeds the costing tabset in
# posts/surveillance_policy.qmd.
#
# Why a .xlsx (not just the CSV)
# ------------------------------
# The canonical parameter CSV (amua_import_parameters_v3.csv) holds aggregated
# inputs the *model* consumes (e.g. c_S4_PIH_dashboard_op = R82k). Policy
# advisors want to see and edit the *build-up* of those numbers: the FTE
# fraction of an NICD epidemiologist, the SMS gateway price, the share of
# notifications that are pesticide-related. That build-up sits more naturally
# in a spreadsheet -- people can override a cell, save, and re-render.
#
# The .xlsx has three sheets:
#   1. personnel   -- staff time per stream (NMC / PIH / BChE / cross-cutting)
#   2. system      -- infrastructure, hosting, SMS, licensing
#   3. allocation  -- proportionality factors (pesticide cases / total)
#
# Run from the project root:
#   Rscript R/build_surveillance_costing_xlsx.R
# =============================================================================

suppressPackageStartupMessages({
  library(tidyverse)
  library(openxlsx)
})

out_path <- "data/surveillance_costing.xlsx"
dir.create("data", showWarnings = FALSE)

# -----------------------------------------------------------------------------
# 1. PERSONNEL
# -----------------------------------------------------------------------------
# Annual cost-to-employer (CTE) figures are public-sector SA reference points.
# Rationale columns cite the anchor; user can override any rate in column J.
#
# Sources (all 2024-2025 ZAR):
#   * NICD scientist / epi (DPSA L10-11 mid-step + 30% employer on-costs)
#     ~R650k/yr     -- DPSA Salary Scales 2024 (Public Service Coordinating
#                      Bargaining Council); NICD recruitment notices.
#   * NHLS medical scientist / lab manager (NHLS Patterson grade D/E)
#     ~R900k/yr     -- NHLS remuneration scale 2024; PSA NHLS submission.
#   * Clinician (Medical Officer, Grade 1-3 community service+)
#     ~R1.1M/yr CTE -- Department of Health uniform OSD scale 2024.
#   * PIH poisons specialist (clinical pharmacist, OSD scale)
#     ~R780k/yr     -- DoH pharmacy OSD scale 2024.
#   * Data engineer / dev (mid, public-sector contract)
#     ~R750k/yr     -- SITA / state IT contracting benchmarks; PayScale ZA.
# -----------------------------------------------------------------------------

personnel <- tribble(
  ~stream,    ~role,                              ~annual_cte_zar, ~fte_pct, ~rationale,                                                                          ~source,
  "NMC",      "NICD epidemiologist (analyst)",            650000,       20, "0.2 FTE reviewing/cleaning the ~12k annual NMC notifications; pesticide is ~1% of intake.", "DPSA L10-11 scale 2024 + NICD recruitment",
  "NMC",      "Provincial communicable-disease coord.",   700000,        5, "Triage of pesticide-flagged notifications across 9 provinces (cumulative 0.05 FTE).", "DoH provincial OSD scale 2024",
  "NMC",      "Clinician notification time",             1100000,        2, "~10 min/notification x ~1,013 notifications/yr ~ 169 hr ~ 1.8% of one MO's year.",     "DoH MO Grade 1-3 OSD 2024",
  "PIH",      "Poisons information specialist",           780000,       15, "Pesticide is ~15% of PIH call volume (1,158 of ~7,700 clinician-initiated calls).",  "DoH pharmacy OSD 2024; PIH 2023 report",
  "PIH",      "PIH clinical toxicologist (oversight)",   1300000,        5, "Senior medical review of complex pesticide consults.",                                 "Stellenbosch FoMHS appointment letters",
  "BChE",     "NHLS chemical pathologist (oversight)",   1500000,        2, "Sign-out of severe BChE results (~1,779/yr) at ~5 min each.",                          "NHLS Patterson grade E 2024",
  "BChE",     "NHLS medical scientist (laboratory)",      900000,        8, "BChE assay throughput: ~10,626 tests/yr; bench time ~30 min/test prorated.",          "NHLS Patterson grade D 2024",
  "BChE",     "NHLS phlebotomy / sample handling",        420000,        3, "Pre-analytic handling on ~10,626 BChE specimens.",                                     "NHLS technical grade C 2024",
  "Cross",    "NICD data engineer (notification feeds)",  750000,       10, "Maintains NHLS->NMC IT feed (now operational) and BChE auto-notify rules.",            "SITA / state IT contracting 2024",
  "Cross",    "NICD biostatistician (signal detection)",  850000,        5, "Spatial-temporal monitoring of pesticide signals across streams.",                     "DPSA L11-12 scale 2024",
)

personnel <- personnel %>%
  mutate(
    annual_cost_zar = round(annual_cte_zar * fte_pct / 100),
    .after = fte_pct
  )

# -----------------------------------------------------------------------------
# 2. SYSTEM
# -----------------------------------------------------------------------------
# Hosting, SMS, licences, reagent / consumable shares attributable to pesticide
# surveillance. These map to the existing CSV op-cost lines but expose the
# unit drivers (cost per SMS, per assay, per VM-month).
#
# Sources:
#   * SMS gateway: Clickatell / BulkSMS SA published rates 2024 (R0.20/SMS).
#   * Cloud hosting: AWS af-south-1 t3.medium ~ R650/mo + RDS ~R2.5k/mo.
#   * BChE reagent (cuvettes + butyrylthiocholine): NHLS State Tender RT-262.
#   * NMC platform hosting: NICD ICT budget 2024 line item.
#   * AfriTox licence: PIH AfriTox renewal invoice (informal).
# -----------------------------------------------------------------------------

system_costs <- tribble(
  ~stream, ~item,                                ~unit_cost_zar, ~units_per_yr, ~rationale,                                                  ~source,
  "NMC",   "NMC platform hosting + maintenance",       180000,             1, "Annual platform OPEX (NICD ICT budget line, pesticide share ~1%).", "NICD ICT budget 2024",
  "NMC",   "Outbound SMS to EHPs (notification alerts)",  0.20,         5000, "~1 SMS per pesticide notification + 4 escalation messages.", "Clickatell / BulkSMS ZA 2024",
  "NMC",   "Dashboard hosting (Power BI Premium share)",  18000,            1, "Pesticide pages on national NMC dashboard (estimate).",      "Microsoft ZA enterprise agreement 2024",
  "PIH",   "AfriTox database licence (annual)",         120000,             1, "Poison agent reference database; pesticide is ~15% of queries.", "PIH AfriTox renewal invoice",
  "PIH",   "Telephony (toll-free 0861-555-777)",         85000,             1, "Toll-free line annual cost (pesticide share ~15%).",          "Telkom toll-free annual 2024",
  "PIH",   "Dashboard hosting (Tygerberg cloud VM)",     42000,             1, "AWS af-south-1 small VM + storage + backup.",                 "AWS af-south-1 pricing 2024",
  "BChE", "Butyrylcholinesterase reagent",                 35,        10626, "Per-assay reagent (NHLS State Tender RT-262 unit price).",     "NHLS State Tender RT-262 (2023)",
  "BChE", "LIS rule engine middleware (HL7 router)",    180000,             1, "Mirth Connect hosting + maintenance.",                        "NHLS LIS team estimate",
  "BChE", "Sample courier / cold chain",                   25,        10626, "Per-specimen transport across NHLS network.",                 "NHLS logistics tariff 2024",
  "Cross","Data warehouse / ETL (NICD)",               240000,             1, "Snowflake / Azure Synapse share for cross-stream linkage.",   "NICD data platform budget 2024",
)

system_costs <- system_costs %>%
  mutate(
    annual_cost_zar = round(unit_cost_zar * units_per_yr),
    .after = units_per_yr
  )

# -----------------------------------------------------------------------------
# 3. ALLOCATION
# -----------------------------------------------------------------------------
# Proportionality factors. NMC carries ~10,000 notifications/month across all
# notifiable conditions; pesticide poisoning is ~100/month -- a ~1% share that
# anchors how much of the NMC platform OPEX is attributable to this work.
# These are EDITABLE; the qmd applies them downstream as cost multipliers.
# -----------------------------------------------------------------------------

allocation <- tribble(
  ~stream, ~basis,                                        ~pesticide_count_yr, ~total_count_yr, ~rationale,                                                                    ~source,
  "NMC",   "Notifications: pesticide / all notifiable",                   1013,         120000, "~100 pesticide notifications/month vs ~10,000/month all notifiable conditions.", "NICD NMC Annual Report 2023",
  "PIH",   "Calls: pesticide / clinician-initiated total",                1158,           7700, "Pesticide is ~15% of PIH clinician-initiated call volume.",                    "PIH Annual Report 2023",
  "BChE",  "BChE tests: pesticide-suspected / all BChE",                 10626,          10626, "BChE testing is essentially pesticide-specific; allocation ~100%.",            "NHLS LIS 2023",
)

allocation <- allocation %>%
  mutate(
    allocation_pct = round(100 * pesticide_count_yr / total_count_yr, 2),
    .after = total_count_yr
  )

# -----------------------------------------------------------------------------
# 4. README sheet -- in-workbook documentation so the spreadsheet is self-
#    contained for the policy advisor opening it without the qmd context.
# -----------------------------------------------------------------------------

readme <- tribble(
  ~field, ~description,
  "Workbook purpose",      "Editable cost build-up for the surveillance policy brief status-quo costing tabset.",
  "Source of truth",       "This .xlsx is the source of truth for personnel/system unit costs. The brief reads it at render time.",
  "Editing protocol",      "Open in Excel/LibreOffice; edit any cell in the 'personnel', 'system', or 'allocation' sheets; save; re-render the site.",
  "Annual cost formula",   "personnel: annual_cost_zar = annual_cte_zar * fte_pct / 100; system: annual_cost_zar = unit_cost_zar * units_per_yr.",
  "Allocation",            "The 'allocation' sheet gives the share of each stream's total volume that is pesticide-poisoning related. The brief applies this to platform-level OPEX rows tagged 'pesticide share' in their rationale.",
  "Currency / year",       "2024-2025 ZAR. No inflation adjustment applied.",
  "Not in this workbook",  "Marginal / option costs (S1 PIH dashboard, S2 BChE auto-notify, MVP) remain in amua_import_parameters_v3.csv. The brief reads them from there.",
)

# -----------------------------------------------------------------------------
# Write the workbook
# -----------------------------------------------------------------------------

wb <- createWorkbook()
hdr <- createStyle(textDecoration = "bold", fgFill = "#E6F0FF", border = "bottom")
money <- createStyle(numFmt = "#,##0")

addWorksheet(wb, "README")
writeData(wb, "README", readme, headerStyle = hdr)
setColWidths(wb, "README", cols = 1:2, widths = c(22, 95))

addWorksheet(wb, "personnel")
writeData(wb, "personnel", personnel, headerStyle = hdr)
addStyle(wb, "personnel",
         money, rows = 2:(nrow(personnel) + 1),
         cols = which(names(personnel) %in% c("annual_cte_zar", "annual_cost_zar")),
         gridExpand = TRUE)
setColWidths(wb, "personnel",
             cols = 1:ncol(personnel),
             widths = c(10, 38, 16, 10, 18, 80, 45))

addWorksheet(wb, "system")
writeData(wb, "system", system_costs, headerStyle = hdr)
addStyle(wb, "system",
         money, rows = 2:(nrow(system_costs) + 1),
         cols = which(names(system_costs) %in% c("unit_cost_zar", "units_per_yr", "annual_cost_zar")),
         gridExpand = TRUE)
setColWidths(wb, "system",
             cols = 1:ncol(system_costs),
             widths = c(10, 42, 16, 14, 18, 70, 40))

addWorksheet(wb, "allocation")
writeData(wb, "allocation", allocation, headerStyle = hdr)
setColWidths(wb, "allocation",
             cols = 1:ncol(allocation),
             widths = c(10, 48, 20, 18, 16, 70, 35))

saveWorkbook(wb, out_path, overwrite = TRUE)
cat("Wrote:", out_path, "\n")

# Quick sanity summary
cat("\nPersonnel total (status quo, allocated to pesticide via FTE %):\n")
cat(sprintf("  R%s\n", format(sum(personnel$annual_cost_zar), big.mark = ",")))
cat("System total (status quo, raw -- pre-allocation):\n")
cat(sprintf("  R%s\n", format(sum(system_costs$annual_cost_zar), big.mark = ",")))
