# install.packages("shiny", lib = "~/R/library")

# library(shiny)

# Load the Shiny package
library(shiny)

# Define UI for the Shiny app
ui <- fluidPage(
  
  # Application title
  titlePanel("Histogram of Miles per Gallon (mpg)"),
  
  # Sidebar layout with input and output definitions
  sidebarLayout(
    
    # Sidebar panel for inputs
    sidebarPanel(
      
      # Input: Slider for the number of bins
      sliderInput(
        inputId = "bins",                     # ID for the input
        label = "Number of bins:",            # Label for the input
        min = 1,                              # Minimum value for slider
        max = 30,                             # Maximum value for slider
        value = 10                            # Default value
      )
    ),
    
    # Main panel for displaying outputs
    mainPanel(
      
      # Output: Histogram
      plotOutput(outputId = "histPlot")
      
    )
  )
)

# Define server logic for the Shiny app
server <- function(input, output) {
  
  # Reactive expression to create the histogram based on input$bins
  output$histPlot <- renderPlot({
    
    # Generate bins based on input$bins from ui.R
    x <- mtcars$mpg
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # Draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'skyblue', border = 'white',
         main = "Histogram of Miles per Gallon",
         xlab = "Miles per Gallon (mpg)")
  })
}

# Run the Shiny app
shinyApp(ui = ui, server = server)
