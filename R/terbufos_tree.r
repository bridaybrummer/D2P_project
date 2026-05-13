# =============================================================================
# terbufos_tree.r (tidyverse refactor)
library(tidyverse)
# -----------------------------------------------------------------------------
# Decision tree for Policy Brief 3 (posts/terbufos_policy.qmd §6).
#
# What this models
# ----------------
# A single decision node -- "Ban terbufos?" -- with two arms:
#
#   T1 = Status quo (continued registration)
#   T2 = Ban         (cancel registration; 12-24 month phase-out)
#
# The ban arm has an explicit substitution-incompleteness sub-branch:
#   - phi          fraction of attributable burden RETIRED
#   - (1 - phi)    fraction that PERSISTS because users substitute to other
#                  Class I OPs rather than to less-hazardous products
#
# Payoff dimensions (what REMAINS under each arm -- averted is computed below)
# ---------------------------------------------------------------------------
#   deaths_per_yr      : terbufos-attributable deaths/yr remaining
#   burden_zar_per_yr  : terbufos-attributable monetised burden/yr remaining
#   yield_pct          : maize-yield impact (negative = loss)
#
# To extend
# ---------
#  * Add a third arm (e.g. partial restriction): wrap a new builder that
#    multiplies the residual-deaths slice by a "retention factor" (1 - phi'),
#    and append it to the arms list.
#  * Tighten the residual yield-loss working value (currently -1.4 %, the
#    upper bracket from the technical appendix): swap in a CSV-driven value.
# =============================================================================

# Robust engine lookup: works from project root (R/...) or from posts/ (../R/...)
.engine_path <- Filter(file.exists, c(
  "R/decision_tree_engine.r",
  "../R/decision_tree_engine.r"
))[1]
if (is.na(.engine_path)) stop("Cannot locate decision_tree_engine.r")
source(.engine_path)


# Flat terminal: combine all three outcome dimensions in one payoff vector.
# Use this for arms with no internal uncertainty (e.g. status quo).
build_terbufos_arm_flat <- function(arm_name, deaths, burden_zar, yield_pct) {
  terminal(arm_name,
           c(deaths_per_yr     = deaths,
             burden_zar_per_yr = burden_zar,
             yield_pct         = yield_pct))
}


# Ban arm with explicit substitution-incompleteness sub-tree.
# Two siblings at one chance node:
#   * "retired"  (prob = phi)        --> nothing remains on this slice
#   * "residual" (prob = 1 - phi)    --> the un-retired slice keeps killing
build_terbufos_T2_ban <- function(p) {

  f   <- p$frac_terbufos_attributable_mid
  phi <- p$frac_T3_burden_retired
  N   <- p$n_deaths_headline
  B   <- p$C_burden_total_headline

  chance("T2_post_ban_substitution", branches = list(

    list(prob   = phi,
         payoff = c(deaths_per_yr = 0, burden_zar_per_yr = 0, yield_pct = 0),
         child  = terminal("T2_burden_retired",
                           c(deaths_per_yr     = 0,
                             burden_zar_per_yr = 0,
                             yield_pct         = 0))),

    list(prob   = 1 - phi,
         payoff = c(deaths_per_yr = 0, burden_zar_per_yr = 0, yield_pct = 0),
         child  = terminal("T2_residual",
                           # Residual slice carries the FULL attributable
                           # numbers; multiplied by (1 - phi) at rollback.
                           c(deaths_per_yr     = f * N,
                             burden_zar_per_yr = f * B,
                             # Yield-loss working value (1.4% upper bracket
                             # from technical_appendix_terbufos.qmd §6).
                             yield_pct         = -0.014)))
  ))
}


# Main builder -- returns a decision node with two arms.
build_terbufos_tree <- function(p) {

  need <- c("frac_terbufos_attributable_mid", "frac_T3_burden_retired",
            "n_deaths_headline", "C_burden_total_headline")
  miss <- setdiff(need, names(p))
  if (length(miss)) stop("Missing CSV parameters: ", paste(miss, collapse = ", "))

  f <- p$frac_terbufos_attributable_mid

  T1 <- build_terbufos_arm_flat("T1_status_quo",
          deaths     = f * p$n_deaths_headline,
          burden_zar = f * p$C_burden_total_headline,
          yield_pct  = 0)

  T2 <- build_terbufos_T2_ban(p)

  decision("Ban terbufos?", arms = list(
    status_quo = T1,
    ban        = T2
  ))
}


# Compute deaths/burden/yield AVERTED by switching status_quo -> ban.
compute_avertedness <- function(df) {
  sq  <- df %>% filter(arm == "status_quo")
  ban <- df %>% filter(arm == "ban")
  if (nrow(sq) != 1 || nrow(ban) != 1)
    stop("Expected exactly one row per arm in the input data.frame.")

  deaths_sq <- sq %>% pull(deaths_per_yr)
  deaths_ban <- ban %>% pull(deaths_per_yr)
  burden_sq <- sq %>% pull(burden_zar_per_yr)
  burden_ban <- ban %>% pull(burden_zar_per_yr)
  yield_sq <- sq %>% pull(yield_pct)
  yield_ban <- ban %>% pull(yield_pct)

  tibble(
    metric     = c("deaths/yr", "burden ZAR/yr", "maize yield (pp)"),
    status_quo = c(deaths_sq,  burden_sq,  yield_sq  * 100),
    ban        = c(deaths_ban, burden_ban, yield_ban * 100),
    averted    = c(deaths_sq     - deaths_ban,
                   burden_sq     - burden_ban,
                   (yield_sq     - yield_ban) * 100)
  )
}


# -----------------------------------------------------------------------------
# Demo: Rscript R/terbufos_tree.r
# -----------------------------------------------------------------------------
if (sys.nframe() == 0) {
  params <- load_params()
  tree   <- build_terbufos_tree(params)

  cat("\n--- Tree structure ---\n");  print_tree(tree)
  cat("\n--- Rollback ---\n")
  res <- evs_to_df(eval_tree(tree), decision_name = "ban_terbufos")
  print(res)

  cat("\n--- Averted by switching SQ -> BAN ---\n")
  print(compute_avertedness(res))

  cat("\n--- One-way SA on the attributable fraction ---\n")
  sa <- run_one_way_sa(
    build_fn = build_terbufos_tree,
    params   = params,
    varying  = "frac_terbufos_attributable_mid",
    lo       = list(frac_terbufos_attributable_mid = params$frac_terbufos_attributable_lo),
    hi       = list(frac_terbufos_attributable_mid = params$frac_terbufos_attributable_hi)
  )
  print(sa)
}
