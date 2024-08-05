# R-training
A set of task to self-train myself in R by solving hem

Here’s a set of tasks to help you self-train in R. These tasks cover different areas of the language and increase in complexity. By the end, you'll have experience with basic data types, data manipulation, visualization, and more advanced statistical analysis.

### 1. **Basic Operations and Data Types**
   - **Task 1.1:** Create variables of different types (numeric, character, logical, and factor) and perform basic operations on them (addition, concatenation, logical comparisons).
   - **Task 1.2:** Create a vector containing numbers 1 to 100. Use vectorized operations to calculate the square of each number in the vector.

### 2. **Control Structures**
   - **Task 2.1:** Write a loop that prints the numbers from 1 to 20.
   - **Task 2.2:** Create a function that takes a number as input and returns "Even" if the number is even and "Odd" if the number is odd.

### 3. **Working with Data Structures**
   - **Task 3.1:** Create a list that contains a numeric vector, a character vector, and a logical vector. Access each element of the list.
   - **Task 3.2:** Create a matrix of 3x3 filled with numbers from 1 to 9. Calculate the sum of the diagonal elements.
   - **Task 3.3:** Create a data frame with columns `Name`, `Age`, and `Gender`. Add 5 rows of data and calculate the average age.

### 4. **Data Import/Export**
   - **Task 4.1:** Create a CSV file containing sample data. Read this file into R and convert it into a data frame.
   - **Task 4.2:** Export a data frame from R into an Excel file.

### 5. **Data Manipulation**
   - **Task 5.1:** Use the `dplyr` package to filter rows, select columns, and arrange data in a data frame.
   - **Task 5.2:** Using a built-in dataset (e.g., `mtcars`), group the data by a categorical variable and summarize it (e.g., calculate the mean `mpg` for each group).

### 6. **Data Visualization**
   - **Task 6.1:** Create a scatter plot of `mpg` vs. `hp` from the `mtcars` dataset using the `ggplot2` package. Add a trend line.
   - **Task 6.2:** Create a bar plot showing the count of each `Species` in the `iris` dataset.

### 7. **Statistical Analysis**
   - **Task 7.1:** Perform a simple linear regression using the `lm()` function with `mpg` as the dependent variable and `hp` as the independent variable in the `mtcars` dataset.
   - **Task 7.2:** Conduct a t-test to compare the `Sepal.Length` between two species in the `iris` dataset.

### 8. **Advanced Data Manipulation**
   - **Task 8.1:** Use `tidyr` to transform the `mtcars` dataset from wide format to long format.
   - **Task 8.2:** Merge two data frames using the `merge()` function.

### 9. **Time Series Analysis**
   - **Task 9.1:** Create a time series object in R using monthly data over the last two years. Plot the time series.
   - **Task 9.2:** Decompose the time series into trend, seasonal, and irregular components.

### 10. **Machine Learning**
   - **Task 10.1:** Split the `iris` dataset into training and testing sets. Train a simple decision tree model using the `rpart` package and predict the species on the testing set.
   - **Task 10.2:** Evaluate the performance of the model using confusion matrix and accuracy metrics.

### 11. **RMarkdown and Reporting**
   - **Task 11.1:** Create an RMarkdown document that includes text, R code, and plots. Knit it into an HTML or PDF report.
   - **Task 11.2:** Create a dynamic report using RMarkdown that updates automatically based on new data.

### 12. **Shiny App Development**
   - **Task 12.1:** Build a simple Shiny app that takes input from the user and displays a plot based on the input.
   - **Task 12.2:** Enhance your Shiny app by adding reactive elements and custom styling using CSS.

### 13. **Database Interaction**
   - **Task 13.1:** Connect to an SQLite database using `RSQLite`, query some data, and import it into R as a data frame.
   - **Task 13.2:** Write an R script that inserts data from a data frame into an SQL table.

### 14. **Advanced Statistical Analysis**
   - **Task 14.1:** Perform a principal component analysis (PCA) on the `iris` dataset and interpret the results.
   - **Task 14.2:** Conduct a clustering analysis (e.g., k-means) on the `mtcars` dataset and visualize the clusters.

### 15. **Performance Optimization**
   - **Task 15.1:** Compare the performance of a loop vs. vectorized operations in R. Measure the time taken for both approaches using the `system.time()` function.
   - **Task 15.2:** Use the `parallel` package to parallelize a computation and compare its performance with the non-parallel version.

Each of these tasks builds on the previous ones, covering a broad range of topics and functionalities in R. By the time you complete all these tasks, you should have a solid foundation in R programming.