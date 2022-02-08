test_that("outputs a gg ScaleDiscrete", {
  expect_s3_class(scale_colour_2dii(), c("gg"))
  expect_s3_class(scale_colour_2dii(), c("ScaleDiscrete"))
  expect_s3_class(scale_fill_2dii(), c("gg"))
  expect_s3_class(scale_fill_2dii(), c("ScaleDiscrete"))
})

test_that("changes the plot colours as expected", {
  p <- ggplot2::ggplot(ggplot2::mpg) +
    ggplot2::geom_point(ggplot2::aes(x = displ, y = hwy, colour = class))

  colours_default <- unique_data1(p, "colour")
  colours_changed <- unique_data1(p + scale_colour_2dii(), "colour")

  expect_false(identical(colours_default, colours_changed))
})

test_that("changes the plot fill as expected", {
  p <- ggplot2::ggplot(ggplot2::mpg) +
    ggplot2::geom_histogram(ggplot2::aes(x = cyl, fill = class), position = "dodge", bins = 5)

  colours_default <- unique_data1(p, "fill")
  colours_changed <- unique_data1(p + scale_fill_2dii(), "fill")

  expect_false(identical(colours_default, colours_changed))
})

test_that("scale_*_colour is sensitive to `colour_groups`", {

  p <- example_plot_scale_colour() +
    scale_colour_2dii()

  colours_def_par <- unique_data1(p, "colour")

  p2 <- example_plot_scale_colour() +
    scale_colour_2dii(colour_groups = r2dii.plot::sda$sector)

  colours_col_gr <- unique_data1(p2, "colour")

  expect_false(identical(colours_def_par, colours_col_gr))
})

test_that("scale_*_fill is sensitive to `colour_groups`", {
  p <- example_plot_scale_fill() +
    scale_fill_2dii()

  p2 <- example_plot_scale_fill() +
    scale_fill_2dii(colour_groups = r2dii.plot::sda$sector)

  colours_def_par <- unique_data1(p, "fill")
  colours_col_gr <- unique_data1(p2, "fill")

  expect_false(identical(colours_def_par, colours_col_gr))
})

test_that("scale_*_colour is sensitive to `palette`", {

  p <- example_plot_scale_colour() +
    scale_colour_2dii()

  colours_def_par <- unique_data1(p, "colour")

  p2 <- example_plot_scale_colour() +
    scale_colour_2dii(palette = "1in1000")

  colours_col_gr <- unique_data1(p2, "colour")

  expect_false(identical(colours_def_par, colours_col_gr))
})

test_that("scale_*_fill is sensitive to `palette`", {
  p <- example_plot_scale_fill() +
    scale_fill_2dii()

  p2 <- example_plot_scale_fill() +
    scale_fill_2dii(palette = "1in1000")

  colours_def_par <- unique_data1(p, "fill")
  colours_col_gr <- unique_data1(p2, "fill")

  expect_false(identical(colours_def_par, colours_col_gr))
})

# TODO: with bad palette errors gracefully
# TODO: with bad colour_groups errors gracefully

test_that("warns about assigning colours", {
  expect_message(
    example_plot_scale_colour() +
      scale_colour_2dii(colour_groups = r2dii.plot::sda$sector),
    regexp = "Assigning colours to unrecognised names in data"
  )
  expect_message(
    example_plot_scale_fill() +
      scale_fill_2dii(colour_groups = r2dii.plot::sda$sector),
    regexp = "Assigning colours to unrecognised names in data"
  )
})


