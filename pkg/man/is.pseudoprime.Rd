\name{is.pseudoprime}
\alias{is.pseudoprime}
\title{Check an integer for pseudo-primality to an arbitrary precision}
\usage{
  is.pseudoprime(n, times)
}
\arguments{
  \item{n}{the integer to test for pseudoprimality.}

  \item{times}{the number of Fermat tests to perform}
}
\value{
  Whether the number is pseudoprime
}
\description{
  A number is pseudo-prime if it is probably prime, the
  basis of which is the probabilistic Fermat test; if it
  passes two such tests, the chances are better than 3 out
  of 4 that \eqn{n} is prime.
}
\details{
  This is an example function for making R packages and R
  documentation with
  \code{\link[roxygen2:roxygenize]{roxygen2}} and
  \code{\link[roxygen2:roxygenize]{roxygenize}}.
}
\examples{
is.pseudoprime(13, 4)# TRUE most of the time
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\references{
  Abelson, Hal; Jerry Sussman, and Julie Sussman. Structure
  and Interpretation of Computer Programs. Cambridge: MIT
  Press, 1984.
}
\seealso{
  \code{\link{fermat.test}}
}

