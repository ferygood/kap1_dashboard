bipartiteServer <- function(id) {
    moduleServer(id, function(input, output, session) {
        output$biparHmDb <- renderPlot(bipar("intersect/db_tight.rda", "hm"))
        output$biparHmKat <- renderPlot(bipar("intersect/katja_tight.rda", "hm"))
    })
}

