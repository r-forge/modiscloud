\name{yearmonthday_to_julianday}
\alias{yearmonthday_to_julianday}
\title{Get the julian day for a year/month/day date}
\usage{
  yearmonthday_to_julianday(year, month, day)
}
\arguments{
  \item{year}{as numeric, 4 digits}

  \item{month}{as numeric, 1-2 digits}

  \item{day}{as numeric, 1-2 digits}
}
\value{
  julian_day, the julian day between 1-365 or 1-366 (for
  leap years)
}
\description{
  This function uses the date package's
  \code{\link[date]{mdy.date}} function to get the Julian
  day (count of the day in the year, from 1-365, or 1-366
  for leap years) from the input year, month, and day.
}
\examples{
year=2011; month=06; day=15
yearmonthday_to_julianday(year, month, day)
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
  \code{\link{yearday_to_date}}
}

