% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pbirthday_up.R
\name{pbirthday_up}
\alias{pbirthday_up}
\title{Variant of \code{pbirthday}, which handles unequal occurrence probabilites}
\usage{
pbirthday_up(n, prob, method = c("R", "Rcpp", "mase1992"))
}
\arguments{
\item{n}{Size of the set}

\item{prob}{Vector containing the occurrence probabilities. The length of \code{prob} determines N.}

\item{method}{A string describing which computational method to use. \code{"R"} (the default) works in acceptable time up to n's of about 30. The \code{"Rcpp"} options works for larger n of moderate size, e.g., n=60 takes about 3 minutes. For larger n or faster computation one can use the \code{"mase1992"} approximation, which is surprisingly accurate.}
}
\value{
A list containing the following elements:
\describe{
   \item{\code{prob}}{(numeric) The probability for at least one collision}
   \item{\code{tList}}{A matrix containing all compositions of singletons,
    dubletons, each row has the property sum(row * 1:n) == n.}
   \item{...}{}
}
}
\description{
This function calculates the probability for at least one collision in a set
of n individuals sampled iid. from a vector of length N with
occurrence probabilities as given by the vector p. This is an instance
of the birthday problem with unequal occurrence probabilities.
}
\examples{
pbirthday(n=26, classes=365, coincident=2)
pbirthday_up(n=26L, prob=rep(1/365,365), method="R")$prob
pbirthday_up(n=26L, prob=rep(1/365,365), method="Rcpp")$prob
}
\references{
Mase, S. 1992. “Approximations to the Birthday Problem with Unequal Occurrence Probabilities and Their Application to the Surname Problem in Japan.” Ann. Inst. Stat. Math. 44 (3): 479–99. \url{http://www.ism.ac.jp/editsec/aism/pdf/044_3_0479.pdf}.

H\enc{ö}{oe}hle, M., Happy pbirthday class of 2016, \url{http://staff.math.su.se/hoehle/blog/2017/02/13/bday.html}.

H\enc{ö}{oe}hle, M., US Babyname Collisions 1880-2014, \url{http://staff.math.su.se/hoehle/blog/2017/03/01/morebabynames.html}.
}
