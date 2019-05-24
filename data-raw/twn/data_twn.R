# Dit bestand dient compleet uitgevoerd/gesourced te worden

library(tidyverse)
library(readxl)

# TWN-lijst ---------------------------------------------------------------

twn_orig <- readxl::read_excel("data-raw/twn/twn_lijst.xlsx") %>% mutate(date = as.Date(date))

taxonlevel_volgorde <- readr::read_csv2("data-raw/twn/volgorde_taxonlevels.csv") %>% .$taxonlevel

twn_lijst <- twn_orig %>% mutate(taxonlevel = factor(taxonlevel, levels = taxonlevel_volgorde, ordered = TRUE))

use_data(twn_lijst, overwrite = TRUE)

# opzoektabellen - internal -----------------------------------------------

### Voorkeurnaam

opzoektabel_twn_voorkeur <- 
  twn_lijst %>% 
  dplyr::mutate(refername = ifelse(is.na(refername), taxonname, refername)) %>% 
  dplyr::select(taxonname, refername) %>% 
  dplyr::distinct() %>% 
  tibble::deframe()

use_data(opzoektabel_twn_voorkeur, internal = TRUE, overwrite = TRUE)

### Parent

#twn_parent_1 is een opzoeklijst om soorten die niet de voorkeurnaam hebben toch een parent te geven.
twn_parent_1 <- 
  twn_lijst %>% 
  dplyr::select(taxonname, parentname) %>% 
  dplyr::distinct() %>% 
  tibble::deframe()

opzoektabel_twn_parent <- 
  twn_lijst %>% 
  mutate(voorkeurnaam = unname(opzoektabel_twn_voorkeur[taxonname]),
         parentname = ifelse(is.na(parentname), unname(twn_parent_1[voorkeurnaam]), parentname)) %>% 
  dplyr::select(taxonname, parentname) %>% 
  dplyr::distinct() %>% 
  tibble::deframe()

use_data(opzoektabel_twn_parent, internal = TRUE, overwrite = TRUE)

### Status

opzoektabel_twn_status <- 
  twn_lijst %>% 
  dplyr::select(taxonname, status) %>% 
  dplyr::distinct() %>% 
  tibble::deframe()

use_data(opzoektabel_twn_status, internal = TRUE, overwrite = TRUE)

### Nederlandse naam

opzoektabel_twn_localname <- 
  twn_lijst %>% 
  dplyr::select(taxonname, localname) %>% 
  dplyr::distinct() %>% 
  tibble::deframe()

use_data(opzoektabel_twn_localname, internal = TRUE, overwrite = TRUE)

### Taxonlevel

opzoektabel_twn_taxonlevel <- 
  twn_lijst %>% 
  dplyr::select(taxonname, taxonlevel) %>% 
  dplyr::distinct() %>% 
  tibble::deframe()

use_data(opzoektabel_twn_taxonlevel, internal = TRUE, overwrite = TRUE)
