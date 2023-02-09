#' Generate Random Bernoulli Distributed Samples
#'
#' Function to compute random Bernoulli distributed samples. Wrapper around `rbinom`.
#'
#' @param n    number of samples
#' @param prob probability of X = 1
#'
#' @importFrom stats rbinom
#'
#' @author David Izydorczyk
#'
#' @return rbern
#'
#'
#' @examples
#' rbern(10,0.5)
#'
#' @export
rbern     <- function(n,prob){

  return(rbinom(n, 1, prob))

}
