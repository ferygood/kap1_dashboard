library(shiny)

ui <- navbarPage(
    "kap1_dashboard",
    tabPanel(
        "Introduction",
        includeMarkdown("README.md")
    ),
    corrTableUI("corr"),
    navbarMenu("DE results"),
    navbarMenu("motif heatmap"),
    navbarMenu("motif network"),
    navbarMenu("pathway")
)

server <- function(input, output, session) {
    corrTableServer("corr")
}

shinyApp(ui = ui, server = server)
