# =============================================================================
# methods.r — Decision Tree Model for Pesticide Poisoning Policy Options (SA)
# =============================================================================
# This script defines the decision tree structure, parameter distributions,
# and helper functions for evaluating short-term policy options for improving
# pesticide poisoning surveillance and response in South Africa.
#
# Policy options (from policy brief):
#   SQ  — Status quo (current fragmented system)
#   POC — Option 1: Integrated data-sharing and hotspot pilot
#   EHP — Option 2: Standardised EHP investigation reporting
#   PKG — Options 1-4 combined: Full surveillance-and-response package
#
# Decision tree structure per strategy:
#   Strategy → [upstream chance nodes] → Hotspot detected? → Response triggered?
#     → Hotspot addressed (benefit) OR Hotspot missed
# =============================================================================

library(tidyverse)

# -----------------------------------------------------------------------------
# 1. Load parameters from Amua-format CSV
# -----------------------------------------------------------------------------
load_parameters <- function(csv_path = "amua_import_parameters.csv") {
  params_raw <- read_csv(csv_path, show_col_types = FALSE) %>%
    mutate(
      # Parse distribution info from Notes column
      dist_type = str_extract(Notes, "dist=(\\w+)", group = 1),
      dist_a = as.numeric(str_extract(Notes, "dist=\\w+\\((\\d+\\.?\\d*)", group = 1)),
      dist_b = as.numeric(str_extract(Notes, "dist=\\w+\\([\\d.]+,(\\d+\\.?\\d*)", group = 1))
    )
  
  # Build named list of point estimates
  params <- setNames(params_raw$Expression, params_raw$Name)
  
  list(
    point   = as.list(params),
    raw     = params_raw
  )
}

# -----------------------------------------------------------------------------
# 2. Draw PSA samples from specified distributions
# -----------------------------------------------------------------------------
draw_psa_sample <- function(params_raw, n_sim = 1000) {
  set.seed(42)
  
  samples <- map_dfc(seq_len(nrow(params_raw)), function(i) {
    row <- params_raw[i, ]
    nm  <- row$Name
    
    vals <- switch(row$dist_type,
      "beta"  = rbeta(n_sim, row$dist_a, row$dist_b),
      "gamma" = rgamma(n_sim, shape = row$dist_a, rate = 1 / row$dist_b),
      "fixed" = rep(row$Expression, n_sim),
      rep(row$Expression, n_sim)
    )
    
    tibble(!!nm := vals)
  })
  
  samples
}

# -----------------------------------------------------------------------------
# 3. Decision tree evaluation function
# -----------------------------------------------------------------------------
# Each strategy has a pathway of conditional probabilities leading to
# "hotspot detected AND response triggered". The tree structure:
#
#  SQ:  p_detected × p_response
#  POC: p_data_access × p_data_usable × p_detected × p_response
#  EHP: p_adoption × p_reporting_completeness × p_detected × p_response
#  PKG: p_implemented × p_surveillance_improved × p_detected × p_response
#
# Effectiveness = n_hotspots × P(full pathway) = expected hotspots addressed
# Cost = setup + operating + (expected responses × cost per response)
# ICER = ΔCost / ΔEffectiveness (vs status quo)

evaluate_tree <- function(p) {
  # ---- Status Quo ----
  sq_p_effective   <- p$p_sq_hotspot_detected * p$p_sq_response_triggered
  sq_effectiveness <- p$n_hotspots_baseline * sq_p_effective
  sq_cost          <- p$c_sq_program + sq_effectiveness * p$c_response_per_hotspot
  
  # ---- POC: Integrated data-sharing pilot ----
  poc_p_effective   <- p$p_poc_data_access * p$p_poc_data_usable *
                       p$p_poc_hotspot_detected * p$p_poc_response_triggered
  poc_effectiveness <- p$n_hotspots_baseline * poc_p_effective
  poc_cost          <- p$c_poc_setup + p$c_poc_operating +
                       poc_effectiveness * p$c_response_per_hotspot
  
  # ---- EHP: Standardised reporting ----
  ehp_p_effective   <- p$p_ehp_adoption * p$p_ehp_reporting_completeness *
                       p$p_ehp_hotspot_detected * p$p_ehp_response_triggered
  ehp_effectiveness <- p$n_hotspots_baseline * ehp_p_effective
  ehp_cost          <- p$c_ehp_setup + p$c_ehp_operating +
                       ehp_effectiveness * p$c_response_per_hotspot
  
  # ---- PKG: Full package (Options 1-4) ----
  pkg_p_effective   <- p$p_pkg_implemented * p$p_pkg_surveillance_improved *
                       p$p_pkg_hotspot_detected * p$p_pkg_response_triggered
  pkg_effectiveness <- p$n_hotspots_baseline * pkg_p_effective
  pkg_cost          <- p$c_pkg_setup + p$c_pkg_operating +
                       pkg_effectiveness * p$c_response_per_hotspot
  
  tibble(
    strategy        = c("Status Quo", "POC (Option 1)", "EHP (Option 2)", "Full Package"),
    strategy_code   = c("SQ", "POC", "EHP", "PKG"),
    p_effective     = c(sq_p_effective, poc_p_effective, ehp_p_effective, pkg_p_effective),
    effectiveness   = c(sq_effectiveness, poc_effectiveness, ehp_effectiveness, pkg_effectiveness),
    total_cost      = c(sq_cost, poc_cost, ehp_cost, pkg_cost),
    incremental_eff = effectiveness - sq_effectiveness,
    incremental_cost = total_cost - sq_cost,
    icer            = if_else(incremental_eff > 0,
                              incremental_cost / incremental_eff,
                              NA_real_)
  )
}

# -----------------------------------------------------------------------------
# 4. One-way sensitivity analysis (tornado diagram data)
# -----------------------------------------------------------------------------
run_owsa <- function(params_point, param_names = NULL, range_pct = 0.25) {
  if (is.null(param_names)) {
    param_names <- names(params_point)
  }
  
  base_result <- evaluate_tree(params_point)
  
  owsa_results <- map_dfr(param_names, function(pname) {
    base_val <- params_point[[pname]]
    low_val  <- base_val * (1 - range_pct)
    high_val <- base_val * (1 + range_pct)
    
    # Low scenario
    p_low <- params_point
    p_low[[pname]] <- low_val
    res_low <- evaluate_tree(p_low)
    
    # High scenario
    p_high <- params_point
    p_high[[pname]] <- high_val
    res_high <- evaluate_tree(p_high)
    
    bind_rows(
      res_low  %>% mutate(parameter = pname, scenario = "low",  param_value = low_val),
      res_high %>% mutate(parameter = pname, scenario = "high", param_value = high_val)
    )
  })
  
  owsa_results
}

# -----------------------------------------------------------------------------
# 5. Probabilistic sensitivity analysis (PSA)
# -----------------------------------------------------------------------------
run_psa <- function(psa_samples) {
  psa_results <- map_dfr(seq_len(nrow(psa_samples)), function(i) {
    p <- as.list(psa_samples[i, ])
    evaluate_tree(p) %>% mutate(sim = i)
  })
  
  psa_results
}

# -----------------------------------------------------------------------------
# 6. Net benefit framework
# -----------------------------------------------------------------------------
# WTP = willingness-to-pay per hotspot addressed
# NB  = Effectiveness × WTP − Cost
compute_net_benefit <- function(results, wtp_range = seq(0, 200000, by = 5000)) {
  expand_grid(results, wtp = wtp_range) %>%
    mutate(net_benefit = effectiveness * wtp - total_cost)
}

# -----------------------------------------------------------------------------
# 7. Cost-effectiveness acceptability curve data
# -----------------------------------------------------------------------------
compute_ceac <- function(psa_results, wtp_range = seq(0, 200000, by = 5000)) {
  ceac_data <- map_dfr(wtp_range, function(wtp) {
    psa_results %>%
      mutate(nb = effectiveness * wtp - total_cost) %>%
      group_by(sim) %>%
      filter(nb == max(nb)) %>%
      ungroup() %>%
      count(strategy) %>%
      mutate(
        wtp  = wtp,
        prob = n / max(psa_results$sim)
      )
  })
  
  ceac_data
}

# -----------------------------------------------------------------------------
# 8. Decision tree diagram data (for plotting)
# -----------------------------------------------------------------------------
build_tree_structure <- function() {
  tribble(
    ~node_id, ~parent_id, ~label,                          ~type,     ~strategy,
    1,        NA,         "Surveillance\nStrategy",         "decision", NA,
    # --- Status Quo branch ---
    2,        1,          "Status Quo",                     "chance",  "SQ",
    3,        2,          "Hotspot Detected\n(p=0.20)",     "chance",  "SQ",
    4,        3,          "Response Triggered\n(p=0.50)",   "terminal","SQ",
    5,        3,          "No Response\n(p=0.50)",          "terminal","SQ",
    6,        2,          "Not Detected\n(p=0.80)",         "terminal","SQ",
    # --- POC branch ---
    7,        1,          "POC\n(Option 1)",                "chance",  "POC",
    8,        7,          "Data Access\n(p=0.70)",          "chance",  "POC",
    9,        8,          "Data Usable\n(p=0.65)",          "chance",  "POC",
    10,       9,          "Detected\n(p=0.60)",             "chance",  "POC",
    11,       10,         "Response\n(p=0.65)",             "terminal","POC",
    12,       10,         "No Response\n(p=0.35)",          "terminal","POC",
    13,       9,          "Not Detected\n(p=0.40)",         "terminal","POC",
    14,       8,          "Data Not Usable\n(p=0.35)",      "terminal","POC",
    15,       7,          "No Data Access\n(p=0.30)",       "terminal","POC",
    # --- EHP branch ---
    16,       1,          "EHP\n(Option 2)",                "chance",  "EHP",
    17,       16,         "EHP Adopted\n(p=0.75)",          "chance",  "EHP",
    18,       17,         "Complete Reporting\n(p=0.60)",   "chance",  "EHP",
    19,       18,         "Detected\n(p=0.50)",             "chance",  "EHP",
    20,       19,         "Response\n(p=0.70)",             "terminal","EHP",
    21,       19,         "No Response\n(p=0.30)",          "terminal","EHP",
    22,       18,         "Not Detected\n(p=0.50)",         "terminal","EHP",
    23,       17,         "Incomplete\n(p=0.40)",           "terminal","EHP",
    24,       16,         "Not Adopted\n(p=0.25)",          "terminal","EHP",
    # --- Full Package branch ---
    25,       1,          "Full Package\n(Opts 1-4)",       "chance",  "PKG",
    26,       25,         "Implemented\n(p=0.65)",          "chance",  "PKG",
    27,       26,         "Surveillance\nImproved (p=0.75)","chance",  "PKG",
    28,       27,         "Detected\n(p=0.75)",             "chance",  "PKG",
    29,       28,         "Response\n(p=0.75)",             "terminal","PKG",
    30,       28,         "No Response\n(p=0.25)",          "terminal","PKG",
    31,       27,         "Not Detected\n(p=0.25)",         "terminal","PKG",
    32,       26,         "Not Improved\n(p=0.25)",         "terminal","PKG",
    33,       25,         "Not Implemented\n(p=0.35)",      "terminal","PKG"
  )
}

# -----------------------------------------------------------------------------
# 9. Epidemiological context from the epi paper (for callouts)
# -----------------------------------------------------------------------------
epi_context <- list(
  nmc_total_2020_2024   = 3457,
  nmc_annual_avg        = 690,
  bche_tests_per_year   = 10000,
  bche_severe_per_year  = 2000,
  pih_calls_2019        = 1881,
  peak_months           = "September–November",
  highest_asr_group     = "Females 15-19 years",
  highest_asr_bche      = 0.46,
  accidental_under6_pct = 99,
  selfharm_13_19_pct    = 91,
  sample_size_required  = 323,
  surveillance_budget_low  = 4440100,
  surveillance_budget_high = 6120700,
  ce_threshold_sa       = 48474  # ZAR per DALY averted (Edoka & Stacey 2020)
)

cat("methods.r loaded successfully.\n")
