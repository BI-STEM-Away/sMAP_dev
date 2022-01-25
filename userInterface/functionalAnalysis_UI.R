# functionalAnalysisTab <- tabItem(tabName = "functionalAnalysis",
#                       fluidRow(
#                         column(12,
#                           HTML("Functional Analysis Page")
#                         )
#                       )
# )

functionalEnrichmentAnalysisTab <- tabItem(tabName = "functionalEnrichmentAnalysis",
                      fluidRow(
                          
                          column(2,
                                 div(style = "display:inline-block; float:left", 
                                     actionButton('backTo_topDEGs', label = 'Back', status = "success"))
                          ),
                          column(8, align="center",
                                 HTML("<h5>KEGG Pathway Enrichment Analysis</h5>")
                                 
                          ),
                          # @roman_ramirez
                          column(2,
                                 div(style = "display:inline-block; float:right", 
                                     actionButton('to_geneConceptNetwork', label = 'Next', status = "success"))
                          )
                      ),
                      HTML("<HR>"),
                      HTML("<BR>"),
                      fluidRow(
#                                downloadButton("exportkegg","Download KEGG Plots")
                         column(6,
                                numericInput("KEGG_pcut","Cutoff Adjusted p-Value for Enriched KEGG Pathways",value=0.05),
                                uiOutput("kegg_y"),
                                uiOutput("cat"),
                                actionButton("kegg","Perform KEGG Enrichment Analysis")),
                                
                        
                  
                     column(6,
                            p("KEGG is a database that lets you compare your data using the gene symbols
             to other biological systems, allowing you to determine which biological pathways are associated with your set of enriched genes. You will be able to visualize a dotplot and barplot for which larger dots and longer bars indicate enriched pathways."),
                     )
                            
                            ),

                  
                   fluidRow(
                   column(12,
                          
                          plotOutput("dotplot"),
                          plotOutput("barplot"))
                  )
)

geneConceptNetworkTab <- tabItem(tabName = "geneConceptNetwork",
              fluidRow(
                  
                  column(2,
                         div(style = "display:inline-block; float:left", 
                             actionButton('backTo_functionalEnrichmentAnalysis', label = 'Back', status = "success"))
                  ),
                  column(8, align="center",
                         HTML("<h5>Gene Ontology Enrichment Analysis</h5>")
                         
                  ),
                  # @roman_ramirez
                  column(2,
                         div(style = "display:inline-block; float:right", 
                             actionButton('to_gsea', label = 'Next', status = "success"))
                  )
              ),
          
              HTML("<HR>"),
              HTML("<BR>"),
              fluidRow(
               column(6,
                      selectInput("type","Category for Gene Ontology Analysis",choices=c("Cellular Components","Molecular Functions","Biological Processes")),
                      numericInput("funcpcutGO","Cutoff Adjusted p-Value for Enriched GO Terms",value=0.05),
                      uiOutput("go_a"),
                      actionButton("go","Gene Ontology Analysis"),
                      
                      ),
               
               
              
               column(6,
                      p("Gene Ontology defines gene function and the relationship between Cellular Components, Molecular Functions, and Biological Processes with your set of genes. The dot plot and bar plot are two ways of visualizing which gene ontology terms are most enriched, these terms being indicated by larger dots and longer bars.")
                
               )),
              fluidRow(
                column(12,
                       #sliderInput("b", "Number of Terms shown", 0, 20, value =10, step = 2),
                       plotOutput("barplot2"),
                       plotOutput("dotplot2")
               )
                    #  plotOutput("GOgraph")
              )
)                                
gseaTab <- tabItem(tabName = "gsea",
            fluidRow(
                column(2,
                       div(style = "display:inline-block; float:left", 
                           actionButton('backTo_geneConceptNetwork', label = 'Back', status = "success"))
                ),
                column(8, align="center",
                       HTML("<h5>Gene-Set Enrichment Analysis</h5>")
                       
                ),
                # @roman_ramirez
                column(2,
                       div(style = "display:inline-block; float:right", 
                           actionButton('to_transcriptionFactorAnalysis', label = 'Next', status = "success"))
                )
            ),
            HTML("<HR>"),
            HTML("<BR>"),
            fluidRow(
             column(12,offset=0,
                    tags$p("GSEA identifies sets of genes that are significantly overexpressed or underexpressed in the experimental condition relative to the control."),
                      tags$ul(
                        tags$li("sMAP uses a database for gene sets from humans."),
                        tags$li("In GSEA, the genes in each gene set are ranked by the log fold change in expression of the gene in the experimental condition relative to the control."),
                        tags$li("A running enrichment score for each gene set is calculated, genes that are overexpressed making the score more positive and genes that are underexpressed making the score more negative (see plot below)."),
                        tags$li("Based on the enrichment score for a gene set, statistical analysis is used to determine if that gene set is statistically significantly over- or underexpressed."),
                        tags$li("Based on a p-value of 0.05, sMAP reports the running enrichment score plot, a plot showing where the genes in each gene set are located along the x-axis, as well as a plot of the ranked expression of all genes from the microarray data. A table of the statistically significant gene sets is reported as well.")
                    ),
                    actionButton("gsea","Perform GSEA")
             )),
             fluidRow(
             column(12,align="center",
                    dataTableOutput("gsea_pathways"),
                    htmlOutput("path_select"),
                    htmlOutput("button_gsea_plot"),
                    plotOutput("plot_gsea",height="600px"),
#                    downloadButton("exportgsea","Download GSEA Plot")
             )
         )
)                  
