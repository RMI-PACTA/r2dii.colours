get_colours <- function(colour_name = "red", palette = palette.1in1000.plot) {
  check_colour_name(palette, colour_name)

  colour_hex <- palette %>%
      filter(.data$label == colour_name) %>%
      pull(.data$hex)
  return(colour_hex)
}
