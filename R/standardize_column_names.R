#' Standardize Column Names
#'
#' Converts column names to lower case and replaces spaces with underscores.
#'
#' @param df A data frame whose column names should be standardized.
#' @return The same data frame with cleaned column names.
#' @examples
#' data(example_hotwheels)
#' df <- standardize_column_names(example_hotwheels)
#' @export
#' @importFrom magrittr %>%

standardize_column_names <- function(df) {
  if (!is.data.frame(df)) {
    stop("Input must be a data frame.")
  }
  new_names <- c(
    "link", "amount_owned", "year", "collector", "seriesnumber",
    "model_name", "series", "color", "tampo", "base_color",
    "base_type", "window_color", "interior_color", "wheel_type", "toy",
    "assortment", "country", "notes", "case_letter", "base_codes",
    "price", "personal_notes", "personal_lists"
  )

  if (length(new_names) != ncol(df)) {
    stop("Number of new names does not match number of columns in data frame")
  }

  names(df)[seq_along(new_names)] <- new_names
  return(df)
}
