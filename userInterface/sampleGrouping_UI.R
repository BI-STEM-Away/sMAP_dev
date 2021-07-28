sampleGroupingTab <- tabItem(tabName = "sampleGrouping",
                           fluidRow(
                             column(4,
                                    selectInput("grouping","Select how to group samples",choices=c("Metadata Feature","Manually")),
                             ),
                             column(5,
                                    #Data Table to assign samples to groups manually for DEG analysis
                                    conditionalPanel(condition="input.grouping=='Manually'",
                                                     DT::DTOutput('grouptable'),
                                                     actionButton("group1","Assign Selected Samples to Group 1"),
                                                     actionButton("reset1","Reset Group 1"),
                                                     actionButton("group2","Assign Selected Samples to Group 2"),
                                                     actionButton("reset2","Reset Group 2"),
                                                     actionButton("clear_rowsel","Clear Selected Rows"),
                                                     p("Row Numbers in Group 1"),
                                                     verbatimTextOutput("list_group1"),
                                                     textOutput("group1_warn"),
                                                     p("Row Numbers in Group 2"),
                                                     verbatimTextOutput("list_group2"),
                                                     textOutput("group2_warn")
      
                             ),
                                    #Assign groups based on metadata
                                    conditionalPanel(condition="input.grouping=='Metadata Feature'",
                                                     htmlOutput("col_selection")
                             ),
                             column(width = 3,
                                    div(style = "display:inline-block; float:right", 
                                        actionButton('grouped', label = 'Proceed', status = "success")))
                           )
)
