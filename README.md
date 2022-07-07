## Genes analysis 

### Bootstrap with permutations

https://thomasleeper.com/Rcourse/Tutorials/permutationtests.html

--- Run Gene_Boot_main.Rmd

### Installation
```
require("tidyverse")
require("readxl")
require("boot")
require("boot.pval")

```

### Data 
- groups.xlsx
- Hypoth_SO_UBI.xlsx
- SpinalC_SO_UBI_Ctrl_RD_DD.xlsx
- NMS_Calculations_Raw_Data.xlsx


### Session info

```
> sessionInfo()

R version 4.1.3 (2022-03-10)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Pop!_OS 22.04 LTS

Matrix products: default
BLAS:   /usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.so.3
LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblasp-r0.3.20.so

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=en_US.UTF-8       
 [4] LC_COLLATE=en_US.UTF-8     LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
 [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                  LC_ADDRESS=C              
[10] LC_TELEPHONE=C             LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] boot.pval_0.4   boot_1.3-28     patchwork_1.1.1 readxl_1.4.0    forcats_0.5.1  
 [6] stringr_1.4.0   dplyr_1.0.9     purrr_0.3.4     readr_2.1.2     tidyr_1.2.0    
[11] tibble_3.1.7    ggplot2_3.3.6   tidyverse_1.3.1

loaded via a namespace (and not attached):
 [1] tidyselect_1.1.2 xfun_0.31        haven_2.5.0      colorspace_2.0-3 vctrs_0.4.1     
 [6] generics_0.1.2   htmltools_0.5.2  yaml_2.3.5       utf8_1.2.2       rlang_1.0.2     
[11] pillar_1.7.0     glue_1.6.2       withr_2.5.0      DBI_1.1.2        dbplyr_2.2.0    
[16] modelr_0.1.8     lifecycle_1.0.1  munsell_0.5.0    gtable_0.3.0     cellranger_1.1.0
[21] rvest_1.0.2      evaluate_0.15    knitr_1.39       fastmap_1.1.0    tzdb_0.3.0      
[26] parallel_4.1.3   fansi_1.0.3      broom_0.8.0      scales_1.2.0     backports_1.4.1 
[31] jsonlite_1.8.0   fs_1.5.2         digest_0.6.29    hms_1.1.1        stringi_1.7.6   
[36] rbibutils_2.2.8  grid_4.1.3       Rdpack_2.3.1     cli_3.3.0        tools_4.1.3     
[41] magrittr_2.0.3   crayon_1.5.1     pkgconfig_2.0.3  ellipsis_0.3.2   xml2_1.3.3      
[46] reprex_2.0.1     lubridate_1.8.0  assertthat_0.2.1 rmarkdown_2.14   httr_1.4.3      
[51] rstudioapi_0.13  R6_2.5.1         compiler_4.1.3  

```
