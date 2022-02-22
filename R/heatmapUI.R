heatmapUI <- function(id) {
    ns <- NS(id)
    
    navbarMenu(
        "Heatmap",
        tabPanel(
            "hmChimpGene",
            plotOutput(ns("hmChimpGene"))
        ),
        tabPanel(
            "hmChimpTE",
            plotOutput(ns("hmChimpTE"))
        ),
        tabPanel(
            "hmOranGene",
            plotOutput(ns("hmOranGene"))
        ),
        tabPanel(
            "hmOranTE",
            plotOutput(ns("hmOranTE"))
        )
    )
}
