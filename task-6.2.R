# **Task 6.2:** Create a bar plot showing the count 
# of each `Species` in the `iris` dataset.

# Ensure the ggplot2 package is loaded
library(ggplot2)

# Load the iris dataset
data(iris)

# Create the bar plot
plot <- ggplot(data = iris, aes(x = Species)) +
  geom_bar() +  # Add bars to the plot
  labs(title = "Count of Each Species in the Iris Dataset",
       x = "Species",
       y = "Count") +  # Add labels to the plot
  theme_minimal()  # Use a minimal theme

# Display the plot
print(plot)

# Save the plot to a PNG file (if needed)
ggsave("data/species_count_plot.png", plot)
