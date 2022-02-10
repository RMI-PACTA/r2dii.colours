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

add_colours_missing_names <- function(names, colour_aliases) {
  names <- unique(names)
  missing_names <- setdiff(names, names(colour_aliases))
  all_colours <- colour_aliases[names(colour_aliases) == ""]
  available_colours <- setdiff(
    all_colours,
    colour_aliases[names]
    )
  if (length(missing_names) <= length(available_colours)) {
    missing_aliases <- setNames(available_colours[1:length(missing_names)], missing_names)
    colour_aliases <- c(colour_aliases, missing_aliases)
    inform(glue(
      "Assigning colours to unrecognised names in data: {toString(missing_names)}."
    ))
  } else {
    abort(
      c(
        glue("Not enough colours for plotting the data in the chosen colour palette."),
        x = glue("Number of unique colours in the palette: {length(available_colours)}.
                 You passed a column with {length(names)} distinct values."),
        i = "Consider splitting over multiple plots."
      )
    )
  }
  colour_aliases
}

get_hex <- function(palette, label) {
  hex <- palette %>% filter(.data$label == .env$label) %>% pull (.data$hex)
  hex
}
