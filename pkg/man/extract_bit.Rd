\name{extract_bit}
\alias{extract_bit}
\title{Get the value of a particular bit in a byte}
\usage{
  extract_bit(intval, bitnum)
}
\arguments{
  \item{intval}{An integer between 0 and 255}

  \item{bitnum}{The bit number to return, between 1 and 8}
}
\value{
  \code{bitval} The value of the bit (0 or 1).
}
\description{
  In many MODIS products, the information for each pixel is
  stored in a byte, which represents numbers between 0 and
  255.  A byte is made up of 8 bits, and is a base 2
  representation of the number.  In the MODIS cloud
  product, each bit encodes information; see documentation
  of the MODIS cloud product in question.
}
\details{
  This function takes a byte and extracts the bits.  The
  bits are in whatever order they are in the byte.  If
  reading in the reverse direction is needed, the user
  should use \code{\link{rev}}.
}
\examples{
intval = 123
extract_bit(intval, bitnum=1)
extract_bit(intval, bitnum=2)
extract_bit(intval, bitnum=8)
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
  \code{\link{byteint2bit}}

  \code{\link{get_bitgrid_2bits}}
}

