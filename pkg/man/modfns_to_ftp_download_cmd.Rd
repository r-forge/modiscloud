\name{modfns_to_ftp_download_cmd}
\alias{modfns_to_ftp_download_cmd}
\title{Make download commands for MODIS files}
\usage{
  modfns_to_ftp_download_cmd(mod03_fns_dropped,
    ftp_prefix = "get allData/5/", output_to = "screen")
}
\arguments{
  \item{mod03_fns_dropped}{A list of MODIS product files
  (e.g. the files returned as mismatches by
  \code{\link{check_for_matching_geolocation_files}}}

  \item{ftp_prefix}{The prefix that the user would like to
  pre-pend to the FTP directory}

  \item{output_to}{If "screen", the FTP commands are
  printed to screen (and returned as a list). If
  "data.frame", the FTP commands are only returned as a
  list.  Any other string is interpreted as a filename, and
  the FTP commands will be saved to that as a textfile (and
  returned as a list).}
}
\value{
  \code{ftp_cmds}, A list of the FTP commands.
}
\description{
  Take some MODIS product filenames and produce the
  appropriate FTP "\code{get}" command.
}
\details{
  E.g., an input of:

  \code{MYD03.A2007019.1935.005.2009277181756.hdf}

  ...is converted to:

  \code{get
  allData/5/MYD03/2007/019/MYD03.A2007019.1935.005.2009277181756.hdf
  MYD03.A2007019.1935.005.2009277181756.hdf}

  The user must specify \code{ftp_prefix}, e.g. for the
  products I have worked with, it is as follows:

  \code{MOD03: get allData/5/}\cr \code{MOD35_L2: get
  allData/5/}\cr \code{MYD03: get allData/5/}\cr
  \code{MYD35_L2: get allData/5/}\cr \code{MYD06_L2: get
  allData/51/}\cr \code{MYD06_L2: get allData/51/}\cr
}
\author{
  Nicholas J. Matzke \email{matzke@berkeley.edu}
}
\seealso{
  \code{\link{check_for_matching_geolocation_files}}
}

