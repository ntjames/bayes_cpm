% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getCDF.R
\name{getCDF}
\alias{getCDF}
\title{Get conditional CDF from fit Bayes CPM model}
\usage{
getCDF(fit, newdata, summ = TRUE, ...)
}
\arguments{
\item{fit}{output list from bayes_cpm() containing 'stanfit' object and 'standata' data used to fit model}

\item{newdata}{a data frame with columns for each predictor used in the model}

\item{summ}{logical. Should the function return a summary of the posterior
conditional CDF? (default=TRUE)}
}
\value{
posterior conditional CDF summary (summ=TRUE) or values (summ=FALSE)
}
\description{
Calculate the posterior conditional CDF from a Bayes CPM fit
}
\examples{
fit <- bayes_cpm(y~x1+x2, data=dat)
getCDF(fit, data.frame(x1=c(0,1),x2=c(1,1)))
}
