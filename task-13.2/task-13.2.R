# Install and load the RSQLite package
# install.packages("RSQLite")
library(RSQLite)

# Create or connect to an SQLite database
con <- dbConnect(RSQLite::SQLite(), dbname = "my_database.db")

# Create a sample data frame
employee_data <- data.frame(
  id = 1:3,
  name = c("John Doe", "Jane Smith", "Alice Johnson"),
  age = c(30, 25, 35),
  department = c("Sales", "Marketing", "HR"),
  stringsAsFactors = FALSE
)

# Write the data frame to the SQLite database
dbWriteTable(con, "employees", employee_data, overwrite = TRUE, row.names = FALSE)

# Query the 'employees' table to verify the inserted data
result <- dbGetQuery(con, "SELECT * FROM employees")

# Print the result to see the data
print(result)

# Disconnect from the SQLite database
dbDisconnect(con)
