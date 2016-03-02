library(shiny)
library(BH)
library(plotly)

data <- iris
typesofSpecies <- as.character(unique(data$Species))

# Define UI for an application that has a title
shinyUI(
  
  # Specify a fluidPage layout (most common)
  fluidPage(
    
    # Create a title in your fluidPage
    titlePanel("A8: Iris"),
    
    sidebarLayout(
      
      sidebarPanel(
        radioButtons("bleh", label = h3("Select Species"),
        choices = typesofSpecies,
        selected = typesofSpecies[1]),
        
        radioButtons("color", label = h3("Select Color"),
        choices = list("Black" = 'black', "Red" = 'red', "Green" = 'green'),
        selected = 'green')
      
    ),
    
    mainPanel(
      plotlyOutput("chart")
    )
  )
))