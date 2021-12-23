check_colour_name <- function(palette, colour_name) {
  if (colour_name %in% palette$label) {
    return(TRUE)
  } else {
    abort(
      c(
        "No colour in palette`` with a given `colour_name`.",
        x = glue("Possible colour names in the palette: {toString(palette_colours$label)}.")
      )
    )
  }
}
