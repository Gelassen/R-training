# **Task 8.2:** Merge two data frames using the `merge()` function.

# Create sample data frames
df1 <- data.frame(
  ID = c(1, 2, 3, 4),
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 35, 40)
)

df2 <- data.frame(
  ID = c(3, 4, 5, 6),
  Gender = c("F", "M", "M", "F"),
  City = c("New York", "Los Angeles", "Chicago", "Houston")
)

# Merge the data frames based on the "ID" column (inner join by default)
merged_df <- merge(df1, df2, by = "ID")

# View the merged data frame
print(merged_df)
