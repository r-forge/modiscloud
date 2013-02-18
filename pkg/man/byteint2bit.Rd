\name{byteint2bit}
\alias{byteint2bit}
\title{Convert a byte integer (0-255) to a list of 8 bits}
\usage{
  byteint2bit(intval, reverse = TRUE)
}
\arguments{
  \item{intval,}{an integer between 0 and 255}

  \item{reverse,}{a logical (TRUE/FALSE) indicating whether
  or not the string of bits should be reversed. Default:
  TRUE}
}
\value{
  \code{byte_in_binary}, the 8 bits (0/1 values) in the
  correct order
}
\description{
  MODIS HDFs converted to tifs result in each pixel having
  a integer value from 0 to 255.  byteint2bit converts this
  to a string of 8 bits (0/1 values).
}
\details{
  In the case of MODIS, the bits are read from RIGHT to
  LEFT, which is unnatural, so by default the function uses
  rev() to reverse the order of reading.

  Note: the reversal means that, when interpreting the two
  2-bit strings in the MODIS image, the interpretation of
  01 and 10 is reversed from in the MODIS documentation.
}
\examples{
byteint2bit(intval=0, reverse=FALSE)
byteint2bit(intval=0, reverse=TRUE)
byteint2bit(intval=1, reverse=FALSE)
byteint2bit(intval=1, reverse=TRUE)
byteint2bit(intval=254, reverse=FALSE)
byteint2bit(intval=254, reverse=TRUE)
byteint2bit(intval=255, reverse=FALSE)
byteint2bit(intval=255, reverse=TRUE)
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\references{
  Ackerman S, Frey R, Strabala K, Liu Y, Gumley L, Baum B
  and Menzel P (2010). "Discriminating clear-sky from cloud
  with MODIS algorithm theoretical basis document (MOD35)."
  MODIS Cloud Mask Team, Cooperative Institute for
  Meteorological Satellite Studies, University of Wisconsin
  - Madison. <URL:
  http://modis-atmos.gsfc.nasa.gov/_docs/MOD35_ATBD_Collection6.pdf>.

  GoldsmithMatzkeDawson2013
}
\seealso{
  \code{\link{extract_bit}}

  \code{\link{byteint2bit_list}}
}

