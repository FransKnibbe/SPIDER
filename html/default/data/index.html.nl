<html lang="nl">
<head>
  <title>SPIDER: data</title>
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
  <a href="../projects/index.html">Projecten</a>
  <a href="../data/index.html">Data</a>
  <a href="../recommendations/index.html">Aanbevelingen</a>
  <a href="../examples/index.html">Voorbeelden</a>
  <a href="../contact.html">Contact</a>
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
  <h1>Data</h1>
  <p>Hier worden de data die via SPIDER worden gepubliceerd beschreven, en wordt beschreven hoe die data op verschillende manieren toegangelijk zijn.</p>
  
  <h2 id="toc">Inhoud</h2>
  <a href="#datasets">Datasets</a><br>
  &emsp;<a href="#kerkennl">Kerkgebouwen in Nederland van 1800-1970</a><br>
  &emsp;<a href="#kerkennl_extra">Extra data bij Kerkgebouwen in Nederland van 1800-1970</a><br>
  <a href="#gettingData">Data opvragen</a><br>
  &emsp;<a href="#directAccess">Directe toegang</a><br>
  &emsp;<a href="#dumps">Datadumps</a><br>
  &emsp;<a href="#querying">Bevraging via SPARQL</a><br>
  
  <h1>Datasets</h1>
  <p>Data worden vaak gegroepeerd in datasets. Zo ook bij SPIDER. Een dataset is een verzameling data die op een zekere logische manier bij elkaar horen. Elke dataset heeft een eigen <abbr title="Uniform Resource Identifier">URI</abbr>, die toegang geeft tot de <a href="https://nl.wikipedia.org/wiki/Metadata">metadata</a> die de dataset beschrijven. Een uitgangspunt is dat die metadata alle informatie verstrekken die nodig is voor gebruik van de dataset (zie de aanbeveling <a href="../recommendations/index.html#metadata">Datasets beschrijven via metadata</a>).</p>
  </p>SPIDER stelt de volgende datasets ter beschikking:</p>
  
  <h2 id="kerkennl">Kerkgebouwen in Nederland van 1800-1970</h2>
  <p><abbr title="Uniform Resource Identifier">URI</abbr> van de dataset: <a href="http://data.spider-ld.org/kerkennl/data">http://data.spider-ld.org/kerkennl/data</a></p>
  
  <h3>Datadumps</h3>
  <ul>
  <li><a href="http://spider-ld.org/datadump/kerkennl_2017-03-14.rdf">RDF/XML</a></li>
  <li><a href="http://spider-ld.org/datadump/kerkennl_2017-03-14.ttl">Turtle</a></li>
  <li><a href="http://spider-ld.org/datadump/kerkennl_2017-03-14.json-ld">JSON-LD</a></li>
  <li><a href="http://spider-ld.org/datadump/kerkennl_2017-03-14.nt">Ntriples</a></li>
  </ul>
  
  <h2 id="kerkennl_extra">Extra data bij Kerkgebouwen in Nederland van 1800-1970</h2>
  <p><abbr title="Uniform Resource Identifier">URI</abbr> van de dataset: <a href="http://data.spider-ld.org/kerkennl_extra/data">http://data.spider-ld.org/kerkennl_extra/data</a></p>
  
  <h3>Datadumps</h3>
  <ul>
  <li><a href="http://spider-ld.org/datadump/kerkennl_extra_2017-03-14.rdf">RDF/XML</a></li>
  <li><a href="http://spider-ld.org/datadump/kerkennl_extra_2017-03-14.ttl">Turtle</a></li>
  <li><a href="http://spider-ld.org/datadump/kerkennl_extra_2017-03-14.json-ld">JSON-LD</a></li>
  <li><a href="http://spider-ld.org/datadump/kerkennl_extra_2017-03-14.nt">Ntriples</a></li>
  </ul>
  
  <h1 id="gettingData">Data Opvragen</h2>
  <p>Data kunnen op meerder manieren worden opgevraagd. SPIDER ondersteund verschillende standaardmethoden: het direct opvragen van <abbr title="Uniform Resource Identifier">URI</abbr>'s, het downloaden van bestanden met complete datasets, en bevraging via <a href="https://nl.wikipedia.org/wiki/SPARQL">SPARQL</a>. Deze methoden worden hieronder beschreven.</p>
  <p>Dit zijn echter niet de enige mogelijkheden. Er zouden meer of andere manieren om data die HTTP(S) <abbr title="Uniform Resource Identifier">URI</abbr>'s hebben aan te bieden. Bijvoorbeeld een simpele <a href="https://en.wikipedia.org/wiki/Representational_state_transfer">REST</a> <a href="https://en.wikipedia.org/wiki/Web_API">API</a>, of een dienst die gebaseerd is op de specficaties <a href="https://www.w3.org/TR/ldp/">Linked Data Platform</a> of <a href="http://linkeddatafragments.org/">Linked Data Fragments</a>. Hoe meer gestandaardiseerde interactiemethoden worden aangeboden, hoe makkelijker het de verschillende typen gebruiker wordt gemaakt.</p>
  
  <h2 id="directAccess">Directe toegang</h2>
  <p>Datasets zijn online te gebruiken door middel van het opvragen van <abbr title="Uniform Resource Identifier">URI</abbr>'s. Datasets in Linked Data bestaan voor een groot gedeelte uit URI's, die ieder opgevraagd kunnen worden om toegang te krijgen tot de achterliggende data. Een voorbeeld van zo'n data-URI is <a href="http://data.spider-ld.org/kerkennl/data/year1800">http://data.spider-ld.org/kerkennl/data/year1800</a>.
  Het opvragen van een URI kan via de webbrowser, via de <a href="https://nl.wikipedia.org/wiki/Command-line-interface">commandoregel</a> met behulp van hulpmiddelen als <a href="https://en.wikipedia.org/wiki/CURL">cURL</a> of <a href="https://en.wikipedia.org/wiki/Wget">Wget</a>, via software die kan werken met webdata, of in zelf geschreven programmacode.</p>
  <p>Bij het opvragen van een URI wordt <a href="https://en.wikipedia.org/wiki/Content_negotiation">content negotiation</a> toegepast om de data in het meest geschikte formaat te geven.</p>
  
  <h2 id="dumps">Datadumps</h2>
  <p>Datasets zijn compleet te downloaden via <a href="http://spider-ld.org/datadump">de map met datadumps</a> in verschillende <abbr title="Resource Description Framework">RDF</abbr>-formaten. Dat geeft de mogelijkheid de gegevens in een eigen databank op te slaan.</p>
  
  <h2 id="querying">Bevraging via SPARQL</h2>
  <p>Om selecties van data te maken en die op te vragen kan de ondervragingstaal <a href="https://nl.wikipedia.org/wiki/SPARQL">SPARQL</a> worden gebruikt. Om in programmacode of op de commandoregel van SPARQL gebruik te maken kan de <abbr title="Uniform Resource Identifier">URI</abbr> <b>http://data.spider-ld.org/marmotta/sparql/select?query=</b> worden gebruikt. SPIDER stelt enkele grafische gebruikersomgevingen beschikbaar om SPARQL-query's uit te voeren en de resultaten te bekijken:
  </p>
  <ul>
  <li id="squebi"><a href="../squebi/spider_squebi.html">Squebi</a></li>
  <li id="yasgui"><a href="../yasgui/spider_yasgui.html">YASGUI</a></li>
  </ul>
  <br>
  <hr>
</section>

<footer>
  <b>S</b>emantic <b>P</b>erspectives and <b>I</b>nterlinked <b>D</b>ata from <b>E</b>-humanities <b>R</b>esearch
</footer>

</body>
