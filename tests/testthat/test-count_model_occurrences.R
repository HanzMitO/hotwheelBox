test_that("count_model_occurrences sums up amounts correctly", {
  library(readr)

  df <- read_csv("fixtures/sample.csv")

  expect_equal(count_model_occurrences(df, "'67 Mustang"),1)
  expect_equal(count_model_occurrences(df, "'71 Mustang Funny Car"), 2)
  expect_equal(count_model_occurrences(df, "Nissan Skyline GT-R"), 5)
  expect_equal(count_model_occurrences(df, "Not Existing"), 0)
})
