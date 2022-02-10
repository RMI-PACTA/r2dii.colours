#' Custom 2DII colour and fill scales
#'
#' A custom discrete colour and fill scales with colours from 2DII palettes.
#'
#' @param palette String with the name of the colour scale to be used. If not
#'  specified then the general 2dii scale is used
#' @param colour_groups A vector containing groups variable to which colours are
#'  assigned. It is needed when the data assigned to `colour` aesthetic are not
#'  all contained in colour aliases of the palette.
#' @param ... Other parameters passed on to `ggplot2::discrete_scale()`.
#'
#' @return An object of class "ScaleDiscrete".
#' @export
#'
#' @aliases scale_color_2dii
#' @family r2dii scales
#'
#' @examples
#' library(ggplot2, warn.conflicts = FALSE)
#' library(r2dii.plot, warn.conflicts = FALSE)
#' library(dplyr, warn.conflicts = FALSE)
#'
#' sda %>%
#'   filter(emission_factor_metric == "projected") %>%
#'   ggplot() +
#'   geom_line(aes(x = year, y = emission_factor_value, colour = sector)) +
#'   scale_colour_2dii()
#'
#' mpg %>%
#'   ggplot() +
#'   geom_histogram(aes(cyl, fill = class), position = "dodge", bins = 5) +
#'   scale_fill_2dii()
#'
#' sda %>%
#'   filter(emission_factor_metric == "projected") %>%
#'   ggplot() +
#'   geom_line(aes(x = year, y = emission_factor_value, colour = sector)) +
#'   scale_colour_2dii(palette = "1in1000", colour_groups = sda$sector)
#'
#' market_share %>%
#'   filter(sector == "automotive", year %in% c(2020, 2025), metric == "projected") %>%
#'   ggplot() +
#'   geom_bar(
#'     stat = "identity",
#'     aes(x = year, y = technology_share, fill = technology)
#'   ) +
#'   scale_fill_2dii(palette = "pacta")
scale_colour_2dii <- function(
                              palette = c("2dii", "1in1000", "pacta"),
                              colour_groups = NULL, ...) {
  colour_aliases <- get_colour_aliases(palette, colour_groups)

  scale_color_manual(
    values = colour_aliases,
    na.value = colour_aliases["na"],
    labels = as_function(~ make_pretty_labels(.x)),
    ...
  )
}

scale_color_2dii <- scale_colour_2dii

#' @rdname scale_colour_2dii
#' @export
scale_fill_2dii <- function(
                            palette = c("2dii", "1in1000", "pacta"),
                            colour_groups = NULL, ...) {
  colour_aliases <- get_colour_aliases(palette, colour_groups)

  scale_fill_manual(
    values = colour_aliases,
    na.value = colour_aliases["na"],
    labels = as_function(~ make_pretty_labels(.x)),
    ...
  )
}

get_colour_aliases <- function(
                               palette = c("2dii", "1in1000", "pacta"),
                               colour_groups = NULL) {
  if (is.null(palette)) {
    palette <- "2dii"
  }
  palette <- match.arg(palette)
  colour_aliases <- switch(palette,
    "2dii" = r2dii.colours::colour_aliases_2dii,
    "1in1000" = r2dii.colours::colour_aliases_1in1000,
    "pacta" = r2dii.colours::colour_aliases_pacta
  )
  if (!is.null(colour_groups)) {
    colour_aliases <- add_colours_missing_names(colour_groups, colour_aliases)
  }
  colour_aliases
}
