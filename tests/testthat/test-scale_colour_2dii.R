test_that("outputs a gg ScaleDiscrete", {
  expect_s3_class(scale_colour_2dii(), c("gg"))
  expect_s3_class(scale_colour_2dii(), c("ScaleDiscrete"))
  expect_s3_class(scale_fill_2dii(), c("gg"))
  expect_s3_class(scale_fill_2dii(), c("ScaleDiscrete"))
})

test_that("changes the plot colours as expected", {
  p <- ggplot(ggplot2::mpg) +
    ggplot2::geom_point(aes(x = displ, y = hwy, colour = class))

  colours_default <- unique_data1(p, "colour")
  colours_changed <- unique_data1(p + scale_colour_2dii(), "colour")

  expect_false(identical(colours_default, colours_changed))
})

test_that("changes the plot fill as expected", {
  p <- ggplot(ggplot2::mpg) +
    ggplot2::geom_histogram(aes(x = cyl, fill = class), position = "dodge", bins = 5)

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

test_that("with bad palette errors gracefully", {
  bad <- "bad"

  expect_snapshot_error(example_plot_scale_colour() +
    scale_colour_2dii(palette = "bad"))
})

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

test_that("scale_*_colour is sensitive to `labels`", {
  new_labels <- c("lab1", "lab2", "lab3", "lab4")

  p <- example_plot_scale_colour() +
    scale_colour_2dii(labels = new_labels)
  g <- ggplot2::ggplot_build(p)

  expect_true(identical(g$plot$scales$scales[[1]]$labels, new_labels))
})

test_that("scale_*_fill is sensitive to `labels`", {
  new_labels <- c("lab1", "lab2", "lab3", "lab4")

  p <- example_plot_scale_fill() +
    scale_fill_2dii(labels = new_labels)
  g <- ggplot2::ggplot_build(p)

  expect_true(identical(g$plot$scales$scales[[1]]$labels, new_labels))
})

test_that("scale_*_colour works with different letter cases", {
  p1 <- ggplot(example_data_lowercase(), aes(x = x, y = val)) +
    ggplot2::geom_line(aes(colour = variable)) +
    scale_colour_2dii(palette = "pacta", colour_groups = example_data_lowercase()$variable)

  p2 <- ggplot(example_data_uppercase(), aes(x = x, y = val)) +
    ggplot2::geom_line(aes(colour = variable)) +
    scale_colour_2dii(palette = "pacta", colour_groups = example_data_uppercase()$variable)

  colours_lowercase <- unique_data1(p1, "colour")
  colours_uppercase <- unique_data1(p2, "colour")

  expect_true(identical(colours_lowercase, colours_uppercase))
})

test_that("scale_*_fill works with different letter cases", {
  p1 <- ggplot(example_data_lowercase(), aes(x = x, y = val, fill = variable)) +
    ggplot2::geom_bar(stat = "identity") +
    scale_fill_2dii(palette = "pacta", colour_groups = example_data_lowercase()$variable)

  p2 <- ggplot(example_data_uppercase(), aes(x = x, y = val, fill = variable)) +
    ggplot2::geom_bar(stat = "identity") +
    scale_fill_2dii(palette = "pacta", colour_groups = example_data_uppercase()$variable)

  colours_lowercase <- unique_data1(p1, "fill")
  colours_uppercase <- unique_data1(p2, "fill")

  expect_true(identical(colours_lowercase, colours_uppercase))
})
