# **Task 4.2:** Export a data frame from R into an Excel file.

# Install and load the writexl package
install.packages("writexl")
library(writexl)

data <- read.csv("data/sample_data.csv")

# Export the data frame to an Excel file
write_xlsx(data, "data/sample_data.xlsx")

print("Data frame exported to 'sample_data.xlsx' successfully.")


# print(Sys.getenv("HOME"))
