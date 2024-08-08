#    **Task 5.2:** Using a built-in dataset (e.g., `mtcars`), group the data by a 
#    categorical variable and summarize it (e.g., calculate the mean `mpg` for each group).

install.packages("dplyr", lib = "~/R/library")
library(dplyr)

# View the first few rows of the mtcars dataset
head(mtcars)


summary_data <- mtcars %>%
    group_by(cyl) %>%
    summarize(mean_mpg = mean(mpg))

print(summary_data)

total_summary_data <- mtcars %>%
    group_by(cyl) %>%
    summarize(
        mean_mpg = mean(mpg),
        mean_hp = mean(hp),
        count = n()
    )

print(total_summary_data)