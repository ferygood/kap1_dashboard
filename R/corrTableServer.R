corrTableServer <- function(id) {
    moduleServer(id, function(input, output, session) {
        output$hmChimpCorrTable <- DT::renderDataTable(filterCorrTable("hmchimp_results/hmCorrResult.csv"))
        output$hmOranCorrTable <- DT::renderDataTable(filterCorrTable("hmoran_results/hmCorrResult.csv"))
        output$chimpCorrTable <- DT::renderDataTable(filterCorrTable("hmchimp_results/chimpCorrResult.csv"))
        output$oranCorrTable <- DT::renderDataTable(filterCorrTable("hmoran_results/oranCorrResult.csv"))
    })
}
