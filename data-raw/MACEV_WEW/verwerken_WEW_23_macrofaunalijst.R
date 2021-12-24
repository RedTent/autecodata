# Verwerken en opschonen WEW 23 macrofauna milieu en habitatprefer --------

# http://www.wew.nu/publicaties/wew_themanummer23_soortenlijst.xls
# http://www.wew.nu/publicaties/wew_themanummer23.pdf 

library(tidyverse)
library(readxl)
library(twn)

raw_data <- read_excel("data-raw/MACEV_WEW/wew_themanummer23_soortenlijst.xls", na = "x", skip = 2)
mapping <- read_excel("data-raw/MACEV_WEW/wew_themanummer23_soortenlijst.xls", sheet = "factoren en klassengrenzen") %>% fill(factor)
header <- read_excel("data-raw/MACEV_WEW/wew_themanummer23_soortenlijst.xls", na = "x", range = "A1:BD3") %>% t() 
raw_data_header <- tibble(indicator_groep = rownames(header), 
                          indicator_waarde_code = header[,1], 
                          indicator_waarde = header[,2]) %>% 
  mutate(indicator_groep = ifelse(str_detect(indicator_groep, "\\.\\."), NA, indicator_groep)) %>% 
  fill(indicator_groep)


macev_wew_toelichting <- 
  left_join(raw_data_header, filter(mapping, factor != "zeldzaamheid"), by = c("indicator_waarde_code" = "code")) %>% 
  rename(indicator_waarde_omschrijving = klasse) %>% 
  select(-factor) %>% 
  filter(!is.na(indicator_waarde_omschrijving))


macev_wew_data <- 
  raw_data %>% 
  rename(taxonnaam_orig = `Taxonnaam (TWN)`) %>% 
  rename_at(vars(2:6), .funs = function(x) paste0("zoutgehalte_",x)) %>% 
  rename_at(vars(7:12), .funs = function(x) paste0("diepte_",x)) %>% 
  rename_at(vars(13:17), .funs = function(x) paste0("droogval_",x)) %>% 
  rename_at(vars(18:26), .funs = function(x) paste0("oppervlak_",x)) %>% 
  rename_at(vars(27:30), .funs = function(x) paste0("saprobie_",x)) %>%
  rename_at(vars(31:35), .funs = function(x) paste0("stroming_",x)) %>% 
  rename_at(vars(36:45), .funs = function(x) paste0("substraat_",x)) %>% 
  rename_at(vars(46:50), .funs = function(x) paste0("trofie_",x)) %>% 
  rename_at(vars(51:54), .funs = function(x) paste0("zuurgraad_",x)) %>% 
  select(c(1:54)) %>% 
  pivot_longer(cols = 2:54, names_to = "key", values_to = "indicator_waarde_aandeel") %>% 
  # gather(key = "key", value = "indicator_waarde_aandeel", -taxonnaam_orig, na.rm = TRUE) %>% 
  separate(col = key, into = c("indicator_groep", "indicator_waarde"), sep = "_") %>% 
  mutate(taxonnaam_voorkeur = twn_voorkeurnaam(taxonnaam_orig)) %>% 
  left_join(macev_wew_toelichting) %>% 
  mutate(indicator_waarde_code = unname(indicator_waarde_code)) %>% 
  relocate(taxonnaam_orig, 
           taxonnaam_voorkeur, 
           indicator_groep, 
           indicator_waarde_code, 
           indicator_waarde, 
           indicator_waarde_omschrijving)


macev_wew_zeldzaamheid <- 
  raw_data %>% 
  rename(taxonnaam_orig = `Taxonnaam (TWN)`) %>% 
  rename_at(vars(55), .funs = function(x) "zeldzaamheid") %>% 
  select(taxonnaam_orig, zeldzaamheid) %>% 
  left_join(select(filter(mapping, factor == "zeldzaamheid"), code, klasse), by = c("zeldzaamheid" = "code")) %>% 
  rename(omschrijving = klasse) %>% 
  mutate(taxonnaam_voorkeur = twn_voorkeurnaam(taxonnaam_orig)) %>% 
  select(taxonnaam_orig, taxonnaam_voorkeur, everything()) %>% 
  filter(!is.na(zeldzaamheid)) %>% 
  mutate(omschrijving = if_else(zeldzaamheid == "u", "??uitgestorven??", omschrijving))


use_data(macev_wew_data, overwrite = TRUE)
use_data(macev_wew_zeldzaamheid, overwrite = TRUE)
use_data(macev_wew_toelichting, overwrite = TRUE)
