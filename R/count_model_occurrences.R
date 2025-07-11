#' Count how often a particular model appears in the collection (ignores parentheses)
#'
#' This function sums the count of a specific model name,
#' ignoring text in parentheses such as (BCNR33).
#'
#' @param df Hot Wheels data frame
#' @param model_name Model name, e.g. "'67 Mustang"
#' @return Number of copies of this model
#' @examples
#' data(example_hotwheels)
#' df <- example_hotwheels
#' df <- standardize_column_names(df)
#' count_model_occurrences(df, "'17 Ford GT")
#' @export
count_model_occurrences <- function(df, model_name) {
  df <- standardize_column_names(df)

  strip_parens <- function(x) {
    x <- gsub("\\s*\\([^)]*\\)", "", x)
    trimws(x)
  }

  df$model_name_clean <- strip_parens(df$model_name)
  model_name_clean <- strip_parens(model_name)

  sum(df$amount_owned[df$model_name_clean == model_name_clean], na.rm = TRUE)
}
