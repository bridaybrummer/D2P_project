# =============================================================================
# terbufos_tree_personal.r
#
# Per-individual ("Amua-style") decision tree for the terbufos brief.
# Companion to terbufos_tree.r, which is the population-aggregate tree.
#
# Tree structure (mirrors the Amua draft built by the project team)
# ------------------------------------------------------------------
#
#   ROOT (decision)  Ban terbufos?
#   |
#   |-- T1 status quo
#   |     |-- Poisoning EXPOSED   (prob = p_p_exposed_sq)
#   |     |     |-- Exposed to terbufos        (prob = p_terbufos_among_poisoned_sq)
#   |     |     |     |-- Died          (p_die_given_terbufos)
#   |     |     |     |-- Hospitalised  (p_hosp_given_terbufos)
#   |     |     |     `-- Asymptomatic  (p_asymp_given_terbufos)
#   |     |     `-- Not exposed to terbufos    (prob = 1 - ...)
#   |     |           |-- Died          (p_die_given_other)
#   |     |           |-- Hospitalised  (p_hosp_given_other)
#   |     |           `-- Asymptomatic  (p_asymp_given_other)
#   |     `-- Poisoning UNEXPOSED (prob = 1 - p_p_exposed_sq)
#   |           `-- Background     (payoff 0 except a small mortality stub)
#   |
#   `-- T2 ban
#         |-- (same shape; p_terbufos_among_poisoned_ban replaces _sq)
#         `-- ...
#
# Multi-attribute payoffs at every terminal:
#   deaths_per_person       (0 or 1; folds into population expected deaths)
#   hospitalisations_pp     (0 or 1)
#   asymptomatic_pp         (0 or 1)
#   cost_zar_pp             (per-individual ZAR cost incurred)
#
# Rollback gives EXPECTED VALUES per individual per year. Multiplying by
# sa_population_ref yields annual national totals that can be compared
# directly with the population-aggregate tree in terbufos_tree.r.
# =============================================================================

library(tidyverse)

.engine_path <- Filter(file.exists, c(
  "R/decision_tree_engine.r",
  "../R/decision_tree_engine.r"
))[1]
if (is.na(.engine_path)) stop("Cannot locate decision_tree_engine.r")
source(.engine_path)


# Outcome sub-tree given a pesticide exposure: three mutually-exclusive
# clinical outcomes carrying per-individual deaths / hosps / cost.
build_outcome_chance <- function(name_prefix, p_die, p_hosp, p_asymp,
                                 c_death, c_hosp, c_asymp) {

  if (abs(p_die + p_hosp + p_asymp - 1) > 1e-6) {
    warning(sprintf("Outcome probs at %s sum to %.4f (not 1)",
                    name_prefix, p_die + p_hosp + p_asymp))
  }

  chance(paste0(name_prefix, "_outcome"), branches = list(

    list(prob   = p_die,
         payoff = c(deaths_per_person = 0, hospitalisations_pp = 0,
                    asymptomatic_pp = 0, cost_zar_pp = 0),
         child  = terminal(paste0(name_prefix, "_died"),
                           c(deaths_per_person   = 1,
                             hospitalisations_pp = 0,
                             asymptomatic_pp     = 0,
                             cost_zar_pp         = c_death))),

    list(prob   = p_hosp,
         payoff = c(deaths_per_person = 0, hospitalisations_pp = 0,
                    asymptomatic_pp = 0, cost_zar_pp = 0),
         child  = terminal(paste0(name_prefix, "_hosp"),
                           c(deaths_per_person   = 0,
                             hospitalisations_pp = 1,
                             asymptomatic_pp     = 0,
                             cost_zar_pp         = c_hosp))),

    list(prob   = p_asymp,
         payoff = c(deaths_per_person = 0, hospitalisations_pp = 0,
                    asymptomatic_pp = 0, cost_zar_pp = 0),
         child  = terminal(paste0(name_prefix, "_asymp"),
                           c(deaths_per_person   = 0,
                             hospitalisations_pp = 0,
                             asymptomatic_pp     = 1,
                             cost_zar_pp         = c_asymp)))
  ))
}


# One whole arm (status_quo or ban). The arm differs only in
#   p_p_exposed   (overall poisoning probability for an individual)
#   p_terbufos    (share of poisonings that involve terbufos)
build_terbufos_arm_personal <- function(arm_name, p_p_exposed, p_terbufos, p) {

  exposed_terb <- build_outcome_chance(
    paste0(arm_name, "_terb"),
    p_die   = p$p_die_given_terbufos,
    p_hosp  = p$p_hosp_given_terbufos,
    p_asymp = p$p_asymp_given_terbufos,
    c_death = p$c_personal_death,
    c_hosp  = p$c_personal_hospitalisation,
    c_asymp = p$c_personal_asymptomatic
  )

  exposed_other <- build_outcome_chance(
    paste0(arm_name, "_other"),
    p_die   = p$p_die_given_other,
    p_hosp  = p$p_hosp_given_other,
    p_asymp = p$p_asymp_given_other,
    c_death = p$c_personal_death,
    c_hosp  = p$c_personal_hospitalisation,
    c_asymp = p$c_personal_asymptomatic
  )

  poisoning_exposed <- chance(paste0(arm_name, "_poisoning_exposed"),
                              branches = list(
    list(prob = p_terbufos,
         payoff = c(deaths_per_person = 0, hospitalisations_pp = 0,
                    asymptomatic_pp = 0, cost_zar_pp = 0),
         child = exposed_terb),
    list(prob = 1 - p_terbufos,
         payoff = c(deaths_per_person = 0, hospitalisations_pp = 0,
                    asymptomatic_pp = 0, cost_zar_pp = 0),
         child = exposed_other)
  ))

  poisoning_unexposed <- terminal(paste0(arm_name, "_unexposed"),
    c(deaths_per_person   = p$p_background_mortality_personal,
      hospitalisations_pp = 0,
      asymptomatic_pp     = 0,
      cost_zar_pp         = p$p_background_mortality_personal * p$c_personal_death))

  chance(paste0(arm_name, "_root"), branches = list(
    list(prob = p_p_exposed,
         payoff = c(deaths_per_person = 0, hospitalisations_pp = 0,
                    asymptomatic_pp = 0, cost_zar_pp = 0),
         child = poisoning_exposed),
    list(prob = 1 - p_p_exposed,
         payoff = c(deaths_per_person = 0, hospitalisations_pp = 0,
                    asymptomatic_pp = 0, cost_zar_pp = 0),
         child = poisoning_unexposed)
  ))
}


build_terbufos_tree_personal <- function(p) {

  need <- c("p_p_exposed_sq", "p_p_exposed_ban",
            "p_terbufos_among_poisoned_sq", "p_terbufos_among_poisoned_ban",
            "p_die_given_terbufos", "p_hosp_given_terbufos", "p_asymp_given_terbufos",
            "p_die_given_other", "p_hosp_given_other", "p_asymp_given_other",
            "p_background_mortality_personal",
            "c_personal_death", "c_personal_hospitalisation", "c_personal_asymptomatic",
            "sa_population_ref")
  miss <- setdiff(need, names(p))
  if (length(miss)) stop("Missing CSV parameters: ", paste(miss, collapse = ", "))

  T1 <- build_terbufos_arm_personal("T1",
          p_p_exposed = p$p_p_exposed_sq,
          p_terbufos  = p$p_terbufos_among_poisoned_sq,
          p           = p)

  T2 <- build_terbufos_arm_personal("T2",
          p_p_exposed = p$p_p_exposed_ban,
          p_terbufos  = p$p_terbufos_among_poisoned_ban,
          p           = p)

  decision("Ban terbufos? (personal)", arms = list(
    status_quo = T1,
    ban        = T2
  ))
}


# Scale per-individual EVs to annual national totals.
scale_to_national <- function(df, sa_population_ref) {
  df %>%
    mutate(deaths_annual_national   = deaths_per_person   * sa_population_ref,
           hosps_annual_national    = hospitalisations_pp * sa_population_ref,
           asymp_annual_national    = asymptomatic_pp     * sa_population_ref,
           cost_zar_annual_national = cost_zar_pp         * sa_population_ref)
}


# Headline averted (SQ - BAN) on both per-individual and national scale.
compute_avertedness_personal <- function(df, sa_population_ref) {
  sq  <- df %>% filter(arm == "status_quo")
  ban <- df %>% filter(arm == "ban")
  if (nrow(sq) != 1 || nrow(ban) != 1)
    stop("Expected exactly one row per arm.")

  tibble(
    metric = c("deaths/yr (national)",
               "hospitalisations/yr (national)",
               "asymptomatic episodes/yr (national)",
               "cost ZAR/yr (national)"),
    status_quo = c(sq$deaths_per_person   * sa_population_ref,
                   sq$hospitalisations_pp * sa_population_ref,
                   sq$asymptomatic_pp     * sa_population_ref,
                   sq$cost_zar_pp         * sa_population_ref),
    ban        = c(ban$deaths_per_person   * sa_population_ref,
                   ban$hospitalisations_pp * sa_population_ref,
                   ban$asymptomatic_pp     * sa_population_ref,
                   ban$cost_zar_pp         * sa_population_ref)
  ) %>%
    mutate(averted = status_quo - ban,
           pct_reduction = ifelse(status_quo > 0, averted / status_quo, NA_real_))
}


# -----------------------------------------------------------------------------
# Demo: Rscript R/terbufos_tree_personal.r
# -----------------------------------------------------------------------------
if (sys.nframe() == 0) {
  params <- load_params()
  tree   <- build_terbufos_tree_personal(params)

  cat("\n--- Per-individual EVs ---\n")
  res <- evs_to_df(eval_tree(tree), decision_name = "ban_terbufos_personal")
  print(res)

  cat("\n--- Scaled to SA population (", format(params$sa_population_ref, big.mark=","), ") ---\n", sep="")
  print(scale_to_national(res, params$sa_population_ref))

  cat("\n--- Averted by switching SQ -> BAN (national) ---\n")
  print(compute_avertedness_personal(res, params$sa_population_ref))
}
