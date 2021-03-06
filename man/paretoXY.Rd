% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pareto.R
\name{paretoXY}
\alias{paretoXY}
\title{Computes data needed for a XY Pareto plot.}
\usage{
paretoXY(r_mat, x_col, y_col, d_vec, gen = 100, pop = 100,
  pred_lower = rep(-2, length(x_col)), pred_upper = rep(2, length(x_col)))
}
\arguments{
\item{r_mat}{A correlation matrix.}

\item{x_col}{A vector of columns representing predictor variables.}

\item{y_col}{A vector of columns representing criterion variables.}

\item{d_vec}{A vector of d scores.}

\item{gen}{The number of iterations used by the algorithim.}

\item{pop}{The population or number of cases used by the algorithim.}

\item{pred_lower}{The minimum weight allowed for each predictor.}

\item{pred_upper}{The maximum weight allowed for each predictor.}
}
\value{
\itemize{
            \item{betas}{A matrix of beta weights for each criteria weight}
            \item{mr_d}{A matrix of multiple correlations or d values 
                        corresponding to each row of beta weights.}
            \item{pareto_optimal}{A vector indicating whether each value is
                                  pareto optimal}
         }
}
\description{
Computes data needed for a XY Pareto plot.
}
\examples{
data(dls2007)
dat <- dls2007
r_mat <- dat[1:6, 2:7]
x_col <- 1:4 
y_col <- 5:6
d_vec <- dat[1:4, 1]

paretoXY(r_mat=r_mat, x_col=1:4, y_col=5, d_vec=d_vec, pred_lower=c(0,0,0,0))
paretoXY(r_mat=r_mat, x_col=1:4, y_col=c(5,6))
}
\author{
Allen Goebl Jeff Jones
}

