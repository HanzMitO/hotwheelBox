test_that("count_color_cars returns correct count for a given color", {
  library(readr)

  df <- read_csv("fixtures/sample.csv")

  expect_equal(count_color_cars(df, "yellow"), 4)
  expect_equal(count_color_cars(df, "sky blue"), 1)
  expect_equal(count_color_cars(df, "night blue"), 0)
})
