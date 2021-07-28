#roman_ramirez and veyssi

faqTab <- tabItem(tabName = "faq",
                      fluidRow(
                        column(12,
                          HTML("
                          <h1>Instructions</h1><br>
                          We require you to upload the 3 input files described below:<br>
                          <br>
                          <h2>Gene Annotation CSV File:</h2>
                          This is a simple two column table. The first column displays the \"unique\" probe IDs (microarray) or gene IDs.
                          The second column is the corresponding gene symbol.<br>
                          <i>INSERT MICROARRAY EXAMPLE</i><br>
                          <h2>Metadata CSV File:</h2>
                          This is a simple multi-column table. The first column displays the sample IDs.
                          All the other columns are for the sample groups. Please note that there is a maximum of 10 sample groups.<br>
                          <i>INSERT MICROARRAY EXAMPLE #2</i><br>
                          <h2>Gene Expression CSV Matrix:</h2>
                          This is the normalized (such as by RMA) expression matrix.
                          The first column is the \"unique\" probe IDs or gene IDs,
                          which should be exactly the same unique IDs as your annotation file.
                          The first row is a header with the sample IDs,
                          which should be exacty the same as the sample IDs in your metadata file.<br>
                          <i>INSERT MATRIX</i><br>
                          <br>
                          <b>FAQs</b>
                        "),
                        )
                      )
)
