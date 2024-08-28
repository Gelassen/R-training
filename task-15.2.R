# Load the parallel package
library(parallel)

# Set seed for reproducibility
set.seed(123)

# Create a large numeric vector with 10 million random numbers
large_vector <- runif(10^7)

# Measure the time taken by the non-parallel approach
non_parallel_time <- system.time({
  squared_non_parallel <- large_vector^2
})

# Display the time taken by the non-parallel approach
print(non_parallel_time)

# Detect the number of available cores
num_cores <- detectCores()

# Measure the time taken by the parallel approach
parallel_time <- system.time({
  # Use mclapply to perform the computation in parallel
  squared_parallel <- unlist(mclapply(large_vector, function(x) x^2, mc.cores = num_cores))
})

# Display the time taken by the parallel approach
print(parallel_time)

# Compare the performance times
cat("Time taken using non-parallel computation:\n")
print(non_parallel_time)

cat("\nTime taken using parallel computation:\n")
print(parallel_time)
