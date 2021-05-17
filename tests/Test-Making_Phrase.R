#' Test on Making a Phrase Function in Twelve Days
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



test_that("Make_Phrase: combine",{
  expected <- "three  dogs crying in a swimming pool"
  actual <- make_phrase(num_word = "three", item = "dog", verb = "crying", adjective = "", location = "in a swimming pool")
  expect_equal(expected, actual)

})
