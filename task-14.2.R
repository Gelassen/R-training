# Load the required library
library(ggplot2)

# Load the mtcars dataset
data(mtcars)

# View the first few rows of the mtcars dataset
head(mtcars)

# Standardize the data (scaling each variable to have mean = 0 and standard deviation = 1)
mtcars_scaled <- scale(mtcars)

# View the first few rows of the scaled data
head(mtcars_scaled)

# Set a seed for reproducibility
set.seed(123)

# Perform k-means clustering with 3 clusters
kmeans_result <- kmeans(mtcars_scaled, centers = 3, nstart = 25)

# Print the k-means result
print(kmeans_result)

# Calculate total within-cluster sum of squares (WSS) for different numbers of clusters
wss <- sapply(1:10, function(k) {
  kmeans(mtcars_scaled, centers = k, nstart = 25)$tot.withinss
})

# Plot the elbow curve
plot(1:10, wss, type = "b", pch = 19, frame = FALSE,
     xlab = "Number of Clusters K",
     ylab = "Total Within-Clusters Sum of Squares")

# Perform PCA to reduce data to two dimensions for visualization
pca_result <- prcomp(mtcars_scaled)

# Create a data frame with PCA results and cluster assignments
pca_data <- data.frame(pca_result$x[, 1:2])
pca_data$Cluster <- as.factor(kmeans_result$cluster)

# Plot the clusters using ggplot2
ggplot(pca_data, aes(x = PC1, y = PC2, color = Cluster)) +
  geom_point(size = 3) +
  labs(title = "K-Means Clustering of mtcars Dataset",
       x = "Principal Component 1",
       y = "Principal Component 2") +
  theme_minimal()
