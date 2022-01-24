#' Custom 2DII colour and fill scales
#'
#' A custom discrete colour and fill scales with colours from 2DII palette.
#'
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
#' ggplot(sda %>% filter(emission_factor_metric == 'projected')) +
#'  geom_line(aes(x = year, y = emission_factor_value, colour = sector)) +
#'  scale_colour_2dii()
#'
#' ggplot(mpg) +
#'   geom_histogram(aes(cyl, fill = class), position = "dodge", bins = 5) +
#'   scale_fill_2dii()
scale_colour_2dii <- function(...) {
  scale_color_manual(
    values = r2dii.colours::colour_aliases_2dii,
    na.value = r2dii.colours::colour_aliases_2dii['grey'],
    ...
    )
}

scale_color_2dii <- scale_colour_2dii

#' @rdname scale_colour_2dii
#' @export
scale_fill_2dii <- function(...) {
  scale_fill_manual(
    values = r2dii.colours::colour_aliases_2dii,
    na.value = r2dii.colours::colour_aliases_2dii['grey'],
    ...
    )
}
