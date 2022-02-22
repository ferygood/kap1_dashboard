library(igraph)
library(plyr)

bipar <- function(loadFile, species){
    # load rda file
    rda <- get(load(loadFile))
    df <- rda[[species]]
    
    # select top40
    counts <- ddply(df, .(df$ZNF_ms, df$te_name), nrow)
    names(counts) <- c("ZNF_ms", "te_name", "Count")
    counts <- counts[order(counts$Count, decreasing = TRUE),]
    
    ### Top 40 pairs Human (JASPAR & other database)
    g <- graph.data.frame(counts[c(1:40), ], directed = FALSE)
    V(g)$type <- bipartite_mapping(g)$type
    V(g)$color <- ifelse(V(g)$type, "lightgreen", "salmon")
    V(g)$shape <- ifelse(V(g)$type, "circle", "square")
    E(g)$color <- "lightgray"
    #plot(g, layout=layout.bipartite, vertex.label.cex=0.6, vertex.label.color = "black")
    
    ### Top 40 pairs Human (JASPAR & other database)
    g <- plot(g, vertex.label.cex = 0.8, vertex.label.color="black")
    g
}
