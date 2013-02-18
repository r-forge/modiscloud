\name{sum_bitgrid}
\alias{sum_bitgrid}
\title{Take a series of byte tifs, extract the values of a bit, and add them up}
\usage{
  sum_bitgrid(fns, numits = length(fns), bitnums, ydim_new,
    xdim_new, test_for_1 = 1)
}
\arguments{
  \item{fns}{A list of filenames which can be auto-read by
  readGDAL (e.g. geoTIFFs)}

  \item{numits}{Number of iterations to run for (default =
  length(fns))}

  \item{bitnums}{The bit(s) you would like to extract. If
  length(bitnums) = 1, do default behavior.  If the length
  is 2, then run the alternative function.}

  \item{ydim_new}{The dimensions of the extracted image.
  This is REQUIRED, since each day of a MODIS image may
  have different pixel dimensions over the same location.
  readGDAL will sample each image (nearest neighbor pixel)
  to the correct dimensions.}

  \item{xdim_new}{The dimensions of the extracted image.
  This is REQUIRED, since each day of a MODIS image may
  have different pixel dimensions over the same location.
  readGDAL will sample each image (nearest neighbor pixel)
  to the correct dimensions.}

  \item{test_for_1}{What your extracted bit(s) should
  match. If 1 (default), just count up 1s.  If a string,
  e.g. "!=11", use that in an if-then statement to get the
  1s to count}
}
\value{
  \code{grdr_vals_bits}, a matrix of 0/1 values for the bit
  in question
}
\description{
  This function is useful if you have a series of cloud
  product byte tifs, and need to extract a bit from each,
  and then add up (e.g. to get the total number of cloudy
  observations).
}
\examples{
# See numslist_to_grd example for an idea of how this works.
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

  \code{\link{numslist_to_grd}}
}

