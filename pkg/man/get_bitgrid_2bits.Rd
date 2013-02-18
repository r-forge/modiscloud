\name{get_bitgrid_2bits}
\alias{get_bitgrid_2bits}
\title{extract the value of 2 particular bits at each pixel}
\usage{
  get_bitgrid_2bits(grd, bitnums)
}
\arguments{
  \item{grd}{A SpatialGridDataFrame, derived from e.g.
  readGDAL}

  \item{bitnums}{The bit you would like to extract}
}
\value{
  \code{grdr_vals_bitstrings}, a list of strings for the
  bits in question (string, e.g. "11" or "01" or "00")
}
\description{
  Some MODIS cloud products have 2-bit codes, e.g. the
  MOD35_L2 product has a 2-bit code specifying the 4
  possible outputs of the cloud-classification algorithm:
  confident cloudy, probable cloudy, probable clear,
  confident clear.
}
\details{
  Note: this means that, when interpreting the two 2-bit
  strings in the MODIS image, you have to reverse the bit
  order. This is done by default here.
}
\examples{
#######################################################
# Load a TIF
#######################################################
# Code excluded from CRAN check because it depends on modiscdata
\dontrun{
library(devtools)
# The modiscdata (MODIS c=cloud data=data) package is too big for CRAN (60 MB); so it is available on github:
# https://github.com/nmatzke/modiscdata
# If we can't get install_github() to work, try install_url():
# install_github(repo="modiscdata", username="nnmatzke")
install_url(url="https://github.com/nmatzke/modiscdata/archive/master.zip")
library(modiscdata)
tifsdir = system.file("extdata/2002tif/", package="modiscdata")
tiffns = list.files(tifsdir, pattern=".tif", full.names=TRUE)
tiffns

library(rgdal)	# for readGDAL

# numpixels in subset
xdim = 538
ydim = 538


# Read the grid and the grid metadata
coarsen_amount = 1
xdim_new = xdim / floor(coarsen_amount)
ydim_new = ydim / floor(coarsen_amount)

fn = tiffns[1]
grd = readGDAL(fn, output.dim=c(ydim_new, xdim_new))

grdproj = CRS(proj4string(grd))
grdproj
grdbbox = attr(grd, "bbox")
grdbbox

#######################################################
# Extract a particular pair of bits for all the pixels in the grid
#######################################################
bitnum = 2
grdr_vals_bitstrings = get_bitgrid_2bits(grd, bitnum)
length(grdr_vals_bitstrings)
grdr_vals_bitstrings[1:50]
}
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

  \code{\link{get_bitgrid}}
}

