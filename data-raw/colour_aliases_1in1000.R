colours_1in1000 <- list(
  black = "#000000",
  white = "#FFFFFF",
  red = "#F53D3F",
  blue = "#3d9bf5",
  green = "#5D9324",
  yellow = "#f5f33d",
  violet = "#973df5",
  orange = "#f5973d",
  pink = "#f53d9b",
  red_light = "#fa9e9f",
  green_light = "#CDFA9E",
  grey = "#BAB6B5",
  dark_grey = "#8B8888",
  darker_grey = "#656262",
  background = "#E9E4E3"
)

colour_aliases_1in1000 <- c(
  black = colours_1in1000$black,

  red = colours_1in1000$red,
  "late transition" = colours_1in1000$red,
  "late action" = colours_1in1000$red,
  "high carbon exposure" = colours_1in1000$red,

  blue = colours_1in1000$blue,
  "no additional action" = colours_1in1000$blue,
  "baseline" = colours_1in1000$blue,
  "medium carbon exposure" = colours_1in1000$blue,

  white = colours_1in1000$white,

  green = colours_1in1000$green,
  "early action" = colours_1in1000$green,
  "sudden transition" = colours_1in1000$green,
  "low carbon exposure" = colours_1in1000$green,

  yellow = colours_1in1000$yellow,

  violet = colours_1in1000$violet,
  "bdf" = colours_1in1000$violet,

  orange = colours_1in1000$orange,
  "boe" = colours_1in1000$orange,

  pink = colours_1in1000$pink,
  "dnb" = colours_1in1000$pink,

  red_light = colours_1in1000$red_light,

  green_light = colours_1in1000$green_light,

  grey = colours_1in1000$grey,

  dark_grey = colours_1in1000$dark_grey,

  darker_grey = colours_1in1000$darker_grey,

  background = colours_1in1000$background,

  colours_1in1000$black,
  colours_1in1000$red,
  colours_1in1000$blue,
  colours_1in1000$white,
  colours_1in1000$green,
  colours_1in1000$yellow,
  colours_1in1000$violet,
  colours_1in1000$orange,
  colours_1in1000$pink,
  colours_1in1000$red_light,
  colours_1in1000$green_light,
  colours_1in1000$grey,
  colours_1in1000$dark_grey,
  colours_1in1000$darker_grey,
  colours_1in1000$background
)

usethis::use_data(
  colour_aliases_1in1000,
  internal = FALSE,
  overwrite = TRUE
)
