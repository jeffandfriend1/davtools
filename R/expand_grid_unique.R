#' Compute grid of unique combinations
#'
#' Function to make a grid of uniqe factor combinations, i.e. ignoring order of factors.
#'
#' @param x variable
#' @param y variable
#' @param include_eq include eq combinations TRUE/FALSE
#' @author David Izydorczyk
#'
#' @return RMSE
#'
#'
#' @examples
#' expand_grid_unique(c("a","b","c"),c("a","b","c"))
#'
#' @export
expand_grid_unique <- function(x, y, include_eq=FALSE){
  x <- unique(x)

  y <- unique(y)

  g <- function(i){
    z <- setdiff(y, x[seq_len(i-include_eq)])

    if(length(z)) cbind(x[i], z, deparse.level=0)
  }

  do.call(rbind, lapply(seq_along(x), g))
}


