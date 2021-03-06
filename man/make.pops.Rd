% Generated by roxygen2 (4.1.0.9001): do not edit by hand
% Please edit documentation in R/re_functions2.r
\name{make.pops}
\alias{make.pops}
\title{Puts individuals into populations for further analysis}
\usage{
make.pops(raw.data, mode = "coord")
}
\arguments{
\item{raw.data}{Output from set.outgroups or check.data}

\item{mode}{One of 'coord' or 'custom'. If 'custom', populations are
generated from the population column in the coords file. If 'coord',
Individuals are grouped according to their coordinates}
}
\value{
A list with each entry being a population
}
\description{
There are two main modes of grouping individuals into populations:
The first one is based on the location, all individuals with the
same sample location are assigned to the same population.
the other one is based on a column `population` in
}

