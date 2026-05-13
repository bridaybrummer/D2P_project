#!/usr/bin/env Rscript
# =============================================================================
# deploy.R — One-command publish for the D2P Quarto site
# =============================================================================
#
# For colleagues who do NOT want to learn git / GitHub.
#
# Usage (in R / RStudio):
#     source("deploy.R")
#     deploy("Updated terbufos brief with new evidence")
#
# Usage (from the terminal):
#     Rscript deploy.R "Updated terbufos brief with new evidence"
#
# What it does, in order:
#   1. Checks you have quarto + git installed and a GitHub remote set
#   2. Renders the whole Quarto site
#   3. Cleans up iCloud "* 2.*" duplicate files in _site/
#   4. Stages all changes, commits with your message, pushes to GitHub (main)
#   5. Publishes the rendered site to GitHub Pages (gh-pages branch)
#
# What you need ONCE before first use:
#   - quarto installed:    https://quarto.org/docs/get-started/
#   - git installed:       https://git-scm.com/downloads
#   - GitHub access:       a Personal Access Token cached in your OS keychain,
#                          or SSH keys configured. Ask the project lead if
#                          you're not sure.
#   - Your name + email set ONCE in git:
#       git config --global user.name  "Your Name"
#       git config --global user.email "you@example.com"
#
# Cross-platform: works on macOS, Linux, and Windows (PowerShell or cmd).
# =============================================================================

deploy <- function(commit_msg = "Update site",
                   target     = NULL,
                   skip_push  = FALSE,
                   data_files = c(
                     "data/surveillance_costing.xlsx",
                     "amua_import_parameters_v3.csv"
                   ),
                   refresh_freeze = TRUE) {

  repo_root <- tryCatch(
    normalizePath(dirname(sys.frame(1)$ofile %||% "."), mustWork = FALSE),
    error = function(e) getwd()
  )
  if (!dir.exists(repo_root) || !file.exists(file.path(repo_root, "_quarto.yml"))) {
    repo_root <- getwd()
  }
  old_wd <- setwd(repo_root)
  on.exit(setwd(old_wd), add = TRUE)

  step("Working directory", repo_root)

  # -------------------------------------------------------------------------
  # 1. Pre-flight checks
  # -------------------------------------------------------------------------
  step("Checking prerequisites...")
  check_tool("quarto", "Install from https://quarto.org/docs/get-started/")
  check_tool("git",    "Install from https://git-scm.com/downloads")

  if (!file.exists("_quarto.yml")) {
    stop_friendly(
      "No _quarto.yml found in ", repo_root, ".\n",
      "  Are you running this from the project root? ",
      "(the folder that contains _quarto.yml)"
    )
  }

  remote <- safe_system("git", c("remote", "get-url", "origin"))
  if (is.null(remote) || !nzchar(remote)) {
    stop_friendly(
      "This folder is not connected to a GitHub remote.\n",
      "  Ask the project lead to add you as a collaborator and run:\n",
      "    git remote add origin <repo-url>"
    )
  }
  step("GitHub remote:", remote)

  user_name  <- safe_system("git", c("config", "user.name"))
  user_email <- safe_system("git", c("config", "user.email"))
  if (is.null(user_name) || is.null(user_email)) {
    stop_friendly(
      "Your git identity is not configured. Run ONCE (replace with your details):\n",
      "    git config --global user.name  \"Your Name\"\n",
      "    git config --global user.email \"you@example.com\""
    )
  }

  # -------------------------------------------------------------------------
  # 1b. Bust stale freeze caches when source data files have been edited
  # -------------------------------------------------------------------------
  # Quarto's `freeze: auto` only re-executes a chunk when the .qmd source
  # changes -- NOT when an external data file (xlsx, csv) the chunk reads
  # changes. This step compares each tracked data file's mtime against every
  # _freeze/.../html.json and removes the stale freeze directory so the next
  # render re-executes the affected chunks.
  if (isTRUE(refresh_freeze) && length(data_files) > 0) {
    step("Checking for stale freeze caches against data files...")
    invalidate_stale_freezes(data_files)
  }

  # -------------------------------------------------------------------------
  # 2. Render
  # -------------------------------------------------------------------------
  step("Rendering Quarto site (this may take a few minutes)...")
  render_args <- if (is.null(target)) "render" else c("render", target, "--to", "html")
  rc <- system2("quarto", render_args)
  if (rc != 0) {
    stop_friendly(
      "Quarto render failed (exit code ", rc, ").\n",
      "  Scroll up in the console for the specific error.\n",
      "  Common causes: an R chunk threw an error, or a missing R package."
    )
  }

  # -------------------------------------------------------------------------
  # 3. Strip iCloud duplicate artifacts
  # -------------------------------------------------------------------------
  step("Removing iCloud duplicate artifacts from _site/...")
  dup_files <- list.files(
    "_site",
    pattern   = " [23]\\.[A-Za-z0-9]+$",
    recursive = TRUE,
    full.names = TRUE
  )
  if (length(dup_files) > 0) {
    file.remove(dup_files)
    message("    Removed ", length(dup_files), " duplicate file(s).")
  }

  # -------------------------------------------------------------------------
  # 4. Commit + push source to main
  # -------------------------------------------------------------------------
  step("Committing source changes to main...")
  system2("git", c("add", "-A"))

  staged <- safe_system("git", c("diff", "--cached", "--name-only"))
  if (is.null(staged) || !nzchar(staged)) {
    message("    (nothing to commit -- source already in sync)")
  } else {
    n_files <- length(strsplit(staged, "\n", fixed = TRUE)[[1]])
    message("    Committing ", n_files, " changed file(s).")
    rc <- system2("git", c("commit", "-m", shQuote(commit_msg)))
    if (rc != 0) {
      stop_friendly("git commit failed. See message above.")
    }
  }

  if (isTRUE(skip_push)) {
    step("Skipping push (skip_push = TRUE).")
  } else {
    step("Pushing main to GitHub...")
    rc <- system2("git", "push")
    if (rc != 0) {
      stop_friendly(
        "git push failed.\n",
        "  Most common cause: GitHub credentials not cached.\n",
        "  Fix: install the GitHub CLI (https://cli.github.com/) and run:\n",
        "    gh auth login\n",
        "  Or set up a Personal Access Token: ",
        "https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens"
      )
    }
  }

  # -------------------------------------------------------------------------
  # 5. Publish to GitHub Pages
  # -------------------------------------------------------------------------
  step("Publishing rendered site to GitHub Pages (gh-pages branch)...")
  rc <- system2("quarto", c("publish", "gh-pages", "--no-prompt", "--no-browser"))
  if (rc != 0) {
    stop_friendly(
      "quarto publish failed (exit code ", rc, ").\n",
      "  Source changes were pushed to main successfully; the live site just",
      " didn't update.\n",
      "  Re-run deploy() to retry only the publish step."
    )
  }

  # -------------------------------------------------------------------------
  # 6. Done
  # -------------------------------------------------------------------------
  site_url <- guess_site_url(remote)
  step("DONE.")
  message("    Live site: ", site_url)
  message("    (GitHub Pages typically takes 1-2 minutes to refresh.)")
  invisible(TRUE)
}

# -----------------------------------------------------------------------------
# Helpers
# -----------------------------------------------------------------------------

`%||%` <- function(a, b) if (is.null(a) || is.na(a) || !nzchar(a)) b else a

step <- function(...) message("==> ", ...)

check_tool <- function(tool, install_hint) {
  found <- nzchar(Sys.which(tool))
  if (!found) {
    stop_friendly(
      tool, " is not installed (or not on your PATH).\n",
      "  ", install_hint
    )
  }
}

safe_system <- function(cmd, args) {
  out <- tryCatch(
    suppressWarnings(system2(cmd, args, stdout = TRUE, stderr = FALSE)),
    error = function(e) NULL
  )
  if (is.null(out) || length(out) == 0) return(NULL)
  trimws(paste(out, collapse = "\n"))
}

stop_friendly <- function(...) {
  msg <- paste0(...)
  message("\n[ERROR] ", msg, "\n")
  stop(msg, call. = FALSE)
}

invalidate_stale_freezes <- function(data_files) {
  data_files <- data_files[file.exists(data_files)]
  if (length(data_files) == 0) return(invisible(NULL))

  newest_data <- max(file.info(data_files)$mtime)

  freeze_results <- list.files(
    "_freeze",
    pattern    = "^html\\.json$",
    recursive  = TRUE,
    full.names = TRUE
  )
  if (length(freeze_results) == 0) return(invisible(NULL))

  removed <- 0L
  for (f in freeze_results) {
    if (file.info(f)$mtime < newest_data) {
      # _freeze/<doc>/execute-results/html.json -> remove _freeze/<doc>/
      doc_freeze_dir <- dirname(dirname(f))
      message("    Stale freeze (", basename(doc_freeze_dir),
              ") -- removing to force re-execute.")
      unlink(doc_freeze_dir, recursive = TRUE)
      removed <- removed + 1L
    }
  }
  if (removed == 0L) {
    message("    All freeze caches are current.")
  } else {
    message("    Cleared ", removed, " stale freeze cache(s).")
  }
  invisible(removed)
}

guess_site_url <- function(remote) {
  # Convert e.g. git@github.com:user/repo.git or https://github.com/user/repo.git
  # into https://user.github.io/repo/
  m <- regmatches(remote, regexec("github\\.com[:/]([^/]+)/([^/.]+)", remote))[[1]]
  if (length(m) >= 3) {
    sprintf("https://%s.github.io/%s/", m[2], m[3])
  } else {
    "https://<your-github-pages-url>/"
  }
}

# -----------------------------------------------------------------------------
# CLI entry point: Rscript deploy.R "commit message"
# Only runs when invoked via Rscript (not when sourced interactively).
# -----------------------------------------------------------------------------
invoked_as_script <- any(grepl("^--file=", commandArgs(trailingOnly = FALSE)))
if (invoked_as_script) {
  args <- commandArgs(trailingOnly = TRUE)
  msg  <- if (length(args) >= 1) args[[1]] else "Update site"
  tgt  <- if (length(args) >= 2) args[[2]] else NULL
  deploy(commit_msg = msg, target = tgt)
}

# -----------------------------------------------------------------------------
# Usage notes for `data_files` and `refresh_freeze`
# -----------------------------------------------------------------------------
# By default deploy() invalidates any _freeze/<doc>/ whose cached results are
# OLDER than the most-recently-edited file in `data_files`. This guarantees
# that edits to surveillance_costing.xlsx or amua_import_parameters_v3.csv
# always flow through to the next render.
#
# To track an additional source file (e.g. a new costing workbook):
#     deploy("msg", data_files = c(
#         "data/surveillance_costing.xlsx",
#         "data/coordination_costing.xlsx",
#         "amua_import_parameters_v3.csv"
#     ))
#
# To skip the freeze check (faster re-render of a small text-only edit):
#     deploy("typo fix", refresh_freeze = FALSE)
# -----------------------------------------------------------------------------

