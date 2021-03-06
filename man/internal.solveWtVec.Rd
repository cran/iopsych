% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regression.R
\name{.solveWtVec}
\alias{.solveWtVec}
\title{Correlation between weighted predictor composite and criterion.}
\usage{
.solveWtVec(wt, rxx, rxy)
}
\arguments{
\item{wt}{A vector of predictor weights or a list of vectors.}

\item{rxx}{A matrix of predictor intercorrelations.}

\item{rxy}{A vector of predictor, criterion correlations.}
}
\value{
A correlation coefficent.
}
\description{
Correlation between weighted predictor composite and criterion.
}
\examples{
library(iopsych)
data(dls2007)
dat <- dls2007[1:6, 2:7]
rxx <- dat[1:4, 1:4]
rxy <- dat[1:4, 5]
wt1 <- c(1,1,1,1)
wt2 <- c(1,2,3,4)
wt_list <- list(wt1, wt2)

#.solveWtVec(wt=wt1, rxx=rxx, rxy=rxy)
#.solveWtVec(wt=wt2, rxx=rxx, rxy=rxy)
#.solveWtVec(wt=wt_list, rxx=rxx, rxy=rxy)
}
\author{
Allen Goebl Jeff Jones
}
\keyword{internal}

