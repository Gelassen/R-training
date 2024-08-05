#    - **Task 3.1:** Create a list that contains a numeric vector, a 
#    character vector, and a logical vector. Access each element of 
#    the list.

# Step 1: Create vectors
numeric_vector <- c(1, 2, 3, 4, 5)
character_vector <- c("apple", "banana", "cherry")
logical_vector <- c(TRUE, FALSE, TRUE, FALSE)

# Step 2: Combine them into a list
my_list <- list(numeric_vector, character_vector, logical_vector)
my_named_list <- list(numbers = numeric_vector, fruits = character_vector, logicals = logical_vector)

# Step 3: Access elements by index
numeric_element <- my_list[[1]]
print(numeric_element)  # Output: 1 2 3 4 5

character_element <- my_list[[2]]
print(character_element)  # Output: "apple" "banana" "cherry"

logical_element <- my_list[[3]]
print(logical_element)  # Output: TRUE FALSE TRUE FALSE

# Access elements by name
numeric_element_by_name <- my_named_list$numbers
print(numeric_element_by_name)  # Output: 1 2 3 4 5

character_element_by_name <- my_named_list$fruits
print(character_element_by_name)  # Output: "apple" "banana" "cherry"

logical_element_by_name <- my_named_list$logicals
print(logical_element_by_name)  # Output: TRUE FALSE TRUE FALSE

