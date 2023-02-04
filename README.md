[![Project Status: Active The project has reached a stable, usable state
and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![packageversion](https://img.shields.io/badge/Package%20version-0.1.0-orange.svg?style=flat-square)](commits/develop)
[![Last-changedate](https://img.shields.io/badge/last%20change-2023--02--04-yellowgreen.svg)](/commits/master)

# UC Inspired Colors for Coloring

An R package of colors inspired from incredible University of California color scheme. Following are some snippets and some use case. Mix and match as you feel innovative. Enjoy, be safe, and be kind. 

## Installation

``` r
# Install the development version from GitHub:
# install.packages("devtools")
  devtools::install_github("rohit43/UcColoR")
```

## Palettes

## Let there be light
```{r, eval = TRUE}
library(scales)
library(UcColoR)
mCol <- ucPal(palette = "Let there be light", reverse = FALSE)(100)
show_col(mCol, labels = FALSE, borders = NA)
```
![](man/figures/fig_01.png)

## Sun Rise
```{r}
mCol <- ucPal(palette = "Sun Rise", reverse = TRUE)(100)
show_col(mCol, labels = FALSE, borders = NA)
```
![](man/figures/fig_02.png)

## Left my Blues in San Francisco
```{r}
mCol <- ucPal(palette = "Left my Blues in SF", reverse = FALSE)(100)
show_col(mCol, labels = FALSE, borders = NA)
```
![](man/figures/fig_03.png)

## Color me Gold
```{r}
mCol <- ucPal(palette = "Color me Gold", reverse = FALSE)(100)
show_col(mCol, labels = FALSE, borders = NA)
```
![](man/figures/fig_04.png)

# Use with ggplot
```{r}
library(ggplot2)
ggplot(data = mpg) +
  geom_point(mapping = aes(displ, y = hwy, color = class), size = 3) +
  scale_color_ucCol(palette = "Let there be light") +
  theme_bw()
```
![](man/figures/fig_05.png)

## Manual colors
```{r, message=FALSE}
library(dplyr)
mpg |>
  filter(class %in% c("compact", "suv")) |>
ggplot() +
  geom_point(mapping = aes(displ, y = hwy, color = class), size = 3) +
  scale_color_manual(values = c(ucColor()[[1]], ucColor()[[9]])) +
  theme_bw()
```
![](man/figures/fig_06.png)
