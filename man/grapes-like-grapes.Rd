% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/like.R
\name{\%like\%}
\alias{\%like\%}
\title{SQL Style LIKE}
\usage{
var \%like\% pattern
}
\arguments{
\item{var}{A variable/column.}

\item{pattern}{A search pattern.}
}
\description{

}
\examples{
state.name[state.name \%like\% 'or']
state.name[state.name \%LIKE\% 'or']
state.name[state.name \%slike\% 'or'] ## No Oregon
}
