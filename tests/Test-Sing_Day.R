#' Test on Sing Day Function in Twelve Days
#'
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#' @import english
#' @import twelvedays
#' @import testthat
#'
#' @export
#'


test_that("sing_day: sing a day in the song",{
  xmas2<-read.csv("https://www.dropbox.com/s/ap2hqssese1ki4j/xmas_2.csv?dl=1")
  xmas2<-xmas2 %>%
    dplyr::mutate(
      Full.Phrase = pmap_chr(list(Day, Day, Gift.Item, Verb, Adjective, Location), make_phrase)
    )
  expected <- "On the first day of Christmas, my true love gave to me:\nand a email from Cal Poly."
  actual <- sing_day(xmas2, 1, Full.Phrase)
  expect_equal(expected, actual)

})
