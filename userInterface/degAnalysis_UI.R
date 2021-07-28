# degAnalysisTab <- tabItem(tabName = "degAnalysis",
#                                  fluidRow(
#                                    column(4,
#                                     HTML("DEG Analysis Page"),
                                    
#                                    ),
#                                    column(5,
                                  
#                                    ),
#                                    column(width = 3,
#                                           div(style = "display:inline-block; float:right", 
#                                               actionButton('degAnalyzed', label = 'Proceed', status = "success")))
#                                  )
# )

volcanoPlotTab <- tabItem(tabName = "volcanoPlot",
                          fluidRow(
                            column(4,
                                  sliderInput("n", "LogFC cutoff", 0, 5,
                                                          value =1, step = 0.05),
                                  shinyWidgets::sliderTextInput("m", "Adjusted P-Value cutoff", 
                                                                            choices=c(1e-5,1e-10,1e-15,1e-20,1e-25,1e-30,1e-35,1e-40,1e-45,1e-50),
                                                                            grid=TRUE))
                                   ),
                            column(5,
                                  plotOutput("plot1")
                                   ),
                            column(width = 3,
                                          div(style = "display:inline-block; float:right", 
                                              actionButton('degAnalyzed', label = 'Proceed', status = "success"))
                                   )
)                  
topDEGsTab <- tabItem(tabName = "topDEGs",
                      fluidRow(
                        column(4,
                               #Input for genes to cutoff
                                     #marmomeni
                                     numericInput("cutoff","What percent of genes should be filtered out?",value=0),
                                     actionButton("filt_gen","Filter Out Genes"),
                                     p("Limma Analysis to find DEGs"),
                                     selectInput("grouping","Select how to group samples",choices=c("Metadata Feature","Manually")),
                                     numericInput("p_val","Cutoff p-value:",value=0.05),
                                     sliderInput("num_gen","Percentage of Differentially Expressed Genes to Display",0,100,0),
                                     actionButton("degs","Find DEGs"),
                                       #P-value and number of genes for topTable and volcano plot
                                     numericInput("p_val","Cutoff p-value:",value=0.05),
                                     sliderInput("num_gen","Percentage of Differentially Expressed Genes to Display",0,100,0),
                                     actionButton("degs","Find DEGs")
                               ),
                        column(5,
                                textOutput("gen_filt"),
                                verbatimTextOutput("toptab")
                               ),
                        column(width = 3,
                                          div(style = "display:inline-block; float:right", 
                                              actionButton('degAnalyzed', label = 'Proceed', status = "success")))
                                 )
)
