# functionalAnalysisTab <- tabItem(tabName = "functionalAnalysis",
#                       fluidRow(
#                         column(12,
#                           HTML("Functional Analysis Page")
#                         )
#                       )
# )

functionalEnrichmentAnalysisTab <- tabItem(tabName = "functionalEnrichmentAnalysis",
                                           fluidRow(
                                               column(12,
                                                      fluidRow(
                                                          
                                                          column(1,
                                                                 div(style = "display:inline-block; float:left", 
                                                                     actionButton('backTo_topDEGs', label = 'Back', status = "success"))
                                                          ),
                                                          column(10, align="center",
                                                                 HTML("<h3><b>Functional Enrichment Analysis</b></h3>")
                                                                 
                                                          ),
                                                          # @roman_ramirez
                                                          column(width = 1,
                                                                 div(style = "display:inline-block; float:right", 
                                                                     actionButton('to_geneConceptNetwork', label = 'Next', status = "success"))
                                                          )
                                                      )
                                                   
                                               ),
                                               column(6,
                                                      HTML("Insert input FEA code here")
                                               ),
                                               column(6,
                                                      HTML("Insert output FEA code here")
                                               )
                                           )
)                                        
geneConceptNetworkTab <- tabItem(tabName = "geneConceptNetwork",
                                 fluidRow(
                                     column(12,
                                            fluidRow(
                                                
                                                column(1,
                                                       div(style = "display:inline-block; float:left", 
                                                           actionButton('backTo_functionalEnrichmentAnalysis', label = 'Back', status = "success"))
                                                ),
                                                column(10, align="center",
                                                       HTML("<h3><b>Gene-Concept Network</b></h3>")
                                                       
                                                ),
                                                # @roman_ramirez
                                                column(width = 1,
                                                       div(style = "display:inline-block; float:right", 
                                                           actionButton('to_gsea', label = 'Next', status = "success"))
                                                )
                                            )
                                     ),
                                     column(6,
                                            HTML("Insert input GCN code here")
                                     ),
                                     column(6,
                                            HTML("Insert output GCN code here")
                                     ),
                                 )
)                                
gseaTab <- tabItem(tabName = "gsea",
                   fluidRow(
                       column(12,
                              fluidRow(
                                  column(1,
                                         div(style = "display:inline-block; float:left", 
                                             actionButton('backTo_geneConceptNetwork', label = 'Back', status = "success"))
                                  ),
                                  column(10, align="center",
                                         HTML("<h3><b>Gene-Set Enrichment Analysis</b></h3>")
                                         
                                  ),
                                  # @roman_ramirez
                                  column(width = 1,
                                         div(style = "display:inline-block; float:right", 
                                             actionButton('to_transcriptionFactorAnalysis', label = 'Next', status = "success"))
                                  )
                              ),
                       ),
                       column(6,
                              HTML("Insert input GSEA code here")
                       ),
                       column(6,
                              HTML("Insert output GSEA code here")
                       )
                   )
)                  
transcriptionFactorAnalysisTab <- tabItem(tabName = "transcriptionFactorAnalysis",
                                          fluidRow(
                                              column(12,
                                                     fluidRow(
                                                         column(1,
                                                                div(style = "display:inline-block; float:left", 
                                                                    actionButton('backTo_gsea', label = 'Back', status = "success"))
                                                         ),
                                                         column(10, align="center",
                                                                HTML("<h3><b>Transcription Factor Analysis</b></h3>")
                                                                
                                                         ),
                                                         # @roman_ramirez
                                                         column(width = 1,
                                                                div(style = "display:inline-block; float:right", 
                                                                    actionButton('to_introduction', label = 'Start Over', status = "success"))
                                                         )
                                                     )
                                                  
                                              ),
                                              column(6,
                                                     HTML("Insert input TFA code here")
                                              ),
                                              column(6,
                                                     HTML("Insert output TFA code here")
                                              ),
                                          )
)
