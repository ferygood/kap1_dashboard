corrTableUI <- function(id) {
    ns <- NS(id)

    navbarMenu(
        "correlation Table",
        tabPanel(
            "human(hmchimp)",
            DT::dataTableOutput(ns("hmChimpCorrTable"))
        ),
        tabPanel(
            "human(hmoran)",
            DT::dataTableOutput(ns("hmOranCorrTable"))
        ),
        tabPanel(
            "chimpanzee",
            DT::dataTableOutput(ns("chimpCorrTable"))
        ),
        tabPanel(
            "orangutans",
            DT::dataTableOutput(ns("oranCorrTable"))
        )
    )
}
