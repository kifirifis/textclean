% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/replace_email.R
\name{replace_email}
\alias{replace_email}
\title{Replace Email Addresses}
\usage{
replace_email(x, pattern = qdapRegex::grab("rm_email"), replacement = "", ...)
}
\arguments{
\item{x}{The text variable.}

\item{pattern}{Character time regex string to be matched in the given 
character vector.}

\item{replacement}{A function to operate on the extracted matches or a 
character string which is a replacement for the matched pattern.}

\item{\ldots}{ignored.}
}
\value{
Returns a vector with email addresses replaced.
}
\description{
Replaces email addresses.
}
\examples{
x <- c(
    "fred is fred@foo.com and joe is joe@example.com - but @this is a", 
    "twitter handle for twit@here.com or foo+bar@google.com/fred@foo.fnord", 
    "hello world", 
    NA
)

replace_email(x)
replace_email(x, replacement = '<<EMAIL>>')
replace_email(x, replacement = '<a href="mailto:$1" target="_blank">$1</a>')

## Replacement with a function
replace_email(x, 
    replacement = function(x){
        sprintf('<a href="mailto:\%s" target="_blank">\%s</a>', x, x)
    }
)


replace_email(x, 
    replacement = function(x){
        gsub('@.+$', ' {{at domain}}', x)
    }
)
}
