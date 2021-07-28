# functionalAnalysisTab <- tabItem(tabName = "functionalAnalysis",
#                       fluidRow(
#                         column(12,
#                           HTML("Functional Analysis Page")
#                         )
#                       )
# )

functionalEnrichmentAnalysisTab <- tabItem(tabName = "functionalEnrichmentAnalysis",
                                           fluidRow(
                                             column(4,
                                                    HTML("Insert input FEA code here")
                                                    ),
                                             column(5,
                                                    HTML("Insert output FEA code here")
                                                    ),
                                             column(width = 3,
                                                    div(style = "display:inline-block; float:right", 
                                                        actionButton('to_geneConceptNetwork', label = 'Proceed', status = "success"))
                                                    )
                                             )
)                                        
geneConceptNetworkTab <- tabItem(tabName = "geneConceptNetwork",
                                           fluidRow(
                                             column(4,
                                                    HTML("Insert input GCN code here")
                                                    ),
                                             column(5,
                                                    HTML("Insert output GCN code here")
                                                    ),
                                             column(width = 3,
                                                    div(style = "display:inline-block; float:right", 
                                                        actionButton('to_gsea', label = 'Proceed', status = "success"))
                                             )
                                             )
)                                
gseaTab <- tabItem(tabName = "gsea",
                                           fluidRow(
                                             column(4,
                                                    HTML("Insert input GSEA code here")
                                                    ),
                                             column(5,
                                                    HTML("Insert output GSEA code here")
                                                    ),
                                             column(width = 3,
                                                    div(style = "display:inline-block; float:right", 
                                                        actionButton('to_transcriptionFactorAnalysis', label = 'Proceed', status = "success"))
                                             )
                                             )
)                  
transcriptionFactorAnalysisTab <- tabItem(tabName = "transcriptionFactorAnalysis",
                                           fluidRow(
                                             column(4,
                                                    HTML("Insert input TFA code here")
                                                    ),
                                             column(5,
                                                    HTML("Insert output TFA code here")
                                                    ),
                                             column(width = 3,
                                                    div(style = "display:inline-block; float:right", 
                                                        actionButton('to_introduction', label = 'Start Over', status = "success"))
                                             )
                                             )
)
