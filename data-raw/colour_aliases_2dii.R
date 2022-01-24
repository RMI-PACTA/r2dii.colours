colours_2dii <- list(
  dark_blue = "#1b324f",
  green = "#00c082",
  orange = "#ff9623",
  grey = "#d0d7e1",
  dark_purple = "#574099",
  yellow = "#f2e06e",
  dark_yellow = "#c1b358",
  soft_blue = "#78c4d6",
  ruby_red = "#a63d57",
  moss_green = "#4a5e54",
  brown = "#4e3b37",
  almost_black = "#181716",
  dark_orange = "#a63603"
)

colour_aliases_2dii <- c(
  dark_blue = colours_2dii$dark_blue,
  equity = colours_2dii$dark_blue,

  green = colours_2dii$green,
  aviation = colours_2dii$green,

  orange = colours_2dii$orange,

  grey = colours_2dii$grey,

  dark_purple = colours_2dii$dark_purple,
  shipping = colours_2dii$dark_purple,

  yellow = colours_2dii$yellow,

  dark_yellow = colours_2dii$dark_yellow,
  cement = colours_2dii$dark_yellow,

  soft_blue = colours_2dii$soft_blue,
  automotive = colours_2dii$soft_blue,

  ruby_red = colours_2dii$ruby_red,
  steel = colours_2dii$ruby_red,

  moss_green = colours_2dii$moss_green,
  bonds = colours_2dii$moss_green,

  brown = colours_2dii$brown,
  coal = colours_2dii$brown,

  almost_black = colours_2dii$almost_black,
  "oil&gas" = colours_2dii$almost_black,
  "oil and gas" = colours_2dii$almost_black,

  dark_orange = colours_2dii$dark_orange,
  power = colours_2dii$dark_orange,

  # unnamed for matching
  colours_2dii$dark_blue,
  colours_2dii$green,
  colours_2dii$orange,
  colours_2dii$dark_purple,
  colours_2dii$dark_yellow,
  colours_2dii$soft_blue,
  colours_2dii$ruby_red,
  colours_2dii$moss_green,
  colours_2dii$brown,
  colours_2dii$almost_black,
  colours_2dii$yellow,
  colours_2dii$dark_orange,
  colours_2dii$grey
)

usethis::use_data(
  colour_aliases_2dii,
  internal = FALSE,
  overwrite = TRUE
)
