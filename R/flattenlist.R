#' Flatten a highly nested list
#'
#' Function to flatten a highly nested list as returned by `foreach()` into a simple list
#'
#' @param x list
#'
#' @author David Izydorczyk
#'
#' @return simple list
#'
#'
#' @examples
#' flattenlist(list(1,list(2,list(3,list(4,5)))))
#'
#' @export
flattenlist     <- function(x){
  more_lists <- sapply(x, function(first_x) class(first_x)[1]=="list")
  out        <- c(x[!more_lists], unlist(x[more_lists], recursive=FALSE))
  if(sum(more_lists)){
    Recall(out)
  }else{
    return(out)
  }
}
