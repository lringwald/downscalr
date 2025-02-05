% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/downscale_control.R
\name{downscale_control}
\alias{downscale_control}
\title{Get default options for bias corrections solver}
\usage{
downscale_control(
  solve_fun = "solve_biascorr",
  algorithm = "NLOPT_LN_SBPLX",
  xtol_rel = 1e-20,
  xtol_abs = 1e-20,
  maxeval = 1600,
  MAX_EXP = log(.Machine$double.xmax),
  cutoff = 0,
  redo = 2,
  max_diff = 10^-8,
  err.txt = ""
)
}
\arguments{
\item{solve_fun}{Downscaling algorithm (should be \code{\link{solve_biascorr.mnl}})).}

\item{algorithm}{Solver algorithm (see the \code{\link[nloptr]{nloptr}} package for documentation and more detail).}

\item{xtol_rel}{Relative tolerance of solver.}

\item{xtol_abs}{Absolute solver tolerance.}

\item{maxeval}{Maximum evaluation of solver.}

\item{MAX_EXP}{Numerical cutoff for MNL function.}

\item{cutoff}{Optional cutoff to avoid MNL values close to zero.}

\item{redo}{Maximum number of repeats}

\item{max_diff}{If difference to targets is larger, redo the estimation (helps to avoid convergence errors)}

\item{err.txt}{Error text for caller identification (used for debugging)}
}
\value{
List with default options for bias correction solver
}
\description{
Get default options for bias corrections solver
}
\details{
Call this function if you want to change default options for the bias corrections solver.
}
\examples{
opts1 = downscale_control()
}
