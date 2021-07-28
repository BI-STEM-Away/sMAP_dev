sampleGroupingTab <- tabItem(tabName = "sampleGrouping",
                           fluidRow(
                             column(4,
                                    HTML("Insert Input Sample Grouping Code Here")
                             ),
                             column(5,
                                    HTML("Insert Output Sample Grouping Code Here")
                             ),
                             column(width = 3,
                                    div(style = "display:inline-block; float:right", 
                                        actionButton('grouped', label = 'Proceed', status = "success")))
                           )
)
