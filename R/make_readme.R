#' Make Readme of Data.frame
#'
#' Prepares a summary of a data.frame in form of a markdown table, including the name of the columns, a short description, and example values for each variable.
#'
#' @param df data.frame to generate readme for
#' @param desc vector of descriptions for all variables in df
#' @param info additional info you might want to add before the data.frame, prints also the dimensions of the data.frame
#' @param file name and path of the output file
#' @param add_examples if examples of data in the variables should be added to the readme
#' @param digits number of digits used in the examples column (if numeric variable)
#'
#' @importFrom magrittr %>%
#' @importFrom knitr kable
#' @importFrom tibble add_column
#' @importFrom dplyr mutate_if
#'
#' @author David Izydorczyk
#'
#' @return a .txt file with a markdown summary table of your data.frame
#'
#'
#' @examples
#' \dontrun{
#' df = data.frame("ID"   = 1:50,
#'                 "cond" = sample(c("A","B"),50,replace=TRUE),
#'                 "rt"   = rnorm(50,500,40))
#'
#' desc = c("unique numeric participant ID",
#'          "condition [A,B]",
#'          "average reaction time in ms")
#'
#' make_df_readme(df   = df,
#'                desc = desc,
#'                info = "Data of the experiment Hello World",
#'                add_examples=TRUE)
#'}
#'
#'
#'
#'
#' @export
make_df_readme     <- function(df,desc,info = NULL,file = "readme.txt",add_examples=TRUE,digits=2){


  temp0 <- data.frame("Variable"    = names(df),
                      "Type"        = sapply(df, class),
                      "Description" = desc)

  row.names(temp0) <- NULL

  if(add_examples){

    temp_info <- df[sample(1:nrow(df),2),] %>%
      mutate_if(is.numeric,round,digits) %>%
      t() %>%
      as.data.frame() %>%
      apply(1, paste, collapse=", ") %>%
      unlist()

    names(temp_info) <- NULL
    temp0 <- temp0 %>% add_column("Example" = temp_info,.before = "Description")
  }

  # Start writing to the file
  sink(file)
  if(length(info)){
    cat(info,"\n","\n","data.frame (",nrow(df),",",ncol(df),")","\n","\n",sep = "")
  }

  temp1 <- temp0 %>% knitr::kable(format = "markdown")
  paste0(temp1,"\n") %>% cat(sep = "")

  # Stop writing to the file
  sink()

}
