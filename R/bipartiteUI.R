bipartiteUI <- function(id){
    ns <- NS(id)
    
    navbarMenu(
        "bipartite network",
        tabPanel(
            "hmdb",
            plotOutput(ns("biparHmDb"))
        ),
        tabPanel(
            "hmkat",
            plotOutput(ns("biparHmKat"))
        )
    )
}