f2c <- function(temp) {
  return(
    (temp - 32) * 5/9
  )
}

testthat::expect_equal(f2c(32), 0)
testthat::expect_equal(f2c(212), 100)
