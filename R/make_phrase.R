#' Puts the various parts of speech together into a full phrase.
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#' @import english
#'
#' @export
make_phrase <- function(num, num_word, item, verb, adjective, location){

  verb <- stringr::str_replace_na(verb, "")
  adjective <- stringr::str_replace_na(adjective, "")
  location <- stringr::str_replace_na(location, "")
  item = case_when(
    num==1 ~as.character(item),
    TRUE~ as.character(pluralize_gift(item))
  )
  num_word = case_when(
    num==1~ "a",
    TRUE~as.character(english::english(num))
  )
  glue<- glue("{num_word} {adjective} {item} {verb} {location}")
  together<-str_squish(glue)
  return(together)
}
