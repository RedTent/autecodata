#' Milieu- en habitatpreferenties van Nederlandse zoetwatermacrofauna 
#'
#' Deze dataset bevat autecologische informatie van Nederlandse macrofaunasoorten en is opgesteld door 
#' de subgroep Autecologie van de [Werkgroep Ecologische Waterbeheer](www.wew.nu).
#'
#' @format 
#' 
#' Dataframe met 4 kolommen
#' 
#' - `taxonnaam` Taxonnaam
#' - `indicator_groep` Naam van de milieufactor
#' - `indicator_waarde` Waarde van de milieufactor
#' - `indicator_waarde_aandeel` Relatief aandeel van de waarde binnen de milieufactor op een schaal van 0 tot 10.
#' 
#' @details 
#' 
#' Voor negen factoren zijn de milieu- en habitatpreferenties van macrofaunasoorten verzameld, 
#' namelijk zoutgehalte, zuurgraad, droogval, stroomsnelheid, substraat, diepte, oppervlakte, 
#' saprobie en trofie. Deze factoren zijn gekozen omdat ze sterk sturend zijn en omdat er voldoende 
#' gegevens van beschikbaar zijn. Voor elke factor zijn vier tot tien klassen onderscheiden. 
#' 
#' Oorspronkelijk doel van de dataset
#' Bewerkingen + datum
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
#' - **Gebruiksrechten:** Geen beperkingen
#' - **Soortgroep:** Macrofauna
#' 
#' @seealso 
#' [wew_mafa_zeldzaamheid] en [wew_mafa_toelichting]
#' 
#' @source 
#' 
#' [http://www.wew.nu/publicaties/wew_themanummer23_soortenlijst.xls](http://www.wew.nu/publicaties/wew_themanummer23_soortenlijst.xls)
#' 
#' [http://www.wew.nu/publicaties/wew_themanummer23.pdf](http://www.wew.nu/publicaties/wew_themanummer23.pdf)
#'
#'
"wew_mafa_data"

#' Zeldzaamheid van macrofauna
#' 
#' Deze dataset bevat de zeldzaamheid van Nederlandse macrofaunasoorten en is opgesteld door 
#' de subgroep Autecologie van de [Werkgroep Ecologische Waterbeheer](www.wew.nu).
#' 
#' @format 
#' 
#' Dataframe met 4 kolommen
#' 
#' - `taxonnaam` Taxonnaam
#' - `zeldzaamheid` Code voor de zeldzaamheid
#' - `omschrijving` Beschrijving van de zeldzaamheid
#' 
#' @seealso 
#' [wew_mafa_data] en [wew_mafa_toelichting]
#'
"wew_mafa_zeldzaamheid"

#' Toelichting op de betekenis van de indicatoren van wew_mafa_data
#' 
#' Deze dataset bevat een toelichting op de betekenis van de indicatorwaarden in [wew_mafa_data].
#' 
#' @format 
#' 
#' Dataframe met 4 kolommen
#' 
#' - `indicator_groep` Naam van de milieufactor
#' - `indicator_Waarde_code`  Code voor de milieufactor
#' - `indicator_waarde` Waarde van de milieufactor
#' - `omschrijving` Betekenis van de indicatorwaarde
#' 
#' @seealso 
#' [wew_mafa_data] en [wew_mafa_zeldzaamheid]
#' 
#'
"wew_mafa_toelichting"