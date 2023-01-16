#' Load (and if necessary) install packages
#'
#' Function to load packages and install missing packages if necessary. By default loads the tidyverse package
#'
#' @param packages vector of package names to load (and install)
#'
#' @importFrom utils install.packages
#' @importFrom utils installed.packages
#'
#' @author David Izydorczyk
#'
#' @return simple list
#'
#'
#' @examples
#' install_n_load_packages()
#'
#' @export
install_n_load_packages         <- function(packages=c("tidyverse")){

  ## Make list of wanted packages

  wanted.packages <- packages

  ## compare installed and wanted packages

  new.packages <- wanted.packages[!(wanted.packages %in% installed.packages()[,"Package"])]

  # installed the not yet installed but required packages and load them

  if(length(new.packages)) install.packages(new.packages,dependencies = TRUE)
  sapply(wanted.packages, require, character.only = TRUE)

}
