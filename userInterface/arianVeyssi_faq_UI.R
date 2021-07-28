faqTab <- tabItem(tabName = "faq",
                    
                           
                  fluidRow(
                    column(12,
                    box("The answer is ", title = "Question 1: ",  
                        status = "primary", solidHeader = TRUE, collapsible = T,
                        collapsed = TRUE, plotOutput("plot", height = 100))
                    ),
                    column(12,
                    box("The answer is ", title = "Question 2: ",  
                      status = "primary", solidHeader = TRUE, collapsible = T,
                      collapsed = TRUE, plotOutput("plot", height = 100))
                    ),
                    column(12,
                    box("The answer is ", title = "Question 3: ",  
                      status = "primary", solidHeader = TRUE, collapsible = T,
                      collapsed = TRUE, plotOutput("plot", height = 100))
                    )
                )
           )
                
               
                     

