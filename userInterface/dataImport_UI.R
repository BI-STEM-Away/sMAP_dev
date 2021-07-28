dataImportTab <- tabItem(tabName = "dataImport",
                             fluidRow(
                               column(9,
                                 HTML("Data Import Page"),
                                 #Selection Input to decide what type of file they want to input: CSV/txt, CEL files, IDAT files, or GEO Accession number
                                 selectInput("dat_type","Input Type",choices=list("Processed Expression Data (CSV/txt File)","Raw Affymetrix Data (.tar File Containing CEL Files)","Raw Illumina Data (.tar File Containing IDAT Files)","GEO Accession Number")),
                                 #Panel that appears if CSV/txt file type selected
                                 conditionalPanel(condition="input.dat_type=='Processed Expression Data (CSV/txt File)'",
                                                  #ShreyaVora14
                                                  fileInput("file", "Processed Expression Data (CSV/txt)",multiple=FALSE,accept=c(".csv",".txt")),
                                                  #Input that comes from server function; takes columns of metadata, asks user which feature to analyze
                                 ),
                                 #Panel that appears if GEO Database desired
                                 conditionalPanel(condition="input.dat_type=='GEO Accession Number'",
                                                  textInput("geoname","Input the GEO accession number of the series matrix or dataset of interest."),
                                                  radioButtons("GEOtype","Specify what data you wish to use from the GEO database",choices=list("Series Matrix","Raw Data"))    
                                 ),
                                 #Panel that appears if Raw Affymetrix data selected
                                 conditionalPanel(condition="input.dat_type=='Raw Affymetrix Data (.tar File Containing CEL Files)'",
                                                  fileInput("celzip","Raw Affymetrix Data (.tar)"),
                                                  #Check if the user used microarray requiring oligo package
                                                  selectInput("oligo","What microarray platform did you use?",choices=list("Gene ST Array","Exon ST Array","Other")),
                                 ),
                                 #Input that comes from server function; takes columns of metadata, asks user which feature to analyze
                                 fileInput("metadata","Metadata (CSV)"),
                                 actionButton("loaddat","Load Data")
                               ),
                               
                               column(width=12,
                                      #ShreyaVora14 and nk468188
                                      #Text output to confirm data has been uploaded
                                      h1(textOutput("obj"),align="center")),
                               column(width = 3,
                                      div(style = "display:inline-block; float:right", 
                                          actionButton('dataImported', label = 'Proceed', status = "success")))
                             )
)
