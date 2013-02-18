\name{byteint2bit_list}
\alias{byteint2bit_list}
\title{Convert a list of byte integer (0-255) to a table of 8 bits per row}
\usage{
  byteint2bit_list(grdr_vals, reverse = TRUE)
}
\arguments{
  \item{grdr_vals,}{a list of integers between 0 and 255}

  \item{reverse,}{a logical (TRUE/FALSE) indicating whether
  or not the string of bits should be reversed. Default:
  TRUE}
}
\value{
  \code{byte_in_binary_table}, a table, each cell has the 8
  bits (0/1 values) in the correct order
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

  This function is just the \code{mapply} (multiply apply)
  version of \code{\link{byteint2bit}}

  Note: the reversal means that, when interpreting the two
  2-bit strings in the MODIS image, the interpretation of
  01 and 10 is reversed from in the MODIS documentation.
}
\examples{
grdr_vals = c(0,1,2,253,254,255)
byteint2bit_list(grdr_vals, reverse=TRUE)
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

  \code{\link{byteint2bit}}
}

