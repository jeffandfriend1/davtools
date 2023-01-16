#' davtools: A package to improve my life
#'
#' The package davtools provides several function and one simulated dataset.
#'
#' @section Functions:
#' - \code{\link{print_bf}}:  print Bayes Factors in Markdown files
#' - \code{\link{make_df_readme}}:  create summary of a data.frame in form of a markdown table
#' - \code{\link{mean_sd}}:  print mean and standarddeviation of a variable in Markdown files
#' - \code{\link{mean_sd}}: compute the root-mean-squared-error (RMSE) between two numeric variables
#' - \code{\link{expand_grid_unique}}:  make a grid of uniqe factor combinations, i.e. ignoring order of factors
#' - \code{\link{sigma_tau}}:  transform sigma to tau (i.e. precision in JAGS) or the other way around
#' - \code{\link{flattenlist}}:  flatten a highly nested list as returned by `foreach()` into a simple list
#' - \code{\link{install_n_load_packages}}:  load packages and install missing packages if necessary
#'
#' @section Datasets:
#' The datase  \code{\link{res_rt}} is used to test and show different functions in this package
#' @docType package
#' @name davtools
NULL
