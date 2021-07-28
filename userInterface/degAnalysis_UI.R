# degAnalysisTab <- tabItem(tabName = "degAnalysis",
#                                  fluidRow(
#                                    column(4,
#                                      ### PLACE INPUT CODE HERE ###
#                                    ),
#                                    column(5,
#                                      ### PLACE OUTPUT CODE HERE ###
#                                    ),
#                                    column(width = 3,
#                                           div(style = "display:inline-block; float:right", 
#                                               actionButton('degAnalyzed', label = 'Proceed', status = "success")))
#                                  )
# )

volcanoPlotTab <- tabItem(tabName = "volcanoPlot",
                          fluidRow(
                            column(4,
                                   ### PLACE INPUT VOLCANO PLOT CODE HERE ###
                                   ),
                            column(5,
                                   ### PLACE OUTPUT VOLCANO PLOT CODE HERE ###
                                   ),
                            column(width = 3,
                                          div(style = "display:inline-block; float:right", 
                                              actionButton('degAnalyzed', label = 'Proceed', status = "success")))
                                 )
                          
topDEGsTab <- tabItem(tabName = "topDEGs",
                      fluidRow(
                        column(4,
                               ### PLACE INPUT DEGS CODE HERE ###
                               ),
                        column(5,
                               ### PLACE OUTPUT DEGS CODE HERE ###
                               ),
                        column(width = 3,
                                          div(style = "display:inline-block; float:right", 
                                              actionButton('degAnalyzed', label = 'Proceed', status = "success")))
                                 )
