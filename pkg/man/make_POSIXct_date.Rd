\name{make_POSIXct_date}
\alias{make_POSIXct_date}
\title{Take year, month, day, hourmin, convert to POSIXct}
\usage{
  make_POSIXct_date(year, month, day, hourmin,
    timezone_txt = "UTC")
}
\arguments{
  \item{year}{calendar year}

  \item{month}{number of the month (1-12)}

  \item{day}{number of the day (1-31)}

  \item{hourmin}{a string (derived from MODIS filename)
  with HHSS (hours, seconds)}

  \item{timezone_txt}{the timezone; default 'UTC', your
  results may vary for the other timezones R knows about}
}
\value{
  \code{POSIX_ct_date}, a POSIXct-formatted date
}
\description{
  Make a standard-formatted date.
}
\examples{
# Example use of make_POSIXct_date
year=2008
month=3
day=3
hourmin="0404"
make_POSIXct_date(year, month, day, hourmin, timezone_txt="UTC")
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

  \code{\link{get_dates_from_POSIXct}}

  \code{\link[base]{as.POSIXct}}
}

