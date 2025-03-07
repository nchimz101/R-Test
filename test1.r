# Set 1: Login data with ID, Name, and Verification status
data1 <- data.frame(
  ID = c(1, 2),
  Name = c("Alice", "Bob"),
  Verified = c(TRUE, FALSE)
)

# Set 2: Matrix of ID and Password
data2 <- data.frame(
  ID = c(1, 2),
  Password = c("09122018", "18122022")
)

# Merge the two sets of data by ID
merged_data <- merge(data1, data2, by = "ID")

# Print the merged table
print(merged_data)
