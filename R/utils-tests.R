# Pull unique values from gg$data[[1]]
unique_data1 <- function(p, name) {
  g <- ggplot2::ggplot_build(p)
  unique(g$data[[1]][[name]])
}

example_plot_scale_colour <- function() {
  ggplot2::ggplot(
    r2dii.plot::sda %>%
      filter(.data$emission_factor_metric == "projected")
  ) +
    ggplot2::geom_line(
      ggplot2::aes(
        x = .data$year,
        y = .data$emission_factor_value,
        colour = .data$sector
      )
    )
}

example_plot_scale_fill <- function() {
  ggplot2::ggplot(
    r2dii.plot::sda %>%
      filter(.data$emission_factor_metric == "projected")
  ) +
    ggplot2::geom_bar(
      ggplot2::aes(
        x = .data$year,
        y = .data$emission_factor_value,
        fill = .data$sector
      ),
      stat = "identity"
    )
}

example_data_lowercase <- function() {
  tibble::tibble(
    x = rep(1:5, 3), val = sample(1:100, 15),
    variable = rep(c("ice", "electric", "hybrid"), 5)
  )
}

example_data_uppercase <- function() {
  tibble::tibble(
    x = rep(1:5, 3), val = sample(1:100, 15),
    variable = rep(c("ICE", "Electric", "Hybrid"), 5)
  )
}
