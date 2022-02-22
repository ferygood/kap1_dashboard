library(ggplot2)
library(heatmaply)
library(reshape2)
pairHeatmap <- function(dfpath, top=40, chr=NULL, lowCol="#d2e1b1", highCol="#bf8924"){
    
    df <- read.csv(dfpath)
    
    if(!is.null(chr)){
        # filter chromosome
        df <- df[df$chromosome==chr, ]
    }
    
    # select top genes
    df <- df[order(df$Count, decreasing=TRUE), ][seq_len(top), ]
    df <- df[, c("ZNF_ms", "te_name", "Count")]
    dft <- dcast(df, te_name~ZNF_ms, value.var="Count", sum)
    rownames(dft) <- dft$te_name
    dft <- dft[-1]
    dft[is.na(dft)] <- 0
    
    g <- heatmaply(as.matrix(dft), 
              colors = c(low=lowCol, high=highCol),
              xlab="KRAB-ZNFs",
              ylab="TEs"
    )
    
    g
    
}
