% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_geo_tweetsv2.R
\name{get_geo_tweets}
\alias{get_geo_tweets}
\title{Get tweets for query containing geo information}
\usage{
get_geo_tweets(
  query,
  start_tweets,
  end_tweets,
  bearer_token,
  file = NULL,
  data_path = NULL,
  bind_tweets = TRUE,
  verbose = TRUE
)
}
\arguments{
\item{query}{string or character vector, search query or queries}

\item{start_tweets}{string, starting date}

\item{end_tweets}{string, ending date}

\item{bearer_token}{string, bearer token}

\item{file}{string, name of the resulting RDS file}

\item{data_path}{string, if supplied, fetched data can be saved to the designated path as jsons}

\item{bind_tweets}{If \code{TRUE}, tweets captured are bound into a data.frame for assignment}

\item{verbose}{If \code{FALSE}, query progress messages are suppressed}
}
\value{
a data.frame
}
\description{
This function collects tweets containing strings or
hashtags between specified date ranges that also contain Tweet-specific geolocation data provided by the
Twitter user. This can be either a location in the form of a Twitter place, with the corresponding display
name, geo polygon, and other fields, or in rare cases, a geo lat-long coordinate. Note: Operators matching
on place (Tweet geo) will only include matches from original tweets. Tweet-level data is stored in a data/
path as a series of JSONs beginning "data_"; User-level data is stored as a series of JSONs beginning "users_".
If a filename is supplied, this function will save the result as a RDS file, otherwise it will return the results as a dataframe.
}
\examples{
\dontrun{
bearer_token <- "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
get_geo_tweets("protest", "2020-01-01T00:00:00Z", "2020-01-05T00:00:00Z", 
               bearer_token, data_path = "data/")
}
}
