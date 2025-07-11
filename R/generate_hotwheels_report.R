#' Automatically create an HTML report for your collection
#'
#' @param df Hot Wheels data frame
#' @param output_file Target path of the HTML file
#' @return The path to the generated HTML file
#' @examples
#' data(example_hotwheels)
#' df <- standardize_column_names(example_hotwheels)
#' generate_hotwheels_report(df)
#' @export
generate_hotwheels_report <- function(df, output_file = tempfile(fileext = ".html")) {
  template <- system.file("rmd", "hw_report.Rmd", package = "hotwheelBox")
  if (template == "") {
    stop("Die Report-Vorlage konnte nicht gefunden werden.")
  }

  # Verzeichnis und Dateiname extrahieren
  output_dir <- dirname(output_file)
  output_name <- basename(output_file)

  if (!dir.exists(output_dir)) {
    stop("Das Ausgabeverzeichnis existiert nicht: ", output_dir)
  }

  rmarkdown::render(
    input = template,
    output_file = output_name,
    output_dir = output_dir,
    params = list(data = df),
    envir = new.env(parent = globalenv()),
    quiet = TRUE
  )

  utils::browseURL(file.path(output_dir, output_name))
  return(file.path(output_dir, output_name))
}
