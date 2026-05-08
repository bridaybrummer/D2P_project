# =============================================================================
# methods_v2.r — Enhanced Decision Tree Model for Pesticide Poisoning Policy
# =============================================================================
# Version 2: All four policy options as standalone strategies plus full package
# Includes budget impact analysis, DALY conversion, scenario analysis, and
# stakeholder-oriented summary outputs.
#
# Strategies:
#   SQ    — Status quo
#   POC   — Option 1: Integrated data-sharing and hotspot pilot
#   EHP   — Option 2: Standardised EHP investigation reporting
#   XWALK — Option 3: Technical code/test-set crosswalk
#   ACT   — Option 4: Notification and data-use activation package
#   PKG   — Full package: Options 1–4 combined
# =============================================================================

library(tidyverse)

# -----------------------------------------------------------------------------
# 1. Load parameters
# -----------------------------------------------------------------------------
load_parameters <- function(csv_path = "amua_import_parameters_v2.csv") {
  params_raw <- read_csv(csv_path, show_col_types = FALSE) %>%
    mutate(
      dist_type = str_extract(Notes, "dist=(\\w+)", group = 1),
      dist_a = as.numeric(str_extract(Notes, "dist=\\w+\\((\\d+\\.?\\d*)", group = 1)),
      dist_b = as.numeric(str_extract(Notes, "dist=\\w+\\([\\d.]+,(\\d+\\.?\\d*)", group = 1))
    )
  params <- setNames(params_raw$Expression, params_raw$Name)
  list(point = as.list(params), raw = params_raw)
}

# -----------------------------------------------------------------------------
# 2. PSA sampling
# -----------------------------------------------------------------------------
draw_psa_sample <- function(params_raw, n_sim = 1000) {
  set.seed(42)
  map_dfc(seq_len(nrow(params_raw)), function(i) {
    row <- params_raw[i, ]
    vals <- switch(row$dist_type,
      "beta"  = rbeta(n_sim, row$dist_a, row$dist_b),
      "gamma" = rgamma(n_sim, shape = row$dist_a, rate = 1 / row$dist_b),
      "fixed" = rep(row$Expression, n_sim),
      rep(row$Expression, n_sim)
    )
    tibble(!!row$Name := vals)
  })
}

# -----------------------------------------------------------------------------
# 3. Decision tree — six strategies
# -----------------------------------------------------------------------------
evaluate_tree <- function(p) {

  # Helper: pathway probability, effectiveness, cost
  make_row <- function(code, label, p_path, setup, operating) {
    eff  <- p$n_hotspots_baseline * p_path
    cost <- setup + operating + eff * p$c_response_per_hotspot
    tibble(strategy = label, strategy_code = code,
           p_effective = p_path, effectiveness = eff, total_cost = cost)
  }

  # --- Status Quo ---
  sq <- make_row("SQ", "Status Quo",
    p$p_sq_hotspot_detected * p$p_sq_response_triggered,
    0, p$c_sq_program)

  # --- Option 1: POC ---
  poc <- make_row("POC", "Option 1: Integrated Data POC",
    p$p_poc_data_access * p$p_poc_data_usable *
    p$p_poc_hotspot_detected * p$p_poc_response_triggered,
    p$c_poc_setup, p$c_poc_operating)

  # --- Option 2: EHP ---
  ehp <- make_row("EHP", "Option 2: Standardised EHP",
    p$p_ehp_adoption * p$p_ehp_reporting_completeness *
    p$p_ehp_hotspot_detected * p$p_ehp_response_triggered,
    p$c_ehp_setup, p$c_ehp_operating)

  # --- Option 3: Crosswalk ---
  xwalk <- make_row("XWALK", "Option 3: Code/Test Crosswalk",
    p$p_xwalk_completed * p$p_xwalk_adopted *
    p$p_xwalk_hotspot_detected * p$p_xwalk_response_triggered,
    p$c_xwalk_setup, p$c_xwalk_operating)

  # --- Option 4: Activation ---
  act <- make_row("ACT", "Option 4: Activation Package",
    p$p_act_awareness_raised * p$p_act_data_used *
    p$p_act_hotspot_detected * p$p_act_response_triggered,
    p$c_act_setup, p$c_act_operating)

  # --- Full Package ---
  pkg <- make_row("PKG", "Full Package (Opts 1\u20134)",
    p$p_pkg_implemented * p$p_pkg_surveillance_improved *
    p$p_pkg_hotspot_detected * p$p_pkg_response_triggered,
    p$c_pkg_setup, p$c_pkg_operating)

  bind_rows(sq, poc, ehp, xwalk, act, pkg) %>%
    mutate(
      incremental_eff  = effectiveness - sq$effectiveness,
      incremental_cost = total_cost - sq$total_cost,
      icer = if_else(incremental_eff > 0,
                     incremental_cost / incremental_eff, NA_real_)
    )
}

# -----------------------------------------------------------------------------
# 4. DALY-based effectiveness conversion
# -----------------------------------------------------------------------------
convert_to_dalys <- function(tree_result, p) {
  cases_averted_per_hotspot <- p$cases_per_hotspot * 0.30  # assume 30% reduction
  tree_result %>%
    mutate(
      cases_averted = incremental_eff * cases_averted_per_hotspot,
      deaths_averted = cases_averted * p$p_case_fatality,
      yll_averted    = deaths_averted * p$yll_per_death,
      yld_averted    = (cases_averted - deaths_averted) * p$yld_per_survivor,
      dalys_averted  = yll_averted + yld_averted,
      icer_per_daly  = if_else(dalys_averted > 0,
                               incremental_cost / dalys_averted, NA_real_)
    )
}

# -----------------------------------------------------------------------------
# 5. Budget impact analysis (3-year horizon)
# -----------------------------------------------------------------------------
budget_impact <- function(p, years = 3, discount_rate = 0.05) {

  strategies <- list(
    list(code = "SQ",    label = "Status Quo",
         setup = 0, operating = p$c_sq_program),
    list(code = "POC",   label = "Option 1: Integrated Data POC",
         setup = p$c_poc_setup, operating = p$c_poc_operating),
    list(code = "EHP",   label = "Option 2: Standardised EHP",
         setup = p$c_ehp_setup, operating = p$c_ehp_operating),
    list(code = "XWALK", label = "Option 3: Code/Test Crosswalk",
         setup = p$c_xwalk_setup, operating = p$c_xwalk_operating),
    list(code = "ACT",   label = "Option 4: Activation Package",
         setup = p$c_act_setup, operating = p$c_act_operating),
    list(code = "PKG",   label = "Full Package (Opts 1\u20134)",
         setup = p$c_pkg_setup, operating = p$c_pkg_operating)
  )

  map_dfr(strategies, function(s) {
    costs <- map_dbl(0:(years - 1), function(yr) {
      annual <- if (yr == 0) s$setup + s$operating else s$operating
      annual / (1 + discount_rate)^yr
    })
    tibble(
      strategy = s$label, strategy_code = s$code,
      year_1 = costs[1], year_2 = costs[2], year_3 = costs[3],
      total_3yr = sum(costs),
      incremental_3yr = NA_real_
    )
  }) %>%
    mutate(incremental_3yr = total_3yr - total_3yr[strategy_code == "SQ"])
}

# -----------------------------------------------------------------------------
# 6. Scenario analysis
# -----------------------------------------------------------------------------
run_scenarios <- function(params_point) {
  # Base case
  base <- evaluate_tree(params_point)

  # Optimistic: all probabilities +20%, costs -15%
  opt <- params_point
  p_names <- names(opt)[str_starts(names(opt), "p_")]
  c_names <- names(opt)[str_starts(names(opt), "c_")]
  for (nm in p_names) opt[[nm]] <- min(opt[[nm]] * 1.20, 0.99)
  for (nm in c_names) opt[[nm]] <- opt[[nm]] * 0.85
  optimistic <- evaluate_tree(opt)

  # Conservative: all probabilities -20%, costs +20%
  cons <- params_point
  for (nm in p_names) cons[[nm]] <- max(cons[[nm]] * 0.80, 0.01)
  for (nm in c_names) cons[[nm]] <- cons[[nm]] * 1.20
  conservative <- evaluate_tree(cons)

  bind_rows(
    base         %>% mutate(scenario = "Base Case"),
    optimistic   %>% mutate(scenario = "Optimistic"),
    conservative %>% mutate(scenario = "Conservative")
  )
}

# -----------------------------------------------------------------------------
# 7. One-way sensitivity analysis
# -----------------------------------------------------------------------------
run_owsa <- function(params_point, param_names = NULL, range_pct = 0.25) {
  if (is.null(param_names)) param_names <- names(params_point)
  map_dfr(param_names, function(pname) {
    base_val <- params_point[[pname]]
    p_low  <- params_point; p_low[[pname]]  <- base_val * (1 - range_pct)
    p_high <- params_point; p_high[[pname]] <- base_val * (1 + range_pct)
    bind_rows(
      evaluate_tree(p_low)  %>% mutate(parameter = pname, scenario = "low",  param_value = base_val * (1 - range_pct)),
      evaluate_tree(p_high) %>% mutate(parameter = pname, scenario = "high", param_value = base_val * (1 + range_pct))
    )
  })
}

# -----------------------------------------------------------------------------
# 8. PSA
# -----------------------------------------------------------------------------
run_psa <- function(psa_samples) {
  map_dfr(seq_len(nrow(psa_samples)), function(i) {
    evaluate_tree(as.list(psa_samples[i, ])) %>% mutate(sim = i)
  })
}

# -----------------------------------------------------------------------------
# 9. CEAC
# -----------------------------------------------------------------------------
compute_ceac <- function(psa_results, wtp_range = seq(0, 300000, by = 5000)) {
  map_dfr(wtp_range, function(wtp) {
    psa_results %>%
      mutate(nb = effectiveness * wtp - total_cost) %>%
      group_by(sim) %>% filter(nb == max(nb)) %>% ungroup() %>%
      count(strategy) %>%
      mutate(wtp = wtp, prob = n / max(psa_results$sim))
  })
}

# -----------------------------------------------------------------------------
# 10. Stakeholder summary: plain-language strategy profiles
# -----------------------------------------------------------------------------
strategy_profiles <- function() {
  tribble(
    ~option, ~name, ~what_it_does, ~root_cause, ~who_leads, ~feasibility, ~time_to_first_output,
    "Option 1", "Integrated Data POC",
    "Combines NMC notifications, cholinesterase lab data, forensic signals, and EHP field reports into a single dashboard to spot poisoning clusters",
    "Fragmented data — no single picture of where poisonings are happening",
    "NICD analyst with NHLS and forensic data custodians",
    "Moderate–High: needs SOP/MoU, not law reform",
    "8 weeks",

    "Option 2", "Standardised EHP Reporting",
    "Gives every Environmental Health Practitioner one short template to report pesticide investigations, and feeds those reports back to the surveillance team",
    "EHPs investigate but findings are not captured or returned centrally",
    "NDoH Environmental Health directorate, SALGA",
    "High: can be issued by circular or SOP",
    "6 weeks",

    "Option 3", "Code/Test-Set Crosswalk",
    "A technical reference mapping lab test codes, ICD codes, and NMC case definitions so the system consistently flags poisoning cases across platforms",
    "Staff do not know which tests/codes should trigger a poisoning NMC — causes under-counting",
    "Technical working group: NICD, NHLS, forensic pathology",
    "Very High: a small working group can complete this in days",
    "4 weeks",

    "Option 4", "Activation Package",
    "Uses the next MAC meeting to approve the pilot, D2P interviews to identify what outputs decision-makers actually need, and a mortality workshop to improve data interpretation",
    "Low awareness, variable data use, weak connection between data and decisions",
    "MAC chair; D2P research team",
    "Very High: existing meeting platforms",
    "2 weeks",

    "Full Package", "All Options Combined",
    "Implements all four options as a coordinated 6-month package, with the MAC meeting as the launch mechanism",
    "All root causes addressed simultaneously for maximum synergy",
    "Lead coordinator nominated at MAC meeting",
    "Moderate: coordination overhead but no single option is very difficult",
    "8–12 weeks for first integrated output"
  )
}

# -----------------------------------------------------------------------------
# 11. Epidemiological context
# -----------------------------------------------------------------------------
epi_context <- list(
  nmc_total_2020_2024     = 3457,
  nmc_annual_avg          = 690,
  bche_tests_per_year     = 10000,
  bche_severe_per_year    = 2000,
  pih_calls_2019          = 1881,
  peak_months             = "September\u2013November",
  highest_asr_group       = "Females 15\u201319 years",
  highest_asr_bche        = 0.46,
  accidental_under6_pct   = 99,
  selfharm_13_19_pct      = 91,
  sample_size_required    = 323,
  surveillance_budget_low = 4440100,
  surveillance_budget_high = 6120700,
  ce_threshold_sa         = 48474
)

cat("methods_v2.r loaded successfully.\n")
