pairHeatmapServer <- function(id) {
    moduleServer(id, function(input, output, session) {
        output$hmdb <- renderPlotly(pairHeatmap("intersect/hm_db_repeat.csv"))
        output$hmkat <- renderPlotly(pairHeatmap("intersect/hm_kat_repeat.csv"))
    })
}

