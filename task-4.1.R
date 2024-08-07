# **Task 4.1:** Create a CSV file containing sample data. 
# Read this file into R and convert it into a data frame.

# Define sample data
sample_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(25, 30, 22, 29, 35),
  Gender = c("Female", "Male", "Male", "Male", "Female")
)

# Write the data frame to a CSV file
write.csv(sample_data, "data/sample_data.csv", row.names = FALSE)

print("CSV file 'sample_data.csv' created successfully.")


# Read the CSV file into R
data <- read.csv("data/sample_data.csv")

# Print the data frame
print("Data frame created from the CSV file:")
print(data)
