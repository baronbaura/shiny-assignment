library(shiny)
source('build_map.R')

data <- iris

# Code to be executed by the shiny server
shinyServer(function(input, output) {
  output$chart <- renderPlotly({
    build_map(data, input$bleh, input$color)
  })
})