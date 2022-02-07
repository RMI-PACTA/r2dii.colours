#' Custom 1 in 1000 colour and fill scales
#'
#' A custom discrete colour and fill scales with colours from 1 in 1000 palette.
#'
#' @param colour_groups A vector containing groups variable to which colours are
#'   assigned. It is needed when the data assigned to `colour` aesthetic are
#'   not all contained in colour aliases of the palette.
#' @param ... Other parameters passed on to `ggplot2::discrete_scale()`.
#'
#' @return An object of class "ScaleDiscrete".
#' @export
#'
#' @aliases scale_color_1in1000
#' @family r2dii scales
#'
#' @examples
#' library(ggplot2, warn.conflicts = FALSE)
#' library(r2dii.plot, warn.conflicts = FALSE)
#' library(dplyr, warn.conflicts = FALSE)
#'
#' ggplot(sda %>% filter(emission_factor_metric == 'projected')) +
#'  geom_line(aes(x = year, y = emission_factor_value, colour = sector)) +
#'  scale_colour_1in1000()
#'
#' ggplot(mpg) +
#'   geom_histogram(aes(cyl, fill = class), position = "dodge", bins = 5) +
#'   scale_fill_1in1000()
scale_colour_1in1000 <- function(colour_groups = NULL, ...){
  if (!is.null(colour_groups)) {
    colour_aliases <- add_colours_missing_names(colour_groups, r2dii.colours::colour_aliases_1in1000)
  } else {
    colour_aliases <- r2dii.colours::colour_aliases_1in1000
  }

  scale_color_manual(
    values = colour_aliases,
    na.value = colour_aliases['na'],
    labels = as_function(~ make_pretty_labels(.x)),
    ...
    )
}

scale_color_1in1000 <- scale_colour_1in1000

#' @rdname scale_colour_1in1000
#' @export
scale_fill_1in1000 <- function(colour_groups = NULL, ...){
  if (!is.null(colour_groups)) {
    colour_aliases <- add_colours_missing_names(colour_groups, r2dii.colours::colour_aliases_1in1000)
  } else {
    colour_aliases <- r2dii.colours::colour_aliases_1in1000
  }

  scale_fill_manual(
    values = colour_aliases,
    na.value = colour_aliases['na'],
    labels = as_function(~ make_pretty_labels(.x)),
    ...
    )
}
