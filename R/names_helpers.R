standardise_names <- function(names) {
  sd_names <- tolower(names) %>%
    trimws() %>%
    str_replace_all(" ", "_") %>%
    str_replace_all("&", "_and_")
  sd_names
}

make_pretty_labels <- function(names) {
  pretty_names <- standardise_names(names) %>%
    r2dii.plot::to_title() %>%
    r2dii.plot::spell_out_technology() %>%
    str_replace_all("And", "and")
  pretty_names
}
