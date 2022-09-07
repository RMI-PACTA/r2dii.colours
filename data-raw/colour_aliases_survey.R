colours_survey <- list(
  green1 = "#0F9134",
  green2 = "#5DC95D",
  green3 = "#A5D9A6",
  pink1 = "#B5595A",
  pink2 = "#E09999",
  pink3 = "#E8C5C3",
  yellow1 = "#b26a16",
  yellow2 = "#d69032",
  yellow3 = "#f9d775",
  blue1 = "#0A7DAD",
  blue2 = "#23BCFF",
  blue3 = "#85DCFF",
  blue4 = "#D3F2FD",
  white = "#FFFFFF"
)

colour_aliases_survey <- c(
  green = colours_survey$green1,
  green1 = colours_survey$green1,
  climate_strategy_concrete_goals = colours_survey$green1,
  "Concrete goals" = colours_survey$green1,

  green2 = colours_survey$green2,
  climate_strategy_whole_organization = colours_survey$green2,
  "Climate strategy" = colours_survey$green2,

  green3 = colours_survey$green3,
  climate_goals_annual_reporting = colours_survey$green3,
  "Annual reporting" = colours_survey$green3,

  pink = colours_survey$pink1,
  pink1 = colours_survey$pink1,
  table_engagement_exclusion_last = colours_survey$pink1,
  "Last resort exclusion" = colours_survey$pink1,

  pink2 = colours_survey$pink2,
  table_climate_measures_asset_classes_underweighting = colours_survey$pink2,
  "Investments underweighting" = colours_survey$pink2,

  pink3 = colours_survey$pink3,
  table_climate_measures_asset_classes_exclusion = colours_survey$pink3,
  "Exclusion criteria" = colours_survey$pink3,

  yellow = colours_survey$yellow1,
  yellow1 = colours_survey$yellow1,
  table_engagement_joint = colours_survey$yellow1,
  "Joint engagement" = colours_survey$yellow1,

  yellow2 = colours_survey$yellow2,
  sustainability_team_sizeable = colours_survey$yellow2,
  "Resourcing commitment" = colours_survey$yellow2,

  yellow3 = colours_survey$yellow3,
  table_engagement_companies = colours_survey$yellow3,
  "Engagement with investee companies" = colours_survey$yellow3,

  blue = colours_survey$blue1,
  blue1 = colours_survey$blue1,
  mortgage_incentives_financing_conditions = colours_survey$blue1,
  "Financing conditions" = colours_survey$blue1,

  blue2 = colours_survey$blue2,
  mortgage_incentives_assessment_inclusion = colours_survey$blue2,
  "Inclusion in mortgage assessment" = colours_survey$blue2,

  blue3 = colours_survey$blue3,
  mortgage_incentives_pre_finance = colours_survey$blue3,
  "Offer pre-finance solutions" = colours_survey$blue3,

  blue4 = colours_survey$blue4,
  mortgage_incentives_energy_info = colours_survey$blue4,
  "Energy performance information" = colours_survey$blue4,

  na = colours_survey$white
)

usethis::use_data(
  colour_aliases_survey,
  internal = FALSE,
  overwrite = TRUE
)
