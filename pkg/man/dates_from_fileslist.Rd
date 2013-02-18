\name{dates_from_fileslist}
\alias{dates_from_fileslist}
\title{Convert each MODIS filename to year, month, day, hourmin}
\usage{
  dates_from_fileslist(fns)
}
\arguments{
  \item{fns}{filenames}
}
\value{
  \code{dates_table} a table of dates
}
\description{
  For each MODIS filename in a list, return a table of
  date/time information.
}
\examples{
fns = c("MOD03.A2008001.0400.005.2010216170200.hdf", "MOD03.A2007002.0300.005.2010216170200.hdf")
dates_from_fileslist(fns)
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

  \code{\link{extract_time_from_MODISfn}}
}

