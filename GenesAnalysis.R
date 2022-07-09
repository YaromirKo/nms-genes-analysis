# common functions for reproducible reporting

require("tidyverse")
require("readxl")
# require("patchwork")
require("boot")
require("boot.pval")

Sys.setenv(MAKEFLAGS = paste0("-j", min(4, parallel::detectCores() - 1)))
my.cores <- min(6, parallel::detectCores() - 1) # leave one free core to keep system responsive
options(mc.cores = my.cores)

theme_set(theme_light())
S_width <- 13.33 / 2.0
S_height <- 7.5 / 2

plt <- list()

my.colors = c("#008B8B", "#696969", "#BA55D3", "#679B9B", "#E79C2A", "#F56FAD", "#9C19E0", "#FF9A76", "#637373")

formatter <- function(x) {
  dplyr::case_when(
    x < 1e3 ~ as.character(x),
    x < 1e6 ~ paste0(as.character(x/1e3), "K"),
    x < 1e9 ~ paste0(as.character(x/1e6), "M")
  )
}