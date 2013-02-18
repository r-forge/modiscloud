\name{run_swath2grid}
\alias{run_swath2grid}
\title{Run MRTSwath swath2grid tool}
\usage{
  run_swath2grid(mrtpath = "swath2grid",
    prmfn = "tmpMRTparams.prm", tifsdir, modfn, geoloc_fn,
    ul_lon, ul_lat, lr_lon, lr_lat)
}
\arguments{
  \item{mrtpath}{This is the path to the MRTSwath
  executable \code{swath2grid}. If your \code{~/.Rprofile}
  file has the location of \code{swath2grid} in the PATH,
  then you can just use \code{mrtpath="swath2grid"}.
  Otherwise, the user must provide the full path to
  swath2grid.}

  \item{prmfn}{The name of the parameter/control file which
  will be the input to MRTSwath's \code{swath2grid}
  function.}

  \item{tifsdir}{The directory to save the output TIF files
  in}

  \item{modfn}{The filename of the MODIS data}

  \item{geoloc_fn}{The filename of the corresponding
  geolocation file (annoyingly, this is a much larger file
  than the data file!)}

  \item{ul_lon}{Upper left (ul) longitude (x-coordinate)
  for subsetting}

  \item{ul_lat}{Upper left (ul) latitude (y-coordinate) for
  subsetting}

  \item{lr_lon}{Lower right (lr) longitude (x-coordinate)
  for subsetting}

  \item{lr_lat}{Lower right (lr) latitude (y-coordinate)
  for subsetting}
}
\value{
  \code{cmdstr} The string giving the system command that
  ran \code{swath2grid}
}
\description{
  MRTSwath is the "MODIS Reprojection Tool for swath
  products".  See:
  \url{https://lpdaac.usgs.gov/tools/modis_reprojection_tool_swath}).
}
\details{
  If you want this function to use MRTSwath tool
  successfully, you should add the directory with the
  MRTSwath executable to the default R PATH by editing
  \code{~/.Rprofile}.
}
\examples{
#######################################################
# Run MRTSwath tool "swath2grid"
#######################################################

# Source MODIS files (both data and geolocation)
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

# Get the matching data/geolocation file pairs
fns_df = check_for_matching_geolocation_files(moddir, modtxt="MYD35_L2", geoloctxt="MYD03")
fns_df

# Resulting TIF files go in this directory
tifsdir = getwd()


# Box to subset
ul_lat = 13
ul_lon = -87
lr_lat = 8
lr_lon = -82

for (i in 1:nrow(fns_df))
	{

	prmfn = write_MRTSwath_param_file(prmfn="tmpMRTparams.prm", tifsdir=tifsdir, modfn=fns_df$mod35_L2_fns[i], geoloc_fn=fns_df$mod03_fns[i], ul_lon=ul_lon, ul_lat=ul_lat, lr_lon=lr_lon, lr_lat=lr_lat)
	print(scan(file=prmfn, what="character", sep="\\n"))

	run_swath2grid(mrtpath="swath2grid", prmfn="tmpMRTparams.prm", tifsdir=tifsdir, modfn=fns_df$mod35_L2_fns[i], geoloc_fn=fns_df$mod03_fns[i], ul_lon=ul_lon, ul_lat=ul_lat, lr_lon=lr_lon, lr_lat=lr_lat)

	}

list.files(tifsdir, pattern=".tif", full.names=TRUE)
}
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\references{
  NASA (2001). "MODLAND Product Filename Convention." <URL:
  http://landweb.nascom.nasa.gov/cgi-bin/QA_WWW/newPage.cgi?fileName=hdf_filename>.
}
\seealso{
  \code{\link{write_MRTSwath_param_file}}

  \url{http://landweb.nascom.nasa.gov/cgi-bin/QA_WWW/newPage.cgi?fileName=hdf_filename}
}

