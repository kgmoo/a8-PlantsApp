library(shiny)
library(plotly)
# Define Page Format
shinyUI(fluidPage(
  # Create a title
  titlePanel("Iris Data Set"),
  # Create sidebar layout
  sidebarLayout(
    
    sidebarPanel(
      
      # Allow the user to select the species of iris being analyzed with a drop down menu. Store the variable
      selectInput("Catagory",
                  label = "Choose variable to plot:", choices = list(
                  "Setosa" = "setosa",
                  "Versicolor" = "versicolor",
                  "Virginica" = "virginica")),
      
      # Let the user set the upper bound of Sepal Lengths in data points included in the graph with a slider.
      # Store the variable. (min is 4.9 so all species will always have at least one point.)
      sliderInput("SepalLength","Upper Bound of Sepal Length", min = 4.9, max = 7.9, value = 7.9, step = 0.1)
      
    ),
    
    # Get rendered plot and display it in the main panel.
    mainPanel(
      
      plotlyOutput('graphic')  
      
    )
    

  )
))