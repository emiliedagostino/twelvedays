#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import textclean
#' @export
pluralize_gift<- function(x) {

  plural<-textclean::make_plural(x)
  return(plural)
}

