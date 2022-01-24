# Pull unique values from gg$data[[1]]
unique_data1 <- function(p, name) {
  g <- ggplot2::ggplot_build(p)
  unique(g$data[[1]][[name]])
}
