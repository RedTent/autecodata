require(tidyverse)
library(readxl)

source("data-raw/helper_functions.R")

# Zie helper_functions.R
#update_twn()

taxonlevel_volgorde <- readr::read_csv2("data-raw/twn/volgorde_taxonlevels.csv") %>% .$taxonlevel

destfile <- "data-raw/twn/twn_lijst.xls"
twn_lijst_oud <- readxl::read_excel(destfile) # werkt uitsluitend als het gedownloade bestand een keer geopend is geweest
twn_lijst_oud <- twn_lijst_oud %>% mutate(taxonlevel = factor(taxonlevel, levels = taxonlevel_volgorde, ordered = TRUE))
use_data(twn_lijst_oud, overwrite = TRUE)

# volgorde_taxonlevels <- readr::read_csv2("data-raw/volgorde_taxonlevels.csv") %>% 
#   arrange(volgorde) %>% 
#   mutate(taxonlevel = factor(taxonlevel, levels = taxonlevel, ordered = TRUE))
