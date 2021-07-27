sampleGroupingTab <- tabItem(tabName = "sampleGrouping",
                           fluidRow(
                             column(4,
                                    ### INPUT SECTION HERE ###
                             ),
                             column(5,
                                    ### OUTPUT SECTION HERE ###
                             ),
                             column(width = 3,
                                    div(style = "display:inline-block; float:right", 
                                        actionButton('grouped', label = 'Proceed', status = "success")))
                           )
)
