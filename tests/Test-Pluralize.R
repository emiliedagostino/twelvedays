#' Test for Pluralizing in Twelve Days
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

test_that("pluralize_gift: plural",{
  expected <- "Cows"
  actual <- pluralize_gift("Cow")
  expect_equal(expected, actual)

})
