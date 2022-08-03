# common functions for reproducible reporting

require("tidyverse")
require("readxl")
require("openxlsx") # for normal write xlsx format
# require("patchwork")
require("officer")
require("rvg")
require("boot")
require("boot.pval")
library("RColorBrewer")

my.cores <- min(10, parallel::detectCores() - 1) # always leave at least one free core to keep system responsive
Sys.setenv(MAKEFLAGS = paste0("-j", my.cores))
options(mc.cores = my.cores)

theme_set(theme_light())
S_width <- 13.33 / 2.0
S_height <- 7.5 / 2

plt <- list()

my.colors = c("#CC6677", "#44AA99", "#637373", "#E79C2A", "#008B8B", "#696969", "#BA55D3", "#679B9B", "#F56FAD", "#9C19E0", "#FF9A76")
heatmap.colors <- colorRampPalette(brewer.pal(8, "PiYG"))(25)

formatter <- function(x) {
  dplyr::case_when(
    x < 1e3 ~ as.character(x),
    x < 1e6 ~ paste0(as.character(x/1e3), "K"),
    x < 1e9 ~ paste0(as.character(x/1e6), "M")
  )
}
