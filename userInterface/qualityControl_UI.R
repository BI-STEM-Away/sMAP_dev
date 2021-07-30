qCTab <- tabItem(tabName = "qC",
                              fluidRow(
                                  column(12,
                                         fluidRow(
                                             column(1,
                                                    div(style = "display:inline-block; float:left", 
                                                        actionButton('backTo_dataImport', label = 'Back', status = "success"))
                                             ),
                                             
                                             column(10, align="center",
                                                    HTML("<h3><b>Quality Control</b></h3>")
                                                    
                                             ),
                                             # @roman_ramirez
                                             column(width = 1,
                                                    div(style = "display:inline-block; float:right", 
                                                        actionButton('to_normalization', label = 'Next', status = "success"))
                                             )
                                         )
                                  ),
                                  column(6,
                                         selectInput("qc_method", "Choose a QC visualization method before normalization.", choices = c("NUSE","RLE")),
                                         actionButton("vis_dat","Visualize Data")
                                  ),
                                  column(6,
                                         
                                         plotOutput("plot_raw"),
                                         textOutput("normal"),
                                         textOutput("norm_comp"),
                                         
                                  ),
                              )
)

normalizationTab <- tabItem(tabName = "normalization",
                              fluidRow(
                                  column(12,
                                         fluidRow(
                                            
                                             column(1,
                                                    div(style = "display:inline-block; float:left", 
                                                        actionButton('backTo_qC', label = 'Back', status = "success"))
                                             ),
                                             
                                             
                                             column(10, align="center",
                                                    HTML("<h3><b>Normalization</b></h3>")
                                                    
                                             ),
                                             
                                             # @roman_ramirez
                                             column(width = 1,
                                                    div(style = "display:inline-block; float:right", 
                                                        actionButton('to_batchCorrection', label = 'Next', status = "success"))
                                             )
                                         )
                                  ),
                                  column(6,
                                         #Disha
                                         radioButtons("normlztype","Which normalization method do you want to use?", choices=list("RMA","GCRMA","MAS5")),
                                         actionButton("normlzdata","Begin Normalization"),
                                  ),
                                  column(6,
                                         textOutput("batch_com"),
                                         htmlOutput("pc_comp"),
                                         htmlOutput("feat"),
                                  )
                              )
)

batchCorrectionTab <- tabItem(tabName = "batchCorrection",
                             fluidRow(
                                 column(12,
                                        fluidRow(
                                            column(1, 
                                                   div(style = "display:inline-block; float:left", 
                                                       actionButton('backTo_normalization', label = 'Back', status = "success"))
                                            ),
                                            
                                            column(10, align="center",
                                                   HTML("<h3><b>Batch Correction</b></h3>")
                                                   
                                            ),
                                            # @roman_ramirez
                                            column(width = 1,
                                                   div(style = "display:inline-block; float:right", 
                                                       actionButton('to_potentialOutliers', label = 'Next', status = "success"))
                                            )
                                        )
                                     
                                 ),
                                 column(6,
                                        htmlOutput("batch_cat"),
                                        actionButton("startbatch","Perform Batch Correction"),
                                        selectInput("qc_method2", "Choose a QC visualization method after normalization.", choices = c("Boxplot","PCA")),
                                        actionButton("vis_button", "Generate Plot", icon = icon("play")),
                                 ),
                                 column(6,
                                        actionButton("pcplot","Plot Principal Components"),
                                        textOutput("pcwarn"),
                                        textOutput("plot_status"),
                                        plotOutput("qcplot"),
                                        htmlOutput("remove"),
                                        
                                 )
                             )
)

potentialOutliersTab <- tabItem(tabName = "potentialOutliers",
                                    fluidRow(
                                        column(12,
                                          fluidRow(
                                              
                                              column(1,
                                                     div(style = "display:inline-block; float:left", 
                                                         actionButton('backTo_batchCorrection', label = 'Back', status = "success"))
                                              ),
                                              column(10, align="center",
                                                     HTML("<h3><b>Find Potential Outliers</b></h3>")
                                                     
                                              ),
                                              
                                              # @roman_ramirez
                                              column(width = 1,
                                                     div(style = "display:inline-block; float:right", 
                                                         actionButton('to_sampleGrouping', label = 'Next', status = "success"))
                                              )
                                          )  
                                        ),
                                        column(6,
                                               selectInput("outmethod","Outlier Detection Method",choices=c("KS","sum", "upperquartile")),
                                               actionButton("getout","Find Potential Outliers"),
                                               actionButton("update","Show Updated List of Samples")   
                                        ),
                                        column(6,
                                               p("Potential Outliers:"),
                                               uiOutput("potout"),
                                               plotOutput("outplot"),
                                               dataTableOutput("newexprs")
                                            
                                        )
                                    )
)
