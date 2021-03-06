% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/wfm.R
\name{summary.wfdf}
\alias{summary.wfdf}
\title{Summarize a wfdf object}
\usage{
\method{summary}{wfdf}(object, ...)
}
\arguments{
\item{object}{The wfdf object}

\item{\ldots}{Ignored.}
}
\description{
Summarize a wfdf object with familiar tm package look.
}
\details{
\strong{Non-/sparse entries} is the ratio of non-zeros to zero
counts.  \strong{Sparsity} is that ratio represented as a percent.
\strong{Hapax legomenon} is the number(percent) of terms that appear only
once in the dialogue. \strong{Dis legomenon} is the number(percent) of terms
that appear exactly two times once.
}
\examples{
\dontrun{
x <- with(DATA, wfdf(state, list(sex, adult)))
summary(x)
}
}

