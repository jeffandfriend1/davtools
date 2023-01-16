#' Make Print mean and sd  in markdown
#'
#' Convinience function for printing `mean`,  `sd` (and range) in markdown
#'
#' @param x numerical variable
#' @param digits number of digits used in the examples column (if numeric variable)
#' @param gt1 variable can take on values greater than 1
#'
#' @importFrom magrittr %>%
#' @importFrom papaja printnum
#' @importFrom stats sd
#'
#' @author David Izydorczyk
#'
#' @return a character string with the pattern "Mean (SD)"
#'
#'
#' @examples
#' mean_sd(rnorm(100))
#' "0.10 (1.01)"
#' mean_sd(runif(100,0,1),gt1=FALSE)
#' ".49 (.29)"
#'
#' @export
mean_sd <- function(x,digits=2, gt1=TRUE){

  if(!is.numeric(x)){
    stop("x must be numeric")
  }

  m   <- mean(x)
  std <- sd(x)



  return(paste0(printnum(m,digits=digits,gt1=gt1)," (",printnum(std,digits=digits,gt1=gt1),")"))





}

