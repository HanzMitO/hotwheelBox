% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/count_model_occurrences.R
\name{count_model_occurrences}
\alias{count_model_occurrences}
\title{Count how often a particular model appears in the collection (ignores parentheses)}
\usage{
count_model_occurrences(df, model_name)
}
\arguments{
\item{df}{Hot Wheels data frame}

\item{model_name}{Model name, e.g. "'67 Mustang"}
}
\value{
Number of copies of this model
}
\description{
This function sums the count of a specific model name,
ignoring text in parentheses such as (BCNR33).
}
\examples{
data(example_hotwheels)
df <- example_hotwheels
df <- standardize_column_names(df)
count_model_occurrences(df, "'17 Ford GT")
}
