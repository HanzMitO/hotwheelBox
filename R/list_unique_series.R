#' List of all different series in the Hot Wheels collection
#'
#' Returns a list of all different series names.
#'
#' @param df Hot Wheels data frame
#' @return A character vector with all unique series names
#' @examples
#' data(example_hotwheels)
#' df <- standardize_column_names(example_hotwheels)
#' list_unique_series(df)
#'
#' @export
list_unique_series <- function(df) {
  df <- standardize_column_names(df)
  unique_series <- unique(df$series)
  unique_series <- unique_series[!is.na(unique_series)]
  return(unique_series)
}
