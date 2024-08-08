# **Task 4.2:** Export a data frame from R into an Excel file.

dir.create("~/R/library", recursive = TRUE)


# Install and load the writexl package
install.packages("writexl", lib = "~/R/library")

# print("list.files command")
# list.files("~/R/library")

# print(".libPaths command")
# .libPaths()

# library(writexl, lib.loc = "~/R/library")

library(writexl)

data <- read.csv("data/sample_data.csv")

# Export the data frame to an Excel file
write_xlsx(data, "data/sample_data.xlsx")

print("Data frame exported to 'sample_data.xlsx' successfully.")


# print(Sys.getenv("HOME"))
