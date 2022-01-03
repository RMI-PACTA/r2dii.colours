test_that("outputs the expected snapshot", {
  expect_snapshot({
    palette_1in1000_background

    palette_1in1000_goodbad

    palette_1in1000_plot
  })
})
