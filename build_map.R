# Simple scatterplot

library(plotly)
library(dplyr)

# build map function
build_map <- function(data, column, selectedColor) {
  column <- toString(column)
  updatedData <- data %>%
                  filter(Species == column)
  titleChart <- "Petal Length vs. Width"
  p <- plot_ly(
        updatedData,
        x = Petal.Length, 
        y = Petal.Width, 
        mode = "markers",
        marker = list(color = selectedColor)) %>%
        layout(title = titleChart)
  return(p)
  
}