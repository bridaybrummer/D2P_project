---
title: "Policy Brief 2: Closing the Coordination Loop"
subtitle: "Making NMC, EHPs, DALRRD, and provincial response work as one system"
author: "D2P Project Team"
date: "2025-09-05"
date-modified: today
categories: [policy, coordination, decision-makers]
format:
  html:
    toc: true
    toc-depth: 2
    number-sections: false
---

::: {.callout-important icon=false}
## For Decision-Makers

**Target audience:** Ministerial Advisory Committee (MAC), National Department of Health (NDoH), DALRRD Pesticide Registrar, Provincial Health Leadership.

**Companion briefs:** [Surveillance](surveillance_policy.qmd) · [Terbufos restriction](terbufos_policy.qmd).
:::

## 1. Policy question

**Should NDoH and DALRRD mandate a closed-loop coordination workflow — where every NMC notification triggers an investigation that is recorded on NMC, every EHP→DALRRD referral is structured, and every DALRRD action is fed back to NICD and the clinician?**

## 2. Public health problem

Better detection (see the [Surveillance brief](surveillance_policy.qmd)) is wasted if the system does not **act** on what it detects. The response chain has **eight sequential decision points** between "case suspected" and "regulatory action closes the loop"; **six of the eight default to a broken-loop terminal**. A correctly-notified case can still produce no investigation, no source removal, and no regulatory follow-up — leaving the underlying hazard in place and producing predictable secondary cases.

The coordination loop is **agent-agnostic**: it processes terbufos clusters today, will process aldicarb or paraquat tomorrow, and — as South Africa's burden shifts with development — opioids, methadone, or recreational-drug overdoses thereafter. The closed loop is therefore the durable institutional asset; the [Terbufos brief](terbufos_policy.qmd) is the first product-specific output it should deliver, not the last.

## 3. Status quo

::: {.callout-note icon=false collapse="true"}
## Canonical model parameters (auto-loaded from the [Parameters Hub](../parameters_hub.html))

All numerical claims in this brief draw from a single CSV — [`amua_import_parameters_v4.csv`](../amua_import_parameters_v4.csv) — rendered in full at the [Parameters Hub](../parameters_hub.html). The headline values below are pulled from that file at render time; **do not edit the numbers in this brief — edit the CSV and re-render**.


::: {.cell}
::: {.cell-output-display}

```{=html}
<div id="bpwumlziqd" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#bpwumlziqd table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#bpwumlziqd thead, #bpwumlziqd tbody, #bpwumlziqd tfoot, #bpwumlziqd tr, #bpwumlziqd td, #bpwumlziqd th {
  border-style: none;
}

#bpwumlziqd p {
  margin: 0;
  padding: 0;
}

#bpwumlziqd .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#bpwumlziqd .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#bpwumlziqd .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#bpwumlziqd .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#bpwumlziqd .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bpwumlziqd .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bpwumlziqd .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#bpwumlziqd .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#bpwumlziqd .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#bpwumlziqd .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#bpwumlziqd .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#bpwumlziqd .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#bpwumlziqd .gt_spanner_row {
  border-bottom-style: hidden;
}

#bpwumlziqd .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#bpwumlziqd .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#bpwumlziqd .gt_from_md > :first-child {
  margin-top: 0;
}

#bpwumlziqd .gt_from_md > :last-child {
  margin-bottom: 0;
}

#bpwumlziqd .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#bpwumlziqd .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#bpwumlziqd .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#bpwumlziqd .gt_row_group_first td {
  border-top-width: 2px;
}

#bpwumlziqd .gt_row_group_first th {
  border-top-width: 2px;
}

#bpwumlziqd .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bpwumlziqd .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#bpwumlziqd .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#bpwumlziqd .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bpwumlziqd .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#bpwumlziqd .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#bpwumlziqd .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#bpwumlziqd .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#bpwumlziqd .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#bpwumlziqd .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bpwumlziqd .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bpwumlziqd .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#bpwumlziqd .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#bpwumlziqd .gt_left {
  text-align: left;
}

#bpwumlziqd .gt_center {
  text-align: center;
}

#bpwumlziqd .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#bpwumlziqd .gt_font_normal {
  font-weight: normal;
}

#bpwumlziqd .gt_font_bold {
  font-weight: bold;
}

#bpwumlziqd .gt_font_italic {
  font-style: italic;
}

#bpwumlziqd .gt_super {
  font-size: 65%;
}

#bpwumlziqd .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#bpwumlziqd .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#bpwumlziqd .gt_indent_1 {
  text-indent: 5px;
}

#bpwumlziqd .gt_indent_2 {
  text-indent: 10px;
}

#bpwumlziqd .gt_indent_3 {
  text-indent: 15px;
}

#bpwumlziqd .gt_indent_4 {
  text-indent: 20px;
}

#bpwumlziqd .gt_indent_5 {
  text-indent: 25px;
}

#bpwumlziqd .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#bpwumlziqd div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="2" class="gt_heading gt_title gt_font_normal" style>Headline parameters used in this brief</td>
    </tr>
    <tr class="gt_heading">
      <td colspan="2" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>Pulled from amua_import_parameters_v4.csv at render time</td>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Parameter">Parameter</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Value">Value</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Parameter" class="gt_row gt_left">Annual NMC pesticide notifications</td>
<td headers="Value" class="gt_row gt_left">1013</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left gt_striped">Annual NHLS severe BChE inhibitions (live)</td>
<td headers="Value" class="gt_row gt_left gt_striped">1779</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left">Annual PIH pesticide-related calls</td>
<td headers="Value" class="gt_row gt_left">1158</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left gt_striped">True annual burden (sum, upper bound)</td>
<td headers="Value" class="gt_row gt_left gt_striped">3950</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left">Headline annual deaths</td>
<td headers="Value" class="gt_row gt_left">2620</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left gt_striped">Blended headline morbidity cost per case</td>
<td headers="Value" class="gt_row gt_left gt_striped">R12,000</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left">Mortality cost per death (human-capital)</td>
<td headers="Value" class="gt_row gt_left">R1.50 million</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left gt_striped">Headline annual economic burden</td>
<td headers="Value" class="gt_row gt_left gt_striped">R2.34 billion</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left">Response efficacy η (base case)</td>
<td headers="Value" class="gt_row gt_left">0.30</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left gt_striped">Detection probability — status quo</td>
<td headers="Value" class="gt_row gt_left gt_striped">0.048</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left">Detection probability — full package</td>
<td headers="Value" class="gt_row gt_left">0.83</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left gt_striped">Full Package narrow operating cost / yr</td>
<td headers="Value" class="gt_row gt_left gt_striped">R237,000</td></tr>
    <tr><td headers="Parameter" class="gt_row gt_left">Full Package whole-system operating cost / yr</td>
<td headers="Value" class="gt_row gt_left">R1.19 million</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


### Who bears the R2.34B annual burden?


::: {.cell}
::: {.cell-output-display}

```{=html}
<div id="vdthmgptbm" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#vdthmgptbm table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#vdthmgptbm thead, #vdthmgptbm tbody, #vdthmgptbm tfoot, #vdthmgptbm tr, #vdthmgptbm td, #vdthmgptbm th {
  border-style: none;
}

#vdthmgptbm p {
  margin: 0;
  padding: 0;
}

#vdthmgptbm .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#vdthmgptbm .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#vdthmgptbm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#vdthmgptbm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#vdthmgptbm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#vdthmgptbm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vdthmgptbm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#vdthmgptbm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#vdthmgptbm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#vdthmgptbm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#vdthmgptbm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#vdthmgptbm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#vdthmgptbm .gt_spanner_row {
  border-bottom-style: hidden;
}

#vdthmgptbm .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#vdthmgptbm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#vdthmgptbm .gt_from_md > :first-child {
  margin-top: 0;
}

#vdthmgptbm .gt_from_md > :last-child {
  margin-bottom: 0;
}

#vdthmgptbm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#vdthmgptbm .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#vdthmgptbm .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#vdthmgptbm .gt_row_group_first td {
  border-top-width: 2px;
}

#vdthmgptbm .gt_row_group_first th {
  border-top-width: 2px;
}

#vdthmgptbm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#vdthmgptbm .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#vdthmgptbm .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#vdthmgptbm .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vdthmgptbm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#vdthmgptbm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#vdthmgptbm .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#vdthmgptbm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#vdthmgptbm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vdthmgptbm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#vdthmgptbm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#vdthmgptbm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#vdthmgptbm .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#vdthmgptbm .gt_left {
  text-align: left;
}

#vdthmgptbm .gt_center {
  text-align: center;
}

#vdthmgptbm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#vdthmgptbm .gt_font_normal {
  font-weight: normal;
}

#vdthmgptbm .gt_font_bold {
  font-weight: bold;
}

#vdthmgptbm .gt_font_italic {
  font-style: italic;
}

#vdthmgptbm .gt_super {
  font-size: 65%;
}

#vdthmgptbm .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#vdthmgptbm .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#vdthmgptbm .gt_indent_1 {
  text-indent: 5px;
}

#vdthmgptbm .gt_indent_2 {
  text-indent: 10px;
}

#vdthmgptbm .gt_indent_3 {
  text-indent: 15px;
}

#vdthmgptbm .gt_indent_4 {
  text-indent: 20px;
}

#vdthmgptbm .gt_indent_5 {
  text-indent: 25px;
}

#vdthmgptbm .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#vdthmgptbm div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal" style>Annual burden by stakeholder (headline scenario, ZAR 2025)</td>
    </tr>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>Each rand of the R2.34B falls on exactly one bearer</td>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Stakeholder">Stakeholder</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Value">Value</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Share">Share</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Stakeholder" class="gt_row gt_left">NDoH — public hospitals (UPFS ward + ICU + drugs)</td>
<td headers="Value" class="gt_row gt_right">R70.00 million</td>
<td headers="Share" class="gt_row gt_right">3%</td></tr>
    <tr><td headers="Stakeholder" class="gt_row gt_left gt_striped">NHLS — laboratory (BChE, GC-MS, repeat clinical chemistry)</td>
<td headers="Value" class="gt_row gt_right gt_striped">R10.00 million</td>
<td headers="Share" class="gt_row gt_right gt_striped">0%</td></tr>
    <tr><td headers="Stakeholder" class="gt_row gt_left">DALRRD — regulator (no burden-side share by construction)</td>
<td headers="Value" class="gt_row gt_right">R0</td>
<td headers="Share" class="gt_row gt_right">0%</td></tr>
    <tr><td headers="Stakeholder" class="gt_row gt_left gt_striped">Individuals / households — out-of-pocket + lost wages</td>
<td headers="Value" class="gt_row gt_right gt_striped">R10.00 million</td>
<td headers="Share" class="gt_row gt_right gt_striped">0%</td></tr>
    <tr><td headers="Stakeholder" class="gt_row gt_left">Households / wider society — lost lifetime earnings</td>
<td headers="Value" class="gt_row gt_right">R2.25 billion</td>
<td headers="Share" class="gt_row gt_right">96%</td></tr>
    <tr><td headers="Stakeholder" class="gt_row gt_left gt_striped" style="font-weight: bold;">TOTAL</td>
<td headers="Value" class="gt_row gt_right gt_striped" style="font-weight: bold;">R2.34 billion</td>
<td headers="Share" class="gt_row gt_right gt_striped" style="font-weight: bold;">100%</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


**Reading the table.** ~96 % of the R2.34B is **mortality, borne by households and the wider economy** as lost lifetime earnings (1,500 deaths × R1.5M human-capital, undiscounted; sensitivity: R1.05M at 3 % discount). The directly-budgeted health-sector share is **R80M** (NDoH ~R70M hospital + NHLS ~R10M lab) — modest in absolute terms, but it is the only column that appears on a departmental budget line. DALRRD bears **R0** of the *burden* side by construction: their cost sits on the *intervention* side (enforcement, recalls, registration action).


For the full sourced parameter set (CFR by severity, UPFS tariffs, per-option costs, induced-demand components, DALY monetisation, NMB), see the **[Parameters Hub](../parameters_hub.html)**. For the v2 → v3 critical appraisal, see [`parameter_appraisal.qmd`](../parameter_appraisal.qmd).

### Canonical option costs (Detect · Act · Restrict)


::: {.cell}
::: {.cell-output-display}

```{=html}
<div id="azbqayuwuq" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#azbqayuwuq table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#azbqayuwuq thead, #azbqayuwuq tbody, #azbqayuwuq tfoot, #azbqayuwuq tr, #azbqayuwuq td, #azbqayuwuq th {
  border-style: none;
}

#azbqayuwuq p {
  margin: 0;
  padding: 0;
}

#azbqayuwuq .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#azbqayuwuq .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#azbqayuwuq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#azbqayuwuq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#azbqayuwuq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#azbqayuwuq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#azbqayuwuq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#azbqayuwuq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#azbqayuwuq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#azbqayuwuq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#azbqayuwuq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#azbqayuwuq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#azbqayuwuq .gt_spanner_row {
  border-bottom-style: hidden;
}

#azbqayuwuq .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: bold;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#azbqayuwuq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: bold;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#azbqayuwuq .gt_from_md > :first-child {
  margin-top: 0;
}

#azbqayuwuq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#azbqayuwuq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#azbqayuwuq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#azbqayuwuq .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#azbqayuwuq .gt_row_group_first td {
  border-top-width: 2px;
}

#azbqayuwuq .gt_row_group_first th {
  border-top-width: 2px;
}

#azbqayuwuq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#azbqayuwuq .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#azbqayuwuq .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#azbqayuwuq .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#azbqayuwuq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#azbqayuwuq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#azbqayuwuq .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#azbqayuwuq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#azbqayuwuq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#azbqayuwuq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#azbqayuwuq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#azbqayuwuq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#azbqayuwuq .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#azbqayuwuq .gt_left {
  text-align: left;
}

#azbqayuwuq .gt_center {
  text-align: center;
}

#azbqayuwuq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#azbqayuwuq .gt_font_normal {
  font-weight: normal;
}

#azbqayuwuq .gt_font_bold {
  font-weight: bold;
}

#azbqayuwuq .gt_font_italic {
  font-style: italic;
}

#azbqayuwuq .gt_super {
  font-size: 65%;
}

#azbqayuwuq .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#azbqayuwuq .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#azbqayuwuq .gt_indent_1 {
  text-indent: 5px;
}

#azbqayuwuq .gt_indent_2 {
  text-indent: 10px;
}

#azbqayuwuq .gt_indent_3 {
  text-indent: 15px;
}

#azbqayuwuq .gt_indent_4 {
  text-indent: 20px;
}

#azbqayuwuq .gt_indent_5 {
  text-indent: 25px;
}

#azbqayuwuq .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#azbqayuwuq div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal" style>Option costs by stage (Detect · Act · Restrict)</td>
    </tr>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>All values pulled from amua_import_parameters_v3.csv at render time</td>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Option">Option</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Cost">Cost</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Notes">Notes</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Detect">Detect</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Detect  Option" class="gt_row gt_left">S1 — NHLS→NMC IT feed (operating)</td>
<td headers="Detect  Cost" class="gt_row gt_right">R60,000</td>
<td headers="Detect  Notes" class="gt_row gt_left">0.05 FTE analyst + QA</td></tr>
    <tr><td headers="Detect  Option" class="gt_row gt_left gt_striped">S3a — BChE auto-notify (operating)</td>
<td headers="Detect  Cost" class="gt_row gt_right gt_striped">R55,000</td>
<td headers="Detect  Notes" class="gt_row gt_left gt_striped">LIS HL7 middleware</td></tr>
    <tr><td headers="Detect  Option" class="gt_row gt_left">S4 — PIH dashboard / MVD (operating)</td>
<td headers="Detect  Cost" class="gt_row gt_right">R82,000</td>
<td headers="Detect  Notes" class="gt_row gt_left">MVD redesign</td></tr>
    <tr><td headers="Detect  Option" class="gt_row gt_left gt_striped">Surveillance MVP (S1+S3a+S4, operating) ★</td>
<td headers="Detect  Cost" class="gt_row gt_right gt_striped">R137,000</td>
<td headers="Detect  Notes" class="gt_row gt_left gt_striped">= R60k + R55k + R42k</td></tr>
    <tr><td headers="Detect  Option" class="gt_row gt_left">Surveillance MVP setup (one-off)</td>
<td headers="Detect  Cost" class="gt_row gt_right">R80,000</td>
<td headers="Detect  Notes" class="gt_row gt_left">S3a HL7 dominates</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Act">Act</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Act  Option" class="gt_row gt_left gt_striped">C1 — NMC closure-of-loop field (operating)</td>
<td headers="Act  Cost" class="gt_row gt_right gt_striped">R30,000</td>
<td headers="Act  Notes" class="gt_row gt_left gt_striped">Schema + EHP training</td></tr>
    <tr><td headers="Act  Option" class="gt_row gt_left">C2 — Structured DALRRD referral form (operating)</td>
<td headers="Act  Cost" class="gt_row gt_right">R25,000</td>
<td headers="Act  Notes" class="gt_row gt_left">Form + workflow</td></tr>
    <tr><td headers="Act  Option" class="gt_row gt_left gt_striped">C3 — NICD→DALRRD intelligence feed (operating)</td>
<td headers="Act  Cost" class="gt_row gt_right gt_striped">R40,000</td>
<td headers="Act  Notes" class="gt_row gt_left gt_striped">Quarterly brief + alerts</td></tr>
    <tr><td headers="Act  Option" class="gt_row gt_left">C4 — Clinician auto-feedback (operating)</td>
<td headers="Act  Cost" class="gt_row gt_right">R20,000</td>
<td headers="Act  Notes" class="gt_row gt_left">Email templating</td></tr>
    <tr><td headers="Act  Option" class="gt_row gt_left gt_striped">C5 — Joint KPI dashboard (operating)</td>
<td headers="Act  Cost" class="gt_row gt_right gt_striped">R30,000</td>
<td headers="Act  Notes" class="gt_row gt_left gt_striped">Public hosting</td></tr>
    <tr><td headers="Act  Option" class="gt_row gt_left">Coordination Full Package (operating) ★</td>
<td headers="Act  Cost" class="gt_row gt_right">R145,000</td>
<td headers="Act  Notes" class="gt_row gt_left">= Σ C1..C5</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Restrict">Restrict</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Restrict  Option" class="gt_row gt_left gt_striped">T2 — RUP + audit + formulation restriction (low)</td>
<td headers="Restrict  Cost" class="gt_row gt_right gt_striped">R1.00 million</td>
<td headers="Restrict  Notes" class="gt_row gt_left gt_striped">DALRRD inspectorate, lower</td></tr>
    <tr><td headers="Restrict  Option" class="gt_row gt_left">T2 — RUP + audit + formulation restriction (mid)★</td>
<td headers="Restrict  Cost" class="gt_row gt_right">R2.00 million</td>
<td headers="Restrict  Notes" class="gt_row gt_left">Working value</td></tr>
    <tr><td headers="Restrict  Option" class="gt_row gt_left gt_striped">T2 — RUP + audit + formulation restriction (hi)</td>
<td headers="Restrict  Cost" class="gt_row gt_right gt_striped">R3.00 million</td>
<td headers="Restrict  Notes" class="gt_row gt_left gt_striped">Upper</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


::: {.callout-tip icon=false collapse="true"}
## Under the hood — models, packages, and formulae

**Software stack.** This site is built with **Quarto v1.x** rendering R chunks through **R ≥ 4.3** and **knitr**. Tables use **[gt](https://gt.rstudio.com/)**; data wrangling **[tidyverse](https://www.tidyverse.org/)** (`dplyr`, `readr`, `tibble`); percentage formatting **[scales](https://scales.r-lib.org/)**; diagrams **[mermaid](https://mermaid.js.org/)** via Quarto's built-in diagram filter. The interactive [Parameter Playground](../parameter_playground.qmd) layer adds **[Observable JS](https://observablehq.com/@observablehq/observable-javascript)** via Quarto OJS.

**Canonical parameter file.** All numerical values in every brief, the one-pager, and the playground resolve through `pick(name)` → `readr::read_csv("../amua_import_parameters_v3.csv")` → string lookup → `as.numeric()` → `zar()` formatter. **No rand value in any brief is a literal in prose** (except where prose paraphrases a CSV-sourced value). The audit chain is: CSV row → `_shared_parameters.qmd` `pick()` call → rendered `gt` cell.

**Burden model (closed-form, deterministic).**

$$
C_{\text{burden}} \;=\; \underbrace{\sum_{s \in \{\text{PIH},\text{NHLS},\text{NMC}\}} n_s \cdot c^{\text{morb}}_s}_{\text{morbidity}} \;+\; \underbrace{n_{\text{deaths}} \cdot c^{\text{mort}}_{\text{HC}}}_{\text{mortality (human-capital)}}
$$

where $n_s$ = stream counts (rows `n_pih_annual`, `n_nhls_severe_annual`, `n_nmc_annual`), $c^{\text{morb}}_s$ = stratum-specific per-case morbidity costs (rows `c_morbidity_*`), $n_{\text{deaths}} = 2{,}620$ (`n_deaths_statssa_macod` — **StatsSA MACOD 2023 (X40-X49) is the canonical truth source for deaths and is updated as new StatsSA releases land**; `n_deaths_headline` mirrors it), $c^{\text{mort}}_{\text{HC}} = $ 25 productive years × R60k median income, undiscounted (`c_mortality_human_capital`). Stratified-CFR alternative (`C_burden_total_conservative` ≈ R1.34B) is supplied as a sensitivity.

**Coordination decision tree (closed-form joint probability).**

$$
P(\text{loop closed}) \;=\; \prod_{i=1}^{8} p_i
$$

over eight sequential nodes (notify → SMS → investigate → record → refer → DALRRD acts → feedback → feedback to clinician). Status-quo joint product ≈ 1.1 % (`p_loop_closed_status_quo`); Full Package ≈ 70 % (`p_loop_closed_FP`). Deaths averted = $\Delta P \times \eta \times n_{\text{burden}} \times p_{\text{death}}$, with $\eta$ from `eta_response_mid` = 0.30 and $p_{\text{death}}$ from `cfr_headline_mid` = 0.125.

**Terbufos bracketed estimate.**

$$
\text{Deaths averted}_{T3} \;=\; f_{\text{attr}} \cdot \phi_{\text{retired}} \cdot n_{\text{deaths}}
$$

with $f_{\text{attr}} \in [0.20, 0.35]$ (`frac_terbufos_attributable_{lo,mid,hi}`, anchored to Sri Lanka Class Ia withdrawal natural experiments, Gunnell et al. *Lancet Glob Health* 2017) and $\phi_{\text{retired}} \in [0.60, 0.80]$ (Sri Lanka substitution-incompleteness). Bracket: 200–400 deaths/yr (`n_deaths_averted_T3_{lo,hi}`).

**Surveillance detection model.**

$$
\text{Cases averted} \;=\; (P_{\text{detect}} - P_{\text{detect}}^{\text{SQ}}) \cdot \eta \cdot n_{\text{burden}}
$$

with $P_{\text{detect}}$ pulled from `d_status_quo`, `d_option1_NHLS_MOU`, …, `d_full_package` (expert elicitation, beta priors). Cost-effectiveness uses **net monetary benefit (NMB)** at the SA cost-effectiveness threshold $\lambda$ = R38,500/DALY averted (Edoka & Stacey 2020).

**Probabilistic sensitivity analysis (PSA).** Each CSV row carries a `dist=<family>(<params>)` tag (`beta`, `gamma`, `fixed`) parsed by the analysis pipeline (`wrangling_v2.r`) for Monte Carlo PSA. Distributions follow standard health-economics conventions: gamma for costs (shape 25 → CV ≈ 0.20), beta for probabilities (parameterised on the sample-equivalent count), fixed for deterministic anchors and derived sums.

**What this site does *not* do.** No mixed-effects regression, no machine-learning model, no causal-inference identification strategy, no Bayesian hierarchical model. The site is a transparent deterministic burden-and-decision-tree calculator with explicit PSA. Strength comes from auditability, not algorithmic complexity.
:::
:::


::: {.callout-note}
## Who bears the R2.34B

NDoH ~R70M (3 %), NHLS ~R10M (<1 %), households ~R10M OOP (<1 %), and ~R2.25B (96 %) in lost lifetime earnings borne by households and the wider economy. DALRRD bears no direct burden-side cost but holds **the only legal lever that prevents the underlying exposure**. That asymmetry is why the loop must terminate in DALRRD action: the agency with the lowest burden share controls the highest-leverage intervention.
:::

### The notification pathway — one-way and broken

```{mermaid}
%%| label: fig-coord-status-quo-flow
%%| fig-cap: "Current notification pathway. Clinicians and public-health officials notify on the NMC platform; NMC sends an SMS to the local EHP, who is mandated to investigate but does not record the investigation back on NMC. The EHP may informally refer to DALRRD, but this is not captured on NMC and DALRRD's action (if any) is not fed back to NMC or the clinician."
flowchart LR
    A[Clinician /<br/>Public-health official] -->|Notification on<br/>NMC platform| D[NMC platform<br/><i>NICD</i>]
    D -->|SMS notification| B[Local EHP<br/><i>mandated to investigate</i>]
    B -.Investigation NOT<br/>recorded on NMC.-x D
    B -.Informal phone /<br/>email referral.-> C[DALRRD<br/><i>Pesticide Registrar /<br/>Inspectorate</i>]
    B -.Referral NOT<br/>recorded on NMC.-x D

    C -.Feedback to EHP<br/>at best.-> B
    C -.x No feedback to NMC.-x D
    C -.x No feedback to clinician.-x A
    D -.x No case-status<br/>feedback.-x A

    style A fill:#fde,stroke:#333
    style B fill:#ffd,stroke:#333
    style C fill:#fdd,stroke:#cc0000,stroke-dasharray: 5 5
    style D fill:#cfc,stroke:#333,stroke-width:2px
```

**Reading the diagram.** Clinicians *do* file on NMC — that is the formal entry point. NMC *does* SMS the local EHP, who *is* mandated to investigate. The chain breaks at two specific places: (a) the EHP investigation outcome is **never written back to NMC** because no NMC field requires it; and (b) the EHP→DALRRD referral, when it happens, is informal and likewise unrecorded. DALRRD action — if any — flows back to the EHP at best, and never to NICD or the originating clinician.

## 4. Root cause analysis

```{mermaid}
%%| label: fig-coord-fishbone
%%| fig-cap: "Root causes of coordination failure across the NMC–EHP–DALRRD chain."
flowchart LR
    A[Coordination failure] --> R1[NMC has no field for<br/>EHP investigation outcome]
    A --> R2[EHP→DALRRD referral<br/>has no SOP, no audit trail]
    A --> R3[DALRRD has no inbound<br/>NICD intelligence feed]
    A --> R4[Clinicians never receive<br/>case-status feedback]
    A --> R5[No KPI / accountability<br/>at any node]

    R1 --> O1[Option C1: Mandate EHP<br/>NMC closure-of-loop field]
    R2 --> O2[Option C2: Structured<br/>EHP→DALRRD referral form on NMC]
    R3 --> O3[Option C3: NICD→DALRRD<br/>intelligence feed]
    R4 --> O4[Option C4: NMC auto-feedback<br/>to notifier on case status]
    R5 --> O5[Option C5: Joint KPI dashboard<br/>NICD + DALRRD + Provinces]

    style A fill:#f99,stroke:#333
    style O1 fill:#9f9,stroke:#333
    style O2 fill:#9f9,stroke:#333
    style O3 fill:#9f9,stroke:#333
    style O4 fill:#9f9,stroke:#333
    style O5 fill:#9f9,stroke:#333
```

The five drivers are: (1) NMC schema lacks a closure-of-loop field; (2) EHP→DALRRD referral has no SOP; (3) DALRRD has no inbound NICD intelligence feed despite a formal request for one; (4) clinicians get no case-status feedback so the notification has no perceived value; (5) **no decision node in the chain has an accountable owner with a KPI**, so nothing fails loudly when the loop breaks.

## 5. Policy options

| ID | Option | What it does | Annual cost |
|:---|:-------|:-------------|------------:|
| **C1** | NMC closure-of-loop field for EHPs | Structured "investigation outcome" field (visited, source identified, sampling, referral); 14-day completion KPI. No new legislation. | ~R30k |
| **C2** | Structured EHP→DALRRD referral form on NMC | Auto-emails DALRRD Inspectorate with product, location, agent, severity; replaces informal phone/email referral. | ~R25k |
| **C3** ★ | NICD→DALRRD poisoning intelligence feed | Quarterly NICD brief by product/geography/season + ad-hoc case-spike alerts. Gives DALRRD the evidence base for product-specific action (prerequisite for the [Terbufos brief](terbufos_policy.qmd)). | ~R40k |
| **C4** | Notifier auto-feedback | Quarterly NMC case-status summary back to the notifying clinician. Removes the "notify into a black hole" disincentive. | ~R20k |
| **C5** | Joint KPI dashboard | Public dashboard: notification-to-investigation time, % with recorded outcome, % with DALRRD action, % notifiers receiving feedback. Co-owned by NICD, DALRRD, provincial DoHs. | ~R30k |

### Coordination Full Package (C1 + C2 + C3 + C4 + C5)

```{mermaid}
%%| label: fig-coord-feedback-loop
%%| fig-cap: "Proposed end-state: a closed feedback loop linking clinicians, laboratories, NICD, EHPs, DALRRD, and provincial response teams. Every actor both contributes data and receives back the action taken."
flowchart LR
    A[Clinician<br/>at facility] -->|Electronic<br/>NMC notification| D[NICD<br/>Surveillance Unit]
    L[NHLS Laboratory<br/>BChE + Toxicology] -->|Auto-notify<br/>< 24h| D
    P[PIH<br/>Quarterly summary] -->|Minimum viable<br/>dataset| D

    D -->|Case-spike alert| E[Provincial EHP /<br/>Response Team]
    E -->|Structured<br/>referral| C[DALRRD<br/>Inspectorate]
    C -->|Enforcement /<br/>recall outcome| D
    E -->|Investigation<br/>outcome| D

    D -.Case-status<br/>feedback.-> A
    D -.Result-use<br/>feedback.-> L
    D -.Trend<br/>feedback.-> P
    C -.Regulatory<br/>action feedback.-> A

    style A fill:#cce5ff,stroke:#333
    style L fill:#cce5ff,stroke:#333
    style P fill:#cce5ff,stroke:#333
    style D fill:#9f9,stroke:#333,stroke-width:2px
    style E fill:#ffd,stroke:#333
    style C fill:#fcb,stroke:#333
```

Total annual cost of the Coordination Full Package: **~R145,000**. No new legislation required.

## 6. Decision tree — coordination outcomes per suspected case

### 6a. Where the chain breaks today

```{mermaid}
%%| fig-cap: "Coordination decision tree for a single suspected case under the status quo. Eight conditional steps; six terminate in a broken-loop outcome. All eight node probabilities pulled from amua_import_parameters_v3.csv at render time."
flowchart TD
    Q0{Case suspected?} -->|Yes| Q1{Notified on<br/>NMC?}
    Q0 -->|No| X0[Case invisible]:::bad

    Q1 -->|Yes 0.30| Q2{SMS reaches<br/>EHP?}
    Q1 -->|No 0.70| X1[No notification]:::bad

    Q2 -->|Yes 0.95| Q3{EHP<br/>investigates?}
    Q2 -->|No 0.05| X2[Dies at NMC]:::bad

    Q3 -->|Yes 0.60| Q4{Recorded<br/>on NMC?}
    Q3 -->|No 0.40| X3[No response]:::bad

    Q4 -->|Yes 0.05| G1[Loop closed<br/>to NMC]:::good
    Q4 -->|No 0.95| Q5{Refer to<br/>DALRRD?}

    Q5 -->|Yes 0.30| Q6{DALRRD<br/>acts?}
    Q5 -->|No 0.70| X4[Regulator<br/>never hears]:::bad

    Q6 -->|Yes 0.50| Q7{Feedback to<br/>NMC + clinician?}
    Q6 -->|No 0.50| X5[Source persists]:::bad

    Q7 -->|To EHP only 0.90| X6[NMC + clinician<br/>still blind]:::bad
    Q7 -->|To NMC + clinician 0.10| G2[Loop fully closed]:::good

    classDef bad fill:#fdd,stroke:#cc0000,stroke-width:1.5px
    classDef good fill:#cfc,stroke:#060,stroke-width:1.5px
```

**Joint P(loop fully closes) ≈ 1.1 %** under the status quo (CSV: `p_loop_closed_status_quo`). Expected coordination cost per suspected case ≈ **R196,400** — virtually the full per-case societal burden of R197,000, because the loop almost never closes.

### 6b. Per-loop yield — the parameter the integrated model consumes

A single fully-closed loop retires one uncontrolled source. The source would otherwise produce a cluster of $\rho_{\text{secondary}}$ further cases. Response efficacy $\eta$ is the fraction of that cluster that is actually averted once the loop closes. Per loop closed:

$$
\text{cases prevented} = \rho_{\text{secondary}} \times \eta
\qquad
\text{deaths prevented} = \rho_{\text{secondary}} \times \eta \times p_{\text{death}}
$$


::: {#tbl-per-loop-yield .cell tbl-cap='Preventable cases, deaths, and societal burden per *additional* fully-closed loop, at low/mid/high response efficacy. All inputs from amua_import_parameters_v4.csv. These are the rates that overall_policy_model.qmd multiplies by Δ(loops closed) under each policy scenario.'}
::: {.cell-output-display}

```{=html}
<div id="padxxrsotm" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#padxxrsotm table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#padxxrsotm thead, #padxxrsotm tbody, #padxxrsotm tfoot, #padxxrsotm tr, #padxxrsotm td, #padxxrsotm th {
  border-style: none;
}

#padxxrsotm p {
  margin: 0;
  padding: 0;
}

#padxxrsotm .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#padxxrsotm .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#padxxrsotm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#padxxrsotm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#padxxrsotm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#padxxrsotm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#padxxrsotm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#padxxrsotm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#padxxrsotm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#padxxrsotm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#padxxrsotm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#padxxrsotm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#padxxrsotm .gt_spanner_row {
  border-bottom-style: hidden;
}

#padxxrsotm .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#padxxrsotm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#padxxrsotm .gt_from_md > :first-child {
  margin-top: 0;
}

#padxxrsotm .gt_from_md > :last-child {
  margin-bottom: 0;
}

#padxxrsotm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#padxxrsotm .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#padxxrsotm .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#padxxrsotm .gt_row_group_first td {
  border-top-width: 2px;
}

#padxxrsotm .gt_row_group_first th {
  border-top-width: 2px;
}

#padxxrsotm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#padxxrsotm .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#padxxrsotm .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#padxxrsotm .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#padxxrsotm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#padxxrsotm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#padxxrsotm .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#padxxrsotm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#padxxrsotm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#padxxrsotm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#padxxrsotm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#padxxrsotm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#padxxrsotm .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#padxxrsotm .gt_left {
  text-align: left;
}

#padxxrsotm .gt_center {
  text-align: center;
}

#padxxrsotm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#padxxrsotm .gt_font_normal {
  font-weight: normal;
}

#padxxrsotm .gt_font_bold {
  font-weight: bold;
}

#padxxrsotm .gt_font_italic {
  font-style: italic;
}

#padxxrsotm .gt_super {
  font-size: 65%;
}

#padxxrsotm .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#padxxrsotm .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#padxxrsotm .gt_indent_1 {
  text-indent: 5px;
}

#padxxrsotm .gt_indent_2 {
  text-indent: 10px;
}

#padxxrsotm .gt_indent_3 {
  text-indent: 15px;
}

#padxxrsotm .gt_indent_4 {
  text-indent: 20px;
}

#padxxrsotm .gt_indent_5 {
  text-indent: 25px;
}

#padxxrsotm .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#padxxrsotm div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Scenario">Scenario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="aη">η</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Cases-/-loop">Cases / loop</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Deaths-/-loop">Deaths / loop</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Burden-retired-/-loop-(R)">Burden retired / loop (R)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Scenario" class="gt_row gt_left">Low engagement (η_lo)</td>
<td headers="η" class="gt_row gt_right">0.15</td>
<td headers="Cases / loop" class="gt_row gt_right">0.45</td>
<td headers="Deaths / loop" class="gt_row gt_right">0.06</td>
<td headers="Burden retired / loop (R)" class="gt_row gt_right">R93,150</td></tr>
    <tr><td headers="Scenario" class="gt_row gt_left">Base case (η_mid)</td>
<td headers="η" class="gt_row gt_right">0.30</td>
<td headers="Cases / loop" class="gt_row gt_right">0.90</td>
<td headers="Deaths / loop" class="gt_row gt_right">0.12</td>
<td headers="Burden retired / loop (R)" class="gt_row gt_right">R186,300</td></tr>
    <tr><td headers="Scenario" class="gt_row gt_left">Well-resourced (η_hi)</td>
<td headers="η" class="gt_row gt_right">0.50</td>
<td headers="Cases / loop" class="gt_row gt_right">1.50</td>
<td headers="Deaths / loop" class="gt_row gt_right">0.20</td>
<td headers="Burden retired / loop (R)" class="gt_row gt_right">R310,500</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


**Headline rule of thumb.** At base case ($\rho = 3$, $\eta = 0.3$, $p_{\text{death}} = 0.13$): **every loop closed prevents ≈ 0.9 future cases and ≈ 0.12 deaths**, retiring **≈ R186,300 of societal burden**. Multiply by the change in number of loops closed under any scenario in [the integrated model](overall_policy_model.qmd) to get the policy yield.

### 6c. Clinical-outcome subtree

Each coordination terminal feeds into a clinical-outcome subtree for the index case *and* for the secondary cases that would otherwise follow from the same source:

```{mermaid}
%%| fig-cap: "Clinical-outcome subtree attached to each coordination terminal. Index-case probabilities (p_death, p_severe, p_recover) and secondary-case multipliers (rho_secondary, eta_response_mid) all pulled from amua_import_parameters_v3.csv at render time."
flowchart TD
    T0[Suspected case] --> P1{Loop closed?}

    P1 -->|Yes — G1 or G2| S1[Source removed]:::good
    P1 -->|No — X1..X6| S2[Source persists]:::bad

    S1 --> I1[Index case:<br/>p_death 0.13<br/>p_severe 0.27<br/>p_recover 0.60]
    S2 --> I2[Index case:<br/>p_death 0.13<br/>p_severe 0.27<br/>p_recover 0.60]

    S1 --> N1[Averted secondary cases<br/>~ rho x eta = 0.90]:::good
    S2 --> N2[Secondary cases<br/>~ rho = 3.00]:::bad

    N1 --> AD1[Deaths averted<br/>~ 0.117]:::good
    N2 --> AD2[Extra deaths<br/>~ 0.390]:::bad

    classDef bad fill:#fdd,stroke:#cc0000,stroke-width:1.5px
    classDef good fill:#cfc,stroke:#060,stroke-width:1.5px
```

### 6d. What changes under each coordination scenario

Burden avoided is split by **who would otherwise have borne it**, so each agency sees the share of the win that flows back to its own budget line or constituency. The avoided-burden split uses the same shares as the canonical stakeholder table above: ~3.4 % health sector (NDoH + NHLS), ~96.6 % households (mortality + OOP).

| Scenario | P(loop closed) | Deaths averted / yr | Avoided — health system (NDoH + NHLS) | Avoided — households (mortality + OOP) | Total avoided |
|:---------|---------------:|--------------------:|-------------------------------------:|---------------------------------------:|--------------:|
| Status quo | 1.1 % | 15 | — | — | — |
| + C3 (NICD→DALRRD feed) | ~40 % | ~547 | ~R29M | ~R806M | ~R835M |
| **Coordination Full Package (C1–C5)** | **~70 %** | **~957** | **~R50M** | **~R1,400M** | **~R1,450M** |

: Modelled coordination outcomes at national scale (× 4,171 observed cases/year, 2023 streams). Stakeholder columns apply the canonical share table (NDoH+NHLS = R80M of R2.34B; households = R2.26B of R2.34B) to the total avoided burden in each scenario. Probabilities are placeholders aligned with the surveillance detection-rate ranges in the [Surveillance brief](surveillance_policy.qmd). {.striped .hover}

**Reading by audience.**

- **NDoH / NHLS:** the R50M avoided is ~330× the R145k Full-Package operating cost — a credible business case before counting household mortality.
- **DALRRD:** C3 is the lowest-cost route to the evidence base needed for product-specific action (see [Terbufos brief](terbufos_policy.qmd)).
- **Treasury / Presidency:** ~R1.4B/yr of household and societal cost retired; the cross-departmental return that justifies the joint DG circular.

**Beyond terbufos.** The Full Package retires ~957 deaths/yr **today**, dominated by organophosphate and carbamate clusters. As terbufos is withdrawn (see [Terbufos brief](terbufos_policy.qmd)) the residual cluster mix will shift first to other agricultural pesticides (aldicarb, paraquat, carbofuran), and over a 10–20 year development horizon increasingly toward **opioids, methadone substitution, and recreational-drug overdoses** — the toxicology profile that has dominated middle- and high-income countries since the 1990s. The closed loop is the asset that survives that transition; only the product list at C3 changes.

### 6e. Cost per loop closed — the unit cost the integrated model uses

The Full Package adds a fixed operating overhead (C1–C5 ≈ R145k/yr). It is spread across the *additional* loops it closes versus the status quo. That gives a single **cost-per-loop-closed** scalar that the [integrated model](overall_policy_model.qmd) can call directly when comparing scenarios.

```{mermaid}
%%| label: fig-coord-cost-per-loop
%%| fig-cap: "Cost decomposition for one fully-closed loop. Five fixed C-line items feed a shared overhead; that overhead is amortised across the incremental loops closed each year."
flowchart LR
    C1[C1 NMC field<br/>R30k] --> POOL[Full Package<br/>shared overhead<br/>R145k / yr]
    C2[C2 Referral form<br/>R25k] --> POOL
    C3[C3 NICD→DALRRD feed<br/>R40k] --> POOL
    C4[C4 Clinician feedback<br/>R20k] --> POOL
    C5[C5 KPI dashboard<br/>R30k] --> POOL
    POOL -->|÷ Δ loops closed / yr| UNIT[Cost per loop closed<br/><b>≈ R53 / loop</b>]
    UNIT -->|× ρ × η| YIELD[Cost per future case prevented<br/><b>≈ R59 / case</b>]

    style POOL fill:#ffd,stroke:#333
    style UNIT fill:#cfc,stroke:#060,stroke-width:2px
    style YIELD fill:#cfc,stroke:#060,stroke-width:2px
```


::: {#tbl-cost-per-loop .cell tbl-cap='Cost per loop closed and per future case prevented, derived from CSV inputs. These two scalars are the parameters overall_policy_model.qmd consumes when toggling the Coordination Full Package on/off.'}
::: {.cell-output-display}

```{=html}
<div id="aicxtkwecy" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#aicxtkwecy table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#aicxtkwecy thead, #aicxtkwecy tbody, #aicxtkwecy tfoot, #aicxtkwecy tr, #aicxtkwecy td, #aicxtkwecy th {
  border-style: none;
}

#aicxtkwecy p {
  margin: 0;
  padding: 0;
}

#aicxtkwecy .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#aicxtkwecy .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#aicxtkwecy .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#aicxtkwecy .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#aicxtkwecy .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#aicxtkwecy .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#aicxtkwecy .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#aicxtkwecy .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#aicxtkwecy .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#aicxtkwecy .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#aicxtkwecy .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#aicxtkwecy .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#aicxtkwecy .gt_spanner_row {
  border-bottom-style: hidden;
}

#aicxtkwecy .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#aicxtkwecy .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#aicxtkwecy .gt_from_md > :first-child {
  margin-top: 0;
}

#aicxtkwecy .gt_from_md > :last-child {
  margin-bottom: 0;
}

#aicxtkwecy .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#aicxtkwecy .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#aicxtkwecy .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#aicxtkwecy .gt_row_group_first td {
  border-top-width: 2px;
}

#aicxtkwecy .gt_row_group_first th {
  border-top-width: 2px;
}

#aicxtkwecy .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#aicxtkwecy .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#aicxtkwecy .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#aicxtkwecy .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#aicxtkwecy .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#aicxtkwecy .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#aicxtkwecy .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#aicxtkwecy .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#aicxtkwecy .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#aicxtkwecy .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#aicxtkwecy .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#aicxtkwecy .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#aicxtkwecy .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#aicxtkwecy .gt_left {
  text-align: left;
}

#aicxtkwecy .gt_center {
  text-align: center;
}

#aicxtkwecy .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#aicxtkwecy .gt_font_normal {
  font-weight: normal;
}

#aicxtkwecy .gt_font_bold {
  font-weight: bold;
}

#aicxtkwecy .gt_font_italic {
  font-style: italic;
}

#aicxtkwecy .gt_super {
  font-size: 65%;
}

#aicxtkwecy .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#aicxtkwecy .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#aicxtkwecy .gt_indent_1 {
  text-indent: 5px;
}

#aicxtkwecy .gt_indent_2 {
  text-indent: 10px;
}

#aicxtkwecy .gt_indent_3 {
  text-indent: 15px;
}

#aicxtkwecy .gt_indent_4 {
  text-indent: 20px;
}

#aicxtkwecy .gt_indent_5 {
  text-indent: 25px;
}

#aicxtkwecy .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#aicxtkwecy div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Scenario">Scenario</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="P(loop-closed)">P(loop closed)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="aΔ-loops-closed-/-yr">Δ loops closed / yr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Cost-/-yr-(R)">Cost / yr (R)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Cost-/-loop-(R)">Cost / loop (R)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Cases-prevented-/-yr">Cases prevented / yr</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Cost-/-case-prevented-(R)">Cost / case prevented (R)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Scenario" class="gt_row gt_left">C3 only</td>
<td headers="P(loop closed)" class="gt_row gt_right">40%</td>
<td headers="Δ loops closed / yr" class="gt_row gt_right">1,537</td>
<td headers="Cost / yr (R)" class="gt_row gt_right">R40,000</td>
<td headers="Cost / loop (R)" class="gt_row gt_right">R26</td>
<td headers="Cases prevented / yr" class="gt_row gt_right">1,383</td>
<td headers="Cost / case prevented (R)" class="gt_row gt_right">R29</td></tr>
    <tr><td headers="Scenario" class="gt_row gt_left">Coordination Full Package</td>
<td headers="P(loop closed)" class="gt_row gt_right">70%</td>
<td headers="Δ loops closed / yr" class="gt_row gt_right">2,722</td>
<td headers="Cost / yr (R)" class="gt_row gt_right">R145,000</td>
<td headers="Cost / loop (R)" class="gt_row gt_right">R53</td>
<td headers="Cases prevented / yr" class="gt_row gt_right">2,449</td>
<td headers="Cost / case prevented (R)" class="gt_row gt_right">R59</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


At base case: **≈ R53 per additional loop closed**, **≈ R59 per future poisoning prevented**. Both scalars fall as ρ or η rise — the system gets cheaper per case averted in exactly the cluster-prone settings (illegal street-pesticide hotspots; future opioid overdose chains) where it matters most.

### 6f. Sensitivity — how strongly a working loop suppresses future poisonings

The headline policy claim is that **a closed coordination loop prevents future poisonings**. Two parameters drive the size of that effect: the loop-closure probability achieved by the policy ($P_{\text{loop}}$) and the response efficacy once a source is identified ($\eta$). Both have CSV-anchored ranges. The table below sweeps them jointly; cells are colour-shaded from low (red) to high (green).


::: {#tbl-sens-coord-poisonings .cell tbl-cap='Future poisonings prevented per year as a function of achieved loop-closure rate (rows) and response efficacy η (columns), holding ρ = 3.0 and observed-case denominator = 3,950 cases/yr. Status-quo baseline (P_loop = 1.1 %) is shown for reference; all other rows are policy scenarios.'}
::: {.cell-output-display}

```{=html}
<div id="gfonhcgvro" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#gfonhcgvro table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#gfonhcgvro thead, #gfonhcgvro tbody, #gfonhcgvro tfoot, #gfonhcgvro tr, #gfonhcgvro td, #gfonhcgvro th {
  border-style: none;
}

#gfonhcgvro p {
  margin: 0;
  padding: 0;
}

#gfonhcgvro .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#gfonhcgvro .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#gfonhcgvro .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#gfonhcgvro .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#gfonhcgvro .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#gfonhcgvro .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gfonhcgvro .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#gfonhcgvro .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#gfonhcgvro .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#gfonhcgvro .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#gfonhcgvro .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#gfonhcgvro .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#gfonhcgvro .gt_spanner_row {
  border-bottom-style: hidden;
}

#gfonhcgvro .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#gfonhcgvro .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#gfonhcgvro .gt_from_md > :first-child {
  margin-top: 0;
}

#gfonhcgvro .gt_from_md > :last-child {
  margin-bottom: 0;
}

#gfonhcgvro .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#gfonhcgvro .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#gfonhcgvro .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#gfonhcgvro .gt_row_group_first td {
  border-top-width: 2px;
}

#gfonhcgvro .gt_row_group_first th {
  border-top-width: 2px;
}

#gfonhcgvro .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#gfonhcgvro .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#gfonhcgvro .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#gfonhcgvro .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gfonhcgvro .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#gfonhcgvro .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#gfonhcgvro .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#gfonhcgvro .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#gfonhcgvro .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#gfonhcgvro .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#gfonhcgvro .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#gfonhcgvro .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#gfonhcgvro .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#gfonhcgvro .gt_left {
  text-align: left;
}

#gfonhcgvro .gt_center {
  text-align: center;
}

#gfonhcgvro .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#gfonhcgvro .gt_font_normal {
  font-weight: normal;
}

#gfonhcgvro .gt_font_bold {
  font-weight: bold;
}

#gfonhcgvro .gt_font_italic {
  font-style: italic;
}

#gfonhcgvro .gt_super {
  font-size: 65%;
}

#gfonhcgvro .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#gfonhcgvro .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#gfonhcgvro .gt_indent_1 {
  text-indent: 5px;
}

#gfonhcgvro .gt_indent_2 {
  text-indent: 10px;
}

#gfonhcgvro .gt_indent_3 {
  text-indent: 15px;
}

#gfonhcgvro .gt_indent_4 {
  text-indent: 20px;
}

#gfonhcgvro .gt_indent_5 {
  text-indent: 25px;
}

#gfonhcgvro .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#gfonhcgvro div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="a::stub">P_loop \ η</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="aη_lo-(15%)">η_lo (15%)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="aη_mid-(30%)">η_mid (30%)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="aη_hi-(50%)">η_hi (50%)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><th id="stub_1_1" scope="row" class="gt_row gt_left gt_stub">Status quo (1 %)</th>
<td headers="stub_1_1 η_lo (15%)" class="gt_row gt_right" style="background-color: #FEE08B; color: #000000;">0</td>
<td headers="stub_1_1 η_mid (30%)" class="gt_row gt_right" style="background-color: #FEE08B; color: #000000;">0</td>
<td headers="stub_1_1 η_hi (50%)" class="gt_row gt_right" style="background-color: #FEE08B; color: #000000;">0</td></tr>
    <tr><th id="stub_1_2" scope="row" class="gt_row gt_left gt_stub">C3 only (40 %)</th>
<td headers="stub_1_2 η_lo (15%)" class="gt_row gt_right" style="background-color: #ADDA6C; color: #000000;">691</td>
<td headers="stub_1_2 η_mid (30%)" class="gt_row gt_right" style="background-color: #ADDA6C; color: #000000;">1,383</td>
<td headers="stub_1_2 η_hi (50%)" class="gt_row gt_right" style="background-color: #ADDA6C; color: #000000;">2,305</td></tr>
    <tr><th id="stub_1_3" scope="row" class="gt_row gt_left gt_stub">Mid-implementation (55 %)</th>
<td headers="stub_1_3 η_lo (15%)" class="gt_row gt_right" style="background-color: #85C663; color: #000000;">958</td>
<td headers="stub_1_3 η_mid (30%)" class="gt_row gt_right" style="background-color: #85C663; color: #000000;">1,916</td>
<td headers="stub_1_3 η_hi (50%)" class="gt_row gt_right" style="background-color: #85C663; color: #000000;">3,194</td></tr>
    <tr><th id="stub_1_4" scope="row" class="gt_row gt_left gt_stub">Full Package (70 %)</th>
<td headers="stub_1_4 η_lo (15%)" class="gt_row gt_right" style="background-color: #58AF59; color: #FFFFFF;">1,225</td>
<td headers="stub_1_4 η_mid (30%)" class="gt_row gt_right" style="background-color: #58AF59; color: #FFFFFF;">2,449</td>
<td headers="stub_1_4 η_hi (50%)" class="gt_row gt_right" style="background-color: #58AF59; color: #FFFFFF;">4,082</td></tr>
    <tr><th id="stub_1_5" scope="row" class="gt_row gt_left gt_stub">Best-in-class (85 %)</th>
<td headers="stub_1_5 η_lo (15%)" class="gt_row gt_right" style="background-color: #1A9850; color: #FFFFFF;">1,491</td>
<td headers="stub_1_5 η_mid (30%)" class="gt_row gt_right" style="background-color: #1A9850; color: #FFFFFF;">2,983</td>
<td headers="stub_1_5 η_hi (50%)" class="gt_row gt_right" style="background-color: #1A9850; color: #FFFFFF;">4,971</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


**Reading.** Even at the *low* response-efficacy edge (η = 15 %), the Full Package prevents **~1225 future poisonings/yr**; at the well-resourced edge (η = 50 %) it prevents **~4082/yr**. The policy claim is therefore robust across the full CSV-anchored parameter range: every realistic combination of $(P_{\text{loop}}, \eta)$ produces a four-figure annual reduction in future cases. The integrated model uses these two scalars (`p_loop_closed_FP`, `eta_response_mid`) as toggleable inputs alongside the surveillance and source-control levers.

### 6g. Per-action workload — what each loop-step actually costs

Closing a loop is not free at the operational tier. Each *gross* alert that enters the system (true case + false positive) costs an **EHP environmental investigation** (CSV: `c_per_ehp_investigation_mid` ≈ R4,000); a fraction $p_{\text{DALRRD}}$ ≈ 0.3 of those trigger a **DALRRD inspectorate site visit** (CSV: `c_per_dalrrd_inspection_mid` ≈ R12,000). Both unit costs have lo/hi ranges in the CSV.


::: {#tbl-per-action-cost .cell tbl-cap='Per-action workload cost components (CSV-anchored). Each fully-closed loop consumes one EHP investigation; a fraction p_DALRRD trigger an inspectorate visit. These are the unit inputs overall_policy_model.qmd uses to translate alert volume into induced regulator workload.'}
::: {.cell-output-display}

```{=html}
<div id="jpgutxzuqj" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#jpgutxzuqj table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#jpgutxzuqj thead, #jpgutxzuqj tbody, #jpgutxzuqj tfoot, #jpgutxzuqj tr, #jpgutxzuqj td, #jpgutxzuqj th {
  border-style: none;
}

#jpgutxzuqj p {
  margin: 0;
  padding: 0;
}

#jpgutxzuqj .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#jpgutxzuqj .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#jpgutxzuqj .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#jpgutxzuqj .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#jpgutxzuqj .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jpgutxzuqj .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jpgutxzuqj .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#jpgutxzuqj .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#jpgutxzuqj .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#jpgutxzuqj .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#jpgutxzuqj .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#jpgutxzuqj .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#jpgutxzuqj .gt_spanner_row {
  border-bottom-style: hidden;
}

#jpgutxzuqj .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#jpgutxzuqj .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#jpgutxzuqj .gt_from_md > :first-child {
  margin-top: 0;
}

#jpgutxzuqj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#jpgutxzuqj .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#jpgutxzuqj .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#jpgutxzuqj .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#jpgutxzuqj .gt_row_group_first td {
  border-top-width: 2px;
}

#jpgutxzuqj .gt_row_group_first th {
  border-top-width: 2px;
}

#jpgutxzuqj .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jpgutxzuqj .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#jpgutxzuqj .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#jpgutxzuqj .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jpgutxzuqj .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#jpgutxzuqj .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#jpgutxzuqj .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#jpgutxzuqj .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#jpgutxzuqj .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#jpgutxzuqj .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jpgutxzuqj .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#jpgutxzuqj .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#jpgutxzuqj .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#jpgutxzuqj .gt_left {
  text-align: left;
}

#jpgutxzuqj .gt_center {
  text-align: center;
}

#jpgutxzuqj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#jpgutxzuqj .gt_font_normal {
  font-weight: normal;
}

#jpgutxzuqj .gt_font_bold {
  font-weight: bold;
}

#jpgutxzuqj .gt_font_italic {
  font-style: italic;
}

#jpgutxzuqj .gt_super {
  font-size: 65%;
}

#jpgutxzuqj .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#jpgutxzuqj .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#jpgutxzuqj .gt_indent_1 {
  text-indent: 5px;
}

#jpgutxzuqj .gt_indent_2 {
  text-indent: 10px;
}

#jpgutxzuqj .gt_indent_3 {
  text-indent: 15px;
}

#jpgutxzuqj .gt_indent_4 {
  text-indent: 20px;
}

#jpgutxzuqj .gt_indent_5 {
  text-indent: 25px;
}

#jpgutxzuqj .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#jpgutxzuqj div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Component">Component</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Low">Low</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Mid">Mid</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="High">High</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="CSV">CSV</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Component" class="gt_row gt_left">EHP environmental investigation (per gross alert)</td>
<td headers="Low" class="gt_row gt_right">R2,500</td>
<td headers="Mid" class="gt_row gt_right">R4,000</td>
<td headers="High" class="gt_row gt_right">R7,000</td>
<td headers="CSV" class="gt_row gt_left">c_per_ehp_investigation_*</td></tr>
    <tr><td headers="Component" class="gt_row gt_left">DALRRD inspectorate site visit (per referred case)</td>
<td headers="Low" class="gt_row gt_right">R6,000</td>
<td headers="Mid" class="gt_row gt_right">R12,000</td>
<td headers="High" class="gt_row gt_right">R25,000</td>
<td headers="CSV" class="gt_row gt_left">c_per_dalrrd_inspection_*</td></tr>
    <tr><td headers="Component" class="gt_row gt_left">P(DALRRD action | confirmed referral)</td>
<td headers="Low" class="gt_row gt_right">—</td>
<td headers="Mid" class="gt_row gt_right">0.30</td>
<td headers="High" class="gt_row gt_right">—</td>
<td headers="CSV" class="gt_row gt_left">p_dalrrd_action_given_referral</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


### 6h. False positives bite: induced workload under community surveillance

Administrative-tier feeds (NMC, NHLS BChE auto-notify, PIH) produce alerts that are essentially all true cases — false-positive rate ≈ 0. Community-tier surveillance (S1b in the [Surveillance brief](surveillance_policy.qmd)) produces alerts at a CSV-benchmarked **false-positive rate of 20–50 %**. Every alert — true or false — still consumes an EHP investigation before it can be discarded. Per *true* case detected:

$$
\text{gross alerts} = \frac{1}{1 - p_{\text{fp}}}
\qquad
\text{cost per true case} = \frac{c_{\text{EHP}} + p_{\text{DALRRD}} \cdot c_{\text{DALRRD}}}{1 - p_{\text{fp}}}
$$


::: {#tbl-fp-induced-workload .cell tbl-cap='Induced EHP + DALRRD workload cost per *true* case detected, as community-surveillance false-positive rate is varied (rows) against EHP unit cost (columns). Holds p_DALRRD = 0.30 and c_DALRRD at working value. All inputs from amua_import_parameters_v4.csv.'}
::: {.cell-output-display}

```{=html}
<div id="ruvhzmvojg" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#ruvhzmvojg table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#ruvhzmvojg thead, #ruvhzmvojg tbody, #ruvhzmvojg tfoot, #ruvhzmvojg tr, #ruvhzmvojg td, #ruvhzmvojg th {
  border-style: none;
}

#ruvhzmvojg p {
  margin: 0;
  padding: 0;
}

#ruvhzmvojg .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: small;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ruvhzmvojg .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#ruvhzmvojg .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ruvhzmvojg .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ruvhzmvojg .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ruvhzmvojg .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ruvhzmvojg .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ruvhzmvojg .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ruvhzmvojg .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ruvhzmvojg .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ruvhzmvojg .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ruvhzmvojg .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ruvhzmvojg .gt_spanner_row {
  border-bottom-style: hidden;
}

#ruvhzmvojg .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#ruvhzmvojg .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ruvhzmvojg .gt_from_md > :first-child {
  margin-top: 0;
}

#ruvhzmvojg .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ruvhzmvojg .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ruvhzmvojg .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#ruvhzmvojg .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#ruvhzmvojg .gt_row_group_first td {
  border-top-width: 2px;
}

#ruvhzmvojg .gt_row_group_first th {
  border-top-width: 2px;
}

#ruvhzmvojg .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ruvhzmvojg .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#ruvhzmvojg .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#ruvhzmvojg .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ruvhzmvojg .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ruvhzmvojg .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ruvhzmvojg .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#ruvhzmvojg .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ruvhzmvojg .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ruvhzmvojg .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ruvhzmvojg .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ruvhzmvojg .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ruvhzmvojg .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ruvhzmvojg .gt_left {
  text-align: left;
}

#ruvhzmvojg .gt_center {
  text-align: center;
}

#ruvhzmvojg .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ruvhzmvojg .gt_font_normal {
  font-weight: normal;
}

#ruvhzmvojg .gt_font_bold {
  font-weight: bold;
}

#ruvhzmvojg .gt_font_italic {
  font-style: italic;
}

#ruvhzmvojg .gt_super {
  font-size: 65%;
}

#ruvhzmvojg .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#ruvhzmvojg .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#ruvhzmvojg .gt_indent_1 {
  text-indent: 5px;
}

#ruvhzmvojg .gt_indent_2 {
  text-indent: 10px;
}

#ruvhzmvojg .gt_indent_3 {
  text-indent: 15px;
}

#ruvhzmvojg .gt_indent_4 {
  text-indent: 20px;
}

#ruvhzmvojg .gt_indent_5 {
  text-indent: 25px;
}

#ruvhzmvojg .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#ruvhzmvojg div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="a::stub">FP \ EHP unit cost</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="EHP-lo-(R2,500)">EHP lo (R2,500)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="EHP-mid-(R4,000)">EHP mid (R4,000)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="EHP-hi-(R7,000)">EHP hi (R7,000)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><th id="stub_1_1" scope="row" class="gt_row gt_left gt_stub">Administrative only (0 %)</th>
<td headers="stub_1_1 EHP lo (R2,500)" class="gt_row gt_right" style="background-color: #1A9850; color: #FFFFFF;">R6,100</td>
<td headers="stub_1_1 EHP mid (R4,000)" class="gt_row gt_right" style="background-color: #1A9850; color: #FFFFFF;">R7,600</td>
<td headers="stub_1_1 EHP hi (R7,000)" class="gt_row gt_right" style="background-color: #1A9850; color: #FFFFFF;">R10,600</td></tr>
    <tr><th id="stub_1_2" scope="row" class="gt_row gt_left gt_stub">S1b lo (20 %)</th>
<td headers="stub_1_2 EHP lo (R2,500)" class="gt_row gt_right" style="background-color: #9CBD6D; color: #000000;">R7,625</td>
<td headers="stub_1_2 EHP mid (R4,000)" class="gt_row gt_right" style="background-color: #9CBD6D; color: #000000;">R9,500</td>
<td headers="stub_1_2 EHP hi (R7,000)" class="gt_row gt_right" style="background-color: #9CBD6D; color: #000000;">R13,250</td></tr>
    <tr><th id="stub_1_3" scope="row" class="gt_row gt_left gt_stub">S1b mid (35 %)</th>
<td headers="stub_1_3 EHP lo (R2,500)" class="gt_row gt_right" style="background-color: #FDD483; color: #000000;">R9,385</td>
<td headers="stub_1_3 EHP mid (R4,000)" class="gt_row gt_right" style="background-color: #FDD483; color: #000000;">R11,692</td>
<td headers="stub_1_3 EHP hi (R7,000)" class="gt_row gt_right" style="background-color: #FDD483; color: #000000;">R16,308</td></tr>
    <tr><th id="stub_1_4" scope="row" class="gt_row gt_left gt_stub">S1b hi (50 %)</th>
<td headers="stub_1_4 EHP lo (R2,500)" class="gt_row gt_right" style="background-color: #D73027; color: #FFFFFF;">R12,200</td>
<td headers="stub_1_4 EHP mid (R4,000)" class="gt_row gt_right" style="background-color: #D73027; color: #FFFFFF;">R15,200</td>
<td headers="stub_1_4 EHP hi (R7,000)" class="gt_row gt_right" style="background-color: #D73027; color: #FFFFFF;">R21,200</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::


**What the table says.** At the **working values** (`p_fp_S1b_mid` = 35 %, EHP mid = R4,000, DALRRD mid = R12,000, `p_DALRRD` = 0.3), induced workload is **≈ R11,692 per true case detected** — roughly 1.5× the administrative-tier figure. At the high-FP edge (50 %, early roll-out) it is **≈ R21,200 per true case**.

**Implication for the integrated model.** When the [overall model](overall_policy_model.qmd) layers community-tier surveillance (S1b) on top of the coordination Full Package, induced EHP + DALRRD workload becomes the *fastest-growing* line in the regulator budget — faster than C1–C5 shared overhead, faster than NHLS test volume. The brief therefore proposes a **two-step roll-out**:

1. **Administrative tier first** (NMC closure-of-loop + NHLS auto-notify + PIH MVD): near-zero FP, full coordination workload increment ≈ R145k + R7,600 × Δ alerts.
2. **Community tier (S1b) piloted with explicit measurement of `p_fp_S1b`** before national rollout. The pilot must collect (a) confirmed-positive rate, (b) EHP time per investigation, and (c) DALRRD referral rate. These three numbers are the parameters that decide whether community surveillance is affordable at scale.

This is the explicit operational hand-off between the coordination loop (this brief) and the surveillance ladder ([Surveillance brief](surveillance_policy.qmd)): **the loop only works as cheaply as the false-positive rate of its input feed.**

## 7. Implementation considerations

| Component | Lead agency | Year-1 cost | Critical path |
|:----------|:------------|------------:|:--------------|
| C1: NMC closure-of-loop field | NICD NMC team + NDoH circular | R30k | NMC schema change; EHP training |
| C2: Structured DALRRD referral form on NMC | NICD + DALRRD Pesticide Registrar | R25k | DALRRD inbox + workflow |
| C3: NICD→DALRRD intelligence feed | NICD analyst + DALRRD liaison | R40k | Quarterly brief template; case-spike alert SOP |
| C4: Notifier auto-feedback | NICD NMC team | R20k | Email templating |
| C5: Joint KPI dashboard | NICD + DALRRD + Provinces | R30k | KPI definitions; public hosting |
| **Total** | NICD-led | **~R145k** | All within existing legal authority |

**Institutional mechanism.** A **quarterly Joint Coordination Forum** (NICD chair; DALRRD, NHLS, PIH, and one rotating provincial DoH representative) reviews the KPI dashboard, signs off case-spike alert escalations, and resolves cross-departmental blockers. Mandated by joint NDoH–DALRRD Director-General circular. **No new legislation required.**

**Risks and mitigations.**

- *EHP non-compliance with new NMC field.* Mitigation: 14-day completion KPI tied to provincial performance reviews; circular from NDoH DG.
- *DALRRD capacity to act on referrals.* Mitigation: C3 quarterly brief lets DALRRD prioritise by burden rather than respond reactively.
- *Privacy concerns on clinician auto-feedback.* Mitigation: feedback is aggregate at clinician level, not patient-identifying.

## 8. Recommended next step

**Adopt C1 + C3 as the Coordination MVP, and the Full Package within 12 months.**

- **Weeks 1–4:** NDoH–DALRRD joint DG circular committing to the closed-loop model; standing up the Joint Coordination Forum.
- **Weeks 4–12:** C1 NMC schema change + EHP training; C3 NICD→DALRRD quarterly brief begins on the existing NMC data.
- **Months 3–12:** C2 referral form, C4 auto-feedback, C5 KPI dashboard go live.
- **Month 12:** Evaluate against (i) median notification-to-investigation time, (ii) % of notifications with recorded outcome, (iii) DALRRD-reported regulatory actions per quarter.

The surveillance signal that flows *into* this loop is covered in the [Surveillance brief](surveillance_policy.qmd). The first product-specific regulatory action the loop should be designed to deliver is the subject of the [Terbufos brief](terbufos_policy.qmd).

---

::: {.footer-cta}
**Companion briefs:** [Surveillance](surveillance_policy.qmd) · [Terbufos restriction](terbufos_policy.qmd) · [Decision Model](decision_model.qmd) · [Costing Analysis](costing_analysis.qmd)

**Technical appendix:** [B — Coordination joint-probability model](../technical_appendix_coordination.qmd)
:::

