generateHeatmap <- function(dfPath, top=10) {
    
    df <- read.csv(dfPath)
    
    if (is.numeric(top)) {
        select <- order(rowMeans(df), decreasing = TRUE)[seq_len(top)]
        df <- df[select, ]
    } else {
        message("top parameter should be numeric valuable")
    }
    
    g <- pheatmap::pheatmap(df)
    g
}