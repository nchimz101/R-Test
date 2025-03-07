# Function to generate Pascal's Triangle
generate_pascals_triangle <- function(rows) {
  triangle <- matrix(0, nrow = rows, ncol = rows)
  
  # Iterate through each row
  for (i in 1:rows) {
    # Set the first and last element of each row to 1
    triangle[i, 1] <- 1
    triangle[i, i] <- 1
    
    # Fill the intermediate elements
    for (j in 2:(i - 1)) {
      triangle[i, j] <- triangle[i - 1, j - 1] + triangle[i - 1, j]
    }
  }
  
  # Print the triangle
  for (i in 1:rows) {
    print(triangle[i, 1:i])
  }
}

# Generate Pascal's Triangle with 5 rows
generate_pascals_triangle(5)
