#  **Task 7.2:** Conduct a t-test to compare the `Sepal.Length` 
#  between two species in the `iris` dataset.

# Load the iris dataset
data(iris)

# Subset the data for the two species
species_data <- subset(iris, Species %in% c("setosa", "versicolor"))

# Perform the t-test
t_test_result <- t.test(Sepal.Length ~ Species, data = species_data)

# View the result of the t-test
print(t_test_result)
