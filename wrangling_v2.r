# =============================================================================
# wrangling_v2.r — Enhanced Decision Tree Pipeline
# =============================================================================
# Runs all six strategies, scenario analysis, budget impact, DALY conversion,
# PSA, and generates stakeholder-oriented tables and figures.
# =============================================================================

library(tidyverse)
library(gt)
library(flextable)
library(ggplot2)
library(scales)

source("methods_v2.r")

# =============================================================================
# 1. Load parameters and run base-case
# =============================================================================
params_loaded <- load_parameters("amua_import_parameters_v2.csv")
params_point  <- params_loaded$point
params_raw    <- params_loaded$raw

base_case <- evaluate_tree(params_point)
base_case_dalys <- convert_to_dalys(base_case, params_point)

# =============================================================================
# 2. Strategy profiles table (stakeholder-facing)
# =============================================================================
profiles <- strategy_profiles()

tbl_profiles <- profiles %>%
  gt() %>%
  tab_header(
    title = "Table 1: Policy Option Profiles",
    subtitle = "What each option does, why it matters, and how quickly it can deliver"
  ) %>%
  cols_label(
    option = "Option",
    name = "Name",
    what_it_does = "What It Does",
    root_cause = "Problem Addressed",
    who_leads = "Lead",
    feasibility = "Feasibility",
    time_to_first_output = "Time to First Output"
  ) %>%
  tab_style(
    style = cell_text(weight = "bold"),
    locations = cells_body(columns = option)
  ) %>%
  cols_width(
    what_it_does ~ px(250),
    root_cause ~ px(200),
    everything() ~ px(120)
  )

# =============================================================================
# 3. Parameter table (grouped by strategy)
# =============================================================================
param_table <- params_raw %>%
  mutate(
    Distribution = case_when(
      dist_type == "beta"  ~ paste0("Beta(", dist_a, ", ", dist_b, ")"),
      dist_type == "gamma" ~ paste0("Gamma(", dist_a, ", ", dist_b, ")"),
      TRUE ~ "Fixed"
    ),
    Category = case_when(
      str_detect(Name, "^n_|^cases_|^dalys_|^p_case|^p_icu|^yld|^yll") ~ "Epidemiological",
      str_detect(Name, "^p_sq|^c_sq")    ~ "Status Quo",
      str_detect(Name, "^p_poc|^c_poc")  ~ "Option 1: Integrated Data POC",
      str_detect(Name, "^p_ehp|^c_ehp")  ~ "Option 2: Standardised EHP",
      str_detect(Name, "^p_xwalk|^c_xwalk") ~ "Option 3: Code/Test Crosswalk",
      str_detect(Name, "^p_act|^c_act")  ~ "Option 4: Activation Package",
      str_detect(Name, "^p_pkg|^c_pkg")  ~ "Full Package",
      str_detect(Name, "^c_response|^c_admission|^c_icu") ~ "Cost Parameters",
      TRUE ~ "Other"
    ),
    Description = str_extract(Notes, "^[^|]+") %>% str_trim()
  ) %>%
  select(Category, Name, Description, Expression, Distribution)

tbl_params <- param_table %>%
  gt(groupname_col = "Category") %>%
  tab_header(
    title = "Table 2: Model Input Parameters",
    subtitle = "Point estimates and distributions for probabilistic sensitivity analysis"
  ) %>%
  cols_label(
    Name = "Parameter", Description = "Description",
    Expression = "Value", Distribution = "PSA Distribution"
  )

# =============================================================================
# 4. Base-case results
# =============================================================================
tbl_basecase <- base_case %>%
  mutate(across(c(p_effective), ~ round(., 4)),
         across(c(effectiveness, incremental_eff), ~ round(., 2)),
         across(c(total_cost, incremental_cost, icer), ~ round(., 0))) %>%
  gt() %>%
  tab_header(
    title = "Table 3: Base-Case Results",
    subtitle = "Expected hotspots addressed and costs per strategy (1-year horizon)"
  ) %>%
  cols_label(
    strategy = "Strategy", strategy_code = "Code",
    p_effective = "P(Hotspot\nAddressed)",
    effectiveness = "Hotspots\nAddressed",
    total_cost = "Total Cost\n(ZAR)",
    incremental_eff = "\u0394 Effectiveness",
    incremental_cost = "\u0394 Cost (ZAR)",
    icer = "ICER\n(ZAR/hotspot)"
  ) %>%
  fmt_number(columns = c(total_cost, incremental_cost, icer),
             decimals = 0, use_seps = TRUE) %>%
  fmt_number(columns = c(p_effective), decimals = 4) %>%
  fmt_number(columns = c(effectiveness, incremental_eff), decimals = 2) %>%
  tab_style(style = cell_fill(color = "#e8f5e9"),
            locations = cells_body(rows = strategy_code == "PKG"))

# =============================================================================
# 5. DALY-based results
# =============================================================================
tbl_dalys <- base_case_dalys %>%
  filter(strategy_code != "SQ") %>%
  select(strategy, incremental_eff, cases_averted, deaths_averted,
         dalys_averted, incremental_cost, icer_per_daly) %>%
  mutate(across(where(is.numeric), ~ round(., 1))) %>%
  gt() %>%
  tab_header(
    title = "Table 4: Health Outcomes (vs Status Quo)",
    subtitle = "Estimated cases, deaths, and DALYs averted assuming 30% case reduction per hotspot response"
  ) %>%
  cols_label(
    strategy = "Strategy",
    incremental_eff = "\u0394 Hotspots",
    cases_averted = "Cases\nAverted",
    deaths_averted = "Deaths\nAverted",
    dalys_averted = "DALYs\nAverted",
    incremental_cost = "\u0394 Cost (ZAR)",
    icer_per_daly = "ICER\n(ZAR/DALY)"
  ) %>%
  fmt_number(columns = c(incremental_cost, icer_per_daly),
             decimals = 0, use_seps = TRUE)

# =============================================================================
# 6. Stakeholder summary — "What does this mean?" table
# =============================================================================
stakeholder_summary <- base_case_dalys %>%
  mutate(
    `Annual Cost` = paste0("R", format(round(total_cost), big.mark = ",")),
    `Extra Cost vs Status Quo` = case_when(
      strategy_code == "SQ" ~ "—",
      TRUE ~ paste0("R", format(round(incremental_cost), big.mark = ","))
    ),
    `Hotspots Found & Acted On` = paste0(round(effectiveness, 1), " of 10"),
    `Estimated Cases Prevented` = case_when(
      strategy_code == "SQ" ~ "—",
      TRUE ~ as.character(round(cases_averted, 0))
    ),
    `Estimated Lives Saved` = case_when(
      strategy_code == "SQ" ~ "—",
      TRUE ~ as.character(round(deaths_averted, 1))
    ),
    `Value for Money` = case_when(
      strategy_code == "SQ" ~ "Baseline",
      is.na(icer_per_daly) ~ "Dominated",
      icer_per_daly < 48474 ~ "Cost-effective",
      icer_per_daly < 100000 ~ "Possibly cost-effective",
      TRUE ~ "Uncertain value"
    )
  ) %>%
  select(strategy, `Annual Cost`, `Extra Cost vs Status Quo`,
         `Hotspots Found & Acted On`, `Estimated Cases Prevented`,
         `Estimated Lives Saved`, `Value for Money`)

tbl_stakeholder <- stakeholder_summary %>%
  gt() %>%
  tab_header(
    title = "Table 5: Decision-Maker Summary",
    subtitle = "Plain-language comparison of policy options for non-technical stakeholders"
  ) %>%
  cols_label(strategy = "Strategy") %>%
  tab_style(style = cell_fill(color = "#c8e6c9"),
            locations = cells_body(
              rows = `Value for Money` == "Cost-effective")) %>%
  tab_style(style = cell_fill(color = "#fff9c4"),
            locations = cells_body(
              rows = `Value for Money` == "Possibly cost-effective")) %>%
  tab_footnote(
    footnote = paste0("Cost-effectiveness threshold: R48,474/DALY averted ",
                      "(Edoka & Stacey, 2020). Cases prevented assume 30% ",
                      "reduction per hotspot response. All values are ",
                      "placeholder estimates."),
    locations = cells_column_labels(columns = `Value for Money`)
  )

# =============================================================================
# 7. Scenario analysis
# =============================================================================
scenario_results <- run_scenarios(params_point)

fig_scenarios <- scenario_results %>%
  filter(strategy_code != "SQ") %>%
  ggplot(aes(x = incremental_eff, y = incremental_cost / 1000,
             shape = scenario, colour = strategy)) +
  geom_point(size = 3.5, alpha = 0.8) +
  geom_hline(yintercept = 0, linetype = "dashed", colour = "grey60") +
  geom_vline(xintercept = 0, linetype = "dashed", colour = "grey60") +
  scale_colour_brewer(palette = "Set2") +
  scale_shape_manual(values = c("Base Case" = 16, "Optimistic" = 17,
                                "Conservative" = 15)) +
  labs(
    title = "Scenario Analysis: Cost-Effectiveness Under Different Assumptions",
    subtitle = "Optimistic (+20% prob, \u221215% costs) vs Conservative (\u221220% prob, +20% costs)",
    x = "Additional Hotspots Addressed (vs Status Quo)",
    y = "Additional Cost (ZAR thousands)",
    colour = "Strategy", shape = "Scenario"
  ) +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold", size = 12),
        legend.position = "bottom",
        legend.box = "vertical")

tbl_scenarios <- scenario_results %>%
  select(scenario, strategy, effectiveness, total_cost, icer) %>%
  mutate(across(c(effectiveness), ~ round(., 2)),
         across(c(total_cost, icer), ~ round(., 0))) %>%
  pivot_wider(names_from = scenario,
              values_from = c(effectiveness, total_cost, icer),
              names_glue = "{scenario}_{.value}") %>%
  gt() %>%
  tab_header(
    title = "Table 6: Scenario Analysis Results",
    subtitle = "Base, optimistic and conservative assumptions"
  ) %>%
  tab_spanner(label = "Base Case",
              columns = starts_with("Base Case")) %>%
  tab_spanner(label = "Optimistic",
              columns = starts_with("Optimistic")) %>%
  tab_spanner(label = "Conservative",
              columns = starts_with("Conservative")) %>%
  cols_label(
    strategy = "Strategy",
    `Base Case_effectiveness` = "Hotspots", `Base Case_total_cost` = "Cost (ZAR)", `Base Case_icer` = "ICER",
    Optimistic_effectiveness = "Hotspots", Optimistic_total_cost = "Cost (ZAR)", Optimistic_icer = "ICER",
    Conservative_effectiveness = "Hotspots", Conservative_total_cost = "Cost (ZAR)", Conservative_icer = "ICER"
  ) %>%
  fmt_number(columns = contains("cost"), decimals = 0, use_seps = TRUE) %>%
  fmt_number(columns = contains("icer"), decimals = 0, use_seps = TRUE) %>%
  fmt_number(columns = contains("effectiveness"), decimals = 2)

# =============================================================================
# 8. Budget impact (3-year)
# =============================================================================
bia_data <- budget_impact(params_point, years = 3)

tbl_bia <- bia_data %>%
  mutate(across(where(is.numeric), ~ round(., 0))) %>%
  gt() %>%
  tab_header(
    title = "Table 7: Budget Impact Analysis (3-Year Horizon)",
    subtitle = "Discounted at 5% per annum; setup costs in year 1 only"
  ) %>%
  cols_label(
    strategy = "Strategy", strategy_code = "Code",
    year_1 = "Year 1 (ZAR)", year_2 = "Year 2 (ZAR)", year_3 = "Year 3 (ZAR)",
    total_3yr = "Total 3-Year (ZAR)", incremental_3yr = "vs Status Quo (ZAR)"
  ) %>%
  fmt_number(columns = c(year_1, year_2, year_3, total_3yr, incremental_3yr),
             decimals = 0, use_seps = TRUE) %>%
  tab_style(style = cell_fill(color = "#e3f2fd"),
            locations = cells_body(rows = strategy_code == "XWALK")) %>%
  tab_style(style = cell_fill(color = "#e8f5e9"),
            locations = cells_body(rows = strategy_code == "PKG"))

fig_bia <- bia_data %>%
  ggplot(aes(x = reorder(strategy, total_3yr), y = total_3yr / 1000,
             fill = strategy)) +
  geom_col(alpha = 0.85, width = 0.7) +
  coord_flip() +
  scale_fill_brewer(palette = "Set2") +
  scale_y_continuous(labels = label_comma()) +
  labs(title = "3-Year Budget Impact by Strategy",
       subtitle = "Setup + discounted operating costs (ZAR thousands)",
       x = NULL, y = "Total Cost (ZAR thousands)") +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"),
        legend.position = "none")

# =============================================================================
# 9. Decision tree diagram (all 6 strategies)
# =============================================================================
strategy_colours <- c(
  "SQ" = "#e41a1c", "POC" = "#377eb8", "EHP" = "#4daf4a",
  "XWALK" = "#ff7f00", "ACT" = "#984ea3", "PKG" = "#a65628"
)

tree_labels <- base_case %>%
  mutate(
    y = c(7.5, 6.0, 4.5, 3.0, 1.5, 0.0),
    short_label = c("Status Quo", "Option 1: Integrated Data", "Option 2: EHP Reporting",
                    "Option 3: Crosswalk", "Option 4: Activation", "Full Package"),
    detail = paste0(
      "P(addressed) = ", round(p_effective, 3),
      "  |  ", round(effectiveness, 1), " hotspots  |  R",
      format(round(total_cost), big.mark = ",")
    )
  )

fig_tree <- ggplot() +
  # Vertical spine
  annotate("segment", x = 2, xend = 2,
           y = min(tree_labels$y), yend = max(tree_labels$y),
           linewidth = 0.4, colour = "grey40") +
  # Decision node
  annotate("rect", xmin = 1.7, xmax = 2.3,
           ymin = mean(tree_labels$y) - 0.3,
           ymax = mean(tree_labels$y) + 0.3,
           fill = "white", colour = "black", linewidth = 1) +
  annotate("text", x = 2, y = mean(tree_labels$y),
           label = "?", fontface = "bold", size = 5) +
  # Branches
  geom_segment(data = tree_labels,
               aes(x = 2, xend = 3.5, y = y, yend = y),
               linewidth = 0.5, colour = "grey50") +
  geom_text(data = tree_labels,
            aes(x = 3.6, y = y + 0.25, label = short_label,
                colour = strategy_code),
            hjust = 0, fontface = "bold", size = 3.2) +
  geom_text(data = tree_labels,
            aes(x = 3.6, y = y - 0.15, label = detail),
            hjust = 0, size = 2.6, colour = "grey30") +
  scale_colour_manual(values = strategy_colours) +
  annotate("text", x = 0.2, y = mean(tree_labels$y) + 0.8,
           label = "Surveillance\nStrategy Choice",
           fontface = "bold", size = 4.5, hjust = 0) +
  xlim(-0.2, 11) +
  ylim(-0.8, 8.5) +
  labs(title = "Decision Tree: Pesticide Poisoning Surveillance Policy Options",
       subtitle = "Six strategies with conditional probability pathways") +
  theme_void() +
  theme(plot.title = element_text(face = "bold", size = 13),
        plot.subtitle = element_text(size = 10, colour = "grey30"),
        plot.margin = margin(10, 20, 10, 10),
        legend.position = "none")

# =============================================================================
# 10. OWSA tornado (all strategies)
# =============================================================================
owsa_params <- names(params_point)[str_detect(names(params_point), "^(p_|c_|n_)")]
owsa_data <- run_owsa(params_point, param_names = owsa_params, range_pct = 0.25)

# Tornado for PKG
owsa_pkg <- owsa_data %>%
  filter(strategy_code == "PKG") %>%
  select(parameter, scenario, icer) %>%
  pivot_wider(names_from = scenario, values_from = icer) %>%
  drop_na() %>%
  mutate(spread = abs(high - low)) %>%
  arrange(desc(spread)) %>%
  slice_head(n = 12)

fig_tornado <- owsa_pkg %>%
  ggplot(aes(y = reorder(parameter, spread))) +
  geom_segment(aes(x = low, xend = high, yend = reorder(parameter, spread)),
               linewidth = 5, colour = "#a65628", alpha = 0.7) +
  geom_vline(xintercept = base_case %>% filter(strategy_code == "PKG") %>%
               pull(icer), linetype = "dashed", colour = "red") +
  scale_x_continuous(labels = label_comma()) +
  labs(
    title = "Tornado Diagram: Full Package ICER Sensitivity",
    subtitle = "Top 12 parameters, \u00b125% variation",
    x = "ICER (ZAR per additional hotspot addressed)", y = "Parameter"
  ) +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"))

# =============================================================================
# 11. PSA
# =============================================================================
psa_samples <- draw_psa_sample(params_raw, n_sim = 1000)
psa_results <- run_psa(psa_samples)

psa_summary <- psa_results %>%
  group_by(strategy) %>%
  summarise(
    mean_eff = mean(effectiveness, na.rm = TRUE),
    q025_eff = quantile(effectiveness, 0.025, na.rm = TRUE),
    q975_eff = quantile(effectiveness, 0.975, na.rm = TRUE),
    mean_cost = mean(total_cost, na.rm = TRUE),
    q025_cost = quantile(total_cost, 0.025, na.rm = TRUE),
    q975_cost = quantile(total_cost, 0.975, na.rm = TRUE),
    mean_icer = mean(icer, na.rm = TRUE),
    median_icer = median(icer, na.rm = TRUE),
    .groups = "drop"
  )

tbl_psa <- psa_summary %>%
  mutate(
    Effectiveness = paste0(round(mean_eff, 2), " (",
                           round(q025_eff, 2), "\u2013",
                           round(q975_eff, 2), ")"),
    Cost = paste0("R", format(round(mean_cost), big.mark = ","),
                  " (R", format(round(q025_cost), big.mark = ","),
                  "\u2013R", format(round(q975_cost), big.mark = ","), ")")
  ) %>%
  select(strategy, Effectiveness, Cost, mean_icer, median_icer) %>%
  gt() %>%
  tab_header(
    title = "Table 8: PSA Summary (1,000 Simulations)",
    subtitle = "Mean effectiveness, cost and ICER with 95% credible intervals"
  ) %>%
  cols_label(strategy = "Strategy", mean_icer = "Mean ICER",
             median_icer = "Median ICER") %>%
  fmt_number(columns = c(mean_icer, median_icer), decimals = 0, use_seps = TRUE)

fig_ce_scatter <- psa_results %>%
  filter(strategy_code != "SQ") %>%
  ggplot(aes(x = incremental_eff, y = incremental_cost / 1000,
             colour = strategy)) +
  geom_point(alpha = 0.2, size = 0.8) +
  geom_hline(yintercept = 0, linetype = "dashed") +
  geom_vline(xintercept = 0, linetype = "dashed") +
  scale_colour_brewer(palette = "Set2") +
  labs(
    title = "Cost-Effectiveness Plane (1,000 PSA Iterations)",
    subtitle = "Each point is one simulation; strategies compared to Status Quo",
    x = "Incremental Hotspots Addressed",
    y = "Incremental Cost (ZAR thousands)",
    colour = "Strategy"
  ) +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"),
        legend.position = "bottom")

# =============================================================================
# 12. CEAC
# =============================================================================
ceac_data <- compute_ceac(psa_results, wtp_range = seq(0, 400000, by = 5000))

fig_ceac <- ceac_data %>%
  ggplot(aes(x = wtp / 1000, y = prob, colour = strategy)) +
  geom_line(linewidth = 1) +
  scale_colour_brewer(palette = "Set2") +
  scale_y_continuous(labels = percent_format(), limits = c(0, 1)) +
  geom_vline(xintercept = 48.474, linetype = "dotted", colour = "grey40") +
  annotate("text", x = 52, y = 0.95, label = "SA CE\nthreshold",
           size = 2.5, colour = "grey40", hjust = 0) +
  labs(
    title = "Cost-Effectiveness Acceptability Curves",
    subtitle = "Probability each strategy is optimal at varying willingness-to-pay",
    x = "Willingness-to-Pay (ZAR thousands per hotspot addressed)",
    y = "Probability Cost-Effective", colour = "Strategy"
  ) +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"),
        legend.position = "bottom")

# =============================================================================
# 13. Strategy ranking heatmap
# =============================================================================
ranking_data <- psa_results %>%
  group_by(sim) %>%
  mutate(rank_eff = rank(-effectiveness, ties.method = "random"),
         rank_cost = rank(total_cost, ties.method = "random")) %>%
  ungroup() %>%
  group_by(strategy) %>%
  summarise(
    `Mean Eff Rank` = mean(rank_eff),
    `Mean Cost Rank` = mean(rank_cost),
    `% Rank 1 (Eff)` = mean(rank_eff == 1) * 100,
    `% Rank 1 (Cost)` = mean(rank_cost == 1) * 100,
    .groups = "drop"
  )

tbl_ranking <- ranking_data %>%
  mutate(across(where(is.numeric), ~ round(., 1))) %>%
  gt() %>%
  tab_header(
    title = "Table 9: Strategy Ranking (PSA)",
    subtitle = "How often each strategy ranks first across 1,000 simulations"
  ) %>%
  cols_label(strategy = "Strategy")

# =============================================================================
# 14. Implementation timeline
# =============================================================================
timeline <- tribble(
  ~task, ~start_week, ~end_week, ~option, ~phase,
  "MAC meeting: approve package & nominate coordinator",   1,  2,  "Option 4", "Launch",
  "Map datasets: NMC, BChE, FCL, forensic, EHP",          2,  4,  "Option 1", "Preparation",
  "Technical working group: code/test-set crosswalk",      3,  5,  "Option 3", "Preparation",
  "Finalise crosswalk reference document",                 5,  7,  "Option 3", "Delivery",
  "Design & pilot EHP investigation template",             4,  7,  "Option 2", "Preparation",
  "Issue EHP reporting SOP to districts",                  7,  9,  "Option 2", "Delivery",
  "Establish data-sharing SOP/MoU with NHLS",              5,  8,  "Option 1", "Preparation",
  "Begin integrated POC: routine data extracts",           8,  12, "Option 1", "Delivery",
  "First hotspot output published",                        10, 12, "Option 1", "Milestone",
  "D2P interviews: test outputs with decision-makers",     8,  14, "Option 4", "Evaluation",
  "Mortality data analysis workshop",                      12, 14, "Option 4", "Evaluation",
  "Review pilot: refine model parameters",                 14, 16, "All",      "Evaluation",
  "Scale decision: expand or adjust",                      20, 24, "All",      "Decision"
)

fig_timeline <- timeline %>%
  mutate(task = fct_rev(fct_inorder(task))) %>%
  ggplot(aes(y = task, xmin = start_week, xmax = end_week,
             colour = option)) +
  geom_linerange(linewidth = 5, alpha = 0.8) +
  scale_colour_brewer(palette = "Set2") +
  labs(title = "Implementation Timeline (24 Weeks)",
       subtitle = "Sequenced practical steps from the policy brief",
       x = "Week", y = NULL, colour = "Policy Option") +
  theme_minimal(base_size = 10) +
  theme(plot.title = element_text(face = "bold"),
        legend.position = "bottom")

# =============================================================================
# 15. Efficiency frontier
# =============================================================================
fig_frontier <- base_case %>%
  ggplot(aes(x = effectiveness, y = total_cost / 1000,
             colour = strategy_code, label = strategy)) +
  geom_point(size = 4) +
  geom_text(nudge_y = 8, size = 2.8, show.legend = FALSE) +
  geom_line(data = base_case %>%
              arrange(effectiveness) %>%
              filter(strategy_code %in% c("SQ", "XWALK", "POC", "PKG")),
            aes(group = 1), linetype = "dashed", colour = "grey50",
            linewidth = 0.4) +
  scale_colour_manual(values = strategy_colours) +
  labs(title = "Cost-Effectiveness Frontier",
       subtitle = "Dominated strategies fall above the frontier line",
       x = "Expected Hotspots Addressed (per year)",
       y = "Total Annual Cost (ZAR thousands)",
       colour = "Strategy") +
  theme_minimal(base_size = 11) +
  theme(plot.title = element_text(face = "bold"),
        legend.position = "bottom")

# =============================================================================
# 16. Save all outputs
# =============================================================================
tables_and_plots <- list(
  # Stakeholder tables
  tbl_profiles    = tbl_profiles,
  tbl_stakeholder = tbl_stakeholder,
  tbl_ranking     = tbl_ranking,
  # Technical tables
  tbl_params      = tbl_params,
  tbl_basecase    = tbl_basecase,
  tbl_dalys       = tbl_dalys,
  tbl_scenarios   = tbl_scenarios,
  tbl_bia         = tbl_bia,
  tbl_psa         = tbl_psa,
  # Figures
  fig_tree        = fig_tree,
  fig_frontier    = fig_frontier,
  fig_tornado     = fig_tornado,
  fig_scenarios   = fig_scenarios,
  fig_ce_scatter  = fig_ce_scatter,
  fig_ceac        = fig_ceac,
  fig_bia         = fig_bia,
  fig_timeline    = fig_timeline,
  # Raw data
  base_case       = base_case,
  base_case_dalys = base_case_dalys,
  scenario_results = scenario_results,
  psa_results     = psa_results,
  psa_summary     = psa_summary,
  owsa_data       = owsa_data,
  ceac_data       = ceac_data,
  bia_data        = bia_data,
  profiles        = profiles,
  stakeholder_summary = stakeholder_summary,
  params_point    = params_point,
  params_raw      = params_raw,
  epi_context     = epi_context,
  timeline        = timeline
)

saveRDS(tables_and_plots, "tables_and_plots_v2.Rds")
cat("All v2 outputs saved to tables_and_plots_v2.Rds\n")
