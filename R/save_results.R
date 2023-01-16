#' Save results
#'
#' Function to save an R object as .Rdata with the current date automatically appended to the file name
#'
#' @param results results object to save
#' @param path path were to save the object
#' @param name file name
#'
#' @author David Izydorczyk
#'
#' @return Nothing
#'
#'
#' @examples
#' install_n_load_packages()
#'
#' @export
save_results <- function(results,path,name){

  date <- format(Sys.time(), "%d%m%Y")
  save(results,file=paste0(path,name,"_",date,".Rdata"))

}
