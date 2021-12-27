test_that("With bad colour name errors gracefully", {
  expect_snapshot_error(get_colours("bad"))
})

test_that("With vector of names returns a vector of the same length", {
  expect_equal(length(get_colours(c("red", "blue"))), 2)
})

test_that("Returns expected vector of hex codes", {
  expect_snapshot(get_colours(c("red", "blue")))
})

test_that("Works with a user-defined palette", {
  user_palette <- tibble::tribble(
           ~label,      ~hex,
            "white", "#FFFFFF"
      )
  expect_snapshot_output(get_colours(c("white"), palette = user_palette))
})

test_that("Returns vector of hex codes in order of `colour_names` passed", {
  expect_true(all(get_colours(c("red", "blue")) != get_colours(c("blue", "red"))))
})
