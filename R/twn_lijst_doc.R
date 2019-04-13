#' Taxa Waterbeeher Nederland (TWN)
#' 
#' De TWN-lijst bevat de standaardlijst met namen van taxa zoals deze worden gebruikt binnen het 
#' Nederlandse waterbeheer. Deze dataset bevat de complete TWN-lijst zoals deze aangeboden wordt 
#' op [http://sofus.ecosys.nl/taxabase.htm](http://sofus.ecosys.nl/taxabase.htm)
#' 
#' @format 
#' 
#' Dataframe met 12 kolommen
#' 
#'- `taxontype`  - Code voor het type taxon. Bijv. MACEV of FYTPT 
#'- `taxoncode`  - Code voor het taxon. Dit is verouderd en wordt afgeraden om te worden gebruikt
#'- `taxonname`  - Naam van het taxon
#'- `author`     - Auteur die het taxon beschreven heeft
#'- `taxongroup` - Taxonomische groep binnen het taxon
#'- `taxonlevel` - Het taxonomische niveau van het taxon
#'- `parentname` - Naam van het ouder taxon
#'- `refername`  - Voorkeursnaam - alleen voor taxa met status 20
#'- `literature` - Literatuurverwijzing naar de beschrijving van het taxon
#'- `localname`  - Nederlandse naam indien beschikbaar
#'- `date`       - Datum van toevoegen aan of wijzigen in TWN
#'- `status`     - Statuscode van het taxon. 
#'    - `10` - Voorkeursnaam
#'    - `20` - Synoniem
#'    - `30` - Dubieus taxonconcept
#'    - `80` - Niet-taxonomische soortgroep
#'    - `91` - TWN-fout - Niet gebruiken
#'    - `92` - Verandering van interpretatie - Niet gebruiken
#' 
#' @note De TWN-lijst wordt regelmatig van updates voorzien. Deze TWN-lijst kan daarom enigszins verouderd zijn.
#' 
#' @section Metadata dataset: 
#' 
#' - **Naam:** Taxa Waterbeheer Nederland
#' - **Bronhouder:** Informatiehuis Water
#' - **Beheer:** Rijkswaterstaat
#' - **Leverancier:** EcoSys
#' - **Datum dataset:** 
#' - **Datum opname dataset:** 12 April 2019
#' - **Gebruiksrechten:** Geen beperkingen
#' - **Soortgroep:** Alle
#'
#' @source 
#' [http://sofus.ecosys.nl/taxabase.htm](http://sofus.ecosys.nl/taxabase.htm)
#' 
#' [http://sofus.ecosys.nl/Taxus/Downloads/Taxalists/TWNList.XLS](http://sofus.ecosys.nl/Taxus/Downloads/Taxalists/TWNList.XLS)
#' 
#'
#'
"twn_lijst"


#'- `taxontype`
#'- `taxoncode`
#'- `taxonname`
#'- `author`
#'- `taxongroup`
#'- `taxonlevel`
#'- `parentname`
#'- `refername`
#'- `literature`
#'- `localname`
#'- `date`
#'- `status`

