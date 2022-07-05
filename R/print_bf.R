#' Report Bayes Factors in Manuscripts
#'
#' \code{print_bf} returns the Bayes Factor according to current reporting standards.
#'
#' @param bf The Bayes Factor which should be reported
#'
#' @importFrom magrittr %>%
#'
#' @author David Izydorczyk
#'
#' @return Returns the Bayes Factor as string. Bayes factors greater than 1000 are abbreviated.
#' @examples
#' print_bf(10)
#' "10"
#' print_bf(30.32552)
#' "30.32"
#' print_bf(5235)
#' "> 1000"
#' @export
print_bf <- function(bf){

  if(bf > 1000){

    bf <- "> 1000"

  } else {

    bf <- round(bf,2)  %>% as.character()

  }

  return(bf)
}


