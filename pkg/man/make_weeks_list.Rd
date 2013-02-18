\name{make_weeks_list}
\alias{make_weeks_list}
\title{Make a list of numbered weeks}
\usage{
  make_weeks_list(numweeks = 53)
}
\arguments{
  \item{numweeks}{Number of weeks you would like to get the
  daily week categories for.  Default is 53 weeks, i.e.
  53*7 = 371 days.}
}
\value{
  \code{weeks_list}, a list of the week category that each
  day falls into
}
\description{
  Make a list of weeks for a given number of days.
}
\details{
  E.g., for 15 days,

  \code{make_weeks_list(numweeks=17)}

  ...would return:

  week1\cr week1\cr week1\cr week1\cr week1\cr week1\cr
  week1\cr week2\cr week2\cr week2\cr week2\cr week2\cr
  week2\cr week2\cr week3\cr week3\cr week3\cr

  This is useful for categorizing e.g. daily satellite data
  by week.
}
\examples{
# Make the weeks_list
weeks_list = make_weeks_list(numweeks=53)
weeks_list

# Which week category you are in
day=1
weeks_list[day]
day=8
weeks_list[day]
day=100
weeks_list[day]
day=366
weeks_list[day]
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\references{
  NASA (2001). "MODLAND Product Filename Convention." <URL:
  http://landweb.nascom.nasa.gov/cgi-bin/QA_WWW/newPage.cgi?fileName=hdf_filename>.
}

