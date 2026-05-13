# =============================================================================
# surveillance_tree.r (tidyverse refactor)
library(tidyverse)
# -----------------------------------------------------------------------------
# Decision tree for Policy Brief 1 (posts/surveillance_policy.qmd §6).
#
# What this models
# ----------------
# A single decision node -- "Which surveillance investment?" -- with four arms:
#
#   1. Status quo            (NMC notifications only)
#   2. S1 -- PIH MVD         (NMC + PIH clinician calls)
#   3. S2 -- BChE auto-notify(NMC + NHLS severe BChE results)
#   4. MVP (S1 + S2)         (NMC + NHLS severe + PIH)
#
# Each arm has a chance node with two branches: "case detected" vs. "missed".
# The terminal payoffs are PER CASE on a denominator of one true case -- this
# matches the brief, which deliberately reports detection uplift only and does
# NOT claim cases or deaths averted (that lives in the coordination + terbufos
# trees).
#
# Payoff dimensions
# -----------------
#   detected   : 1 if the case enters surveillance, 0 if not
#   cost_zar   : annual operating cost / N_true (= cost per true case).
#                Multiply back by N_true to recover annual cost.
#
# To extend
# ---------
#  * Add a fifth arm: append another build_surveillance_arm(...) entry to the
#    `arms` list in build_surveillance_tree().
#  * Add a payoff dimension (e.g. timeliness_days): include it in every
#    terminal payoff vector -- the rollback will sum it for free.
# =============================================================================

# Robust engine lookup: works from project root (R/...) or from posts/ (../R/...)
.engine_path <- Filter(file.exists, c(
  "R/decision_tree_engine.r",
  "../R/decision_tree_engine.r"
))[1]
if (is.na(.engine_path)) stop("Cannot locate decision_tree_engine.r")
source(.engine_path)


# -----------------------------------------------------------------------------
# Helper: build one surveillance arm
# -----------------------------------------------------------------------------
# Given a per-case detection probability and an annual operating cost, return
# a chance node with detected/missed branches. Cost is allocated per true case
# by dividing by N_true so that the "cost_zar" dimension is comparable across
# arms on the same per-case scale as detection.
#
# Why this is its own function
# ----------------------------
# All four arms share the same internal structure -- they only differ in their
# numbers. Factoring the structure out keeps build_surveillance_tree() short
# and means you can add a fifth arm in one line.
# -----------------------------------------------------------------------------

build_surveillance_arm <- function(arm_name, p_detect, annual_cost_zar, N_true) {
  cost_per_case <- annual_cost_zar / N_true
  chance(arm_name, branches = list(
    list(prob   = p_detect,
         payoff = c(detected = 0, cost_zar = cost_per_case),
         child  = terminal(paste0(arm_name, "__detected"),
                           c(detected = 1, cost_zar = 0))),
    list(prob   = 1 - p_detect,
         payoff = c(detected = 0, cost_zar = cost_per_case),
         child  = terminal(paste0(arm_name, "__missed"),
                           c(detected = 0, cost_zar = 0)))
  ))
}


# -----------------------------------------------------------------------------
# Main builder
# -----------------------------------------------------------------------------
# Inputs:
#   p : named list returned by load_params().
# Output:
#   Decision node with four arms -- pass to eval_tree().
# -----------------------------------------------------------------------------

build_surveillance_tree <- function(p) {

  need <- c("d_status_quo", "d_S1_PIH_MVD",
            "d_S2_BChE_autonotify", "d_surveillance_mvp",
            "c_S1_PIH_MVD_op", "c_S2_BChE_autonotify_op",
            "c_surv_MVP_op", "n_true_burden_from_statssa_mid")
  miss <- setdiff(need, names(p))
  if (length(miss)) stop("Missing CSV parameters: ", paste(miss, collapse = ", "))

  N_true <- p$n_true_burden_from_statssa_mid

  arms <- list(
    status_quo = build_surveillance_arm("status_quo",
                   p_detect        = p$d_status_quo,
                   annual_cost_zar = 0,
                   N_true          = N_true),

    S1_PIH_MVD = build_surveillance_arm("S1_PIH_MVD",
                   p_detect        = p$d_S1_PIH_MVD,
                   annual_cost_zar = p$c_S1_PIH_MVD_op,
                   N_true          = N_true),

    S2_BChE_autonotify = build_surveillance_arm("S2_BChE_autonotify",
                   p_detect        = p$d_S2_BChE_autonotify,
                   annual_cost_zar = p$c_S2_BChE_autonotify_op,
                   N_true          = N_true),

    MVP_S1_plus_S2 = build_surveillance_arm("MVP_S1_plus_S2",
                   p_detect        = p$d_surveillance_mvp,
                   annual_cost_zar = p$c_surv_MVP_op,
                   N_true          = N_true)
  )

  decision("Which surveillance investment?", arms = arms)
}


# Scale per-case results back to annual totals.
scale_surveillance_to_annual <- function(df, N_true) {
  df %>%
    mutate(
      cases_detected_per_yr = detected * N_true,
      annual_cost_zar = cost_zar * N_true
    )
}


# -----------------------------------------------------------------------------
# Demo: Rscript R/surveillance_tree.r
# (Guarded so source()ing doesn't auto-run it.)
# -----------------------------------------------------------------------------
if (sys.nframe() == 0) {
  params <- load_params()
  tree   <- build_surveillance_tree(params)

  cat("\n--- Tree structure ---\n");  print_tree(tree)
  cat("\n--- Per-case rollback ---\n")
  res <- evs_to_df(eval_tree(tree), decision_name = "surveillance")
  print(res)

  cat("\n--- Annualised view ---\n")
  print(scale_surveillance_to_annual(res, params$n_true_burden_from_statssa_mid))
}
