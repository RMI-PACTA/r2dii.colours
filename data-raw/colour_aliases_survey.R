colours_survey <- list(
  green1 = "#1A8035",
  green2 = "#5CB24E",
  green3 = "#92C891",
  white = "#FFFFFF"
)

colour_aliases_survey <- c(
  green = colours_survey$green1,
  green1 = colours_survey$green1,
  climate_goals_annual_reporting = colours_survey$green1,
  "Annual reporting" = colours_survey$green1,

  green2 = colours_survey$green2,
  climate_strategy_concrete_goals = colours_survey$green2,
  "Concrete goals" = colours_survey$green2,

  green3 = colours_survey$green3,
  climate_strategy_whole_organization = colours_survey$green3,
  "Climate strategy" = colours_survey$green3,

  na = colours_survey$white
)

usethis::use_data(
  colour_aliases_survey,
  internal = FALSE,
  overwrite = TRUE
)
