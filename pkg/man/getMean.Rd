% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getMean.R
\name{getMean}
\alias{getMean}
\title{Get conditional mean from fit Bayes CPM model}
\usage{
getMean(fit, newdata, summ = TRUE, ...)
}
\arguments{
\item{fit}{output list from bayes_cpm() containing 'stanfit' object and 'standata' data used to fit model}

\item{newdata}{a data frame with columns for each predictor used in the model}

\item{summ}{logical. Should the function return a summary of the posterior
conditional mean? (default=TRUE)}
}
\value{
posterior conditional mean summary (summ=TRUE) or values (summ=FALSE)
}
\description{
Calculate the posterior conditional mean from a Bayes CPM fit
}
\examples{
fit <- bayes_cpm(y~x1+x2, data=dat)
getMean(fit, data.frame(x1=c(0,1),x2=c(1,1)))
}
