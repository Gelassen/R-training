# **Task 8.1:** Use `tidyr` to transform the `mtcars` 
# dataset from wide format to long format.

# Install tidyr if not already installed
install.packages("tidyr", lib = "~/R/library")

# Load the tidyr package
library(tidyr)


# Load the mtcars dataset
data(mtcars)

# View the first few rows of the dataset
head(mtcars)

# Transform the mtcars dataset from wide to long format
mtcars_long <- mtcars %>%
  pivot_longer(cols = everything(),  # Specify all columns to be transformed
               names_to = "variable",  # The name of the new column for variable names
               values_to = "value")    # The name of the new column for values

# View the first few rows of the long format dataset
head(mtcars_long)
