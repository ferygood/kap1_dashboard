corrTableUI <- function(id) {
    ns <- NS(id)

    navbarMenu(
        "correlation Table",
        tabPanel(
            ns("human(hmchimp)"),
            DT::dataTableOutput(ns("hmChimpCorrTable"))
        ),
        tabPanel(
            ns("human(hmoran)"),
            DT::dataTableOutput(ns("hmOranCorrTable"))
        ),
        tabPanel(
            ns("chimpanzee"),
            DT::dataTableOutput(ns("chimpCorrTable"))
        ),
        tabPanel(
            ns("orangutans"),
            DT::dataTableOutput(ns("oranCorrTable"))
        )
    )
}
