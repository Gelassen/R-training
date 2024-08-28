# Set seed for reproducibility
set.seed(123)

# Create a large numeric vector with 10 million random numbers
large_vector <- runif(10^7)

# Measure the time taken by the for loop approach
loop_time <- system.time({
  squared_loop <- numeric(length(large_vector))  # Pre-allocate memory for speed
  for (i in 1:length(large_vector)) {
    squared_loop[i] <- large_vector[i]^2
  }
})

# Display the time taken by the for loop
print(loop_time)

# Measure the time taken by the vectorized approach
vectorized_time <- system.time({
  squared_vectorized <- large_vector^2
})

# Display the time taken by the vectorized approach
print(vectorized_time)

# Compare the performance times
cat("Time taken using a for loop:\n")
print(loop_time)

cat("\nTime taken using vectorized operations:\n")
print(vectorized_time)
