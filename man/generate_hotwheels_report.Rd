% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_hotwheels_report.R
\name{generate_hotwheels_report}
\alias{generate_hotwheels_report}
\title{Automatically create an HTML report for your collection}
\usage{
generate_hotwheels_report(df, output_file = tempfile(fileext = ".html"))
}
\arguments{
\item{df}{Hot Wheels data frame}

\item{output_file}{Target path of the HTML file}
}
\value{
The path to the generated HTML file
}
\description{
Automatically create an HTML report for your collection
}
\examples{
data(example_hotwheels)
df <- standardize_column_names(example_hotwheels)
generate_hotwheels_report(df)
}
