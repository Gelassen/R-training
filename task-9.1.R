# **Task 9.1:** Create a time series object in R using monthly 
# data over the last two years. Plot the time series

library(ggplot2)

# Set the seed for reproducibility
set.seed(123)

# Generate random data for 24 months (2 years)
data <- rnorm(24, mean = 100, sd = 10)

# Create a time series object
time_series <- ts(data, start = c(2022, 1), frequency = 12)

# Plot the time series
plot <- plot(time_series, main = "Monthly Data Over the Last Two Years", ylab = "Value", xlab = "Time", col = "blue")
ggsave("data/task-9_1-plot.pdf", plot = plot)