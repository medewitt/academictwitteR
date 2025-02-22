% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bind_tweet_jsons.R
\name{bind_tweet_jsons}
\alias{bind_tweet_jsons}
\title{Bind tweets stored as JSON files}
\usage{
bind_tweet_jsons(data_path)
}
\arguments{
\item{data_path}{string, file path to directory of stored tweets data saved as data_\emph{id}.json}
}
\value{
a data.frame
}
\description{
Bind tweets stored as JSON files
}
\examples{
\dontrun{
bind_tweet_jsons(data_path = "data/")
}
}
