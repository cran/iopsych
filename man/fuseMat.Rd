% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fuse.R
\name{fuseMat}
\alias{fuseMat}
\title{The intercorrelation among items and composites made of these items.}
\usage{
fuseMat(r_mat, key_mat, type = "full")
}
\arguments{
\item{r_mat}{A correlation matrix.}

\item{key_mat}{A matrix with one row for each composite and one column for 
each item contained in r_mat. The value if each element corresponds
to the weight given to an item.}

\item{type}{The type of output desired.}
}
\value{
If type = cxc then a matrix of the intercorrelations between the specified 
        composites are returned. If type = cxr then the intercorrelations 
        between the original item and the specified composites are returned.
        If type = full then all the intercorrelations between both the original items and the specified composites are returned.
}
\description{
The key matrix is used to specify any number of weighted item composites.
A correlation matrix of these composites and the original correlation matrix
is then computed and returned.
}
\examples{
Rxx <- matrix(c(1.00, 0.25,  0.50,  0.61,
                0.25, 1.00,  0.30,  0.10,
                0.50, 0.30,  1.00, -0.30,
                0.61, 0.10, -0.30,  1.00), 4, 4); Rxx

# Single composite
Key <- matrix(c(1, 2, 3, -1), 1, 4); Key

fuseMat(r_mat = Rxx, key_mat = Key)

# Three composites
Key <- matrix(c(1, 2, 3, -1,
                2, 1, 0, -2,
                1, 1, 0,  0), 3, 4, byrow = TRUE)

fuseMat(Rxx, Key)
}
\author{
Allen Goebl and Jeff Jones
}

