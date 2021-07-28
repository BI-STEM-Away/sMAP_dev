degAnalysisTab <- tabItem(tabName = "degAnalysis",
                                 fluidRow(
                                   column(4,
                                     ### PLACE INPUT CODE HERE ###
                                   ),
                                   column(5,
                                     ### PLACE OUTPUT CODE HERE ###
                                   ),
                                   column(width = 3,
                                          div(style = "display:inline-block; float:right", 
                                              actionButton('degAnalyzed', label = 'Proceed', status = "success")))
                                 )
)
