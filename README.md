
<!-- README.md is generated from README.Rmd. Please edit that file -->

# r2dii.colours <a href='https://github.com/2DegreesInvesting/r2dii.colours'><img src='https://imgur.com/A5ASZPE.png' align='right' height='43' /></a>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)
[![Codecov test
coverage](https://codecov.io/gh/2DegreesInvesting/r2dii.colours/branch/master/graph/badge.svg)](https://app.codecov.io/gh/2DegreesInvesting/r2dii.colours?branch=master)
[![R-CMD-check](https://github.com/2DegreesInvesting/r2dii.colours/workflows/R-CMD-check/badge.svg)](https://github.com/2DegreesInvesting/r2dii.colours/actions)
[![CRAN
status](https://www.r-pkg.org/badges/version/r2dii.colours)](https://CRAN.R-project.org/package=r2dii.colours)
<!-- badges: end -->

The goal of r2dii.colours is to provide you with an easy access to
colours from palettes created for different research streams at 2DII.

## Installation

You can install the development version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("2DegreesInvesting/r2dii.colours")
```

## Examples

The r2dii.plot package can be used to retrieve datasets containing 2DII
colour palettes or to get hex codes of particular colours from a
palette.

``` r
library(munsell)
library(ggplot2)
library(r2dii.colours)
```

For example, one can retrieve the colour palette dataset defined for
plots in 1 in 1000 research stream.

``` r
palette <- palette_1in1000_plot
palette
#> # A tibble: 10 × 2
#>    label  hex    
#>    <chr>  <chr>  
#>  1 black  #000000
#>  2 white  #FFFFFF
#>  3 red    #F53D3F
#>  4 blue   #3d9bf5
#>  5 green  #5D9324
#>  6 yellow #f5f33d
#>  7 violet #973df5
#>  8 orange #f5973d
#>  9 pink   #f53d9b
#> 10 grey   #BAB6B5

munsell::plot_hex(palette$hex)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" style="display: block; margin: auto auto auto 0;" />

Or one can retrieve the hex codes from a particular palette and use them
in their plots.

``` r
colours <- get_colours(
  c("green", "grey", "red"), 
  palette = palette_1in1000_goodbad
  )

ggplot(mtcars, aes(x = wt, y = mpg, colour = factor(cyl))) + 
  geom_point() +
  scale_colour_manual(values = colours)
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" style="display: block; margin: auto auto auto 0;" />
