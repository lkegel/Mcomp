\name{plot.Mdata}
\alias{plot.Mdata}
\alias{autoplot.Mdata}
\title{Plotting M Competition data}
\description{
  Functions to plot a time series from the M competition data sets, showing both the training and test sections of the series.
}
\usage{
\method{plot}{Mdata}(x, xlim=c(tsp(x$x)[1],tsp(x$xx)[2]), ylim=range(x$x,x$xx),
                   main=x$sn, xlab="", ylab="", ...)
\method{autoplot}{Mdata}(x,  ...)

}
\arguments{
  \item{x}{A series of M-competition data}
  \item{xlim}{Limits on x-axis}
  \item{ylim}{Limits on y-axis}
  \item{main}{Main title}
  \item{xlab}{Label on x-axis}
  \item{ylab}{Label on y-axis}
  \item{...}{Other plotting arguments passed to \code{plot}. Ignored for \code{autoplot}.}
}

\value{\code{autoplot.Mdata} returns a ggplot2 object, while \code{plot.Mdata} returns nothing. Both functions produce a time series plot of the selected series.
}

\author{Rob Hyndman}

\seealso{ \code{\link{M1}}}

\examples{
library(ggplot2)
plot(M1[[1]])
autoplot(M1$YAF3)
autoplot(M3[["N0647"]])
}

\keyword{hplot}
