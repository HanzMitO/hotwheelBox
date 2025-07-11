test_that("standardize_column_names converts names to snake_case", {

  df <- read_csv("fixtures/sample.csv")


  df_clean <- standardize_column_names(df)

  expect_equal(names(df_clean), c(
    "link", "amount_owned", "year", "collector", "seriesnumber",
    "model_name", "series", "color", "tampo", "base_color",
    "base_type", "window_color", "interior_color", "wheel_type", "toy",
    "assortment", "country", "notes", "case_letter", "base_codes",
    "price", "personal_notes", "personal_lists"
  ))
})
