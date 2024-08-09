# - **Task 6.1:** Create a scatter plot of `mpg` vs. `hp` 
# from the `mtcars` dataset using the `ggplot2` package. 
# Add a trend line.

install.packages("ggplot2", lib = "~/R/library")
library(ggplot2)

install.packages("curl", lib = "~/R/library")
install.packages("openssl", lib = "~/R/library")
install.packages("httr", lib = "~/R/library")
install.packages("plotly", lib = "~/R/library")

install.packages("plotly", lib = "~/R/library")
library(plotly)

# Create the scatter plot with a trend line
plot <- ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point() +  # Add points for the scatter plot
  geom_smooth(method = "lm", se = FALSE) +  # Add a trend line (linear model)
  labs(title = "Scatter Plot of MPG vs. HP",
       x = "Horsepower (HP)",
       y = "Miles per Gallon (MPG)") +  # Add labels
  theme_minimal()  # Use a minimal theme

# Convert to an interactive plotly plot
# ggplotly(plot)

# Display the plot (use print in non-interactive sessions)
print(ggplotly(plot))

# Optionally, save the plot to a file
htmlwidgets::saveWidget(ggplotly(plot), "scatter_plot.html", selfcontained = FALSE)
ggsave("data/scatter_plot.png", plot)
