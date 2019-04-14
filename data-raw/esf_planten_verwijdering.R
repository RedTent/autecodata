require(tidyverse)
# 13-4-2019
data_planten <- readxl::read_excel("data-raw/planteigenschappen_ESF_verwijderingstool.xlsx") %>% 
  rename(default_value = `default value`)
data_planten %>% count(category, variable)


data_planten %>% select(species, variable, default_value) %>% spread(species, default_value)

data_planten %>% filter(!str_detect(variable, "location")) %>% distinct(default_value)
