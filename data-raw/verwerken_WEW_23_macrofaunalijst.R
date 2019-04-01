
# Verwerken en opschonen WEW 23 macrofauna milieu en habitatprefer --------



# http://www.wew.nu/publicaties/wew_themanummer23_soortenlijst.xls
# http://www.wew.nu/publicaties/wew_themanummer23.pdf 
# Datum bestand 27-3-2019


library(tidyverse)
library(readxl)

raw_data <- read_excel("data-raw/wew_themanummer23_soortenlijst.xls", na = "x", skip = 2)

wew_mafa_zeldzaamheid <- raw_data %>% 
                         rename(taxonnaam = `Taxonnaam (TWN)`) %>% 
                         rename_at(vars(55), .funs = function(x) "zeldzaamheid") %>% 
                         select(taxonnaam, zeldzaamheid) %>% 
                         left_join(select(mapping, code, klasse), by = c("zeldzaamheid" = "code")) %>% 
                         rename(omschrijving = klasse)


wew_mafa_data <- raw_data %>% 
  rename(taxonnaam = `Taxonnaam (TWN)`) %>% 
  rename_at(vars(2:6), .funs = function(x) paste0("zoutgehalte_",x)) %>% 
  rename_at(vars(7:12), .funs = function(x) paste0("diepte_",x)) %>% 
  rename_at(vars(13:17), .funs = function(x) paste0("droogval_",x)) %>% 
  rename_at(vars(18:26), .funs = function(x) paste0("oppervlak_",x)) %>% 
  rename_at(vars(27:30), .funs = function(x) paste0("saprobie_",x)) %>%
  rename_at(vars(31:35), .funs = function(x) paste0("stroming_",x)) %>% 
  rename_at(vars(36:45), .funs = function(x) paste0("substraat_",x)) %>% 
  rename_at(vars(46:50), .funs = function(x) paste0("trofie_",x)) %>% 
  rename_at(vars(51:54), .funs = function(x) paste0("zuurgraad_",x)) %>% 
  rename_at(vars(55), .funs = function(x) "zeldzaamheid") %>% 
  rename(opmerking = "..56") %>% 
  gather(key = "key", value = "indicator_waarde_aandeel", -taxonnaam, -zeldzaamheid, -opmerking, na.rm = TRUE) %>% 
  separate(col = key, into = c("indicator_groep", "indicator_waarde"), sep = "_") %>% 
  select(-zeldzaamheid, -opmerking)



header <- read_excel("data-raw/wew_themanummer23_soortenlijst.xls", na = "x", range = "A1:BD3") %>% t() 
raw_data_header <- tibble(indicator_groep = rownames(header), 
                          indicator_waarde_code = header[,1], 
                          indicator_waarde = header[,2]) %>% 
                   mutate(indicator_groep = ifelse(str_detect(indicator_groep, "\\.\\."), NA, indicator_groep)) %>% 
                   fill(indicator_groep)

mapping <- read_excel("data-raw/wew_themanummer23_soortenlijst.xls", sheet = "factoren en klassengrenzen") %>% fill(factor)
  
wew_mafa_toelichting <- left_join(raw_data_header, mapping, by = c("indicator_waarde_code" = "code")) %>% 
               rename(omschrijving = klasse) %>% 
               select(-factor) %>% 
               filter(!is.na(indicator_groep))

