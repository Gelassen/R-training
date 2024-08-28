# Load necessary libraries
library(shiny)
library(ggplot2)

# Define the UI for the app
ui <- fluidPage(
  
  # Include custom CSS
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
  ),
  
  # Application title
  titlePanel("Enhanced Shiny App with Reactive Elements"),
  
  # Sidebar layout with input and output definitions
  sidebarLayout(
    
    # Sidebar panel for inputs
    sidebarPanel(
      
      # Input: Dropdown for selecting a variable to plot
      selectInput("variable", "Choose a variable:",
                  choices = colnames(mtcars)),
      
      # Input: Slider for adjusting the number of bins
      sliderInput("bins", "Number of bins:",
                  min = 1, max = 30, value = 10)
    ),
    
    # Main panel for displaying outputs
    mainPanel(
      
      # Output: Histogram
      plotOutput("histPlot"),
      
      # Output: Dynamic text for summary
      textOutput("summaryText")
    )
  )
)

# Define the server logic
server <- function(input, output) {
  
  # Reactive expression to create the histogram based on input$variable and input$bins
  output$histPlot <- renderPlot({
    data <- mtcars[[input$variable]]  # Dynamically choose the variable
    bins <- seq(min(data), max(data), length.out = input$bins + 1)
    
    hist(data, breaks = bins, col = 'skyblue', border = 'white',
         main = paste("Histogram of", input$variable),
         xlab = input$variable)
  })
  
  # Reactive expression for dynamic text
  output$summaryText <- renderText({
    paste("Summary of", input$variable, ":",
          "Mean =", round(mean(mtcars[[input$variable]]), 2),
          ", Median =", round(median(mtcars[[input$variable]]), 2))
  })
}

# Run the application
shinyApp(ui = ui, server = server)
