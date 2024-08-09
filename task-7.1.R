# **Task 7.1:** Perform a simple linear regression using the `lm()` 
# function with `mpg` as the dependent variable and `hp` as the 
# independent variable in the `mtcars` dataset.

# Load the mtcars dataset
data(mtcars)

# Perform simple linear regression with mpg as the dependent variable and hp as the independent variable
model <- lm(mpg ~ hp, data = mtcars)

# Display the summary of the model
summary(model)
