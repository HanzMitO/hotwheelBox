test_that("count_brand_occurrences works correctly", {
  library(readr)
  df <- read_csv("fixtures/sample.csv")

  brand_names <- c(
    "FORD", "NISSAN", "PORSCHE", "HONDA", "MAZDA", "BMW", "TOYOTA", "MERCEDES-BENZ", "ACURA",
    "ASTON MARTIN", "BUGATTI", "CADILLAC", "DODGE", "KOENIGSEGG", "LAMBORGHINI", "MCLAREN",
    "PAGANI", "AUDI", "BENTLEY", "BUICK", "DATSUN", "DMC", "FIAT", "JAGUAR", "PLYMOUTH",
    "PROTON", "SUBARU", "TRIUMPH", "VOLKSWAGEN"
  )

  brand_counts <- c(
    12, 11, 8, 5, 5, 4, 4, 3, 2, 2, 2, 2, 2, 2, 2, 2,
    2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,1
  )

  expected <- brand_table <- data.frame(
    brand = brand_names,
    count = as.integer(brand_counts),
    row.names = NULL
  )

  # Funktion ausführen
  result <- count_brand_occurrences(df)
  expected <- setNames(as.integer(brand_counts), brand_names)
  expect_identical(result, expected)
})
