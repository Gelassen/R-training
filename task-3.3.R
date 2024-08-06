#    - **Task 3.3:** Create a data frame with columns `Name`, `Age`, 
# and `Gender`. Add 5 rows of data and calculate the average age.

# Step 1: Create the data frame
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(25, 30, 22, 29, 35),
  Gender = c("Female", "Male", "Male", "Male", "Female")
)

# Print the data frame
print("The data frame is:")
print(data)


average_age <- mean(data$Age)

print(paste("Average age is ", average_age))