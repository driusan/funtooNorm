% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SampleSet.R
\docType{methods}
\name{funtooNorm}
\alias{funtooNorm}
\alias{funtooNorm,SampleSet-method}
\title{The funtooNorm normalization function}
\usage{
funtooNorm(object, type.fits = "PCR", ncmp = 4, force = FALSE,
  sex = NULL)

\S4method{funtooNorm}{SampleSet}(object, type.fits = "PCR", ncmp = 4,
  force = FALSE, sex = NULL)
}
\arguments{
\item{object}{Object of class SampleSet}

\item{type.fits}{Choice between "PCR" or "PLS" (default="PCR")}

\item{ncmp}{Number of components included in the analysis (default=4)}

\item{force}{If set to TRUE, forces the normalization procedure to re-compute}

\item{sex}{Boolean vector if male. if NULL Beta values from ChrY are used for
classification.}
}
\value{
a S4 object of class SampleSet containing the normalized signal
}
\description{
\code{funtooNorm} Returns the normalized signals to the SampleSet object
}
\details{
This is a generic function which applies to autosomes and the X 
chromosome. Chromosome Y requires separate analysis as there are few probes 
on Y.  We use a straightforward quantile normalization applied to males only.
}
\section{Methods (by class)}{
\itemize{
\item \code{SampleSet}: The funtooNorm normalization function
}}
\examples{
require(minfiData)
pData(RGsetEx)$cell_type <- rep(c("type1","type2"),3)
mySampleSet=fromRGChannelSet(RGsetEx)
mySampleSet=funtooNorm(mySampleSet)

}

