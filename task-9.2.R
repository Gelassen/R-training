# **Task 9.2:** Decompose the time series into trend, 
# seasonal, and irregular components.

# Sample monthly data
data <- c(120, 130, 125, 140, 150, 160, 165, 170, 160, 155, 150, 145,
          140, 145, 150, 160, 165, 170, 180, 175, 165, 160, 155, 150)

# Create a time series object
ts_data <- ts(data, start = c(2022, 1), frequency = 12)

# Decompose the time series
decomposed_ts <- decompose(ts_data)

# Specify the path and file name where you want to save the plot
output_file <- "data/task-9_2-plot.pdf"

# Open a PDF device to save the plot
pdf(file = output_file)

# Plot the decomposed time series
plot(decomposed_ts)

# Close the PDF device
dev.off()