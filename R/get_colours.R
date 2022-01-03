#' Retrieve colour hex values from a palette
#'
#' @param colour_names Character string or a vector of character strings with
#'   names of colours for which you want to retrieve the hex values.
#' @param palette The dataframe from which the hex values are retrieved. It
#'   should contain columns `label` and `hex`.
#'
#' @return A vector of strings with hex codes in order specified by
#'   `colour_names`.
#' @export
#'
#' @examples
#' # use default palette
#' get_colours(c("red", "blue"))
#'
#' # specify which palette to use
#' get_colours(c("red", "green"), palette = palette.1in1000.goodbad)
get_colours <- function(colour_names = "red", palette = r2dii.colours::palette.1in1000.plot) {
  check_colour_name(palette, colour_names)

  colour_hex <- palette %>%
      filter(.data$label %in% colour_names) %>%
      mutate(label = factor(.data$label, levels = colour_names)) %>%
      arrange(.data$label) %>%
      pull(.data$hex)
  colour_hex
}
