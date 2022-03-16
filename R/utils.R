check_colour_name <- function(palette, colour_name, env = parent.frame()) {
  .palette <- deparse_1(substitute(palette, env = env))
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
  # add colours to names differing by letter case
  names <- unique(names)
  names_lower <- unique(tolower(names))
  missing_names_core <- setdiff(names_lower, names(colour_aliases))
  missing_names_lettercase <- setdiff(names, names(colour_aliases))
  if (length(missing_names_core) < length(missing_names_lettercase)) {
    names_case_difference <- setdiff(missing_names_lettercase, missing_names_core)
    aliases_case_difference <- c()
    for (i in 1:length(names_case_difference)) {
      colour <- colour_aliases[tolower(names_case_difference[i])]
      aliases_case_difference <- c(aliases_case_difference, setNames(colour, names_case_difference[i]))
    }
    colour_aliases <- c(colour_aliases, aliases_case_difference)
  }
  # add colours to names that are not in aliases
  if (length(missing_names_core) > 0) {
    all_colours <- colour_aliases[names(colour_aliases) == ""]
    available_colours <- setdiff(all_colours, colour_aliases[c(names, names_lower)])
    if (length(missing_names_core) <= length(available_colours)) {
      missing_aliases <- setNames(available_colours[1:length(missing_names_core)], missing_names_core)
      colour_aliases <- c(colour_aliases, missing_aliases)
      inform(glue(
        "Assigning colours to unrecognised names in data: {toString(missing_names_core)}."
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
  }
  colour_aliases
}

get_hex <- function(palette, label) {
  hex <- palette %>%
    filter(.data$label == .env$label) %>%
    pull(.data$hex)
  hex
}
