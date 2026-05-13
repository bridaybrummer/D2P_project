# =============================================================================
# decision_tree_engine.r (tidyverse refactor)
#
# This version uses tidyverse idioms (tibble, purrr, dplyr, pipes) for clarity,
# auditability, and beginner accessibility. All outputs are tibbles, and list
# operations use purrr where possible. Comments are preserved for teaching.
# =============================================================================

library(tidyverse)
# -----------------------------------------------------------------------------
# A small, Amua-analogous decision-tree engine in plain R.
#
# Why this exists
# ---------------
# The policy briefs (posts/surveillance_policy.qmd and posts/terbufos_policy.qmd)
# currently do their decision-tree arithmetic *inline*, inside cat(sprintf(...))
# calls that paint a mermaid diagram. That is fine for a brief, but it is not a
# model: you cannot test it, you cannot run PSA on it, and you cannot re-use a
# tree across briefs. This file plus its two companion tree files
# (surveillance_tree.r, terbufos_tree.r) refactor that arithmetic into a real
# evaluable tree object, the way Amua organises a decision tree:
#
#   PARAMETERS  --> a named list of numeric values (loaded from the CSV)
#   NODES       --> three constructors: decision(), chance(), terminal()
#   TREE        --> the root node (a nested list)
#   ROLLBACK    --> eval_tree() walks the tree and returns expected payoffs
#
# Payoffs are MULTI-ATTRIBUTE: every terminal node carries a named numeric
# vector (deaths, burden_zar, cost_zar, ...). The rollback combines them
# elementwise, which is the Amua "Dim1 / Dim2" pattern.
#
# Intended audience
# -----------------
# An intermediate R programmer who is comfortable with named lists and basic
# recursion. There is no S4, no R6, no reference semantics. Every function is
# a few lines long and is documented inline so you can adapt it.
#
# How to extend
# -------------
#  * Add a new attribute (e.g. DALYs): include it in the named numeric vector
#    at every terminal -- eval_tree() will sum it for free.
#  * Add a new node type (e.g. Markov): write a constructor that returns a list
#    with $type = "markov" and add a case to the switch() in eval_tree().
#  * Run a one-way SA: see run_one_way_sa() at the bottom.
# =============================================================================


# -----------------------------------------------------------------------------
# 1. PARAMETER LOADER
# -----------------------------------------------------------------------------
# Reads the canonical CSV and returns a named list of numeric values. Anything
# non-numeric is dropped silently -- the CSV contains comment rows and section
# headers that we don't want to surface as parameters.
#
# Usage:
#   params <- load_params()                       # default CSV path
#   params <- load_params("path/to/other.csv")    # override
#   params$d_status_quo                           # 0.048
# -----------------------------------------------------------------------------
load_params <- function(csv_path = NULL) {

  # Auto-resolve: works from project root or from posts/ during qmd render.
  if (is.null(csv_path)) {
    csv_path <- Filter(file.exists, c(
      "amua_import_parameters_v3.csv",
      "../amua_import_parameters_v3.csv"
    ))[1]
  }
  if (is.na(csv_path) || !file.exists(csv_path)) {
    stop("CSV not found. Pass an absolute path or run from project root / posts/.")
  }

  raw <- read_csv(csv_path, show_col_types = FALSE)

  # Drop section-header rows (Name starts with "#") and blanks.
  raw <- raw %>% filter(!is.na(Name), nzchar(Name), !startsWith(Name, "#"))

  # Coerce Expression to numeric. Non-numeric expressions become NA and are dropped.
  vals <- suppressWarnings(as.numeric(raw$Expression))
  keep <- !is.na(vals)
  params <- vals[keep] %>% set_names(raw$Name[keep]) %>% as.list()
  params
}


# -----------------------------------------------------------------------------
# 2. NODE CONSTRUCTORS
# -----------------------------------------------------------------------------
# Three Amua-style node types. Each returns a plain list with a $type tag so
# eval_tree() can dispatch on it.
#
#   terminal(name, payoff)
#       payoff: named numeric vector, e.g. c(deaths = 655, burden_zar = 5.85e8)
#
#   chance(name, branches)
#       branches: list of list(prob = ..., payoff = ..., child = <node>)
#                 - prob   : branch probability (must sum to ~1 across siblings)
#                 - payoff : extra payoff incurred by taking the branch (often
#                            zero; this lets you attach an "event cost" without
#                            making a new node)
#                 - child  : the next node down this branch
#
#   decision(name, arms)
#       arms: NAMED list of child nodes. eval_tree() returns one EV per arm
#             (decision nodes are NOT collapsed -- that is the user's choice).
# -----------------------------------------------------------------------------

terminal <- function(name, payoff) {
  stopifnot(is.numeric(payoff), !is.null(names(payoff)))
  structure(list(type = "terminal", name = name, payoff = payoff),
            class = "dt_node")
}

chance <- function(name, branches) {
  stopifnot(is.list(branches), length(branches) >= 1)

  # Soft check: branch probabilities should sum to ~1. We warn rather than
  # error so you can build a partial tree and still rollback during debugging.
  ps <- vapply(branches, function(b) b$prob, numeric(1))
  if (abs(sum(ps) - 1) > 1e-6) {
    warning(sprintf("chance node '%s': branch probabilities sum to %.4f (not 1)",
                    name, sum(ps)))
  }

  structure(list(type = "chance", name = name, branches = branches),
            class = "dt_node")
}

decision <- function(name, arms) {
  stopifnot(is.list(arms), !is.null(names(arms)), length(arms) >= 2)
  structure(list(type = "decision", name = name, arms = arms),
            class = "dt_node")
}


# -----------------------------------------------------------------------------
# 3. ROLLBACK ENGINE
# -----------------------------------------------------------------------------
# Recursive expected-value walk. Returns:
#
#   - terminal node : its payoff (named numeric vector)
#   - chance node   : sum over branches of  prob * (branch_payoff + EV(child))
#   - decision node : a NAMED LIST of EVs, one per arm
#
# Multi-attribute arithmetic just works because R does elementwise addition
# and scalar multiplication on named numeric vectors when names line up. Make
# sure every terminal in the same tree uses the SAME set of payoff names --
# see align_payoff() helper below if you need to pad.
# -----------------------------------------------------------------------------

eval_tree <- function(node) {
  stopifnot(inherits(node, "dt_node"))
  switch(node$type,
    terminal = node$payoff,
    chance = {
      map(node$branches, function(b) {
        child_ev <- eval_tree(b$child)
        bp <- if (is.null(b$payoff)) child_ev * 0 else b$payoff
        b$prob * (bp + child_ev)
      }) %>% reduce(`+`)
    },
    decision = map(node$arms, eval_tree),
    stop("Unknown node type: ", node$type)
  )
}


# Pad a payoff vector with zeros so it has the union of all attribute names
# used across a tree. Useful when one branch genuinely has no "deaths"
# component but the sibling does -- without padding, R can recycle silently.
align_payoff <- function(p, all_names) {
  out <- setNames(rep(0, length(all_names)), all_names)
  out[names(p)] <- p
  out
}


# -----------------------------------------------------------------------------
# 4. TIDY OUTPUT HELPERS
# -----------------------------------------------------------------------------
# Turn a decision-node EV (a named list of named numeric vectors) into a
# data.frame with one row per arm. This is what the briefs / appendices will
# consume for tables and plots.
# -----------------------------------------------------------------------------

evs_to_df <- function(evs, decision_name = "decision") {
  stopifnot(is.list(evs), !is.null(names(evs)))
  out <- tibble(
    arm = names(evs),
    map_dfr(evs, ~as_tibble_row(as.list(.x)))
  )
  attr(out, "decision") <- decision_name
  out
}


# -----------------------------------------------------------------------------
# 5. ONE-WAY SENSITIVITY ANALYSIS
# -----------------------------------------------------------------------------
# Re-evaluates a tree-builder function at lo / hi values of one parameter at a
# time, holding everything else at its mid value. Returns a long data.frame.
#
# Arguments:
#   build_fn  : function(params) -> dt_node (e.g. build_terbufos_tree)
#   params    : the full named list of mid parameters
#   varying   : character vector of parameter names to sweep
#   lo, hi    : named lists giving the lo / hi value for each `varying` entry
# -----------------------------------------------------------------------------

run_one_way_sa <- function(build_fn, params, varying, lo, hi) {
  base <- evs_to_df(eval_tree(build_fn(params)), decision_name = "base") %>%
    mutate(param = "(base)", bound = "mid")
  rows <- list(base)

  for (nm in varying) {
    for (b in c("lo", "hi")) {
      p <- params
      p[[nm]] <- if (b == "lo") lo[[nm]] else hi[[nm]]
      df <- evs_to_df(eval_tree(build_fn(p)), decision_name = "sa") %>%
        mutate(param = nm, bound = b)
      rows[[length(rows) + 1]] <- df
    }
  }

  bind_rows(rows)
}


# -----------------------------------------------------------------------------
# 6. PRETTY-PRINT (text only, no graphics)
# -----------------------------------------------------------------------------
# Minimal indented printer to sanity-check a tree at the console without
# installing data.tree or DiagrammeR. The companion .qmd files keep the
# mermaid diagrams; this is for R-side inspection.
# -----------------------------------------------------------------------------

print_tree <- function(node, indent = 0) {
  pad <- strrep("  ", indent)
  switch(node$type,
    terminal = cat(sprintf("%s[T] %s  payoff = (%s)\n",
                           pad, node$name,
                           paste(sprintf("%s=%g", names(node$payoff), node$payoff),
                                 collapse = ", "))),
    chance = {
      cat(sprintf("%s(C) %s\n", pad, node$name))
      walk(node$branches, function(b) {
        cat(sprintf("%s  -- p=%.3f --\n", pad, b$prob))
        print_tree(b$child, indent + 2)
      })
    },
    decision = {
      cat(sprintf("%s<D> %s\n", pad, node$name))
      walk2(names(node$arms), node$arms, function(arm_name, arm_node) {
        cat(sprintf("%s  || arm: %s\n", pad, arm_name))
        print_tree(arm_node, indent + 2)
      })
    }
  )
  invisible(NULL)
}
