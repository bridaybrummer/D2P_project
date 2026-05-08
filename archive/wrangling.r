# =============================================================================
# wrangling.r — Run Decision Tree Model, PSA and Generate Outputs
# =============================================================================
# This script sources methods.r, runs the decision tree for each policy option,
# performs sensitivity analyses, and saves all outputs to tables_and_plots.Rds
# for rendering in the Quarto report.
# =============================================================================

library(tidyverse)
library(gtsummary)
library(gt)
library(flextable)
library(ggplot2)
library(scales)

source("methods.r")

# =============================================================================
# 1. Load parameters and run base-case model
# =============================================================================
params_loaded <- load_parameters("amua_import_parameters.csv")
params_point  <- params_loaded$point
params_raw    <- params_loaded$raw

base_case <- evaluate_tree(params_point)

# =============================================================================
# 2. Parameter summary table
# =============================================================================
param_table <- params_raw %>%
  select(Name, Expression, dist_type, dist_a, dist_b) %>%
  mutate(
    `Point Estimate` = Expression,
    Distribution = case_when(
      dist_type == "beta"  ~ paste0("Beta(", dist_a, ", ", dist_b, ")"),
      dist_type == "gamma" ~ paste0("Gamma(", dist_a, ", ", dist_b, ")"),
      dist_type == "fixed" ~ "Fixed",
      TRUE ~ "Fixed"
    ),
    Category = case_when(
      str_detect(Name, "^p_sq")  ~ "Status Quo",
      str_detect(Name, "^p_poc") ~ "POC (Option 1)",
      str_detect(Name, "^p_ehp") ~ "EHP (Option 2)",
      str_detect(Name, "^p_pkg") ~ "Full Package",
      str_detect(Name, "^c_sq")  ~ "Cost: Status Quo",
      str_detect(Name, "^c_poc") ~ "Cost: POC",
      str_detect(Name, "^c_ehp") ~ "Cost: EHP",
      str_detect(Name, "^c_pkg") ~ "Cost: Full Package",
      str_detect(Name, "^c_response") ~ "Cost: Response",
      str_detect(Name, "^n_")    ~ "Baseline",
      TRUE ~ "Other"
    )
  ) %>%
  select(Category, Name, `Point Estimate`, Distribution)

tbl_params <- param_table %>%
  gt(groupname_col = "Category") %>%
  tab_header(
    title = "Table 1: Model Parameters",
    subtitle = "Decision tree inputs with probability distributions for PSA"
  ) %>%
  cols_label(
    Name = "Parameter",
    `Point Estimate` = "Value",
    Distribution = "PSA Distribution"
  )

# =============================================================================
# 3. Base-case results table
# =============================================================================
tbl_basecase <- base_case %>%
  select(strategy, p_effective, effectiveness, total_cost, incremental_eff,
         incremental_cost, icer) %>%
  mutate(
    across(c(p_effective), ~ round(., 4)),
    across(c(effectiveness, incremental_eff), ~ round(., 2)),
    across(c(total_cost, incremental_cost, icer), ~ round(., 0))
  ) %>%
  gt() %>%
  tab_header(
    title = "Table 2: Base-Case Decision Tree Results",
    subtitle = "Expected hotspots addressed and costs per strategy"
  ) %>%
  cols_label(
    strategy         = "Strategy",
    p_effective      = "P(Addressed)",
    effectiveness    = "Expected Hotspots\nAddressed",
    total_cost       = "Total Cost (ZAR)",
    incremental_eff  = "Incremental\nEffectiveness",
    incremental_cost = "Incremental\nCost (ZAR)",
    icer             = "ICER\n(ZAR/hotspot)"
  ) %>%
  fmt_number(columns = c(total_cost, incremental_cost, icer),
             decimals = 0, use_seps = TRUE) %>%
  fmt_number(columns = c(p_effective), decimals = 4) %>%
  fmt_number(columns = c(effectiveness, incremental_eff), decimals = 2)

# =============================================================================
# 4. Decision tree diagram (simplified ggplot)
# =============================================================================
tree_data <- build_tree_structure()

fig_tree <- ggplot() +
  annotate("text", x = 0, y = 3, label = "Surveillance\nStrategy Choice",
           fontface = "bold", size = 4, hjust = 0) +
  # SQ branch

  annotate("segment", x = 2, xend = 4, y = 5.5, yend = 5.5, linewidth = 0.5) +
  annotate("text", x = 2, y = 5.8, label = "Status Quo", fontface = "bold",
           size = 3, hjust = 0, colour = "#e41a1c") +
  annotate("text", x = 4.2, y = 6.0, label = "Detected (0.20) → Response (0.50)\n= 1.0 hotspot addressed",
           size = 2.5, hjust = 0) +
  annotate("text", x = 4.2, y = 5.2, label = "Cost: R65,000/year",
           size = 2.5, hjust = 0, colour = "grey40") +
  # POC branch
  annotate("segment", x = 2, xend = 4, y = 4.0, yend = 4.0, linewidth = 0.5) +
  annotate("text", x = 2, y = 4.3, label = "POC (Option 1)", fontface = "bold",
           size = 3, hjust = 0, colour = "#377eb8") +
  annotate("text", x = 4.2, y = 4.5, label = "Access (0.70) → Usable (0.65) → Detected (0.60) → Response (0.65)\n= 1.78 hotspots addressed",
           size = 2.5, hjust = 0) +
  annotate("text", x = 4.2, y = 3.7, label = "Cost: R216,700/year",
           size = 2.5, hjust = 0, colour = "grey40") +
  # EHP branch
  annotate("segment", x = 2, xend = 4, y = 2.5, yend = 2.5, linewidth = 0.5) +
  annotate("text", x = 2, y = 2.8, label = "EHP (Option 2)", fontface = "bold",
           size = 3, hjust = 0, colour = "#4daf4a") +
  annotate("text", x = 4.2, y = 3.0, label = "Adopted (0.75) → Complete (0.60) → Detected (0.50) → Response (0.70)\n= 1.58 hotspots addressed",
           size = 2.5, hjust = 0) +
  annotate("text", x = 4.2, y = 2.2, label = "Cost: R163,650/year",
           size = 2.5, hjust = 0, colour = "grey40") +
  # PKG branch
  annotate("segment", x = 2, xend = 4, y = 1.0, yend = 1.0, linewidth = 0.5) +
  annotate("text", x = 2, y = 1.3, label = "Full Package (Opts 1-4)", fontface = "bold",
           size = 3, hjust = 0, colour = "#984ea3") +
  annotate("text", x = 4.2, y = 1.5, label = "Implemented (0.65) → Improved (0.75) → Detected (0.75) → Response (0.75)\n= 2.74 hotspots addressed",
           size = 2.5, hjust = 0) +
  annotate("text", x = 4.2, y = 0.7, label = "Cost: R321,094/year",
           size = 2.5, hjust = 0, colour = "grey40") +
  # Decision square
  annotate("rect", xmin = 1.8, xmax = 2.2, ymin = 2.8, ymax = 3.2,
           fill = "white", colour = "black", linewidth = 1) +
  # Connecting lines
  annotate("segment", x = 2, xend = 2, y = 1.0, yend = 5.5, linewidth = 0.3) +
  xlim(-0.5, 10) + ylim(0, 6.5) +
  labs(title = "Figure 1: Decision Tree — Pesticide Poisoning Surveillance Policy Options",
       subtitle = "Conditional probabilities and expected outcomes per strategy") +
  theme_void() +
  theme(
    plot.title = element_text(face = "bold", size = 12),
    plot.subtitle = element_text(size = 10, colour = "grey30"),
    plot.margin = margin(10, 20, 10, 10)
  )

# =============================================================================
# 5. One-way sensitivity analysis (tornado diagram)
# =============================================================================
# Focus on Full Package strategy parameters
owsa_params <- c(
  "n_hotspots_baseline",
  "p_pkg_implemented", "p_pkg_surveillance_improved",
  "p_pkg_hotspot_detected", "p_pkg_response_triggered",
  "c_pkg_setup", "c_pkg_operating", "c_response_per_hotspot",
  "p_sq_hotspot_detected", "p_sq_response_triggered"
)

owsa_data <- run_owsa(params_point, param_names = owsa_params, range_pct = 0.25)

# Tornado for ICER of Full Package
owsa_pkg <- owsa_data %>%
  filter(strategy_code == "PKG") %>%
  select(parameter, scenario, icer) %>%
  pivot_wider(names_from = scenario, values_from = icer) %>%
  mutate(
    spread = abs(high - low),
    midpoint = (high + low) / 2
  ) %>%
  arrange(desc(spread))

fig_tornado <- owsa_pkg %>%
  ggplot(aes(y = reorder(parameter, spread))) +
  geom_segment(aes(x = low, xend = high, yend = reorder(parameter, spread)),
               linewidth = 6, colour = "#4daf4a", alpha = 0.7) +
  geom_vline(xintercept = base_case %>% filter(strategy_code == "PKG") %>%
               pull(icer), linetype = "dashed", colour = "red") +
  scale_x_continuous(labels = label_comma()) +
  labs(
    title = "Figure 2: Tornado Diagram — Full Package ICER Sensitivity",
    subtitle = "One-way ±25% variation around base-case parameter values",
    x = "ICER (ZAR per additional hotspot addressed)",
    y = "Parameter"
  ) +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"))

# =============================================================================
# 6. Probabilistic Sensitivity Analysis
# =============================================================================
psa_samples <- draw_psa_sample(params_raw, n_sim = 1000)
psa_results <- run_psa(psa_samples)

# CE scatter plot
fig_ce_scatter <- psa_results %>%
  ggplot(aes(x = incremental_eff, y = incremental_cost / 1000,
             colour = strategy)) +
  geom_point(alpha = 0.3, size = 1) +
  geom_hline(yintercept = 0, linetype = "dashed") +
  geom_vline(xintercept = 0, linetype = "dashed") +
  scale_colour_brewer(palette = "Set1") +
  labs(
    title = "Figure 3: Cost-Effectiveness Plane",
    subtitle = "1,000 PSA iterations (vs Status Quo)",
    x = "Incremental Effectiveness (hotspots addressed)",
    y = "Incremental Cost (ZAR thousands)",
    colour = "Strategy"
  ) +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"),
        legend.position = "bottom")

# =============================================================================
# 7. Cost-effectiveness acceptability curves (CEAC)
# =============================================================================
ceac_data <- compute_ceac(psa_results, wtp_range = seq(0, 300000, by = 5000))

fig_ceac <- ceac_data %>%
  ggplot(aes(x = wtp / 1000, y = prob, colour = strategy)) +
  geom_line(linewidth = 1) +
  scale_colour_brewer(palette = "Set1") +
  scale_y_continuous(labels = percent_format(), limits = c(0, 1)) +
  labs(
    title = "Figure 4: Cost-Effectiveness Acceptability Curves",
    subtitle = "Probability each strategy is cost-effective at varying WTP thresholds",
    x = "Willingness-to-Pay (ZAR thousands per hotspot addressed)",
    y = "Probability of Being Cost-Effective",
    colour = "Strategy"
  ) +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"),
        legend.position = "bottom")

# =============================================================================
# 8. PSA summary table
# =============================================================================
psa_summary <- psa_results %>%
  group_by(strategy) %>%
  summarise(
    mean_eff     = mean(effectiveness, na.rm = TRUE),
    sd_eff       = sd(effectiveness, na.rm = TRUE),
    q025_eff     = quantile(effectiveness, 0.025, na.rm = TRUE),
    q975_eff     = quantile(effectiveness, 0.975, na.rm = TRUE),
    mean_cost    = mean(total_cost, na.rm = TRUE),
    sd_cost      = sd(total_cost, na.rm = TRUE),
    q025_cost    = quantile(total_cost, 0.025, na.rm = TRUE),
    q975_cost    = quantile(total_cost, 0.975, na.rm = TRUE),
    mean_icer    = mean(icer, na.rm = TRUE),
    median_icer  = median(icer, na.rm = TRUE),
    .groups = "drop"
  )

tbl_psa <- psa_summary %>%
  mutate(
    `Effectiveness (mean, 95% CI)` = paste0(
      round(mean_eff, 2), " (",
      round(q025_eff, 2), "–", round(q975_eff, 2), ")"),
    `Cost (mean, 95% CI)` = paste0(
      "R", format(round(mean_cost, 0), big.mark = ","), " (R",
      format(round(q025_cost, 0), big.mark = ","), "–R",
      format(round(q975_cost, 0), big.mark = ","), ")")
  ) %>%
  select(strategy, `Effectiveness (mean, 95% CI)`, `Cost (mean, 95% CI)`,
         mean_icer, median_icer) %>%
  gt() %>%
  tab_header(
    title = "Table 3: Probabilistic Sensitivity Analysis Summary",
    subtitle = "1,000 Monte Carlo simulations"
  ) %>%
  cols_label(
    strategy = "Strategy",
    mean_icer = "Mean ICER",
    median_icer = "Median ICER"
  ) %>%
  fmt_number(columns = c(mean_icer, median_icer), decimals = 0, use_seps = TRUE)

# =============================================================================
# 9. Implementation timeline Gantt-style data
# =============================================================================
timeline <- tribble(
  ~task,                                  ~start_week, ~end_week, ~option,
  "MAC meeting: approve package",         1,  2,  "Option 4",
  "Map datasets and custodians",          2,  4,  "Option 1",
  "Convene technical working group",      4,  6,  "Option 3",
  "Finalise code/test-set crosswalk",     5,  8,  "Option 3",
  "Issue EHP investigation template",     4,  8,  "Option 2",
  "EHP reporting SOP",                    6,  10, "Option 2",
  "Begin integrated POC",                 8,  12, "Option 1",
  "First hotspot output",                 10, 12, "Option 1",
  "D2P interviews: test outputs",         8,  14, "Option 4",
  "Mortality data analysis workshop",     12, 16, "Option 4",
  "Evaluate pilot and scale decision",    20, 24, "All"
)

fig_timeline <- timeline %>%
  mutate(task = fct_rev(fct_inorder(task))) %>%
  ggplot(aes(y = task, xmin = start_week, xmax = end_week, colour = option)) +
  geom_linerange(linewidth = 5, alpha = 0.8) +
  scale_colour_brewer(palette = "Set2") +
  labs(
    title = "Figure 5: 90-Day Implementation Timeline",
    subtitle = "Practical steps from the policy brief recommendations",
    x = "Week", y = NULL, colour = "Policy Option"
  ) +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"),
        legend.position = "bottom")

# =============================================================================
# 10. Save all outputs
# =============================================================================
tables_and_plots <- list(
  # Tables
  tbl_params    = tbl_params,
  tbl_basecase  = tbl_basecase,
  tbl_psa       = tbl_psa,
  # Figures
  fig_tree       = fig_tree,
  fig_tornado    = fig_tornado,
  fig_ce_scatter = fig_ce_scatter,
  fig_ceac       = fig_ceac,
  fig_timeline   = fig_timeline,
  # Raw data for callout adjustments
  base_case      = base_case,
  psa_results    = psa_results,
  psa_summary    = psa_summary,
  owsa_data      = owsa_data,
  ceac_data      = ceac_data,
  params_point   = params_point,
  params_raw     = params_raw,
  epi_context    = epi_context,
  timeline       = timeline
)

saveRDS(tables_and_plots, "tables_and_plots.Rds")
cat("All outputs saved to tables_and_plots.Rds\n")
