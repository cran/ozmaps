## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(ozmaps)

## ----ozmap--------------------------------------------------------------------
library(ozmaps)
ozmap()


## ----country------------------------------------------------------------------
ozmap(x = "country")

## ----add-plot-----------------------------------------------------------------
plot(quakes[c("long", "lat")], xlim = c(120, 190))
ozmap(add = TRUE)

## ----sf-format----------------------------------------------------------------
sf_oz <- ozmap_data("states")

tibble::as_tibble(sf_oz)

## ----ochRe--------------------------------------------------------------------
if (utils::packageVersion("paletteer") < '1.0.0') {
 pal <- paletteer::paletteer_d(package = "ochRe", palette = "namatjira_qual")
} else {
  pal <- paletteer::paletteer_d(palette = "ochRe::namatjira_qual")
} 
opal <- colorRampPalette(pal)

ozmap("abs_ced", col = opal(nrow(abs_ced)))

ozmap("abs_ste", col = opal(nrow(abs_ste)))

