% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neon_dir.R
\name{neon_dir}
\alias{neon_dir}
\title{Default directory for persistent NEON file store}
\usage{
neon_dir()
}
\value{
the active \code{neonstore} directory.
}
\description{
Use \code{neon_dir()} to view or access the currently active local store.
By default, \code{\link[=neon_download]{neon_download()}} downloads files into the \code{neon_dir()},
which uses an appropriate application directory for your operating system,
see \code{\link[rappdirs:user_data_dir]{rappdirs::user_data_dir()}}.  This location can be overridden by setting
the environmental variable \code{NEONSTORE_HOME}.  \code{neonstore} functions
(e.g. \code{\link[=neon_index]{neon_index()}}, and \code{\link[=neon_read]{neon_read()}}) look for files in
the \code{neon_dir()} directory by default.  (All functions can also take
a one-off argument to \code{dir} in the function call in place of the calling
\code{neon_dir()} to access the default.
}
\examples{

neon_dir()

## Override with an environmental variable:
Sys.setenv(NEONSTORE_HOME = tempdir())
neon_dir()
## Unset
Sys.unsetenv("NEONSTORE_HOME")

}
