get_colours <- function(colour_names = "red", palette = palette.1in1000.plot) {
  check_colour_name(palette, colour_names)

  colour_hex <- palette %>%
      filter(.data$label %in% colour_names) %>%
      pull(.data$hex)
  return(colour_hex)
}
