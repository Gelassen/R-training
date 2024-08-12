#  - **Task 11.2:** Create a dynamic report using RMarkdown 
# that updates automatically based on new data.

install.packages("rmarkdown")
install.packages("knitr")  # For dynamic report generation

rmarkdown::render("data/task-11.2-report.Rmd")