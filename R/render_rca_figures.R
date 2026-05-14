# =============================================================================
# render_rca_figures.R
#
# Exports the D2P system-wide root cause analysis figure as hi-res JPEG in
# two formats:
#   - LANDSCAPE  (16:9, 4800×2700 px) — flowchart LR, for slides/PPTX
#   - PORTRAIT   (A4,  3300×4677 px) — flowchart TD, for A4 reports
#
# Dependencies
# ------------
# install.packages(c("webshot2", "magick"))
# webshot2 requires a Chromium/Chrome browser. If not already detected run:
#   webshot2::install_chromium()    # installs a local Chromium via chromote
#
# Output files
# ------------
#   figures/rca_landscape.jpg   (~4800×2700 px, 300 dpi equivalent for 16"×9")
#   figures/rca_portrait.jpg    (~3300×4677 px, 300 dpi equivalent for A4)
# =============================================================================

library(webshot2)
library(magick)

# --- Output directories ------------------------------------------------------
out_dir       <- here::here("figures")
out_dir_intro <- here::here("figures", "intro")
out_dir_arch  <- here::here("figures", "arch")
for (d in c(out_dir, out_dir_intro, out_dir_arch)) {
  if (!dir.exists(d)) dir.create(d, recursive = TRUE)
}

# =============================================================================
# MERMAID DEFINITIONS
# (no Quarto directives — those are stripped for standalone HTML rendering)
# =============================================================================

# Shared class definitions appended to both diagrams
STYLES <- "
    classDef harm fill:#f99,stroke:#900,stroke-width:2px,color:#000
    classDef dom  fill:#fde,stroke:#333,stroke-width:1.5px,color:#000
    classDef opt  fill:#cfc,stroke:#060,stroke-width:1.5px,color:#000
    classDef oos  fill:#eee,stroke:#999,stroke-dasharray:5 5,color:#555"

# Shared class definitions for architecture (surveillance system) figures
ARCH_STYLES <- '
    classDef source  fill:#f99,stroke:#900,stroke-width:2px,color:#000
    classDef linked  fill:#9f9,stroke:#060,stroke-width:2px,color:#000
    classDef partial fill:#bbf,stroke:#33c,stroke-width:1.5px,color:#000
    classDef gap     fill:#ffd9b3,stroke:#cc8800,stroke-dasharray:5 5,color:#000'

# ---- ARCH COMPLEX (fig-surv-current-system from surveillance_policy.qmd, LR) -
# Direct port of the .qmd figure; LR layout → naturally wide → landscape only.
MMD_ARCH_COMPLEX <- 'flowchart LR
    A["Healthcare Facility<br/>Clinician / PHO"] -->|"NMC notification"| E[("NDoH / NMC<br/>NDoH-owned<br/>Source of truth")]
    A --> NHLS

    subgraph NHLS["NHLS"]
        direction TB
        C1["BChE Assay<br/>1,779 severe / year<br/>10,626 tests 2023<br/>Live patients"]
        C2["Chemical Toxicology<br/>Post-mortem only —<br/>not yet done on<br/>live patients"]
        CDW[("NHLS CDW")]
        C1 -->|"monthly extract"| CDW
    end

    SDW[("NICD SDW")]
    CDW -->|"✓ MOU feed — operational"| SDW
    SDW -->|"BChE monthly"| E

    A --> D["PIH Consultation<br/>~1,158 clinician calls / yr<br/>No minimum dataset"]

    C2 -.->|"✗ Not available for live-patient surveillance"| E
    D  -.->|"✗ No minimum viable dataset defined"| E

    style E   fill:#9f9,stroke:#060,stroke-width:2px
    style A   fill:#fde,stroke:#333
    style C1  fill:#bbf,stroke:#333
    style C2  fill:#ffd9b3,stroke:#cc8800,stroke-dasharray:5 5
    style D   fill:#bfb,stroke:#333
    style CDW fill:#e6f0ff,stroke:#3366cc
    style SDW fill:#e6f0ff,stroke:#3366cc'

# ---- ARCH SIMPLE TD (3-system silo view, TD → wide → landscape) -------------
MMD_ARCH_SIMPLE_TD <- '
flowchart TD
    A["NMC Notification<br/>1,013 / yr<br/>Clinician reports at point of care"]
    B["NHLS BChE Result<br/>1,779 severe / yr<br/>Test is done - no auto-notification"]
    C["PIH Call<br/>~1,158 clinician calls / yr<br/>Call recorded - no MVD to integrate"]
    NDOH[("NDoH / NMC<br/>Source of truth<br/>less than 5 pct of true burden captured")]

    A   -->|"directly notified"| NDOH
    B   -.->|"NOT auto-notified"| NDOH
    C   -.->|"NO minimum viable dataset"| NDOH

    style A    fill:#9f9,stroke:#060,stroke-width:2px,color:#000
    style B    fill:#ffd9b3,stroke:#cc8800,color:#000
    style C    fill:#ffd9b3,stroke:#cc8800,color:#000
    style NDOH fill:#cfc,stroke:#060,stroke-width:3px,color:#000'

# ---- ARCH SIMPLE LR (3-system silo view, LR → tall → portrait) --------------
MMD_ARCH_SIMPLE_LR <- '
flowchart LR
    A["NMC Notification<br/>1,013 / yr<br/>Clinician reports at point of care"]
    B["NHLS BChE Result<br/>1,779 severe / yr<br/>Test is done - no auto-notification"]
    C["PIH Call<br/>~1,158 clinician calls / yr<br/>Call recorded - no MVD to integrate"]
    NDOH[("NDoH / NMC<br/>Source of truth<br/>less than 5 pct of true burden captured")]

    A   -->|"directly notified"| NDOH
    B   -.->|"NOT auto-notified"| NDOH
    C   -.->|"NO minimum viable dataset"| NDOH

    style A    fill:#9f9,stroke:#060,stroke-width:2px,color:#000
    style B    fill:#ffd9b3,stroke:#cc8800,color:#000
    style C    fill:#ffd9b3,stroke:#cc8800,color:#000
    style NDOH fill:#cfc,stroke:#060,stroke-width:3px,color:#000'

# ---- INTRO: core problem + 4 grouped areas only (TD → wide → landscape) -----
INTRO_TD <- paste0('flowchart TD
    HARM["Pesticide-poisoning harm in SA<br/><5% of true burden recorded"]:::harm
    HARM --> SG1["SURVEILLANCE GAPS"]:::dom
    HARM --> SG2["COORDINATION &<br/>RESPONSE GAPS"]:::dom
    HARM --> SG3["REGULATORY /<br/>BANNING GAPS"]:::dom
    HARM --> SG4["CONTEXTUAL DRIVERS<br/>— OUT OF SCOPE"]:::oos',
STYLES)

# ---- INTRO: core problem + 4 grouped areas only (LR → tall → portrait) ------
INTRO_LR <- paste0('flowchart LR
    HARM["Pesticide-poisoning harm in SA<br/><5% of true burden recorded ·  ~R2.34B/yr burden"]:::harm
    HARM --> SG1["SURVEILLANCE GAPS"]:::dom
    HARM --> SG2["COORDINATION &<br/>RESPONSE GAPS"]:::dom
    HARM --> SG3["REGULATORY /<br/>BANNING GAPS"]:::dom
    HARM --> SG4["CONTEXTUAL DRIVERS<br/>— OUT OF SCOPE"]:::oos',
STYLES)

# ---- PORTRAIT (flowchart TD, 4 side-by-side subgraph columns) ---------------
MMD_PORTRAIT <- paste0('flowchart TD
    HARM["Pesticide-poisoning harm in SA<br/>~2,620 deaths/yr · ~R2.34B/yr burden"]:::harm

    HARM --> SURV_H
    HARM --> COORD_H
    HARM --> BAN_H
    HARM --> CTX_H

    subgraph SG1["SURVEILLANCE GAPS"]
        direction TB
        SURV_H[Surveillance gaps]:::dom
        SV1[No integrated 3-stream system<br/>NMC + NHLS + PIH]
        SV2[No live-patient<br/>chemical toxicology]
        SV3[Hospital-only<br/>surveillance reach]
        SV4[Limited EBS / community<br/>signal capture]
        SV5[Poor data standardisation<br/>NMC does not follow AfriTox naming]
        SV6[Forensic chemistry fully de-identified<br/>no demographics]:::oos
        SV7[MLDI system limited<br/>for surveillance utility]:::oos
        SV8[CRVS / StatsSA MACOD<br/>3-4 year publication lag]:::oos
        SV9[CRVS does not capture<br/>manner of death]:::oos
        OS_MVP[Surveillance MVP<br/>S1 + S2]:::opt
        OS3[S3 Sentinel toxicology]:::opt
        OS1b[S1b Community / EBS layer<br/>Phase 2, conditional]:::opt
        OS1[S1 AfriTox harmonisation<br/>+ NMC agent drop-down]:::opt
        SURV_H --> SV1 & SV2 & SV3 & SV4 & SV5
        SURV_H --> SV6 & SV7 & SV8 & SV9
        SV1 --> OS_MVP
        SV2 --> OS3
        SV3 --> OS1b
        SV4 --> OS1b
        SV5 --> OS1
    end

    subgraph SG2["COORDINATION & RESPONSE GAPS"]
        direction TB
        COORD_H[Coordination &<br/>response gaps]:::dom
        CO1[EHP investigation outcome<br/>not recorded back on NMC]
        CO2[EHP to DALRRD referral<br/>no SOP, no audit trail]
        CO3[Clinicians get no<br/>case-status feedback]
        CO4[No M&E of investigation,<br/>source removal, or regulatory action]
        CO5[Chemical agent registries not<br/>shared with health sector]:::oos
        OC1[C1 NMC closure-of-loop<br/>EHP field]:::opt
        OC2[C2 Structured EHP to DALRRD<br/>referral form]:::opt
        OC4[C4 Notifier<br/>auto-feedback]:::opt
        OC3[C3 NICD to DALRRD<br/>intelligence feed]:::opt
        OC5[C5 Joint KPI<br/>dashboard]:::opt
        COORD_H --> CO1 & CO2 & CO3 & CO4
        COORD_H --> CO5
        CO1 --> OC1
        CO2 --> OC2
        CO3 --> OC4
        CO4 --> OC3
        CO4 --> OC5
    end

    subgraph SG3["REGULATORY / BANNING GAPS"]
        direction TB
        BAN_H[Regulatory /<br/>banning gaps]:::dom
        BN1[Terbufos still legally registered<br/>WHO Class Ia — most toxic in<br/>recent mass-poisonings]
        BN2[Informally traded<br/>street-pesticide market]
        BN3[Repackaged into<br/>unlabelled containers]
        OT2[T2 Cancel terbufos registration<br/>12-24 mo phase-out]:::opt
        BAN_H --> BN1 & BN2 & BN3
        BN1 --> OT2
        BN2 --> OT2
        BN3 --> OT2
    end

    subgraph SG4["CONTEXTUAL DRIVERS — OUT OF SCOPE"]
        direction TB
        CTX_H[Contextual<br/>upstream drivers]:::dom
        CX1[HHPs used as vermin control<br/>in informal settlements]:::oos
        CX2[Industry / trade pushback<br/>despite safer substitutes]:::oos
        CX3[Mental health burden<br/>and suicide pathway]:::oos
        CX4[Low public awareness<br/>of informal-pesticide toxicity]:::oos
        CX5[Low / unknown occupational<br/>health & safety on farms]:::oos
        CTX_H --> CX1 & CX2 & CX3 & CX4 & CX5
    end',
STYLES)

# ---- LANDSCAPE (flowchart LR, 4 horizontal band subgraphs) ------------------
MMD_LANDSCAPE <- paste0('flowchart LR
    HARM["Pesticide-poisoning harm in SA<br/>~2,620 deaths/yr · ~R2.34B/yr burden"]:::harm

    HARM --> SURV_H
    HARM --> COORD_H
    HARM --> BAN_H
    HARM --> CTX_H

    subgraph SG1["SURVEILLANCE GAPS"]
        direction LR
        SURV_H[Surveillance gaps]:::dom
        SV1[No integrated 3-stream system<br/>NMC + NHLS + PIH]
        SV2[No live-patient<br/>chemical toxicology]
        SV3[Hospital-only<br/>surveillance reach]
        SV4[Limited EBS / community<br/>signal capture]
        SV5[Poor data standardisation<br/>NMC does not follow AfriTox naming]
        SV6[Forensic chemistry fully de-identified<br/>no demographics]:::oos
        SV7[MLDI system limited<br/>for surveillance utility]:::oos
        SV8[CRVS / StatsSA MACOD<br/>3-4 year publication lag]:::oos
        SV9[CRVS does not capture<br/>manner of death]:::oos
        OS_MVP[Surveillance MVP S1 + S2]:::opt
        OS3[S3 Sentinel toxicology]:::opt
        OS1b["S1b Community / EBS layer (Phase 2, conditional)"]:::opt
        OS1[S1 AfriTox harmonisation + NMC agent drop-down]:::opt
        SURV_H --> SV1 & SV2 & SV3 & SV4 & SV5
        SURV_H --> SV6 & SV7 & SV8 & SV9
        SV1 --> OS_MVP
        SV2 --> OS3
        SV3 --> OS1b
        SV4 --> OS1b
        SV5 --> OS1
    end

    subgraph SG2["COORDINATION & RESPONSE GAPS"]
        direction LR
        COORD_H[Coordination & response gaps]:::dom
        CO1[EHP investigation outcome not recorded back on NMC]
        CO2[EHP to DALRRD referral — no SOP, no audit trail]
        CO3[Clinicians get no case-status feedback]
        CO4[No M&E of investigation, source removal, or regulatory action]
        CO5[Chemical agent registries not shared with health sector]:::oos
        OC1[C1 NMC closure-of-loop EHP field]:::opt
        OC2[C2 Structured EHP to DALRRD referral form]:::opt
        OC4[C4 Notifier auto-feedback]:::opt
        OC3[C3 NICD to DALRRD intelligence feed]:::opt
        OC5[C5 Joint KPI dashboard]:::opt
        COORD_H --> CO1 & CO2 & CO3 & CO4
        COORD_H --> CO5
        CO1 --> OC1
        CO2 --> OC2
        CO3 --> OC4
        CO4 --> OC3
        CO4 --> OC5
    end

    subgraph SG3["REGULATORY / BANNING GAPS"]
        direction LR
        BAN_H[Regulatory / banning gaps]:::dom
        BN1[Terbufos still legally registered — WHO Class Ia — most toxic in recent mass-poisonings]
        BN2[Informally traded street-pesticide market]
        BN3[Repackaged into unlabelled containers]
        OT2[T2 Cancel terbufos registration — 12-24 mo phase-out]:::opt
        BAN_H --> BN1 & BN2 & BN3
        BN1 --> OT2
        BN2 --> OT2
        BN3 --> OT2
    end

    subgraph SG4["CONTEXTUAL DRIVERS — OUT OF SCOPE"]
        direction LR
        CTX_H[Contextual upstream drivers]:::dom
        CX1[HHPs used as vermin control in informal settlements]:::oos
        CX2[Industry / trade pushback despite safer substitutes existing]:::oos
        CX3[Mental health burden and suicide pathway]:::oos
        CX4[Low public awareness of informal-pesticide toxicity]:::oos
        CX5[Low / unknown occupational health & safety on farms]:::oos
        CTX_H --> CX1 & CX2 & CX3 & CX4 & CX5
    end',
STYLES)

# =============================================================================
# RENDERING FUNCTION
# =============================================================================

#' Render a Mermaid diagram string to a hi-res JPEG via headless Chrome.
#'
#' @param mmd_code  Mermaid diagram code (no Quarto directives).
#' @param out_file  Output JPEG path.
#' @param vwidth    Viewport width in CSS px. Output width = vwidth * zoom.
#' @param zoom      Device pixel ratio (2 = standard HiDPI, 3 = very sharp).
#' @param js_wait_ms Milliseconds given to Mermaid to finish rendering before
#'   the JS post-step strips SVG dimension attributes (must be < delay*1000).
#' @param delay     Total seconds webshot2 waits before screenshotting.
#' @param quality   JPEG quality 1–100.
render_mermaid_jpeg <- function(mmd_code, out_file,
                                vwidth      = 2400,
                                zoom        = 2,
                                js_wait_ms  = 3000,
                                delay       = 5,
                                quality     = 95) {

  # Mermaid renders SVGs with hardcoded width/height attributes that block CSS
  # scaling. The setTimeout below waits for rendering to finish, then strips
  # those attributes so that width:100% on the SVG actually takes effect.
  html_body <- sprintf('<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <style>
    body   { margin: 0; padding: 24px; background: white; width: %dpx; }
    .mermaid        { width: calc(100%% - 48px); display: block; }
    .mermaid svg    { display: block; width: 100%%; height: auto; }
  </style>
</head>
<body>
  <div class="mermaid">
%s
  </div>
  <script src="https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.min.js"></script>
  <script>
    mermaid.initialize({
      startOnLoad : true,
      theme       : "default",
      flowchart   : { useMaxWidth: true, htmlLabels: true }
    });
    // After rendering completes, remove hardcoded SVG dimension attributes so
    // the CSS width:100%% rule scales the SVG to fill its container.
    setTimeout(function () {
      document.querySelectorAll(".mermaid svg").forEach(function (svg) {
        svg.removeAttribute("width");
        svg.removeAttribute("height");
        svg.style.width    = "100%%";
        svg.style.height   = "auto";
        svg.style.maxWidth = "none";
      });
    }, %d);
  </script>
</body>
</html>',
    vwidth,
    mmd_code,
    js_wait_ms
  )

  tmp_html <- tempfile(fileext = ".html")
  on.exit(unlink(tmp_html), add = TRUE)
  writeLines(html_body, tmp_html, useBytes = TRUE)

  tmp_png <- tempfile(fileext = ".png")
  on.exit(unlink(tmp_png), add = TRUE)

  # vheight is generous so content is never clipped; selector crops the result
  # to the exact bounding box of the rendered .mermaid div.
  webshot2::webshot(
    url      = paste0("file://", tmp_html),
    file     = tmp_png,
    vwidth   = vwidth,
    vheight  = 20000,
    selector = ".mermaid",
    zoom     = zoom,
    delay    = delay
  )

  magick::image_read(tmp_png) |>
    magick::image_background("white") |>
    magick::image_flatten() |>
    magick::image_write(path = out_file, format = "jpeg", quality = quality)

  info <- magick::image_info(magick::image_read(out_file))
  message(sprintf("Saved: %s  (%s x %s px)", out_file, info$width, info$height))
  invisible(out_file)
}

# =============================================================================
# RENDER BOTH VERSIONS
# Visual shapes:
#   MMD_PORTRAIT (flowchart TD, 4 subgraph COLUMNS) → naturally WIDE → landscape
#   MMD_LANDSCAPE (flowchart LR, 4 subgraph ROWS)   → naturally TALL → portrait
# =============================================================================

# =============================================================================
# ARCH FIGURES  (fig 1: surveillance system architecture — complex + simple)
# =============================================================================

message("=== D2P Surveillance architecture figures — exporting ===")

# ARCH COMPLEX — direct port of fig-surv-current-system (LR, landscape only)
message("Rendering arch complex (landscape)...")
render_mermaid_jpeg(
  mmd_code = MMD_ARCH_COMPLEX,
  out_file = file.path(out_dir_arch, "arch_complex_landscape.jpg"),
  vwidth   = 2000,
  zoom     = 2,
  quality  = 95
)

# ARCH SIMPLE LANDSCAPE (TD → 3 subgraph columns side-by-side → wide)
message("Rendering arch simple landscape...")
render_mermaid_jpeg(
  mmd_code = MMD_ARCH_SIMPLE_TD,
  out_file = file.path(out_dir_arch, "arch_simple_landscape.jpg"),
  vwidth   = 1600,
  zoom     = 2,
  quality  = 95
)

# ARCH SIMPLE PORTRAIT (LR → 3 subgraph rows stacked → tall)
message("Rendering arch simple portrait...")
render_mermaid_jpeg(
  mmd_code = MMD_ARCH_SIMPLE_LR,
  out_file = file.path(out_dir_arch, "arch_simple_portrait.jpg"),
  vwidth   = 900,
  zoom     = 2,
  quality  = 95
)

# =============================================================================
# INTRO FIGURES  (core problem + 4 domain boxes only)
# =============================================================================

message("=== D2P Intro figure — exporting ===")

# INTRO LANDSCAPE (TD → 4 boxes side-by-side → wide)
message("Rendering intro landscape...")
render_mermaid_jpeg(
  mmd_code = INTRO_TD,
  out_file = file.path(out_dir_intro, "intro_landscape.jpg"),
  vwidth   = 1200,
  zoom     = 2,
  quality  = 95
)

# INTRO PORTRAIT (LR → 4 boxes stacked → tall)
message("Rendering intro portrait...")
render_mermaid_jpeg(
  mmd_code = INTRO_LR,
  out_file = file.path(out_dir_intro, "intro_portrait.jpg"),
  vwidth   = 700,
  zoom     = 2,
  quality  = 95
)

# =============================================================================
# FULL RCA FIGURES
# =============================================================================

message("=== D2P System-wide RCA — exporting figures ===")

# --- LANDSCAPE (wide): flowchart TD, 4 side-by-side subgraph columns
# vwidth 1600 x zoom 3 → 4800 px wide output  (~300 dpi on a 16" slide)
message("Rendering landscape (wide, TD 4-column layout)...")
render_mermaid_jpeg(
  mmd_code = MMD_PORTRAIT,   # TD = 4 columns side by side = wide
  out_file = file.path(out_dir, "rca_landscape.jpg"),
  vwidth   = 3200,
  zoom     = 4,
  quality  = 95
)

# --- PORTRAIT (tall): flowchart LR, 4 stacked horizontal-band subgraphs
# vwidth 1200 x zoom 2 → 2400 px wide output; height auto (tall, ~A4+ proportions)
message("Rendering portrait (tall, LR 4-row layout)...")
render_mermaid_jpeg(
  mmd_code = MMD_LANDSCAPE,  # LR = 4 rows stacked = tall
  out_file = file.path(out_dir, "rca_portrait.jpg"),
  vwidth   = 1200,
  zoom     = 2,
  quality  = 95
)

message("=== Done. Files written to: ", out_dir, " ===")
