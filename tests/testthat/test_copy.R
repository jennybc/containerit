# Copyright 2017 Opening Reproducible Research (http://o2r.info)

library(containerit)
context("copy instruction")

test_that("A valid Copy instruction can be created" , {
  obj <- Copy(c("script.R","exampleFolder"), "path/to/destination")
  expect_equal(toString(obj), "COPY [\"script.R\", \"exampleFolder\", \"path/to/destination\"]")
})

test_that("Error with empty constructor" , {
  expect_error(Copy())
})

test_that("Error with only source constructor" , {
  expect_error(Copy("src"))
})

test_that("Error with only multiple destinations" , {
  expect_error(Copy(c("a","b"), c("dest","b")))
})
