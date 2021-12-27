test_that("outputs the expected snapshot", {
  expect_snapshot({
    palette.1in1000.background

    palette.1in1000.goodbad

    palette.1in1000.plot
  })
})
