#!/usr/bin/env Rscript
# =============================================================================
# R/create_v4_csv.R
#
# Creates amua_import_parameters_v4.csv from v3 with:
#   • New 4th column 'Group' for structured audit grouping
#   • S-taxonomy renamed to align with brief S1/S2 option labelling:
#       d_option4_PIH_quarterly    → d_S1_PIH_MVD
#       d_option3_BChE_autonotify  → d_S2_BChE_autonotify
#       c_S4_PIH_dashboard_*       → c_S1_PIH_MVD_*
#       c_S3a_BChE_autonotify_*    → c_S2_BChE_autonotify_*
#       c_S1_NHLS_NMC_feed_*       → c_S0_NHLS_NMC_feed_* (now operational)
#   • Updated Notes for renamed rows
#   • Updated section-header text
#   • Deprecated alias rows added at end for backward compatibility
# =============================================================================

suppressPackageStartupMessages({
  library(readr)
  library(dplyr)
  library(stringr)
})

in_file  <- Filter(file.exists, c(
  "amua_import_parameters_v3.csv",
  "../amua_import_parameters_v3.csv"
))[1]

out_file <- sub("v3", "v4", in_file)

# ── 1. Rename map (old Name → new Name) ──────────────────────────────────
rename_map <- c(
  "d_option3_BChE_autonotify"   = "d_S2_BChE_autonotify",
  "d_option4_PIH_quarterly"     = "d_S1_PIH_MVD",
  "c_S3a_BChE_autonotify_setup" = "c_S2_BChE_autonotify_setup",
  "c_S3a_BChE_autonotify_op"    = "c_S2_BChE_autonotify_op",
  "c_S4_PIH_dashboard_setup"    = "c_S1_PIH_MVD_setup",
  "c_S4_PIH_dashboard_op"       = "c_S1_PIH_MVD_op",
  "c_S1_NHLS_NMC_feed_setup"    = "c_S0_NHLS_NMC_feed_setup",
  "c_S1_NHLS_NMC_feed_op"       = "c_S0_NHLS_NMC_feed_op"
)

# ── 2. Notes overrides (keyed on OLD name, applied before rename) ─────────
notes_overrides <- tribble(
  ~Name,                          ~Notes,
  "c_S1_NHLS_NMC_feed_setup",
    "S0 (operational) NHLS→NMC IT feed: legal + governance + data-mapping (one-off). Now operational; included in status-quo baseline. | dist=gamma(25,3200) | NICD (was c_S1_NHLS_NMC_feed_setup in v3)",
  "c_S1_NHLS_NMC_feed_op",
    "S0 (operational) NHLS→NMC IT feed operating: 0.05 FTE analyst + QA. Included in status-quo cost baseline. | dist=gamma(25,2400) | NICD (was c_S1_NHLS_NMC_feed_op in v3)",
  "c_S4_PIH_dashboard_setup",
    "S1 PIH live dashboard + MVD setup: reporting template + data dictionary (one-off) | dist=gamma(25,1600) | PIH admin (was c_S4_PIH_dashboard_setup in v3)",
  "c_S4_PIH_dashboard_op",
    "S1 PIH live dashboard + MVD operating (includes AfriTox agent-name harmonisation for PIH+NMC) | dist=gamma(25,3280) | PIH revised, AfriTox harmonisation (was c_S4_PIH_dashboard_op in v3)",
  "c_S3a_BChE_autonotify_setup",
    "S2 BChE auto-notify setup: NHLS LIS HL7 reconfiguration + UAT | dist=gamma(25,8000) | NHLS IT (was c_S3a_BChE_autonotify_setup in v3)",
  "c_S3a_BChE_autonotify_op",
    "S2 BChE auto-notify operating: middleware hosting + maintenance | dist=gamma(25,2200) | NHLS IT (was c_S3a_BChE_autonotify_op in v3)",
  "d_option4_PIH_quarterly",
    "S1 PIH MVD + dashboard per-case detection = (n_nmc_annual + n_pih_annual)/n_true_burden_from_statssa_mid = (1013+1158)/20960 | dist=beta(10,90) | Derived from StatsSA MACOD 2023 anchor (was d_option4_PIH_quarterly in v3)",
  "d_option3_BChE_autonotify",
    "S2 BChE auto-notify per-case detection = (n_nmc_annual + n_nhls_severe_annual)/n_true_burden_from_statssa_mid = (1013+1779)/20960 | dist=beta(13,87) | Derived from StatsSA MACOD 2023 anchor (was d_option3_BChE_autonotify in v3)",
  "c_surv_MVP_op",
    "Surveillance MVP annual operating = S1 PIH MVD (R82k, AfriTox harmonisation) + S2 BChE auto-notify (R55k) = R137k | dist=fixed(,) | Sum",
  "c_surv_MVP_setup",
    "Surveillance MVP setup (S0 NHLS-NMC feed + S1 PIH MVD + S2 BChE, IT one-off; S2 BChE HL7 work dominates) | dist=fixed(,) | Sum, S2 BChE setup dominates"
)

# ── 3. Section-header text updates ───────────────────────────────────────
header_subs <- c(
  "DETECTION PROBABILITIES BY OPTION (per-case scale, anchored to StatsSA mid-burden 20,960)" =
    "DETECTION PROBABILITIES BY OPTION (v4: d_S1_PIH_MVD, d_S2_BChE_autonotify — per-case, StatsSA-anchored)",
  "SURVEILLANCE OPTIONS — CANONICAL (S-taxonomy, refactored 2026)" =
    "SURVEILLANCE OPTIONS — CANONICAL (v4: S0 operational, S1 PIH MVD, S2 BChE auto-notify)",
  "OPTION COSTS — SETUP & ANNUAL OPERATING (REVISED, ZAR 2025)" =
    "OPTION COSTS — STATUS QUO + FULL PACKAGE (v4; c_option1-5 rows kept here as deprecated — see Group column)",
  "LEGACY ROWS (v1 5-option taxonomy) — DEPRECATED, retained for back-compat with analysis_report.qmd" =
    "LEGACY ROWS — DEPRECATED (v1 option1-5 + v3 S-taxonomy aliases; use v4 names for all new work)"
)

# ── 4. Group map (keyed on FINAL/POST-RENAME name) ───────────────────────
group_map <- c(
  # Burden: case counts
  n_nmc_annual                        = "burden.counts",
  n_nhls_severe_annual                = "burden.counts",
  n_nhls_total_annual                 = "burden.counts",
  n_pih_annual                        = "burden.counts",
  n_burden_true                       = "burden.counts",
  p_burden_overlap_correction         = "burden.counts",
  # Burden: CFR
  cfr_pih_mild                        = "burden.cfr",
  cfr_nhls_severe                     = "burden.cfr",
  cfr_nmc_hospitalised                = "burden.cfr",
  cfr_blended_observed                = "burden.cfr",
  cfr_headline_lo                     = "burden.cfr",
  cfr_headline_mid                    = "burden.cfr",
  cfr_headline_hi                     = "burden.cfr",
  n_deaths_stratified                 = "burden.deaths",
  n_deaths_headline                   = "burden.deaths",
  # StatsSA anchor
  n_deaths_statssa_macod              = "burden.statssa_anchor",
  n_true_burden_from_statssa_lo       = "burden.statssa_anchor",
  n_true_burden_from_statssa_mid      = "burden.statssa_anchor",
  n_true_burden_from_statssa_hi       = "burden.statssa_anchor",
  # Per-case costs
  c_pih_call_only                     = "burden.per_case_costs",
  c_ward_admission_per_day            = "burden.per_case_costs",
  c_highcare_per_day                  = "burden.per_case_costs",
  c_icu_per_day                       = "burden.per_case_costs",
  c_ventilation_surcharge_per_day     = "burden.per_case_costs",
  c_atropine_full_course              = "burden.per_case_costs",
  c_pralidoxime_course                = "burden.per_case_costs",
  los_ward_median_days                = "burden.per_case_costs",
  los_icu_median_days                 = "burden.per_case_costs",
  p_icu_among_severe                  = "burden.per_case_costs",
  p_ventilation_among_icu             = "burden.per_case_costs",
  c_morbidity_mild_PIH                = "burden.per_case_costs",
  c_morbidity_moderate_NHLS           = "burden.per_case_costs",
  c_morbidity_severe_NMC              = "burden.per_case_costs",
  c_morbidity_blended                 = "burden.per_case_costs",
  c_morbidity_headline                = "burden.per_case_costs",
  # Mortality costs
  yll_per_death                       = "burden.mortality_costs",
  median_annual_income_zar            = "burden.mortality_costs",
  productive_years_lost               = "burden.mortality_costs",
  c_mortality_human_capital           = "burden.mortality_costs",
  c_mortality_DALY_threshold          = "burden.mortality_costs",
  c_mortality_VSL_lower               = "burden.mortality_costs",
  # Total burden
  C_burden_morbidity                  = "burden.total",
  C_burden_mortality_stratified       = "burden.total",
  C_burden_mortality_headline         = "burden.total",
  C_burden_total_conservative         = "burden.total",
  C_burden_total_headline             = "burden.total",
  # Stakeholder shares
  share_doh_morbidity                 = "burden.stakeholder_shares",
  share_nhls_morbidity                = "burden.stakeholder_shares",
  share_individual_oop_morbidity      = "burden.stakeholder_shares",
  share_dalrrd_burden                 = "burden.stakeholder_shares",
  share_household_mortality           = "burden.stakeholder_shares",
  share_health_system_total           = "burden.stakeholder_shares",
  share_household_total               = "burden.stakeholder_shares",
  share_total_check                   = "burden.stakeholder_shares",
  # Response efficacy
  eta_response_lo                     = "shared.response_efficacy",
  eta_response_mid                    = "shared.response_efficacy",
  eta_response_hi                     = "shared.response_efficacy",
  # Detection: status quo
  d_status_quo                        = "detect.status_quo",
  d_status_quo_lo                     = "detect.status_quo",
  d_status_quo_hi                     = "detect.status_quo",
  # Detection: deprecated v1
  d_status_quo_v1_hotspot             = "detect.deprecated",
  d_option1_NHLS_MOU                  = "detect.deprecated",
  d_option2_DALRRD_data               = "detect.deprecated",
  d_option5_provincial_response       = "detect.deprecated",
  d_full_package                      = "detect.deprecated",
  d_surveillance_full_S3b             = "detect.deprecated",
  # Detection: v4 active (post-rename names)
  d_S1_PIH_MVD                        = "detect.S1_PIH_MVD",
  d_S2_BChE_autonotify                = "detect.S2_BChE",
  d_surveillance_mvp                  = "detect.MVP",
  # Shared tree outcomes
  p_death                             = "shared.outcomes",
  p_severe                            = "shared.outcomes",
  p_recover                           = "shared.outcomes",
  rho_secondary                       = "shared.outcomes",
  # Coordination probabilities
  p_coord_sq_nmc_notified             = "coord.probabilities",
  p_coord_sq_sms_reaches_ehp          = "coord.probabilities",
  p_coord_sq_ehp_investigates         = "coord.probabilities",
  p_coord_sq_recorded_on_nmc          = "coord.probabilities",
  p_coord_sq_refer_dalrrd             = "coord.probabilities",
  p_coord_sq_dalrrd_acts              = "coord.probabilities",
  p_coord_sq_feedback_full            = "coord.probabilities",
  p_loop_closed_status_quo            = "coord.probabilities",
  p_loop_closed_C3_only               = "coord.probabilities",
  p_loop_closed_FP                    = "coord.probabilities",
  # Coordination outcomes
  n_deaths_averted_coord_C3           = "coord.outcomes",
  n_deaths_averted_coord_FP           = "coord.outcomes",
  # Option costs: status quo
  c_status_quo_program                = "costs.status_quo",
  # Option costs: deprecated (old v1 c_option* rows — still in OPTION COSTS section)
  c_option1_NHLS_MOU_setup            = "costs.deprecated",
  c_option1_NHLS_MOU_operating        = "costs.deprecated",
  c_option2_DALRRD_setup              = "costs.deprecated",
  c_option2_DALRRD_operating          = "costs.deprecated",
  c_option3_BChE_setup                = "costs.deprecated",
  c_option3_BChE_operating            = "costs.deprecated",
  c_option4_PIH_setup                 = "costs.deprecated",
  c_option4_PIH_operating             = "costs.deprecated",
  c_option5_per_province_baseline     = "costs.deprecated",
  c_option5_national_baseline         = "costs.deprecated",
  # Full package costs
  c_response_per_hotspot              = "costs.full_package",
  c_full_package_narrow_setup         = "costs.full_package",
  c_full_package_narrow_operating     = "costs.full_package",
  c_full_package_wholesystem_operating= "costs.full_package",
  # Induced demand
  c_induced_hospital_workload         = "costs.induced_demand",
  c_induced_lab_volume                = "costs.induced_demand",
  c_induced_EHP_investigations        = "costs.induced_demand",
  c_induced_DALRRD_enforcement        = "costs.induced_demand",
  # S3 sentinel toxicology
  c_option6_pilot_year1               = "costs.S3_sentinel",
  c_option6_full_5site_annual         = "costs.S3_sentinel",
  c_gcms_screen_per_specimen          = "costs.S3_sentinel",
  c_clinical_battery_per_patient      = "costs.S3_sentinel",
  c_research_nurse_05FTE_per_site     = "costs.S3_sentinel",
  n_specimens_per_site_per_year       = "costs.S3_sentinel",
  # DALY
  lambda_DALY_threshold               = "burden.daly",
  yld_per_survivor_no_sequelae        = "burden.daly",
  yld_per_survivor_with_OPIDN         = "burden.daly",
  p_OPIDN_among_severe_OP             = "burden.daly",
  yld_blended_per_survivor            = "burden.daly",
  # NMB
  NMB_full_package_narrow             = "shared.nmb",
  NMB_full_package_wholesystem        = "shared.nmb",
  ROI_narrow_base                     = "shared.nmb",
  ROI_wholesystem_base                = "shared.nmb",
  # v4 S0/S1/S2/MVP costs (post-rename names)
  c_S0_NHLS_NMC_feed_setup            = "costs.S0_NHLS",
  c_S0_NHLS_NMC_feed_op               = "costs.S0_NHLS",
  c_S1_PIH_MVD_setup                  = "costs.S1_PIH_MVD",
  c_S1_PIH_MVD_op                     = "costs.S1_PIH_MVD",
  c_S2_BChE_autonotify_setup          = "costs.S2_BChE",
  c_S2_BChE_autonotify_op             = "costs.S2_BChE",
  c_surv_MVP_setup                    = "costs.MVP",
  c_surv_MVP_op                       = "costs.MVP",
  # Coordination costs C1-C5
  c_C1_NMC_closure_op                 = "costs.coord_C1_C5",
  c_C2_referral_form_op               = "costs.coord_C1_C5",
  c_C3_intel_feed_op                  = "costs.coord_C1_C5",
  c_C4_clinician_fb_op                = "costs.coord_C1_C5",
  c_C5_KPI_dashboard_op               = "costs.coord_C1_C5",
  c_coord_FP_op                       = "costs.coord_C1_C5",
  # Terbufos
  frac_terbufos_attributable_lo       = "terb.burden",
  frac_terbufos_attributable_mid      = "terb.burden",
  frac_terbufos_attributable_hi       = "terb.burden",
  n_deaths_terbufos_attributable_mid  = "terb.burden",
  frac_T3_burden_retired              = "terb.burden",
  n_deaths_averted_T3_lo              = "terb.outcomes",
  n_deaths_averted_T3_hi              = "terb.outcomes",
  n_deaths_averted_T2_lo              = "terb.outcomes",
  n_deaths_averted_T2_hi              = "terb.outcomes",
  c_T2_RUP_enforcement_lo             = "terb.costs",
  c_T2_RUP_enforcement_mid            = "terb.costs",
  c_T2_RUP_enforcement_hi             = "terb.costs",
  yield_impact_terbufos_withdrawal_mid= "terb.costs",
  yield_impact_terbufos_withdrawal_hi = "terb.costs",
  leverage_ratio_terbufos_T2          = "terb.costs"
)

# ── 5. Read v3 ────────────────────────────────────────────────────────────
raw <- read_csv(in_file, col_types = cols(.default = col_character()),
                show_col_types = FALSE)

# ── 6. Apply notes overrides (before rename, keyed on old Name) ───────────
v4 <- raw %>%
  left_join(notes_overrides, by = "Name", suffix = c("", "_override")) %>%
  mutate(Notes = coalesce(Notes_override, Notes)) %>%
  select(-Notes_override)

# ── 7. Apply section-header text updates ─────────────────────────────────
for (old_text in names(header_subs)) {
  v4 <- v4 %>%
    mutate(Name = if_else(
      !is.na(Name) & str_starts(Name, "#") & str_detect(Name, fixed(old_text)),
      str_replace(Name, fixed(old_text), header_subs[[old_text]]),
      Name
    ))
}

# ── 8. Apply parameter renames ────────────────────────────────────────────
v4 <- v4 %>%
  mutate(Name = if_else(Name %in% names(rename_map),
                        rename_map[Name],
                        Name))

# ── 9. Add Group column (keyed on post-rename Name) ───────────────────────
v4 <- v4 %>%
  mutate(Group = group_map[Name])

# ── 10. Add deprecated alias rows at end ─────────────────────────────────
deprecated_aliases <- tribble(
  ~Name,                           ~Expression, ~Notes,                                                                                        ~Group,
  "# === DEPRECATED ALIASES — v3 S-taxonomy names (use v4 names for all new work) ===", NA, NA, NA,
  "# Use v4 canonical names: d_S1_PIH_MVD, d_S2_BChE_autonotify, c_S1_PIH_MVD_*, c_S2_BChE_*, c_S0_NHLS_NMC_feed_*", NA, NA, NA,
  "d_option3_BChE_autonotify", "0.133", "DEPRECATED in v4: use d_S2_BChE_autonotify. Retained for back-compat with analysis_report.qmd | dist=beta(13,87) | Alias", "detect.deprecated",
  "d_option4_PIH_quarterly",   "0.104", "DEPRECATED in v4: use d_S1_PIH_MVD. Retained for back-compat with analysis_report.qmd | dist=beta(10,90) | Alias", "detect.deprecated",
  "c_S1_NHLS_NMC_feed_setup",  "80000", "DEPRECATED in v4: use c_S0_NHLS_NMC_feed_setup (now operational baseline) | dist=gamma(25,3200) | Alias", "costs.deprecated",
  "c_S1_NHLS_NMC_feed_op",     "60000", "DEPRECATED in v4: use c_S0_NHLS_NMC_feed_op (now operational baseline) | dist=gamma(25,2400) | Alias", "costs.deprecated",
  "c_S3a_BChE_autonotify_setup","200000","DEPRECATED in v4: use c_S2_BChE_autonotify_setup | dist=gamma(25,8000) | Alias", "costs.deprecated",
  "c_S3a_BChE_autonotify_op",  "55000", "DEPRECATED in v4: use c_S2_BChE_autonotify_op | dist=gamma(25,2200) | Alias", "costs.deprecated",
  "c_S4_PIH_dashboard_setup",  "40000", "DEPRECATED in v4: use c_S1_PIH_MVD_setup | dist=gamma(25,1600) | Alias", "costs.deprecated",
  "c_S4_PIH_dashboard_op",     "82000", "DEPRECATED in v4: use c_S1_PIH_MVD_op | dist=gamma(25,3280) | Alias", "costs.deprecated"
)

v4 <- bind_rows(v4, deprecated_aliases)

# ── 11. Write v4 ──────────────────────────────────────────────────────────
write_csv(v4, out_file, na = "")

cat(sprintf(
  "✓ Written %d rows (%d non-header data rows) to %s\n",
  nrow(v4),
  sum(!is.na(v4$Expression) & nzchar(v4$Expression)),
  out_file
))

# ── 12. Spot-check key renamed rows ──────────────────────────────────────
check_names <- c("d_S1_PIH_MVD", "d_S2_BChE_autonotify",
                 "c_S1_PIH_MVD_op", "c_S2_BChE_autonotify_op",
                 "c_S0_NHLS_NMC_feed_op", "c_surv_MVP_op")
cat("\n── Spot-check renamed rows ─────────────────────────────────────────\n")
v4 %>%
  filter(Name %in% check_names) %>%
  select(Name, Expression, Group) %>%
  print(n = 20)
