#  **Task 10.1:** Split the `iris` dataset into training and testing sets. 
#  Train a simple decision tree model using the `rpart` package and 
#  predict the species on the testing set.

# Step 1: Install and load the required packages
install.packages("rpart", lib = "~/R/library")
library(rpart)
install.packages("caret", lib = "~/R/library")
library(caret)

# Step 2: Split the iris dataset into training and testing sets
set.seed(123)  # For reproducibility
trainIndex <- createDataPartition(iris$Species, p = 0.8, 
                                  list = FALSE, 
                                  times = 1)
iris_train <- iris[trainIndex, ]
iris_test <- iris[-trainIndex, ]

# Step 3: Train a decision tree model using the rpart package
model <- rpart(Species ~ ., data = iris_train, method = "class")

# Step 4: Predict the species on the testing set
predictions <- predict(model, iris_test, type = "class")

# Show the first few predictions
head(predictions)

# Step 5: Evaluate the model's performance (optional)
confusionMatrix(predictions, iris_test$Species)
