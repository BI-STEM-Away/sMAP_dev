sampleGroupingTab <- tabItem(tabName = "sampleGrouping",
                           fluidRow(
                               column(12,
                                      fluidRow(
                                          column(1,
                                                 div(style = "display:inline-block; float:left", 
                                                     actionButton('backTo_potentialOutliers', label = 'Back', status = "success"))
                                          ),
                                          
                                          column(10, align="center",
                                                 HTML("<h3><b>Sample Grouping</b></h3>")
                                                 
                                          ),
                                          
                                          # @roman_ramirez
                                          column(width = 1,
                                                 div(style = "display:inline-block; float:right", 
                                                     actionButton('to_volcanoPlot', label = 'Next', status = "success"))
                                          )
                                      )
                                   
                               ),
                                 column(6,
                                        selectInput("grouping","Select how to group samples",choices=c("Metadata Feature","Manually")),
                                 ),
                                 column(6,
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
                                 ))
                           
                           )
)
