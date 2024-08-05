### 1. **Basic Operations and Data Types**
#   - **Task 1.1:** Create variables of different types (numeric, character, 
# logical, and factor) and perform basic operations on them (addition, 
# concatenation, logical comparisons).

# 1. Creating Variables of Different Types
numeric_var <- 10.5
character_var <- "Hello, R!"
logical_var <- TRUE
factor_var <- factor(c("low", "medium", "high", "medium", "low"))

result_numeric <- numeric_var * 10
print(result_numeric)

result_character <- paste(character_var, "How are you?")
print(result_character)

# Logical Comparisons
another_logical_var <- FALSE
result_logical <- logical_var & another_logical_var
print(result_logical)  # Output: FALSE

# Operations on Factors
print(levels(factor_var))  # Output: "high" "low" "medium"
is_medium <- factor_var == "medium"
print(is_medium)  # Output: FALSE TRUE FALSE TRUE FALSE

