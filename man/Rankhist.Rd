\name{Rankhist}
\alias{Rankhist}
\title{Rank histogram for ensemble forecasts}
\description{
  Calculate the rank histogram for an archive of ensemble forecasts and their corresponding verifying observations.
}
\usage{
Rankhist(ens, obs, reduce.bins=1)
}
\arguments{
  \item{ens}{matrix of dimension (N,K). An archive of K-member ensemble forecasts for N time instances.}
  \item{obs}{vector of length N. The corresponding verifying observations.}
  \item{reduce.bins}{number of adjacent bins that will be merged into one bin; has to be a divisor of K+1}
}
\examples{
  # Example:
  ens <- matrix(rnorm(500),100,5)
  obs <- rnorm(100)
  rh <- Rankhist(ens, obs, reduce.bins=2)
}
\references{
Anderson J.L. (1996). A Method for Producing and Evaluating Probabilistic Forecasts from Ensemble Model Integrations. J. Climate, 9, 1518--1530. DOI 10.1175/1520-0442(1996)009%3C1518:AMFPAE%3E2.0.CO;2.

Hammill T.M. (2001). Interpretation of Rank Histograms for Verifying Ensemble Forecasts. Mon. Wea. Rev., 129, 550--560. DOI 10.1175/1520-0493(2001)129%3C0550:IORHFV%3E2.0.CO;2.
}
