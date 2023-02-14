library(tidyverse)

diamonds %>%
  select(carat, price)

# simple function
add_two_numbers <- function(x, y) {
  x + y
}

add_two_numbers(1, 4)
added <- add_two_numbers(1, 4)
added

add_two_numbers <- function(x, y) {
  return(x + y)
}
added <- add_two_numbers(1, 4)
added

math_two_numbers <- function(x, y, operation) {
  if (operation == "add") {
    return(x + y)
  }
  return(x - y)
}
math_two_numbers(1, 4, "add")
math_two_numbers(1, 4, "asdfihsadkfhkadjfhkdjsfksdjk")


math_two_numbers <- function(x, y, operation) {
  if (operation == "add") {
    return(x + y)
  } else if (operation == "subtract") {
    return(x - y)
  } else {
    stop("I don't know what operation you passed.")
  }
}
math_two_numbers(1, 4, "add")
math_two_numbers(1, 4, "asdfihsadkfhkadjfhkdjsfksdjk")
math_two_numbers(1, 4, "subtract")

math_two_numbers <- function(x, y, operation) {
  if (operation == "add") {
    result <- x + y
  }
  if (operation == "subtract") {
    result <- x - y
  }
  return(result)
}

math_two_numbers_default <- function(x, y, operation = "add") {
  if (operation == "add") {
    return(x + y)
  } else if (operation == "subtract") {
    return(x - y)
  } else {
    stop("I don't know what operation you passed.")
  }
}
math_two_numbers_default(1, 4, "add")
math_two_numbers_default(1, 4, "asdfihsadkfhkadjfhkdjsfksdjk")
math_two_numbers_default(1, 4, "subtract")
math_two_numbers_default(1, 4)

add_two_numbers <- function(x, y, operation = "add") {
  if (operation == "add") {
    return(x + y)
  } else if (operation == "subtract") {
    return(x - y)
  } else {
    stop("I don't know what operation you passed.")
  }
}


# lexical scoping: name masking
x <- 10

add_to_x <- function(to_add) {
  x <- 5
  return(x + to_add)
}
add_to_x(100)
x

# lexical scoping: dynamic lookup
x <- 5

add_to_x <- function(to_add) {
  return(x + to_add)
}
add_to_x(100)

add_to_x <- function(to_add, x) {
  return(x + to_add)
}
x <- 5
add_to_x(100, x)

# functions: fresh start
x <- 10
add_to_x <- function(to_add) {
  x <- to_add + x
  return(x)
}

add_to_x(2)
add_to_x(2)
add_to_x(2)
add_to_x(2)

f2c <- function(temp) {
  return((temp - 32) * 5 / 9)
}
f2c(32)
f2c("32")
f2c("missing")

f2c <- function(temp) {
  if (!is.numeric(temp)) {
    stop("Please pass me a number.")
  }
  return((temp - 32) * 5 / 9)
}
f2c(32)
f2c(212)
f2c("32")
f2c("missing")

f2c <- function(temp) {
  if (is.numeric(temp)) {
    return((temp - 32) * 5 / 9)
  }
  return(stop("i didn't get a number"))
}

library(testthat)
expect_equal(f2c(32), 0)
expect_equal(f2c(212), 100)
#expect_equal(f2c(32), 1)

expect_error(f2c("42"))
