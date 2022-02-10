colours_pacta <- list(
  blue = get_hex(palette_2dii_sector, "automotive"),
  blue1 = get_hex(palette_2dii_automotive, "hybrid_hdv"),
  blue2 = get_hex(palette_2dii_automotive, "ice"),
  blue3 = get_hex(palette_2dii_automotive, "ice_hdv"),
  blue01 = get_hex(palette_2dii_automotive, "fuelcell"),
  blue02 = get_hex(palette_2dii_automotive, "electric_hdv"),
  blue03 = get_hex(palette_2dii_automotive, "electric"),
  green = get_hex(palette_2dii_sector, "aviation"),
  dark_yellow = get_hex(palette_2dii_sector, "cement"),
  brown = get_hex(palette_2dii_sector, "coal"),
  almost_black = get_hex(palette_2dii_sector, "oil&gas"),
  grey = get_hex(palette_2dii_oil_gas, "gas"),
  orange = get_hex(palette_2dii_sector, "power"),
  orange1 = get_hex(palette_2dii_power, "coalcap"),
  orange01 = get_hex(palette_2dii_power, "gascap"),
  orange02 = get_hex(palette_2dii_power, "nuclearcap"),
  orange03 = get_hex(palette_2dii_power, "hydrocap"),
  orange04 = get_hex(palette_2dii_power, "renewablescap"),
  dark_purple = get_hex(palette_2dii_sector, "shipping"),
  ruby_red = get_hex(palette_2dii_sector, "steel"),
  steel_grey = get_hex(palette_2dii_plot, "grey")
)

colour_aliases_pacta <- c(
  blue = colours_pacta$blue,
  automotive = colours_pacta$blue,
  hybrid = colours_pacta$blue,

  blue1 = colours_pacta$blue1,
  hybrid_hdv = colours_pacta$blue1,

  blue2 = colours_pacta$blue2,
  ice = colours_pacta$blue2,

  blue3 = colours_pacta$blue3,
  ice_hdv = colours_pacta$blue3,

  blue01 = colours_pacta$blue01,
  fuelcell = colours_pacta$blue01,

  blue02 = colours_pacta$blue02,
  electric_hdv = colours_pacta$blue02,

  blue03 = colours_pacta$blue03,
  electric = colours_pacta$blue03,

  green = colours_pacta$green,
  aviation = colours_pacta$green,

  dark_yellow = colours_pacta$dark_yellow,
  cement = colours_pacta$dark_yellow,

  brown = colours_pacta$brown,
  coal = colours_pacta$brown,

  almost_black = colours_pacta$almost_black,
  oil_and_gas = colours_pacta$almost_black,
  fossil_fuels = colours_pacta$almost_black,
  oil = colours_pacta$almost_black,

  grey = colours_pacta$grey,
  gas = colours_pacta$grey,

  orange = colours_pacta$orange,
  power = colours_pacta$orange,
  oilcap = colours_pacta$orange,
  oil_cap = colours_pacta$orange,
  oil_capacity = colours_pacta$orange,

  orange1 = colours_pacta$orange1,
  coalcap = colours_pacta$orange1,
  coal_cap = colours_pacta$orange1,
  coal_capacity = colours_pacta$orange1,

  orange01 = colours_pacta$orange01,
  gascap = colours_pacta$orange01,
  gas_cap = colours_pacta$orange01,
  gas_capacity = colours_pacta$orange01,

  orange02 = colours_pacta$orange02,
  nuclearcap = colours_pacta$orange02,
  nuclear_cap = colours_pacta$orange02,
  nuclear_capacity = colours_pacta$orange02,

  orange03 = colours_pacta$orange03,
  hydrocap = colours_pacta$orange03,
  hydro_cap = colours_pacta$orange03,
  hydro_capacity = colours_pacta$orange03,

  orange04 = colours_pacta$orange04,
  renewablescap = colours_pacta$orange04,
  renewables_cap = colours_pacta$orange04,
  renewables_capacity = colours_pacta$orange04,

  dark_purple = colours_pacta$dark_purple,
  shipping = colours_pacta$dark_purple,

  ruby_red = colours_pacta$ruby_red,
  steel = colours_pacta$ruby_red,

  steel_grey = colours_pacta$steel_grey,
  na = colours_pacta$steel_grey,

  # colours that can be assigned to names not matching any aliases
  colours_pacta$green,
  colours_pacta$orange,
  colours_pacta$dark_purple,
  colours_pacta$dark_yellow,
  colours_pacta$blue,
  colours_pacta$ruby_red,
  colours_pacta$brown,
  colours_pacta$steel_grey,
  colours_pacta$almost_black
)

usethis::use_data(
  colour_aliases_pacta,
  internal = FALSE,
  overwrite = TRUE
)
