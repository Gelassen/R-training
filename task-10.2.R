#  **Task 10.2:** Evaluate the performance of the model 
# using confusion matrix and accuracy metrics.

# Load necessary libraries
library(rpart)
library(caret)

# Split the iris dataset into training and testing sets
set.seed(123)
train_index <- sample(seq_len(nrow(iris)), size = 0.7 * nrow(iris))
iris_train <- iris[train_index, ]
iris_test <- iris[-train_index, ]

# Train a decision tree model
model <- rpart(Species ~ ., data = iris_train, method = "class")

# Predict on the testing set
predictions <- predict(model, iris_test, type = "class")

# Create confusion matrix
confusion_matrix <- confusionMatrix(predictions, iris_test$Species)
print(confusion_matrix)

# Extract overall accuracy from the confusion matrix
accuracy <- confusion_matrix$overall['Accuracy']
print(paste("Accuracy:", round(accuracy, 4)))
