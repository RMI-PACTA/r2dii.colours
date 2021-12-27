check_colour_name <- function(palette, colour_name, env = parent.frame()) {
  .palette = deparse_1(substitute(palette, env = env))
  if (all(colour_name %in% palette$label)) {
    return(TRUE)
  } else {
    abort(
      c(
        glue("No colour in {.palette} with a given `colour_name`."),
        x = glue("Possible colour names in the palette: {toString(palette$label)}."),
        i = "You can change the palette by specifying the `palette` argument."
      )
    )
  }
}

# Backport `base::deparse1()` to R < 4.0.0
deparse_1 <- function(expr, collapse = " ", width.cutoff = 500L, ...) {
  paste(deparse(expr, width.cutoff, ...), collapse = collapse)
}
