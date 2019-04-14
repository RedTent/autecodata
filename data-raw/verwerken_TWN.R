require(tidyverse)
library(readxl)

source("data-raw/helper_functions.R")

# Zie helper_functions.R
update_twn()



volgorde_taxonlevels <- readr::read_csv2("data-raw/volgorde_taxonlevels.csv") %>% 
  arrange(volgorde) %>% 
  mutate(taxonlevel = factor(taxonlevel, levels = taxonlevel, ordered = TRUE))
