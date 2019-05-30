
<!-- README.md is generated from README.Rmd. Please edit that file -->

# autecodata

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/RedTent/autecodata.svg?branch=master)](https://travis-ci.org/RedTent/autecodata)
[![Codecov test
coverage](https://codecov.io/gh/RedTent/autecodata/branch/master/graph/badge.svg)](https://codecov.io/gh/RedTent/autecodata?branch=master)
<!-- badges: end -->

Het doel van *autecodata* is tweeledig. Het eerste doel is om
autecologische informatie van aquatische soorten op een centrale plaats
beschikbaar te stellen. Het tweede doel is om deze informatie zo aan te
bieden dat deze eenvoudig gebruikt kan worden om analyses en rapportage
in R te maken.

## Installatie

De development version is te installeren van
[GitHub](https://github.com/) met:

``` r
# install.packages("devtools")
devtools::install_github("RedTent/autecodata")
```

## TWN-functies

De `twn_lijst` bevat de complete TWN-lijst. De `get_twn_*`-functies
maken het makkelijk om informatie uit de TWN-lijst op te zoeken op basis
van de taxonnaam.

``` r
library(autecodata)

dplyr::glimpse(twn_lijst)
#> Observations: 26,248
#> Variables: 11
#> $ taxontype  <chr> "Macrophytes", "Macrophytes", "Macrophytes", "Macro...
#> $ taxonname  <chr> "Abies", "Abies alba", "Abies concolor", "Abies nor...
#> $ author     <chr> "P. Miller 1754", "C. Linnaeus 1753", "(G. Gordon e...
#> $ taxongroup <chr> "Gymnospermae", "Gymnospermae", "Angiospermae", "Gy...
#> $ taxonlevel <ord> Genus, Species, Species, Species, Species, Species,...
#> $ parentname <chr> "Pinaceae", "Abies", "Abies", "Abies", "Abies", "Ab...
#> $ refername  <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,...
#> $ literature <chr> "M0001", "M0001", NA, "M0001", NA, "M0001", "M0001"...
#> $ localname  <chr> NA, "Gewone zilverspar", NA, "Kaukasische zilverspa...
#> $ date       <date> 2009-09-11, 2009-12-17, 2009-12-04, 2009-12-17, 20...
#> $ status     <chr> "10", "10", "10", "10", "10", "10", "91", "10", "10...

get_twn_status(c("Bufo calamita", "Bufo bufo"))
#> [1] "20" "10"

get_twn_voorkeurnaam(c("Bufo calamita", "Bufo bufo"))
#> [1] "Epidalea calamita" "Bufo bufo"

get_twn_parent(c("Bufo calamita", "Bufo bufo"))
#> [1] "Epidalea" "Bufo"

get_twn_localname(c("Bufo calamita", "Bufo bufo"))
#> [1] "Rugstreeppad" "Gewone pad"

get_twn_taxonlevel(c("Bufo calamita", "Bufo bufo"))
#> [1] Species Species
#> 31 Levels: Forma < Varietas < Subspecies < Cultivar < ... < Imperium

# taxonlevels zijn een geordende factor. Zo is het makkelijk 
# om alles boven of onder een bepaald niveau te filteren.
```

### Een voorbeeld uit de praktijk

VIGNETTE?

Een veel voorkomende vraag bij het gebruik van biologische data is de
vraag of het betreffende taxon in de TWN-lijst voorkomt en welke
informatie de TWN-lijst over het betreffende taxon geeft. De
`get_twn_*`-functies maken dit makkelijk

Eerst moeten we geschikte data set laden. Voor het voorbeeld wordt
gebruik gemaakt van data van
[HHSK](https://www.schielandendekrimpenerwaard.nl/ons-werk/waterkwaliteit/metingen-waterkwaliteit):

``` r
library(tidyverse)
library(autecodata)
## basic example code
biologie_metingen <- readr::read_csv2(file = "data-raw/README_example/Biologische_meetgegevens_HHSK.csv") 

head(biologie_metingen)
#> # A tibble: 6 x 15
#>   meetpunt locatiebeschrij~     X      Y datum tijd   taxatype methodecode
#>   <chr>    <chr>            <dbl>  <dbl> <chr> <time> <chr>    <chr>      
#> 1 S_0002   Bergse Achterpl~ 92923 440394 26-4~ 00'00" ZOOPT    ZOOPN      
#> 2 S_0002   Bergse Achterpl~ 92923 440394 26-4~ 00'00" ZOOPT    ZOOPN      
#> 3 S_0002   Bergse Achterpl~ 92923 440394 26-4~ 00'00" ZOOPT    ZOOPN      
#> 4 S_0002   Bergse Achterpl~ 92923 440394 26-4~ 00'00" ZOOPT    ZOOPN      
#> 5 S_0002   Bergse Achterpl~ 92923 440394 26-4~ 00'00" ZOOPT    ZOOPN      
#> 6 S_0002   Bergse Achterpl~ 92923 440394 26-4~ 00'00" ZOOPT    ZOOPN      
#> # ... with 7 more variables: methodenaam <chr>, naam <chr>,
#> #   nederlandse_naam <chr>, waarde_totaal <dbl>, stadium_of_lengte <chr>,
#> #   waarde_stadiummeting <dbl>, eenheid <chr>
```

Als eerst is handig om te weten of alle taxa wel voorkomen in de
TWN-lijst. De TWN-lijst is in `autecodata` opgenomen als `twn_lijst` .

``` r
# Hoeveel taxa komen niet voor in de TWN-lijst?
taxa_twn_lijst <- twn_lijst$taxonname

(!biologie_metingen$naam %in% taxa_twn_lijst) %>% sum()
#> [1] 806
```

Welke status hebben mijn taxa?

``` r

biologie_metingen %>% 
  mutate(status = get_twn_status(naam)) %>% 
  group_by(status) %>% 
  summarise(aantal = n())
#> # A tibble: 7 x 2
#>   status aantal
#>   <chr>   <int>
#> 1 10     324759
#> 2 20        584
#> 3 30        339
#> 4 80       3706
#> 5 91       1845
#> 6 92        238
#> 7 <NA>      806
```

Wat gelijk opvalt is het aantal taxa waarvan de status mist (`NA`)
overeenkomt met het aantal taxa dat ontbreekt in de TWN-lijst. Als een
taxon niet in de TWN-lijst staat, dan heeft het taxon ook geen status.
Het grootste aantal waarnemingen de status *10 - voorkeurnaam*.

Het is ook mogelijk om de voorkeurnamen toe te voegen met
`get_twn_voorkeurnaam()`. Als de huidige naam al de voorkeurnaam blijft
de naam ongewijzigd. Als het een synoniem is dan wordt de naam gewijzigd
in de voorkeurnaam.

``` r



# status van taxa als ze de voorkeurnaam krijgen
biologie_metingen %>% 
  mutate(voorkeurnaam = get_twn_voorkeurnaam(naam),
         status = get_twn_status(voorkeurnaam)) %>% 
  group_by(status) %>% 
  summarise(aantal = n())
#> # A tibble: 5 x 2
#>   status aantal
#>   <chr>   <int>
#> 1 10     325682
#> 2 80       3706
#> 3 91       1845
#> 4 92        238
#> 5 <NA>      806
```

Te zien is dat in dit geval alle taxa met status 20 en 30 een ander naam
hebben gekregen en deze allemaal de status 10 hebben gekregen.
