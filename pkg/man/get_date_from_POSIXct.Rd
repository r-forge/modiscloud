\name{get_date_from_POSIXct}
\alias{get_date_from_POSIXct}
\title{Get the time information from a POSIXct time}
\usage{
  get_date_from_POSIXct(POSIX_ct_date)
}
\arguments{
  \item{POSIX_ct_date}{(# of seconds from "1970-01-01
  00:00.00 UTC")}
}
\value{
  tdf a time-data.frame containing year, month, day, julian
  day, and hourmin / sec
}
\description{
  This function gets the year, month, day, and hourmin,
  from a POSIXct date (which is the # of seconds from
  "1970-01-01 00:00.00 UTC").  Returns a formatted date in
  data.frame format
}
\details{
  The function contains a check for multiple dates.
}
\examples{
# 10 million seconds from 1/1/1970
POSIX_ct_date = 10000000
get_date_from_POSIXct(POSIX_ct_date)
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
  \code{\link{get_dates_from_POSIXct}}

  \code{\link{make_POSIXct_date}}

  \code{\link[base]{as.POSIXct}}

  \code{\link[base]{as.POSIXlt}}
}

