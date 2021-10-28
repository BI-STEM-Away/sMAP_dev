packages12<-c("bs4Dash","shiny","shinybusy","fresh","oligo","GEOquery","affy","limma","arrayQualityMetrics","sva","Biobase","affyPLM","EnhancedVolcano","AnnotationDbi","hgu133plus2.db","WGCNA","clusterProfiler","msigdbr","impute","org.Hs.eg.db","ggplot2","shinyWidgets","DT","data.table","enrichplot","hugene11sttranscriptcluster.db")
for(y in packages12){
    library(y,character.only=TRUE)
}
#Import Functions from External R scripts.

source("functions/testFunction.R", local = TRUE)$value
