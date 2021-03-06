% Generated by roxygen2 (4.1.0.9001): do not edit by hand
% Please edit documentation in R/re_functions2.r
\name{get.all.psi}
\alias{get.all.psi}
\title{calculates the psi matrix for a pop object}
\usage{
get.all.psi(pop, n = 2, subset = NULL, resampling = "hyper")
}
\arguments{
\item{pop}{population data object from make.pop}

\item{n}{the sample size which we downsample to}

\item{resampling}{mode of resampling. Currently, only
hyper is supported}
}
\value{
A n x n matrix of psi values
}
\description{
calculates the psi matrix for a pop object
}
\examples{


example.data <- system.file("examples/example_snp.snapp",
                            package="rangeExpansion")
example.coords <- system.file("examples/example_coordinates.csv",
                            package="rangeExpansion")

region <- list(NULL, c("REGION_1", "REGION_2"))
ploidy <- 2
raw.data <- load.data.snapp(example.data,
                            example.coords,
                            sep=',', ploidy=ploidy)                                

pop <- make.pop(raw.data, ploidy)
psi <- get.all.psi(pop)

res <- run.regions(region=region, pop=pop, psi=psi, xlen=10,ylen=20)

summary(res)
plot(res)
}

