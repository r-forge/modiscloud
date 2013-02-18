\name{check_for_matching_geolocation_files}
\alias{check_for_matching_geolocation_files}
\title{Checks that every MODIS cloud project HDF has a matching MOD03 file}
\usage{
  check_for_matching_geolocation_files(moddir = getwd(),
    modtxt = "MOD35_L2", geoloctxt = "MOD03",
    return_geoloc = FALSE, return_product = FALSE)
}
\arguments{
  \item{moddir}{the string describing the directory
  containing the MOD35_L2 and MOD03 files; both must be in
  the same directory.  Default: getwd(), which gives the
  present working directory.}

  \item{modtxt}{the text string indicating which HDF files
  are the MODIS cloud product (or hypothetically, other
  product). Default: MOD35_L2 (MODIS cloud mask product)}

  \item{geoloctxt}{the text string indicating which HDF
  files are the MODIS geolocation files (or hypothetically,
  another set of files). Default: MOD03}

  \item{return_geoloc}{if TRUE, return the list of
  unmatched geolocation files (e.g. MOD03 or MYD03)}

  \item{return_product}{if TRUE, return the list of
  unmatched product files (e.g. MOD35_L2 or MYD35_L2 or
  MOD06_L2 or MYD06_L2)}
}
\value{
  data.frame of matching files; or a list of non-matching
  files, if \code{return_geoloc} or \code{return_product}
  are TRUE.
}
\description{
  Each MOD35_L2 cloud mask product file requires a
  corresponding MOD03 geolocation file to be successfully
  processed with the MRTSwath tool.
}
\details{
  MRTSwath is the MRT (MODIS Reprojection Tool) for the
  MODIS level 1 and level 2 products (cloud mask is level
  2, I think).

  E.g. this cloud mask file:

  MOD35_L2.A2012001.0420.005.2012001131638.hdf

  ...goes with this corresponding geolocation file:

  MOD03.A2012001.0420.005.2012001104706.hdf

  ...which is a large file (~30 MB) containing detailed
  information on the position, tilt, etc. of the MODIS
  satellite.

  For whatever reason, even a search done at the same time
  at
  http://reverb.echo.nasa.gov/reverb/#utf8=%E2%9C%93&spatial_map=satellite&spatial_type=rectangle
  will not necessarily return the same number of MOD35_L2
  and MOD03 files. MRTSwath tool needs one of each,
  however.
}
\examples{
# Check your working directory
moddir = getwd()

# Here are some example MODIS files in modiscloud/extdata/
# Code excluded from CRAN check because it depends on modiscdata
\dontrun{
library(devtools)
# The modiscdata (MODIS c=cloud data=data) package is too big for CRAN (60 MB); so it is available on github:
# https://github.com/nmatzke/modiscdata
# If we can't get install_github() to work, try install_url():
# install_github(repo="modiscdata", username="nnmatzke")
install_url(url="https://github.com/nmatzke/modiscdata/archive/master.zip")
library(modiscdata)
moddir = system.file("extdata/2002raw/", package="modiscdata")

# You need to have some e.g. MOD files in it (from the MODIS-TERRA platform)
# (*won't* work with the default files stored in modiscloud/extdata/2002raw/)
list.files(path=moddir, pattern="MOD")

# This directory actually has MYD files (from the MODIS-AQUA platform)
# (*will* work with the default files stored in modiscloud/extdata/2002raw/)
list.files(path=moddir, pattern="MYD")

# Check for matches (for MODIS-TERRA platform)
# (*won't* work with the default files stored in modiscloud/extdata/2002raw/)
check_for_matching_geolocation_files(moddir=moddir, modtxt="MOD35_L2", geoloctxt="MOD03", return_geoloc=FALSE, return_product=FALSE)

# Check for matches (for MODIS-AQUA platform)
# (*will* work with the default files stored in modiscloud/extdata/2002raw/)
check_for_matching_geolocation_files(moddir=moddir, modtxt="MYD35_L2", geoloctxt="MYD03", return_geoloc=FALSE, return_product=FALSE)
}
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\seealso{
  \code{\link{extract_time_from_MODISfn}}

  \code{\link{modfns_to_ftp_download_cmd}}
}

