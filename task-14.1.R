# **Task 14.1:** Perform a principal component analysis (PCA) on the `iris` dataset and interpret the results.

# Load the required library
library(ggplot2)

# Load the iris dataset
data(iris)

# View the first few rows of the iris dataset
head(iris)

# Remove the 'Species' column (non-numeric) for PCA
iris_numeric <- iris[, 1:4]

# Perform PCA
pca_result <- prcomp(iris_numeric, center = TRUE, scale. = TRUE)

# View a summary of the PCA result
summary(pca_result)

# Print the PCA results
print(pca_result)

# View the proportion of variance explained by each principal component
summary(pca_result)$importance

# Create a biplot of the first two principal components
biplot(pca_result, scale = 0)

# Create a data frame with the PCA scores
pca_data <- data.frame(pca_result$x)

# Add the Species column back to the PCA data
pca_data$Species <- iris$Species

# Plot the PCA results with ggplot2
ggplot(pca_data, aes(x = PC1, y = PC2, color = Species)) +
  geom_point(size = 2) +
  labs(title = "PCA of Iris Dataset",
       x = "Principal Component 1",
       y = "Principal Component 2") +
  theme_minimal()

