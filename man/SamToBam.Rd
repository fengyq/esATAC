% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SamToBam.R
\docType{methods}
\name{SamToBam}
\alias{SamToBam}
\alias{atacSam2Bam,ATACProc-method}
\alias{atacSam2Bam}
\alias{sam2bam}
\title{Convert sam format to bam format.}
\usage{
atacSam2Bam(atacProc, samInput = NULL, bamOutput = NULL, ...)

\S4method{atacSam2Bam}{ATACProc}(atacProc, samInput = NULL,
  bamOutput = NULL, ...)

sam2bam(samInput, bamOutput = NULL, ...)
}
\arguments{
\item{atacProc}{\code{\link{ATACProc-class}} object scalar.
It has to be the return value of upstream process:
\code{\link{atacBowtie2Mapping}}.}

\item{samInput}{\code{Character} scalar.
Sam file input path.}

\item{bamOutput}{\code{Character} scalar.
Bam file output path. If ignored, bed file will be put in the same path as
the sam file.}

\item{...}{Additional arguments, currently unused.}
}
\value{
An invisible \code{\link{ATACProc-class}} object scalar for
downstream analysis.
}
\description{
This function convert a sam file into a bam file.
}
\details{
The sam file wiil be automatically obtained from
object(\code{atacProc}) or input by hand. bamOutput can be ignored.
}
\examples{

library(R.utils)
sam_bz <- system.file("extdata", "Example.sam.bz2", package="esATAC")
sam_path <- as.vector(bunzip2(filename = sam_bz,
destname = file.path(getwd(), "Example.sam"),
ext="bz2", FUN=bzfile, remove = FALSE))
sam2bam(samInput = sam_path)

}
\seealso{
\code{\link{atacBowtie2Mapping}}
\code{\link{atacBam2Bed}}
\code{\link{atacBamSort}}
}
\author{
Wei Zhang
}
