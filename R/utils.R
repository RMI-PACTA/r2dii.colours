check_palette_name <- function(palette_name) {
  return(TRUE)
}

check_colour_name <- function(palette_name, colour_name) {
  palette_colours <- eval(palette_name)

  if (colour_name %in% palette_colours$label) {
    return(TRUE)
  } else {
    rlang::abort(
      c(
      glue("No colour in {palette_name} with a given `colour_name`."),
      x = glue("Possible colour names in the palette: {toString(palette_colours$label)}.")
      )
    )
  }
}
