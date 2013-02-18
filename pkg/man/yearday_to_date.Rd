\name{yearday_to_date}
\alias{yearday_to_date}
\title{Convert a year + a day number to a date}
\usage{
  yearday_to_date(year = 2012, day = 1)
}
\arguments{
  \item{year}{The year, read as numeric}

  \item{day}{The day of the year, read as numeric, from 1
  to 366}
}
\value{
  \code{newdate} A list with three items: \code{$month},
  \code{$day}, \code{$year}
}
\description{
  The filenames of MODIS images contain the following date
  information: MOD35_L2.Ayyyyddd.hhhh.etc.
}
\details{
  MODLAND Level 2 products
  ESDT.AYYYYDDD.HHMM.CCC.YYYYDDDHHMMSS.hdf

  ESDT = Earth Science Data Type name (e.g., MOD14) YYYYDDD
  = MODIS acquisition year and Julian day HHMM = MODIS
  acquisition UTC time CCC = Collection number
  YYYYDDDHHMMSS = Processing Year, Julian day and UTC Time
  hdf = Suffix denoting HDF file

  DDD is the day of the year, from 001 to 365 (or 366 for
  leap years)

  This is mildly annoying to interpret as e.g. months for
  graphing cloudy days per month, so
  \code{\link{yearday_to_date}} converts a (numeric) year
  and day to the calendar date.
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
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\references{
  NASA (2001). "MODLAND Product Filename Convention." <URL:
  http://landweb.nascom.nasa.gov/cgi-bin/QA_WWW/newPage.cgi?fileName=hdf_filename>.
}
\seealso{
  \code{\link{make_POSIXct_date}}

  \code{\link{yearday_to_date}}

  \url{http://landweb.nascom.nasa.gov/cgi-bin/QA_WWW/newPage.cgi?fileName=hdf_filename}
}

