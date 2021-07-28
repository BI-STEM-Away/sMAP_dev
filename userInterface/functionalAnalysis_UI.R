# functionalAnalysisTab <- tabItem(tabName = "functionalAnalysis",
#                       fluidRow(
#                         column(12,
#                           HTML("Functional Analysis Page")
#                         )
#                       )
# )

functionalEnrichmentAnalysisTab <- tabItem(tabName = "functionalEnrichmentAnalysis",
                                           fluidRow(
                                             column(6,
                                                    HTML("Insert input FEA code here")
                                                    ),
                                             column(6,
                                                    HTML("Insert output FEA code here")
                                                    )
                                             )
                                           
geneConceptNetworkTab <- tabItem(tabName = "geneConceptNetwork",
                                           fluidRow(
                                             column(6,
                                                    HTML("Insert input GCN code here")
                                                    ),
                                             column(6,
                                                    HTML("Insert output GCN code here")
                                                    )
                                             )
                                 
gseaTab <- tabItem(tabName = "gsea",
                                           fluidRow(
                                             column(6,
                                                    HTML("Insert input GSEA code here")
                                                    ),
                                             column(6,
                                                    HTML("Insert output GSEA code here")
                                                    )
                                             )
                   
transcriptionFactorAnalysisTab <- tabItem(tabName = "transcriptionFactorAnalysis",
                                           fluidRow(
                                             column(6,
                                                    HTML("Insert input TFA code here")
                                                    ),
                                             column(6,
                                                    HTML("Insert output TFA code here")
                                                    )
                                             )
