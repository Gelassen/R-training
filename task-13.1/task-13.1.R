# Install RSQLite if it's not already installed
install.packages("RSQLite", lib = "~/R/library")

# Load the RSQLite library
library(RSQLite)

# Create or connect to an SQLite database
# This creates a new SQLite database file called 'my_database.db' in the working directory
con <- dbConnect(RSQLite::SQLite(), dbname = "my_database.db")

# Create a sample table 'employees' in the SQLite database
dbExecute(con, "
  CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    department TEXT
  )
")

# Insert sample data into the 'employees' table
dbExecute(con, "INSERT INTO employees (name, age, department) VALUES ('John Doe', 30, 'Sales')")
dbExecute(con, "INSERT INTO employees (name, age, department) VALUES ('Jane Smith', 25, 'Marketing')")
dbExecute(con, "INSERT INTO employees (name, age, department) VALUES ('Alice Johnson', 35, 'HR')")

# Write a SQL query to fetch data from the 'employees' table
query <- "SELECT * FROM employees"

# Execute the query and fetch the data into an R data frame
employees_df <- dbGetQuery(con, query)

# Print the data frame to see the results
print(employees_df)

# Disconnect from the SQLite database
dbDisconnect(con)

