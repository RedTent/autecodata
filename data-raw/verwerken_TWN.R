require(tidyverse)
library(readxl)

source("data-raw/helper_functions.R")

update_twn()

# update_twn <- function() {
#   url <- "http://sofus.ecosys.nl/Taxus/Downloads/Taxalists/TWNList.XLS"
#   destfile <- "data-raw/twn_lijst.xls"
#   curl::curl_download(url, destfile)
#   shell.exec("D:/Johan/R/autecodata/data-raw/twn_lijst.xls")
#   twn_lijst <- read_excel(destfile) # werkt uitsluitend als het gedownloade bestand een keer geopend is geweest
#   
#   use_data(twn_lijst, overwrite = TRUE)
#   message(lubridate::today())
#   message("Vergeet niet de datum in de TWN-documentatie te updaten")
# }

twn_voorkeur <- 
  twn_lijst %>% 
  select(taxonname, refername) %>% 
  mutate(refername = if_else(is.na(refername), taxonname, refername)) %>% 
  tibble::deframe() #%>% .[1:10]


# twn_voorkeur_namen <- function(namen_orig) {
#   
#   twn_voorkeur <- twn_lijst %>% 
#     select(taxonname, refername) %>% 
#     mutate(refername = if_else(is.na(refername), taxonname, refername)) %>% 
#     tibble::deframe() 
#   
#   namen_voorkeur <- unname(twn_voorkeur[namen_orig])
#   
#   if (!identical(namen_orig, namen_voorkeur)) {
#     twn_voorkeur_namen(namen_voorkeur)
#   }
# 
#   namen_voorkeur  
#   
# }

x <- autecodata::wew_mafa_data$taxonnaam[1:10] 
twn_voorkeur[twn_voorkeur[x]]
