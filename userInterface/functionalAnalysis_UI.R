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
                                                      actionButton("kegg","KEGG Analysis"),
                                                      sliderInput("x", "Number of categories shown", 0, 20,
                                                                  value =10, step = 2),
                                                      sliderInput("y", "Number of categories shown", 0, 20,
                                                                  value =10, step = 2),
                                                      downloadButton("exportkegg","Download KEGG Plots")
                                               ),
                                               column(6,
                                                      plotOutput("dotplot"),
                                                      plotOutput("barplot")
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
                                            h1("Gene Ontology Enrichment Analysis"),
                                            selectInput("type","Category for Gene Ontology Analysis",choices=c("Cellular Components","Molecular Functions","Biological Processes")),
                                            actionButton("go","Gene Ontology Analysis"),
                                            sliderInput("a", "Number of categories shown", 0, 20,
                                                        value =10, step = 2),
                                            sliderInput("b", "Number of categories shown", 0, 20,
                                                        value =10, step = 2),
                                            downloadButton("exportgo","Download GO Plots")
                                     ),
                                     column(6,
                                            plotOutput("dotplot2"),
                                            plotOutput("barplot2"),
                                            plotOutput("GOgraph")
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
                              h1("Gene Set Enrichment Analysis"),
                              actionButton("gsea","Conduct GSEA")
                       ),
                       column(6,
                              plotOutput("plot_gsea"),
                              downloadButton("exportgsea","Download GSEA Plot")
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
