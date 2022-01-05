test_that("outputs the expected snapshot", {
  expect_snapshot({
    palette_1in1000_background

    palette_1in1000_goodbad

    palette_1in1000_plot

    palette_2dii_plot

    palette_2dii_scenario

    palette_2dii_sector

    palette_2dii_power

    palette_2dii_automotive

    palette_2dii_oil_gas

    palette_2dii_fossil_fuels
  })
})
