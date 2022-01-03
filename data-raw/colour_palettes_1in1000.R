# styler: off
palette_1in1000_background <- "#E9E4E3"

palette_1in1000_goodbad <- tibble::tribble(
           ~label,      ~hex,
            "red", "#fa9e9f",
          "green", "#CDFA9E",
           "grey", "#BAB6B5",
      "dark_grey", "#8B8888",
    "darker_grey", "#656262"
      )

palette_1in1000_plot <- tibble::tribble(
      ~label,      ~hex,
     "black", "#000000",
     "white", "#FFFFFF",
       "red", "#F53D3F",
      "blue", "#3d9bf5",
     "green", "#5D9324",
    "yellow", "#f5f33d",
    "violet", "#973df5",
    "orange", "#f5973d",
      "pink", "#f53d9b",
      "grey", "#BAB6B5"
    )

# styler: on

usethis::use_data(
  palette_1in1000_background,
  palette_1in1000_goodbad,
  palette_1in1000_plot,
  internal = FALSE,
  overwrite = TRUE
)
