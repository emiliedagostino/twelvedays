#' Produces the string for one day of the song.
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import english
#'
#' @export
sing_day <- function(dataset, num, phrase_col) {
  numsq<-as.character(english::ordinal(num))
  phrases<- dataset %>%
    dplyr::pull({{phrase_col}})
  phrases[1]<-stringr::str_c("and ", phrases[1], ".")
  phrases1<-stringr::str_c(phrases[num:1], collapse = ", \n")
  glued<-glue::glue("On the {numsq} day of Christmas, my true love gave to me:
                  {phrases1}")
  gluecharacter  <-as.character(glued)
  return(gluecharacter)
}
