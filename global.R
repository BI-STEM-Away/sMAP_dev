# Load the libraries and import function files here.
# Global.R is run one time at app initiallization. 
library(bs4Dash)
library(shiny)
library(fresh)

# other imports
packages1<-c("oligo","GEOquery","affy","limma","arrayQualityMetrics","sva","Biobase","affyPLM","EnhancedVolcano","AnnotationDbi","hgu133plus2.db","WGCNA","impute","org.Hs.eg.db","msigdbr","clusterProfiler","enrichplot","topGO" )#"simpleaffy")#), "AffyBatch")
for(x in packages1){
    library(x,character.only=TRUE)
}
packages2<-c("ggplot2", "pheatmap","shinyWidgets","DT","data.table","magrittr","tidyr","shinybusy")
for(y in packages2){
    library(y,character.only=TRUE)
}
packages12<-c("stringr","R.utils", "EnhancedVolcano", "shinyWidgets", "bs4Dash", "shiny", "fresh")
for(y in packages12){
    library(y,character.only=TRUE)
}
#Import Functions from External R scripts.

source("functions/testFunction.R", local = TRUE)$value
