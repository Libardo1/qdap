% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/random_sent.R
\name{random_sent}
\alias{random_data}
\alias{random_sent}
\title{Generate Random Dialogue Data}
\usage{
random_sent(n = 10, len = 14, range = len - 1,
  dictionary = qdapDictionaries::Top200Words, endmark.fun = function()
  sample(c(".", "!", "|", "?"), 1, prob = c(0.85, 0.05, 0.05, 0.05)))

random_data(n = 10, ..., n.people = 10, ages = 7:10,
  people.names = unique(tolower(qdapDictionaries::NAMES[[1]])))
}
\arguments{
\item{n}{Number of sentences to create.}

\item{len}{Average length of sentences (in words).}

\item{range}{Range around \code{len} that number of words may vary.  This may
be a recycled single integer vector or an integer vector of length 2.}

\item{dictionary}{A dictionary of words to sample from.}

\item{endmark.fun}{A function to create random end marks.}

\item{n.people}{An integer of the number of people to include in the sample
(number of people is sampled from; if \code{n} is smaller not all people may
be included).}

\item{ages}{The possible ages to choose from (numeric).}

\item{people.names}{A vector of names to choose from at least as large as
\code{n.people}.}

\item{\ldots}{Other arguments passed to \code{random_sent}}
}
\value{
\code{random_sent} - Returns a random vector of sentence strings.

\code{random_data} - Returns a \code{\link[base]{data.frame}} of
people, dialogue, and demographic variables of the class \code{sent_split}.
}
\description{
\code{random_sent} - Generates a random sample of sentences (sentences are
sampled at the word level and there for are likely nonsensical).

\code{random_data} - Generate random dialogue, people, and demographic
variables
}
\examples{
\dontrun{
random_sent()
random_sent(200, 10)

dict <- sort(unique(bag_o_words(pres_debates2012[["dialogue"]])))
random_sent(dictionary=dict)

random_data()
random_data(ages = seq(10, 20, by = .5))
random_data(50) \%&\% word_stats(person)
random_data(100) \%&\% word_stats(list(race, sex))
random_data(dictionary = dict)
}
}
\keyword{random}
\keyword{sample}
\keyword{sentence}

