% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validate_lifetable.R
\name{check_mx_ax_qx}
\alias{check_mx_ax_qx}
\title{Check two of mx, ax, qx}
\usage{
check_mx_ax_qx(dt)
}
\arguments{
\item{dt}{[\code{data.table()}]\cr Data to check for mx, ax, and/or qx. Must
also have 'age_length' column.}
}
\value{
\code{dt} with input columns plus any of 'mx', 'ax', and 'qx' that is
missing in input. Or, returns error if input has fewer than two of these
parameters.
}
\description{
Helper function to check a data.table for two of mx, ax, and qx
and compute the missing parameter if one is missing.
}
\details{
Uses \code{\link[=mx_ax_to_qx]{mx_ax_to_qx()}}, \code{\link[=qx_ax_to_mx]{qx_ax_to_mx()}}, or \code{\link[=mx_qx_to_ax]{mx_qx_to_ax()}} function
to complete the set of three life table parameters.
}
\examples{
dt <- data.table::data.table(
  age_start = c(0, 1, 5, 10),
  age_length = c(1, 4, 5, 5),
  mx = c(0.009, 0.0004, 0.00015, 0.00019),
  ax = c(0.068, 1.626, 2.5, 2.5)
)
dt <- check_mx_ax_qx(dt)

}
