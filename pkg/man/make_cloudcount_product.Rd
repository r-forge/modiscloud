\name{make_cloudcount_product}
\alias{make_cloudcount_product}
\title{Take a cloudcount raster and a number-of-observations raster and make a fraction cloud product}
\usage{
  make_cloudcount_product(master_bitgridvalsCC,
    master_bitgridvals0, num_its, grd, xdim_new, ydim_new,
    countzeros = FALSE)
}
\arguments{
  \item{master_bitgridvalsCC}{Cloud count raster}

  \item{master_bitgridvals0}{Raster indicating the count of
  valid observations}

  \item{num_its}{The total number of images or files, i.e.
  the number of attempts to see clouds}

  \item{grd}{An input grid with the appropriate projection
  and extent to match the rasters}

  \item{xdim_new}{The x-dimension (in # of pixels; i.e. #
  of columns) of the input/output grids}

  \item{ydim_new}{The y-dimension (in # of pixels; i.e. #
  of rows) of the input/output grids}

  \item{countzeros}{Should zeros be counted? TRUE or FALSE}
}
\value{
  \code{grd_final}, a grid with fraction cloudy
}
\description{
  Takes a cloudcount raster, and a number-of-observations
  raster, and makes a fraction cloud product.
}
\examples{
# For examples, see the function numslist_to_grd()
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
  \code{\link{sum_bitgrid}}
}

