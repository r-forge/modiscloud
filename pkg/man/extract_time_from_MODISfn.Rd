\name{extract_time_from_MODISfn}
\alias{extract_time_from_MODISfn}
\title{Extract the year, day, and hour from a MODIS filename}
\usage{
  extract_time_from_MODISfn(fn)
}
\arguments{
  \item{fn}{The MODIS filename of interest}
}
\value{
  \code{newdate} A list with three items: $month, $day,
  $year
}
\description{
  The filenames of MODIS images contain the following date
  information: MOD35_L2.Ayyyyddd.hhhh.etc.
}
\details{
  MODLAND Level 2 products\cr
  ESDT.AYYYYDDD.HHMM.CCC.YYYYDDDHHMMSS.hdf\cr

  ESDT = Earth Science Data Type name (e.g., MOD14)\cr
  YYYYDDD = MODIS acquisition year and Julian day\cr HHMM =
  MODIS acquisition UTC time\cr CCC = Collection number\cr
  YYYYDDDHHMMSS = Processing Year, Julian day and UTC
  Time\cr hdf = Suffix denoting HDF file\cr

  DDD is the day of the year, from 001 to 365 (or 366 for
  leap years)
}
\examples{
yearday_to_date(year=2012, day=364)
# $month
# [1] 12
#
# $day
# [1] 29
#
# $year
# [1] 2008

fn = "MOD03.A2008001.0400.005.2010216170200.hdf"
extract_time_from_MODISfn(fn)
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\references{
  NASA (2001). "MODLAND Product Filename Convention." <URL:
  http://landweb.nascom.nasa.gov/cgi-bin/QA_WWW/newPage.cgi?fileName=hdf_filename>.
}
\seealso{
  \code{\link{dates_from_fileslist}}

  \url{http://landweb.nascom.nasa.gov/cgi-bin/QA_WWW/newPage.cgi?fileName=hdf_filename}
}

