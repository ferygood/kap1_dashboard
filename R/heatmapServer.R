heatmapServer <- function(id) {
    moduleServer(id, function(input, output, session) {
        output$hmChimpGene <- renderPlot(generateHeatmap("hmchimp_results/geneDESeq2Log2.csv", top=40))
        output$hmChimpTE <- renderPlot(generateHeatmap("hmchimp_results/teDESeq2Log2.csv", top=40))
        output$hmOranGene <- renderPlot(generateHeatmap("hmoran_results/geneDESeq2Log2.csv", top=40))
        output$hmOranTE <- renderPlot(generateHeatmap("hmoran_results/teDESeq2Log2.csv", top=40))
    })
}

