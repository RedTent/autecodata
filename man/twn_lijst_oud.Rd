% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/twn_lijst_doc.R
\docType{data}
\name{twn_lijst_oud}
\alias{twn_lijst_oud}
\title{Taxa Waterbeheer Nederland (TWN)}
\format{Dataframe met 12 kolommen
\itemize{
\item \code{taxontype}  - Code voor het type taxon. Bijv. MACEV of FYTPT
\item \code{taxoncode}  - Code voor het taxon. Dit is verouderd en wordt afgeraden om te worden gebruikt
\item \code{taxonname}  - Naam van het taxon
\item \code{author}     - Auteur die het taxon beschreven heeft
\item \code{taxongroup} - Taxonomische groep binnen het taxon
\item \code{taxonlevel} - Het taxonomische niveau van het taxon - geordende factor.
\item \code{parentname} - Naam van het ouder taxon
\item \code{refername}  - Voorkeursnaam - alleen voor taxa met status 20
\item \code{literature} - Literatuurverwijzing naar de beschrijving van het taxon
\item \code{localname}  - Nederlandse naam indien beschikbaar
\item \code{date}       - Datum van toevoegen aan of wijzigen in TWN
\item \code{status}     - Statuscode van het taxon.
\itemize{
\item \code{10} - Voorkeursnaam
\item \code{20} - Synoniem
\item \code{30} - Dubieus taxonconcept
\item \code{80} - Niet-taxonomische soortgroep
\item \code{91} - TWN-fout - Niet gebruiken
\item \code{92} - Verandering van interpretatie - Niet gebruiken
}
}}
\source{
\url{http://sofus.ecosys.nl/taxabase.htm}

\url{http://sofus.ecosys.nl/Taxus/Downloads/Taxalists/TWNList.XLS}
}
\usage{
twn_lijst_oud
}
\description{
De TWN-lijst bevat de standaardlijst met namen van taxa zoals deze worden gebruikt binnen het
Nederlandse waterbeheer. Deze dataset bevat de complete TWN-lijst zoals deze aangeboden wordt
op \url{http://sofus.ecosys.nl/taxabase.htm}
}
\note{
De TWN-lijst wordt regelmatig van updates voorzien. Deze TWN-lijst kan daarom enigszins verouderd zijn.

De volgorde van de taxonlevels is op detailniveau (met name lager dan genus) soms enigszins arbitrair.
Is een Cultivar bijv. een hoger niveau dan een Subspecies? Toch is er voor gekozen om de taxonlevels
op te nemen als een geordende factor omdat dit nuttig kan zijn o.a. bij het filteren van de lijst.
}
\section{Metadata dataset}{

\itemize{
\item \strong{Naam:} Taxa Waterbeheer Nederland
\item \strong{Bronhouder:} Informatiehuis Water
\item \strong{Beheer:} Rijkswaterstaat
\item \strong{Leverancier:} EcoSys
\item \strong{Datum dataset:}
\item \strong{Datum opname dataset:} 12 April 2019
\item \strong{Gebruiksrechten:} Geen beperkingen
\item \strong{Soortgroep:} Alle
}
}

\examples{

head(twn_lijst)
}
\keyword{datasets}
