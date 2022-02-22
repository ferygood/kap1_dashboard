library(shiny)

ui <- navbarPage(
    "kap1_dashboard",
    tabPanel(
        "Introduction",
        includeMarkdown("README.md")
    ),
    corrTableUI("corr"),
    heatmapUI("heatmap"),
    pairHeatmapUI("test"),
    bipartiteUI("ora"),
    navbarMenu("pathway")
)

server <- function(input, output, session) {
    corrTableServer("corr")
    heatmapServer("heatmap")
    pairHeatmapServer("test")
    bipartiteServer("ora")

}

shinyApp(ui = ui, server = server)
