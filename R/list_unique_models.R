#' List of all different models in the Hot Wheels collection
#'
#' Returns an alphabetically sorted list of all unique model names.
#'
#' @param df Hot Wheels data frame
#' @return A character vector with all unique model names
#' @examples
#' data(example_hotwheels)
#' df <- standardize_column_names(example_hotwheels)
#' list_unique_models(df)
#'
#' @export
list_unique_models <- function(df) {
  df <- standardize_column_names(df)

  unique_models <- unique(df$model_name)
  unique_models <- unique_models[!is.na(unique_models)]
  unique_models <- sort(unique_models)

  return(unique_models)
}
