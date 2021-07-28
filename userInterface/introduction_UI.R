#roman_ramirez
# Imported @ivanlam27's introduction code
introductionTab <- tabItem(tabName = "introduction",
                            fluidRow(
                                column(9,
                                       #Introduction block 
                                       jumbotron(
                                          status = "info",
                                          title = "R Shiny app",
                                          lead = "An app for processing quality control, statistical and functional analysis of a 
                                          GEO dataset in order to find a potential biomarker",
                                          "This app is created by STEM-away RShiny project team - Session 1",
                                          href = "https://stemaway.com/" 
                                       )
                                ),
                                column(3,
                                       div(style = "display:inline-block; float:right", 
                                           actionButton('to_dataImport', label = 'Begin', status = "success")),
                                       # @roman_ramirez
                                       div(style = "display:inline-block; float:left", 
                                           actionButton('to_end', label = 'Quit', status = "success"))
                                )
                            )

                           
)
