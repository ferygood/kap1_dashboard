pairHeatmapUI <- function(id) {
    ns <- NS(id)
    
    navbarMenu(
        "pair heatmap",
        tabPanel(
            "hmdb",
            plotlyOutput(ns("hmdb"))
        ),
        tabPanel(
            "hmkat",
            plotlyOutput(ns("hmkat"))
        )
    )
}
