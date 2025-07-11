#' gives the number of cars with a specific colure
#'
#' gives the number of cars with a specific colure.
#' @param df data set with hotwheels from the side: https://collecthw.com/
#' @param color A string representing the color to count (case-insensitive).
#' @return The nummber of cars for a specific colure
#' @examples
#' df <- standardize_column_names(example_hotwheels)
#' count_color_cars(df, "red")
#' @export
#'
count_color_cars <- function(df,color){
  df <- standardize_column_names(df)
  return(sum(tolower(df$color) == tolower(color), na.rm = TRUE))

}
