faqTab <- tabItem(tabName = "faq",
                    
                           
                  fluidRow(
                    column(12,
                    
                        box("The answer is ", title = "Question 1: ",  
                            status = "primary", solidHeader = TRUE, collapsible = T,
                            collapsed = TRUE, plotOutput("plot_a", height = 100)),
                        box("The answer is ", title = "Question 2: ",  
                            status = "primary", solidHeader = TRUE, collapsible = T,
                            collapsed = TRUE, plotOutput("plot_b", height = 100)),
                        box("The answer is ", title = "Question 3: ",  
                            status = "primary", solidHeader = TRUE, collapsible = T,
                            collapsed = TRUE, plotOutput("plot_c", height = 100))
                    )
                )
           )
                
               
                     

