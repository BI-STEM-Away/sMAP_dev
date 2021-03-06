dataImportTab <- tabItem(tabName = "dataImport",
   fluidRow(
     column(2,
            div(style = "display:inline-block; float:left", 
                actionButton('backTo_introduction', label = 'Back', status = "success"))
     ),
     column(8, align="center",
            HTML("<h5>Upload Data Files in sMAP to begin</h5>")
            
     ),
     column(2,
            div(style = "display:inline-block; float:right", 
                actionButton('to_qC', label = 'Next', status = "success"))
     )
   ),
   HTML("<HR>"),
   HTML("<BR>"),
   fluidRow(
     column(8,
        fluidRow(
          column(4,
               selectInput("dat_type","Input Type",
                           choices=list("Expression Data File (CSV/TXT)",
                                        "Raw Affymetrix Data (CEL Files)",
                                        "GEO Accession Number",
                                        "Load Demo Data (Raw)"),
                           width = '350px'),
               tags$p("'Load Demo Data' will input 20 raw CEL files from the GSE19804 dataset. Download the demo data for more information.")
               ),
          column(8,
             conditionalPanel(condition="input.dat_type=='Expression Data File (CSV/TXT)' | input.dat_type=='Raw Affymetrix Data (CEL Files)'  | input.dat_type=='GEO Accession Number'",
              fluidRow(
                  column(6,
                         fileInput("metadata","Metadata (CSV)")
                         ),
                column(6,
                       selectInput("oligo","What microarray platform did you use?",
                                   choices=list("Affymetrix Human Gene 1.0 ST Array",
                                                "Affymetrix Human Genome U133 Plus 2.0 Array"))
                ))
         ))
      )),
     column(3,
            conditionalPanel(condition="input.dat_type=='Expression Data File (CSV/TXT)'",
               fluidRow(
                 column(12,
                        fileInput("file", "Expression Data File (CSV/TXT)",
                                  accept=c(".csv",".txt"))
                 )
               )
            ),
            conditionalPanel(condition="input.dat_type=='Raw Affymetrix Data (CEL Files)'",
               fluidRow(
                 column(12,
                        fileInput("celzip","Raw Affymetrix Data (.CEL)",multiple=TRUE)
                        )
               )
            ),
            conditionalPanel(condition="input.dat_type=='GEO Accession Number'",
                             fluidRow(
                                column(12,
                                       textInput("geoname",
                                                 "Enter GEO accession ID:",width='200px')))),
            conditionalPanel(condition="input.dat_type=='Load Demo Data (Raw)'",
                    div(
                    HTML("Demo data selected. "),
                    a(href="demoData.zip", "Download", download=NA, target="_blank"),
                    HTML("from here."))
            )
            ),
     column(1,
            actionButton("loaddat","Load Data")
     )
   ),
   HTML("<HR>"),
   HTML("<BR>"),
   fluidRow(
     column(12,
            add_busy_bar(),
            dataTableOutput("csv_summary"),
            dataTableOutput("raw_summary")
     )
   )
)


