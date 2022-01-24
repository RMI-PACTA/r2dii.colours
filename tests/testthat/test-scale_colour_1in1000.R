test_that("outputs a gg ScaleDiscrete", {
  expect_s3_class(scale_colour_1in1000(), c("gg"))
  expect_s3_class(scale_colour_1in1000(), c("ScaleDiscrete"))
  expect_s3_class(scale_fill_1in1000(), c("gg"))
  expect_s3_class(scale_fill_1in1000(), c("ScaleDiscrete"))
})

test_that("changes the plot colours as expected", {
  p <- ggplot2::ggplot(ggplot2::mpg) +
    ggplot2::geom_point(ggplot2::aes(x = displ, y = hwy, colour = class))

  colours_default <- unique_data1(p, "colour")
  colours_changed <- unique_data1(p + scale_colour_1in1000(), "colour")

  expect_false(identical(colours_default, colours_changed))
})

test_that("changes the plot fill as expected", {
  p <- ggplot2::ggplot(ggplot2::mpg) +
    ggplot2::geom_histogram(ggplot2::aes(x = cyl, fill = class), position = "dodge", bins = 5)

  colours_default <- unique_data1(p, "fill")
  colours_changed <- unique_data1(p + scale_fill_1in1000(), "fill")

  expect_false(identical(colours_default, colours_changed))
})
