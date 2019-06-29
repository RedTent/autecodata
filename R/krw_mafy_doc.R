#' KRW-maatlatten: Macrofyten categorieen
#'
#' Een van drie tabellen die benodigd zijn voor de KRW-toetsing van macrofyten.
#'
#' @format 
#' Dataframe
#' 
#' - `groep` Een aanduiding of het taxon behoort tot de *Helofyten* of *Hydrofyten*. 
#' Dit onderscheid wordt alleen gemaakt voor de watertypen M1 t/m M10 in de 
#' maatlatten van 2018
#' - `biotaxon.naam` Naam van het biotaxon, inclusief ondersoorten die niet expliciet in het
#' maatlatdocument zijn opgenomen.
#' - `biotaxon.naam_bron` Naam van het biotaxon volgens het maatlatdocument.
#' - `krwwatertype.code` KRW-watertypecode
#' - `categorie` Categorie van het taxon voor het betreffende watertype. Waarde 1 t/m 5.
#' 
#' @details 
#' 
#' De macrofyten kunnen getoetst worden voor de Kaderrichtlijn Water d.m.v. zogenaamde maatlatten. 
#' De documentatie voor deze maatlatten kan gevonden worden op de website van [STOWA](www.stowa.nl). 
#' Het betreft:
#' 
#' - Referenties en maatlatten voor natuurlijke watertypen voor de Kaderrichtlijn Water 2015-2021
#' - Omschrijving MEP en maatlatten voor sloten en kanalen voor de Kaderrichtlijn Water 2015-2021
#' - Referenties en maatlatten voor natuurlijke watertypen voor de Kaderrichtlijn Water 2021-2027
#' - Omschrijving MEP en maatlatten voor sloten en kanalen voor de Kaderrichtlijn Water 2021-2027
#' 
#' 
#' @section Metadata dataset: 
#' 
#' - **Naam:** Macrofyten-categorieen
#' - **Oorspronkelijke Naam:** 250aMacrofyten-categorieen_yyyymmdduummss
#' - **Bronhouder:** IHW (voor Aquo-kit) en STOWA voor de onderliggende data
#' - **Herkomst:** Aquo-kit <https://www.aquo-kit.nl/>
#' - **Auteurs:** Diverse
#' - **Datum dataset:** 2018
#' - **Datum opname dataset:** 25-6-2019
#' - **Gebruiksrechten:** Onbeperkt
#' - **Soortgroep:** Macrofyten
#' 
#' @note 
#' 
#' In deze tabel zijn zowel de categorieën van de maatlat van 2012 als van 2018 opgenomen.
#' 
#' @section Bewerkingen:
#' 
#' De kolomnamen zijn omgezet naar lowercase.
#' 
#' @seealso 
#' Zie ook [krw_mafy_score] en [krw_mafy_constanten].
#' 
#' @source 
#' 
#' [Aquo-kit](https://www.aquo-kit.nl/)
#' 
#' @examples 
#' 
#' head(krw_mafy_categorie)
"krw_mafy_categorie"


#' KRW-maatlatten: Macrofyten scores
#'
#' Een van drie tabellen die benodigd zijn voor de KRW-toetsing van macrofyten.
#'
#' @format 
#' Dataframe
#' 
#' - `groep` Een aanduiding of het taxon behoort tot de *Helofyten* of *Hydrofyten*. 
#' Dit onderscheid wordt alleen gemaakt voor de watertypen M1 t/m M10 in de 
#' maatlatten van 2018
#' - `krwwatertype.code` KRW-watertypecode
#' - `abundantieklasse` Klasse die de vegetatieabundantie weergeeft. Waarde 1 t/m 3.
#' - `categorie` Categorie van het taxon voor het betreffende watertype. Waarde 1 t/m 5.
#' - `score` Score die aan een taxon wordt toegekend o.b.v. de categorie en de abundantie 
#' van het taxon.
#' 
#' @details 
#' 
#' De macrofyten kunnen getoetst worden voor de Kaderrichtlijn Water d.m.v. zogenaamde maatlatten. 
#' De documentatie voor deze maatlatten kan gevonden worden op de website van [STOWA](www.stowa.nl). 
#' Het betreft:
#' 
#' - Referenties en maatlatten voor natuurlijke watertypen voor de Kaderrichtlijn Water 2015-2021
#' - Omschrijving MEP en maatlatten voor sloten en kanalen voor de Kaderrichtlijn Water 2015-2021
#' - Referenties en maatlatten voor natuurlijke watertypen voor de Kaderrichtlijn Water 2021-2027
#' - Omschrijving MEP en maatlatten voor sloten en kanalen voor de Kaderrichtlijn Water 2021-2027
#' 
#' 
#' @section Metadata dataset: 
#' 
#' - **Naam:** Macrofyten-scores
#' - **Oorspronkelijke Naam:** 250cMacrofyten-scores_yyyymmdduummss
#' - **Bronhouder:** IHW (voor Aquo-kit) en STOWA voor de onderliggende data
#' - **Herkomst:** Aquo-kit <https://www.aquo-kit.nl/>
#' - **Auteurs:** Diverse
#' - **Datum dataset:** 2018
#' - **Datum opname dataset:** 25-6-2019
#' - **Gebruiksrechten:** Onbeperkt
#' - **Soortgroep:** Macrofyten
#' 
#' 
#' @section Bewerkingen:
#' 
#' De originele kolomnaam abundantieklasse bevat een spelfout. Deze is gecorrigeerd.
#' De kolomnamen zijn omgezet naar lowercase.
#' 
#' @seealso 
#' Zie ook [krw_mafy_categorie] en [krw_mafy_constanten].
#' 
#' @source 
#' 
#' [Aquo-kit](https://www.aquo-kit.nl/)
#' 
#' @examples 
#' 
#' head(krw_mafy_score)
"krw_mafy_score"


#' KRW-maatlatten: Macrofyten constanten
#'
#' Een van drie tabellen die benodigd zijn voor de KRW-toetsing van macrofyten.
#'
#' @format 
#' Dataframe
#' 
#' - `groep` Een aanduiding of het taxon behoort tot de *Helofyten* of *Hydrofyten*. 
#' Dit onderscheid wordt alleen gemaakt voor de watertypen M1 t/m M10 in de 
#' maatlatten van 2018
#' - `krwwatertype.code` KRW-watertypecode
#' - `constante_a` De A-constante per groep en watertype die wordt gebruikt voor de berekening van de EKR.
#' - `constante_b` De B-constante per groep en watertype die wordt gebruikt voor de berekening van de EKR.
#' 
#' @details 
#' 
#' De macrofyten kunnen getoetst worden voor de Kaderrichtlijn Water d.m.v. zogenaamde maatlatten. 
#' De documentatie voor deze maatlatten kan gevonden worden op de website van [STOWA](www.stowa.nl). 
#' Het betreft:
#' 
#' - Referenties en maatlatten voor natuurlijke watertypen voor de Kaderrichtlijn Water 2015-2021
#' - Omschrijving MEP en maatlatten voor sloten en kanalen voor de Kaderrichtlijn Water 2015-2021
#' - Referenties en maatlatten voor natuurlijke watertypen voor de Kaderrichtlijn Water 2021-2027
#' - Omschrijving MEP en maatlatten voor sloten en kanalen voor de Kaderrichtlijn Water 2021-2027
#' 
#' 
#' @section Metadata dataset: 
#' 
#' - **Naam:** Macrofyten-constanten
#' - **Oorspronkelijke Naam:** 250dMacrofyten-constanten-a-b_yyyymmdduummss
#' - **Bronhouder:** IHW (voor Aquo-kit) en STOWA voor de onderliggende data
#' - **Herkomst:** Aquo-kit <https://www.aquo-kit.nl/>
#' - **Auteurs:** Diverse
#' - **Datum dataset:** 2018
#' - **Datum opname dataset:** 25-6-2019
#' - **Gebruiksrechten:** Onbeperkt
#' - **Soortgroep:** Macrofyten
#' 
#' 
#' @section Bewerkingen:
#' 
#' De kolomnamen zijn omgezet naar lowercase.
#' 
#' @seealso 
#' Zie ook [krw_mafy_categorie] en [krw_mafy_score].
#' 
#' @source 
#' 
#' [Aquo-kit](https://www.aquo-kit.nl/)
#' 
#' @examples 
#' 
#' head(krw_mafy_constanten)
"krw_mafy_constanten"
