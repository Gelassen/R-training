# **Task 5.1:** Use the `dplyr` package to filter rows, 
# select columns, and arrange data in a data frame.

install.packages("dplyr", lib = "~/R/library")
library(dplyr)

# Create a sample data frame
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(25, 30, 22, 29, 35),
  Gender = c("Female", "Male", "Male", "Male", "Female"),
  Score = c(85, 90, 78, 88, 92)
)

filtered_data <- filter(data, Age > 25)
print(filtered_data)

selected_data <- select(data, Name, Score)
print(selected_data)

arranged_data <- arrange(data, desc(Score))
print(arranged_data)

final_data <- data %>%
    filter(Age > 25) %>%
    select(Name, Score) %>%
    arrange(desc(Score))

print(final_data)