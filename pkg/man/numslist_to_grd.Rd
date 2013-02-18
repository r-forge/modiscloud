\name{numslist_to_grd}
\alias{numslist_to_grd}
\title{Convert a list of numbers to a grid}
\usage{
  numslist_to_grd(numslist, grd, ydim_new, xdim_new)
}
\arguments{
  \item{numslist}{The list of numbers, each corresponding
  to a pixel}

  \item{grd}{A grid object, from which the projection and
  extend of the new grid will be taken}

  \item{ydim_new}{Number of rows (number of pixels in
  height)}

  \item{xdim_new}{Number of columns (number of pixels in
  width)}
}
\value{
  \code{grd_final}, as SpatialPixelsDataFrame object
}
\description{
  Take a cloudcount raster and a number-of-observations
  raster and make a fraction cloud raster.
}
\examples{
#######################################################
# Load some bit TIFs (TIFs with just the cloud indicators extracted)
# and add up the number of cloudy days, out of the total
# number of observation attempts
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
tifsdir = system.file("extdata/2002_bit/", package="modiscdata")
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


sum_nums = NULL
for (j in 1:length(tiffns))
	{
	fn = tiffns[j]

	grd = readGDAL(fn, output.dim=c(ydim_new, xdim_new))

	grdr = raster(grd)
	pointscount_on_SGDF_points = coordinates(grd)
	grdr_vals = extract(grdr, pointscount_on_SGDF_points)

	# Convert to 1/0 cloudy/not
	data_grdr = grdr_vals
	data_grdr[grdr_vals > 0] = 1

	grdr_cloudy = grdr_vals
	grdr_cloudy[grdr_vals < 4] = 0
	grdr_cloudy[grdr_vals == 4] = 1

# Note: Don't run the double-commented lines unless you want to collapse different bit values.
	# grdr_clear = grdr_vals
	# grdr_clear[grdr_vals == 4] = 0
	# grdr_clear[grdr_vals == 3] = 1
	# grdr_clear[grdr_vals == 2] = 1
	# grdr_clear[grdr_vals == 1] = 1
	# grdr_clear[grdr_vals == 0] = 0
	#

if (j == 1)
	{
	sum_cloudy = grdr_cloudy
	#sum_not_cloudy = grdr_clear
	sum_data = data_grdr
	} else {
	sum_cloudy = sum_cloudy + grdr_cloudy
	sum_data = sum_data + data_grdr
	}

	}


## Calculate percentage cloudy
sum_nums = sum_cloudy / sum_data

grd_final = numslist_to_grd(numslist=sum_nums, grd=grd, ydim_new=ydim_new, xdim_new=xdim_new)

# Display the image (this is just the sum of a few images)
image(grd_final)

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
  \code{\link{make_cloudcount_product}}
}

