library(shiny)

shinyServer(function(input, output) {
  output$table <- renderTable({
    wine <- read.csv(input$dataset, header = TRUE, sep = ";")
    head(wine, 10)
  })

  output$plot <- renderPlot({
    wine <- read.csv(input$dataset, header = TRUE, sep = ";")
    hist(wine$quality, col = "orange", main = "Wine Quality", xlab = "Quality")
  })

})