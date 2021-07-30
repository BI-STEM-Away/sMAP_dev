volcanoPlotTab <- tabItem(tabName = "volcanoPlot",
                          fluidRow(
                              column(12,
                                     fluidRow(
                                         column(1,
                                                div(style = "display:inline-block; float:left", 
                                                    actionButton('backTo_sampleGrouping', label = 'Back', status = "success"))
                                         ),
                                         
                                         column(10, align="center",
                                                HTML("<h3><b>Volcano Plot</b></h3>")
                                                
                                         ),
                                         
                                         # @roman_ramirez
                                         column(width = 1,
                                                div(style = "display:inline-block; float:right", 
                                                    actionButton('to_topDEGs', label = 'Next', status = "success"))
                                         )
                                     )
                                  
                              ),
                              column(6,
                                     #ShreyaVora14
                                     p("Volcano plots are a visualization used for differential gene expression analysis. The x-axis represents log-fold change and the y-axis 
        represents p-value. "),
                                     sliderInput("n", "LogFC cutoff", 0, 5,
                                                 value =1, step = 0.05),
                                     shinyWidgets::sliderTextInput("m", "Adjusted P-Value cutoff", 
                                                                   choices=c(1e-5,1e-10,1e-15,1e-20,1e-25,1e-30,1e-35,1e-40,1e-45,1e-50),
                                                                   grid=TRUE)
                              ),
                              column(6,
                                     plotOutput("plot1")
                              ),
                          )
)                  
topDEGsTab <- tabItem(tabName = "topDEGs",
                      fluidRow(
                          column(12,
                                 fluidRow(
                                     column(1,
                                            div(style = "display:inline-block; float:left", 
                                                actionButton('backTo_volcanoPlot', label = 'Back', status = "success"))
                                     ),
                                     
                                     column(10, align="center",
                                            HTML("<h3><b>Top Differentially-Expressed Genes</b></h3>")
                                            
                                     ),
                                     
                                     # @roman_ramirez
                                     column(width = 1,
                                            div(style = "display:inline-block; float:right", 
                                                actionButton('to_functionalEnrichmentAnalysis', label = 'Next', status = "success"))
                                     )
                                 )
                              
                          ),
                          column(6,
                                 #Input for genes to cutoff
                                 #marmomeni
                                 numericInput("cutoff","What percent of genes should be filtered out?",value=0),
                                 actionButton("filt_gen","Filter Out Genes"),
                                 #ShreyaVora14
                                 tags$div(
                                   tags$p("The percent of genes you choose will be the percent of genes that will be filtered because of the low levels of expression. Additionally any duplicates, NA,
             or Duplicate gene symbols will be removed.")
                                   ),
                                 numericInput("p_val","Cutoff p-value:",value=0.05),
                                 actionButton("degs","Find DEGs"),
                                 #P-value and number of genes for topTable and volcano plot
                                 numericInput("p_val","Cutoff p-value:",value=0.05),
                                 actionButton("degs","Find DEGs")
                          ),
                          column(6,
                                 textOutput("gen_filt"),
                                 dataTableOutput("toptab")
                          )
                      )
)
