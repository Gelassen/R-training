# **Task 3.2:** Create a matrix of 3x3 filled with numbers from 1 to 9. 
#  Calculate the sum of the diagonal elements.

# Step 1: Create the 3x3 matrix
matrix_3x3 <- matrix(1:9, nrow = 3, ncol = 3)

# Print the matrix
print("The 3x3 matrix is:")
print(matrix_3x3)

# Step 2: Calculate the sum of the diagonal elements
diagonal_elements <- diag(matrix_3x3)
sum_diagonal <- sum(diagonal_elements)

# Print the sum of the diagonal elements
print("The sum of the diagonal elements is:")
print(sum_diagonal)
