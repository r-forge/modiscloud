\name{get_dates_from_POSIXct}
\alias{get_dates_from_POSIXct}
\title{Get the time information from POSIXct times}
\usage{
  get_dates_from_POSIXct(POSIX_ct_dates)
}
\arguments{
  \item{POSIX_ct_dates}{list of POSIXct dates}
}
\value{
  \code{dtf} data.frame containing year, month, day, julian
  day, and hourmin / sec
}
\description{
  This function, for each input date, gets the year, month,
  day, and hourmin from a POSIXct date (which is the # of
  seconds from "1970-01-01 00:00.00 UTC").  Returns a
  formatted date in data.frame format
}
\details{
  The function contains a check for singe dates. This is a
  version of get_dates_from_POSIXct for use with a list of
  input POSIXct dates, rather than a single date.
}
\examples{
POSIX_ct_dates = c(10000000, 20000000)
get_dates_from_POSIXct(POSIX_ct_dates)
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
  \code{\link{get_date_from_POSIXct}}

  \code{\link{make_POSIXct_date}}
}

