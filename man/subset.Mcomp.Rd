\name{subset.Mcomp}
\alias{subset.Mcomp}
\title{ Subset of time series from the M Competitions }
\description{\code{subset.Mcomp} returns a subset of the time series data from the
M Competitions. Subsets can be for specific periods, or
specific types of data or both.
}
\usage{
\method{subset}{Mcomp}(x, cond1, cond2, ...)
}
\arguments{
  \item{x}{M-competition data or a subset of M-competition data }
  \item{cond1}{Type or period of the data. Type is a character variable and period could be
				 character or numeric.}
  \item{cond2}{Optional second condition specifying type or period of the data, depending on \code{cond1}.
  If \code{cond1} denotes type then \code{cond2} would
  denote period, but if \code{cond1} denotes period then \code{cond2} would denote
  type.}
  \item{...}{Other arguments.}
}

\details{Possible values for \code{cond1} and \code{cond2}
denoting period are 1, 4, 12, "yearly", "quarterly", "monthly"
and "other".

If \code{cond1} or \code{cond2} equals 111, then the 111 series used in the 
extended comparisons in the 1982 M-competition are selected.

Possible values for \code{cond1} and \code{cond2} denoting type
are "macro", "micro", "industry", "finance", "demographic",
"allother", "macro1", "macro2", "micro1", "micro2", "micro3".
These correspond to the descriptions used in the competitions.
See the references for details.

Partial matching used for both conditions.
}

\references{
Makridakis, S., A. Andersen, R. Carbone, R. Fildes,
M. Hibon, R. Lewandowski, J. Newton, E. Parzen, and R. Winkler
(1982) The accuracy of extrapolation (time series) methods:
results of a forecasting competition. \emph{Journal of
Forecasting}, \bold{1}, 111--153.

Makridakis and Hibon (2000) The M3-competition: results,
conclusions and implications. \emph{International Journal of
Forecasting}, \bold{16}, 451-476. }

\value{
An object of class \code{Mcomp} consisting of the selected
series.
}

\author{Muhammad Akram and Rob Hyndman}

\seealso{ \code{\link{M1}}}
\examples{
M3.quarterly <- subset(M3,4)
M1.yearly.industry <- subset(M1,1,"industry")
}
\keyword{data}
