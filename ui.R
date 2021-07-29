# Dashboard UI
source('userInterface/introduction_UI.R')
source('userInterface/dataImport_UI.R')
source('userInterface/qualityControl_UI.R')
source('userInterface/sampleGrouping_UI.R')
source('userInterface/degAnalysis_UI.R')
source('userInterface/functionalAnalysis_UI.R')
source('userInterface/arianVeyssi_faq_UI.R')
source('userInterface/arianVeyssi_contact_UI.R')
source('userInterface/controlbar_UI.R')

sidebar <- dashboardSidebar(
  skin = "light",
  sidebarMenu(id = "tabs",
              menuItem("Introduction", tabName = "introduction", 
                       icon = icon("arrow-right")),
              bs4SidebarHeader("Data Importation"),
              menuItem("Upload Data", tabName = "dataImport",
                       icon = icon("upload")),
              bs4SidebarHeader("Quality Control"),
              menuItem("Quality Control", tabName = "qualityControl", 
                       icon = icon("object-group"),
                       menuSubItem("QC", tabName = "qC",
                                   icon = icon("object-group")),
                       menuSubItem("Normalization", tabName = "normalization",
                                   icon = icon("object-group")),
                       menuSubItem("Batch Correction", tabName = "batchCorrection",
                                   icon = icon("object-group")),
                       menuSubItem("Potential Outliers", tabName = "potentialOutliers",
                                   icon = icon("object-group"))
              ),
              bs4SidebarHeader("Grouping of Samples"),
              menuItem("Sample Grouping", tabName = "sampleGrouping", 
                       icon = icon("object-group")),
              bs4SidebarHeader("Statistical Analysis"),
              menuItem("DEGs", tabName = "degAnalysis", 
                       icon = icon("chart-bar"),
                       menuSubItem("Volcano Plot", tabName="volcanoPlot",
                                   icon = icon("chart-bar")),
                       menuSubItem("Top DEGs", tabName="topDEGs",
                                   icon = icon("chart-bar"))
              ),
              bs4SidebarHeader("Functional Analysis"),
              menuItem("Functional", tabName = "functionalAnalysis", 
                       icon = icon("chart-bar"),
                       menuSubItem("Functional Enrichment", tabName="functionalEnrichmentAnalysis",
                                   icon = icon("chart-bar")),
                       menuSubItem("Gene-Concept Network", tabName="geneConceptNetwork",
                                   icon = icon("chart-bar")),
                       menuSubItem("Gene Set Enrichment", tabName="gsea",
                                   icon = icon("chart-bar")),
                       menuSubItem("Transcription Factor", tabName="transcriptionFactorAnalysis",
                                   icon = icon("chart-bar"))
              ),
              bs4SidebarHeader("Help"),
              #              menuItem("Docs", tabName = "docs",  icon = icon("book")),
              menuItem("FAQs", icon = icon("question-circle"), tabName = "faq"),
              menuItem("Contact", tabName = "contact", icon = icon("users"))
  )
)

body <- dashboardBody(
  tabItems(
    introductionTab,
    dataImportTab,
    # qualityControlTab,
      qCTab,
      normalizationTab,
      batchCorrectionTab,
      potentialOutliersTab,
    sampleGroupingTab,
    # degAnalysisTab,
      volcanoPlotTab,
      topDEGsTab,
    # functionalAnalysisTab,
      functionalEnrichmentAnalysisTab,
      geneConceptNetworkTab,
      gseaTab,
      transcriptionFactorAnalysisTab,
    #    docsTab,
    faqTab,
    contactTab
  ),
  
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "css/style.css")
  )
)

# Valid statuses are: primary, secondary, info, success, warning, danger, gray-dark, gray, white, indigo, lightblue, navy, purple, fuchsia, pink, maroon, orange, lime, teal, olive.
title <- dashboardBrand(
  title = "",
  color = "white",
  opacity = 1,
  href = "https://stemaway.com/",
  image = "https://d1xykt6w2ydx2s.cloudfront.net/original/2X/7/73414b0fa99a6f8f21a9da7c341b927788ec502e.png"
)



dashboardPage(
  freshTheme = create_theme(
    bs4dash_vars(
      navbar_light_color = "#040404"
    ),
    bs4dash_layout(
      main_bg = "#fffffc" 
    ),
    bs4dash_sidebar_light(
      bg = "#FFF",
      color = "#040404",
      hover_color = "#0C4767",
    ),
    bs4dash_status(
      primary = "#57A773", danger = "#BF616A", success = '#57A773', warning = '#F7B538', info = "#57a773"
    ),
    bs4dash_color(
      blue = '#4281A4', 
      lime = '#ffffff'
    )
  ),
  dashboardHeader(
    fixed = TRUE,
    border = TRUE,
    status = 'lime',
    #    sidebarIcon = shiny::icon("water"),
    title = title,
    div(style = "margin-left:auto;margin-right:auto; text-align:center; color:black",HTML('<strong>Transcriptomics Pipeline Application</strong>'))
  ),
  sidebar,
  body,
  controlbar,
  footer = dashboardFooter(
    left = a(
      href = "#",
      target = "_blank", "@STEM-Away"
    ),
    right = "AppName: 2021"
  ),
  fullscreen = TRUE, dark = NULL
)

