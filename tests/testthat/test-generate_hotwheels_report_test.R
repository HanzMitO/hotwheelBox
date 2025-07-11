test_that("generate_hotwheels_report creates a report in a fixed location", {
  library(readr)

  df <- standardize_column_names(read_csv("fixtures/sample.csv"))
  output_path <- "test-output/my_hotwheels_report.html"

  # Verzeichnis anlegen
  dir.create(dirname(output_path), recursive = TRUE, showWarnings = FALSE)

  generate_hotwheels_report(df, output_path)

  expect_true(file.exists(output_path))
  expect_gt(file.info(output_path)$size, 0)

  #unlink(output_path)
})
