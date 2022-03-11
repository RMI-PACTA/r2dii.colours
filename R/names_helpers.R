standardise_names <- function(names) {
  sd_names <- tolower(names) %>%
    trimws() %>%
    str_replace_all(" ", "_") %>%
    str_replace_all("&", "and")
  sd_names
}

make_pretty_labels <- function(names) {
  pretty_names <- r2dii.plot::to_title(names) %>%
    str_replace_all("And", "and") %>%
    r2dii.plot::spell_out_technology()
  pretty_names
}
