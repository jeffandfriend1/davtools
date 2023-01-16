#' Convert sigma to tau (i.e. precision in JAGS)
#'
#' Function to transform sigma to tau (i.e. precision in JAGS) or the other way around
#'
#' @param tau precision
#' @param sigma standard deviation
#'
#' @author David Izydorczyk
#'
#' @return sigma or tau
#'
#'
#' @examples
#' sigma_tau(tau   = 0.5)
#' sigma_tau(sigma = 4)
#'
#' @export
sigma_tau <- function(tau = NA,sigma = NA){

  if(is.na(tau)){
    tau= 1/(sigma^2)
    return(tau)
  }

  if(is.na(sigma)){
    sigma = 1/sqrt(tau)
    return(sigma)
  }

}
