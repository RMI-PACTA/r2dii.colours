# styler: off
palette_2dii_plot <- tibble::tribble(
         ~label,      ~hex,
    "dark_blue", "#1b324f",
        "green", "#00c082",
       "orange", "#ff9623",
         "grey", "#d0d7e1",
  "dark_purple", "#574099",
       "yellow", "#f2e06e",
    "soft_blue", "#78c4d6",
     "ruby_red", "#a63d57",
   "moss_green", "#4a5e54"
)

palette_2dii_sector <- tibble::tribble(
        ~label,      ~hex,
  "automotive", "#78C4D6",
    "aviation", "#00c082",
      "cement", "#c1b358",
        "coal", "#4e3b37",
     "oil&gas", "#181716",
       "power", "#a63603",
    "shipping", "#574099",
       "steel", "#a63d57"
)

palette_2dii_power <- tibble::tribble(
         ~label,       ~hex,
         "power", "#7A2701",
         "power", "#a63603",
         "power", "#e6550d",
         "power", "#fd8d3c",
         "power", "#fdbe85",
         "power", "#ffd4ad"
)

palette_2dii_automotive <- tibble::tribble(
          ~label,      ~hex,
    "automotive", "#548995",
    "automotive", "#609cab",
    "automotive", "#6cb0c0",
    "automotive", "#78c4d6",
    "automotive", "#93cfde",
    "automotive", "#aedbe6",
    "automotive", "#c9e7ee"
)

palette_2dii_oil_gas <- tibble::tribble(
            ~label,      ~hex,
         "oil&gas", "#b9b5b0",
         "oil&gas", "#181716"
)

palette_2dii_fossil_fuels <- tibble::tribble(
              ~label,      ~hex,
      "fossil fuels", "#b9b5b0",
      "fossil fuels", "#181716",
      "fossil fuels", "#4e3b37"
)

palette_2dii_scenario <- tibble::tribble(
          ~label,      ~hex,
    "dark_green", "#768555",
   "light_green", "#9CAB7C",
   "dark_yellow", "#FFFFCC",
  "light_yellow", "#FDE291",
           "red", "#E07B73"
)

# styler: on

usethis::use_data(
  palette_2dii_plot,
  palette_2dii_sector,
  palette_2dii_power,
  palette_2dii_automotive,
  palette_2dii_oil_gas,
  palette_2dii_fossil_fuels,
  palette_2dii_scenario,
  internal = FALSE,
  overwrite = TRUE
)
