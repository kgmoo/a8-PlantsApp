# Server.r
# Read in data and packages
library(plotly)
library(shiny)
library(dplyr)
data <- data(iris)
data <- iris
shinyServer(function(input, output) {
  
  # Setting up the first plot using the two widgets from the side panel. 
  output$graphic <- renderPlotly({ 
    
     # Use the input variables to filter the data according to the wishes of the user
     inputData = data %>% filter(Species == input$Catagory, Sepal.Length <= input$SepalLength)
     
     # Build the plot with the data provided. 
     plot_ly(inputData, x = Petal.Length, y = Petal.Width, mode = "markers", color = Sepal.Width, colors = "Set1")
  })
  
  
})