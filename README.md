<!-- badges: start -->
  
[![Travis build status](https://travis-ci.org/RedTent/autecodata.svg?branch=master)](https://travis-ci.org/RedTent/autecodata)

[![Codecov test coverage](https://codecov.io/gh/RedTent/autecodata/branch/master/graph/badge.svg)](https://codecov.io/gh/RedTent/autecodata?branch=master)

<!-- badges: end -->

# autecodata

Het doel van dit package is om auto-ecologische informatie van aquatische soorten te verzamelen en te ontsluiten. Het doel is dat deze informatie daardoor makkelijker beschikbaar is en dat deze ook eenvoudiger te gebruiken is in analyses. Om eenvoudig gebruik te faciliteren wordt de data zoveel mogelijk aangeboden als [Tidy data](https://r4ds.had.co.nz/tidy-data.html).

## Auto-ecologische informatie
Het begrip auto-ecologische informatie kan op verschillende manieren worden geïnterpreteerd. Voor deze verzameling probeer ik dit begrip ruim in te vullen. Alles wat informatie kan geven over een bepaalde soort beschouw ik als passend binnen dit package.

## Bronnen
Er zijn diverse bronnen die gebruikt kunnen worden om auto-ecologische data te raadplegen. Hieronder een aantal van de bronnen die ik van plan ben om te gebruiken.

- TWN-lijst
- KRW-maatlatten (aquokit)
- Hulptabellen aquokit
- WEW-publicaties
- Achtergrondinfo ESFs
- Informatie die verwerkt is in diverse indexen, bijvoorbeeld de Van Dam Index voor diatomeeën

## Dataverwerking
De ervaring leert dat auto-ecologische informatie in uiteenlopende formaten beschikbaar is. Deze variatie maakt de analyse over het algemeen niet makkelijker. Daarom is het doel om voor zover mogelijk deze informatie op te schonen en in een *tidy* formaat aan te bieden. Het opschonen zal onder andere bestaan uit het gebruiken van voorkeursnamen conform de TWN-lijst. De bewerkingsstappen worden indien mogelijk als R-code aangeboden in de map `data-raw`.
Daarnaast beoogt dit package om naar de originele data te verwijzen of op te nemen. Deze data staat eveneens in de map `data-raw`.

## Beschrijving datasets

Van elke dataset moeten de volgende zaken worden beschreven:

- Naam van de dataset
- Bronhouder
- Gebruiksrechten
- Naam van de persoon of organisatie die de dataset heeft opgesteld
- Verwijzing waar de dataset gevonden kan worden
- Datum van opstellen
- Datum van opname in `autecodata`
- Soortgroep(en) waar de dataset over gaat. Bijv: macrofauna of vis
- Type informatie die de dataset bevat
- Mogelijke toepassingen voor de dataset

## Hulptabellen

Het is mogelijk dat in de toekomst ook diverse hulptabellen opgenomen worden. Denk hierbij aan tabellen met de hierarchie van verschillende taxonomische niveaus e.d.

