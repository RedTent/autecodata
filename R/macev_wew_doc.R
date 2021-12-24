# macev_wew_data -----------------------------------------------------------

#' Milieu- en habitatpreferenties van Nederlandse zoetwatermacrofauna 
#'
#' Deze dataset bevat autecologische informatie van Nederlandse macrofaunasoorten en is opgesteld door 
#' de subgroep Autecologie van de [Werkgroep Ecologisch Waterbeheer](www.wew.nu).
#'
#' @format 
#' Dataframe
#' 
#' - `taxonnaam_orig` Taxonnaam uit originele dataset
#' - `taxonnaam_voorkeur` Voorkeursnaam taxon. Als deze ontbreekt betekent dat dat de `taxonnaam_orig` 
#' niet in de TWN-lijst voorkomt.
#' - `indicator_groep` Het type milieufactor
#' - `indicator_waarde` Waarde van de milieufactor
#' - `indicator_waarde_aandeel` Relatief aandeel van de waarde binnen de milieufactor op een schaal van 0 tot 10.
#' 
#' @details 
#' Voor negen factoren zijn de milieu- en habitatpreferenties van macrofaunasoorten verzameld, 
#' namelijk zoutgehalte, zuurgraad, droogval, stroomsnelheid, substraat, diepte, oppervlakte, 
#' saprobie en trofie. Deze factoren zijn gekozen omdat ze sterk sturend zijn en omdat er voldoende 
#' gegevens van beschikbaar zijn. Voor elke factor zijn vier tot tien klassen onderscheiden. 
#' 
#' @section Metadata dataset: 
#' 
#' - **Naam:** Milieu- en habitatpreferenties van Nederlandse zoetwatermacrofauna
#' - **Bronhouder:** Werkgroep Ecologisch Waterbeheer
#' - **Auteurs:** 
#'     - **Auteurs:** W.C.E.P. Verberk, P.F.M. Verdonschot, T. van Haaren, B. van Maanen. 
#'     - **Redactie:** Rebi C. Nijboer. 
#'     - *Subgroep Autoecologie, WEW-23.* 
#' - **Datum dataset:** Mei 2012. 
#' - **Datum opname dataset:** 10 April 2019
#' - **Gebruiksrechten:** Geen beperkingen
#' - **Soortgroep:** Macrofauna
#' 
#' @section Bewerkingen:
#' 
#' Ten behoeve van eenvoudiger gebruik van de dataset is de dataset omgezet in een *lang* formaat. Ontbrekende waarden
#' zijn niet opgenomen. 
#' 
#' De zeldzaamheid is opgenomen in de aparte tabel [macev_wew_zeldzaamheid].
#' 
#' Een toelichting op de indicatoren is opgenomen in [macev_wew_toelichting].
#' 
#' @seealso 
#' [macev_wew_zeldzaamheid] en [macev_wew_toelichting]
#' 
#' @source 
#' 
#' [http://www.wew.nu/publicaties/wew_themanummer23_soortenlijst.xls](http://www.wew.nu/publicaties/wew_themanummer23_soortenlijst.xls)
#' 
#' [http://www.wew.nu/publicaties/wew_themanummer23.pdf](http://www.wew.nu/publicaties/wew_themanummer23.pdf)
#'
#'
#' @examples 
#' 
#' head(macev_wew_data)
#'
"macev_wew_data"

# macev_wew_zeldzaamheid ---------------------------------------------------

#' Zeldzaamheid van macrofauna
#' 
#' Deze dataset bevat de zeldzaamheid van Nederlandse macrofaunasoorten en is opgesteld door 
#' de subgroep Autecologie van de [Werkgroep Ecologisch Waterbeheer](www.wew.nu).
#' 
#' @format 
#' Dataframe 
#' 
#' - `taxonnaam_orig` Taxonnaam uit originele dataset
#' - `taxonnaam_voorkeur` Voorkeursnaam taxon. Als deze ontbreekt betekent dat dat de `taxonnaam_orig` 
#' niet in de TWN-lijst voorkomt.
#' - `zeldzaamheid` Code voor de zeldzaamheid
#' - `omschrijving` Beschrijving van de zeldzaamheid
#' 
#' @section Metadata dataset: 
#' 
#' - **Naam:** Milieu- en habitatpreferenties van Nederlandse zoetwatermacrofauna
#' - **Bronhouder:** Werkgroep Ecologisch Waterbeheer
#' - **Auteurs:** 
#'     - **Auteurs:** W.C.E.P. Verberk, P.F.M. Verdonschot, T. van Haaren, B. van Maanen. 
#'     - **Redactie:** Rebi C. Nijboer. 
#'     - *Subgroep Autoecologie, WEW-23.* 
#' - **Datum dataset:** Mei 2012. 
#' - **Datum opname dataset:** 10 April 2019
#' - **Gebruiksrechten:** Geen beperkingen
#' - **Soortgroep:** Macrofauna
#' 
#' 
#' @note 
#' De zeldzaamheidscode is in sommige gevallen de code `u`. Deze code is in de documentatie niet gedefinieerd.
#' Aangenomen wordt dat deze code betekent dat de betreffende soort in Nederland is uitgestorven.
#' 
#' @source 
#' 
#' [http://www.wew.nu/publicaties/wew_themanummer23_soortenlijst.xls](http://www.wew.nu/publicaties/wew_themanummer23_soortenlijst.xls)
#' 
#' [http://www.wew.nu/publicaties/wew_themanummer23.pdf](http://www.wew.nu/publicaties/wew_themanummer23.pdf)
#' 
#' @seealso 
#' [macev_wew_data] en [macev_wew_toelichting]
#'
#' @examples 
#' 
#' head(macev_wew_zeldzaamheid)
"macev_wew_zeldzaamheid"

# macev_wew_toelichting ----------------------------------------------------

#' Toelichting op de betekenis van de indicatoren van macev_wew_data
#' 
#' Deze dataset bevat een toelichting op de betekenis van de indicatorwaarden in [macev_wew_data].
#' 
#' @format 
#' Dataframe
#' 
#' - `indicator_groep` Het type milieufactor
#' - `indicator_waarde_code`  Code voor de milieufactor
#' - `indicator_waarde` Waarde van de milieufactor
#' - `omschrijving` Betekenis van de indicatorwaarde
#' 
#' @seealso 
#' [macev_wew_data] en [macev_wew_zeldzaamheid]
#' 
#'@examples 
#' 
#' head(macev_wew_toelichting)
"macev_wew_toelichting"