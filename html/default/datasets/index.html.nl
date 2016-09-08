<html lang="nl">
<head>
  <title>SPIDER: datasets</title>
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
 <a href="../index.html">hoofdpagina</a>&nbsp &nbsp <a href="../projects/index.html">projecten</a>&nbsp &nbsp <a href="../datasets/index.html">datasets</a>&nbsp &nbsp <a href="../recommendations/index.html">aanbevelingen</a>&nbsp &nbsp <a href="../examples/index.html">voorbeelden</a>&nbsp &nbsp <a href="../contact.html">contact</a>
</nav>

<!-- template for data dump list:
  <ul>
  <li><a href=".rdf">RDF/XML</a></li>
  <li><a href=".ttl">Turtle</a></li>
  <li><a href=".json-ld">JSON-LD</a></li>
  <li><a href=".nt">Ntriples</a></li>
  </ul>
-->

<section>
  <h1>Inleiding datasets</h2>
  <p>Een dataset is een verzameling data die op een zekere logische manier bij elkaar horen. Elke dataset heeft een eigen <abbr title="Uniform Resource Identifier">URI</abbr>, die toegang geeft tot de  <a href="https://nl.wikipedia.org/wiki/Metadata">metadata</a> die de dataset beschrijven. Een uitgangspunt is dat die metadata alle informatie verstrekken die nodig is voor gebruik van de dataset (zie de aanbeveling 'metadata').</p>
  <h2>Directe toegang</h2>
  <p>Datasets zijn online te gebruiken door middel van het opvragen van <abbr title="Uniform Resource Identifier">URI</abbr>'s. Datasets in Linked Data bestaan voor een groot gedeelte uit URI's, die ieder opgevraagd kunnen worden om toegang te krijgen tot de achterliggende data. Een voorbeeld van zo'n data-URI is <a href="http://data.spider-ld.org/kerkennl/data/year1800">http://data.spider-ld.org/kerkennl/data/year1800</a>.
  Het opvragen van een URI kan via de webbrowser, via de <a href="https://nl.wikipedia.org/wiki/Command-line-interface">commandoregel</a> met behulp van hulpmiddelen als <a href="https://en.wikipedia.org/wiki/CURL">cURL</a> of <a href="https://en.wikipedia.org/wiki/Wget">Wget</a>, via software die kan werken met webdata, of in zelf geschreven programmacode.</p>
  <p>Bij het opvragen van een URI wordt <a href="https://en.wikipedia.org/wiki/Content_negotiation">content negotiation</a> toegepast om de data in het meest geschikte formaat te geven.</p>
  <h2>Data dumps</h2>
  <p>Datasets zijn compleet te downloaden via <a href="http://spider-ld.org/data">de map met datadumps</a> in verschillende <abbr title="Resource Description Framework">RDF</abbr>-formaten. Dat geeft de mogelijkheid de gegevens in een eigen databank op te slaan.</p>
  <h2>Bevraging</h2>
  <p>Om selecties van data te maken en die op te vragen kan de ondervragingstaal <a href="https://nl.wikipedia.org/wiki/SPARQL">SPARQL</a> worden gebruikt. Om in programmacode of op de commandoregel van SPARQL gebruik te maken kan de URI http://data.spider-ld.org/marmotta/sparql/select?query= worden gebruikt. SPARQL-query's kunnen ook op <a href="../squebi/spider_squebi.html">deze interactieve webpagina</a> worden ingevoerd en uitgevoerd.
  </p>
  <h1>Datasets</h1>
  <p>SPIDER stelt de volgende datasets ter beschikking:</p>
  <h2><a name="kerkennl"></a>Kerkgebouwen in Nederland van 1800-1970</h2>
  <p><abbr title="Uniform Resource Identifier">URI</abbr> van de dataset: <a href="http://data.spider-ld.org/kerkennl/data">http://data.spider-ld.org/kerkennl/data</a></p>
  <h3>Data dumps</h3>
  <ul>
  <li><a href="http://spider-ld.org/data/kerkennl_2016-09-06.rdf">RDF/XML</a></li>
  <li><a href="http://spider-ld.org/data/kerkennl_2016-09-06.ttl">Turtle</a></li>
  <li><a href="http://spider-ld.org/data/kerkennl_2016-09-06.json-ld">JSON-LD</a></li>
  <li><a href="http://spider-ld.org/data/kerkennl_2016-09-06.nt">Ntriples</a></li>
  </ul>
  <h2><a name="kerkennl_extra"></a>Extra data bij Kerkgebouwen in Nederland van 1800-1970</h2>
  <p><abbr title="Uniform Resource Identifier">URI</abbr> van de dataset: <a href="http://data.spider-ld.org/kerkennl_extra/data">http://data.spider-ld.org/kerkennl_extra/data</a></p>
  <h3>Data dumps</h3>
  <ul>
  <li><a href="http://spider-ld.org/data/kerkennl_extra_2016-09-06.rdf">RDF/XML</a></li>
  <li><a href="http://spider-ld.org/data/kerkennl_extra_2016-09-06.ttl">Turtle</a></li>
  <li><a href="http://spider-ld.org/data/kerkennl_extra_2016-09-06.json-ld">JSON-LD</a></li>
  <li><a href="http://spider-ld.org/data/kerkennl_extra_2016-09-06.nt">Ntriples</a></li>
  </ul>
</section>

<footer>
  <b>S</b>emantic <b>P</b>erspectives and <b>I</b>nterlinked <b>D</b>ata from <b>E</b>-humanities <b>R</b>esearch
</footer>

</body>
