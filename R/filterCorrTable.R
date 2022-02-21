filterCorrTable <- function(dfPath) {
    
    # read csv
    df <- read.csv(dfPath)
    
    # filter negatvie and significant
    df <- df[complete.cases(df), ]
    dfSig <- df[df$padj < 0.05, ]
    dfSig <- dfSig[dfSig$coef < 0, ]
    
    dfSig
}