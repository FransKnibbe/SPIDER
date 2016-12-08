<!DOCTYPE html>
<html lang="nl">
<head>
  <title>SPIDER: aanbevelingen</title>
  <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
  <meta name="author" content="SPIDER" />
  <meta name="description" content="Enriching Digital Humanities through Semantic Web technology" />
  <meta name="keywords" content="Linked Data, Semantic Web, Vrije Universiteit Amsterdam, SPINlab, Digital Humanities, Machine Learning, Data Mining, Visualisation, RDF, Geospatial, GIS" />
  <meta name="robots" content="index, follow, noarchive" />
  <meta name="googlebot" content="index, follow, noarchive" />
  <link rel="stylesheet" type="text/css" href="../css/spider.css"/>
</head>

<body>
<header>SPIDER</header>
<nav>
  <a href="../index.html">Hoofdpagina</a>
  <a href="index.html">Projecten</a>
  <a href="../datasets/index.html">Datasets</a>
  <a href="../recommendations/index.html">Aanbevelingen</a>
  <a href="../examples/index.html">Voorbeelden</a>
  <a href="../contact.html">Contact</a>
</nav>

<section>
  <h1>Aanbevelingen</h1>
  <p>Het beschikbaar stellen van data op het web is een nuttige en nobele daad, het maakt data goed bruikbaar, maar voor de aanbieder is het niet echt makkelijk om voor elkaar te krijgen. Tijdens het werk aan SPIDER zijn verschillende problemen en uitdagingen voorbij gekomen. Die hebben we zo goed mogelijk proberen op te lossen. Daaruit volgen aanbevelingen die we graag willen delen. Hieronder een overzicht met voorbeelden.</p>
  <h2>Inlezen</h2>
  <p>Over hoe je het beste data op het web kunt delen is al veel informatie te vinden, natuurlijk ook op het web. Enkele behulpzame bronnen:</p>
  <ul>
  <li><a href="http://linkeddatabook.com/editions/1.0/">Linked Data: Evolving the Web into a Global Data Space</a>: Dit als HTML-pagina beschikbaar gestelde boek geeft een compleet overzicht van Linked Data. Het vereist weinig voorkennis.</li>
  <li><a href="https://www.w3.org/TR/ld-bp/">Best Practices for Publishing Linked Data</a>: Stapsgewijze aanbevelingen voor het publiceren van Linked Data.</li> 
  <li><a href="https://www.w3.org/TR/dwbp/">Data on the Web Best Practices</a>: een overzicht van aanbevelingen voor het publiceren van data op het web van het <abbr title="World Wide Web Consortium">W3C</abbr>. De aanbevelingen zijn algemener dan de principes van Linked Data.</li>
  <li><a href="https://developers.google.com/search/docs/data-types/datasets">Science Datasets</a>: aanbevelingen van Google voor het publiceren van onderzoeksdata op het web, vooral gericht op tegemoetkoming aan zoekmachines, zodat datasets makkelijk te vinden zijn.</a>   
  </ul>
  <h2>URI's maken</h2>
  <p>Volgens het idee van Linked Data worden data op het web aangeduid en toegankelijk gemaakt via HTTP(S) URI's. Het vastellen van URI's voor de elementen in je dataset is daarmee een belangijke stap. Het is ook een stap die zorgvuldig moet worden gezet, want als data eenmaal zijn gepubliceerd kan je nog veel veranderen, maar URI's veranderen is het beste te vermijden. Zodra je data op het web gepubliceerd zijn, kan iedereen die URI's gebruiken als verwijzingen gebruiken in andere publicaties. URI's moeten dus persistent zijn om het web goed te laten werken. Naast dat URI's beschikbaar moeten blijven, moeten ze ook naar hetzelfde ding blijven verwijzen, wat niet betekent dat de data die dat ding beschrijven hetzelfde moeten blijven.</p>
  <p>Het samenstellen van goede URI's begint vaak met het vaststellen van een hostnaam die als basis dient. In het geval van SPIDER is het domein "spider.nl" aangekocht door Geodan en is besloten om "http://data.spider-ld.org" als basis voor alle data-URI's te gebruiken. Verder hebben we bedacht dat we waarschijnlijk meerdere datasets gaan publiceren, zodat het handig is een identificatie van de dataset in het pad op te nemen. Daarmee komen we op bijvoorbeeld "http://data.spider-ld.org/kerkennl", waarbij "kerkennl" een identificatie van een dataset is. Omdat het zou kunnen dat we naast ruwe data ook makkelijk leesbare documentatie van de dataset willen publiceren is URI-pad uitgebreid tot "http://data.spider-ld.org/kerkennl/data". Daarmee wordt de mogelijkheid vrijgemaakt om bijvoorbeeld documentatie via een basis-URI als "http://data.spider-ld.org/kerkennl/doc" ter beschikking te stellen.</p>
  <p>Om vervolgens URI's te maken voor elk individueel ding in de dataset hebben we in het geval van de kerkendataset gebruik kunnen maken van unieke identificatiecodes die in de brondataset al waren toegekend. Van die identifcatiecodes is bekend dat ze uniek zijn en steeds hetzelfde object identificeren. Zo'n unieke sleutel is zeer geschikt om in URI's te worden opgenomen. In de URI "http://data.spider-ld.org/kerkennl/data/kerk17", die tot de data over een kerkgebouw leidt, is het nummer 17 de identificatiecode uit de brondataset (een Access-bestand in dit geval).</p>
  <p>Zie voor meer advies over het maken van URI's het hoofdstuk <a href="https://www.w3.org/TR/ld-bp/#HTTP-URIS">'The Role of "Good URIs" for Linked Data'</a> in <a href="https://www.w3.org/TR/ld-bp">Best Practices for Publishing Linked Data</>. 
  <h2>Datasets beschrijven via metadata</h2>
  <h2>Betekenis vastleggen: semantiek</h2>
    <ul>
    <li><a href="http://www.pilod.nl/wiki/Versies_van_dingen_in_een_dataset" target="_blank">Versies van dingen in een dataset</a></li>
    <li><a href="http://www.pilod.nl/wiki/SKOS-concepten_als_temporele_eigenschappen" target="_blank">SKOS-concepten als temporele eigenschappen</a></li>
  </ul>
  <h2>Data transformeren</h2>
  <h2>Data ter beschikking stellen op het web</h2>
  <br>
  <hr>
</section>

<footer>
  <b>S</b>emantic <b>P</b>erspectives and <b>I</b>nterlinked <b>D</b>ata from <b>E</b>-humanities <b>R</b>esearch
</footer>

</body>
