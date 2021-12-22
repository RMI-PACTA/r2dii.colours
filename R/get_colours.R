get_colours <- function(
  palette_name = "palette.1in1000.plot",
  colour_name = "red"
  ) {
  check_palette_name(palette_name)
  check_colour_name(palette_name, colour_name)
  palette_colours <- eval(palette_name)

  if (colour_name %in% palette_colours$label) {
    colour_hex <- palette_colours %>%
      filter(.data$label == colour_name) %>%
      pull(.data$hex)
    return(colour_hex)
  } else {
    rlang::abort(
      c(
      glue("No colour in {palette_name} with a given `colour_name`."),
      x = glue("Possible colour names in the palette: {toString(palette_colours$label)}.")
      )
    )
  }
}
