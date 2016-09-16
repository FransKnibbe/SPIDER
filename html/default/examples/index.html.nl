<html lang="nl">
<head>
  <title>SPIDER: voorbeelden</title>
  <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
  <meta name="author" content="SPIDER" />
  <meta name="description" content="Enriching Digital Humanities through Semantic Web technology" />
  <meta name="keywords" content="Linked Data, Semantic Web, Vrije Universiteit Amsterdam, SPINlab, Digital Humanities, Machine Learning, Data Mining, Visualisation, RDF, Geospatial, GIS" />
  <meta name="robots" content="index, follow, noarchive" />
  <meta name="googlebot" content="index, follow, noarchive" />
  <link rel="stylesheet" type="text/css" href="../css/spider.css"/>
  <script type="text/javascript">
  window.onload = init;
  function init() {
    var divs = document.getElementsByTagName("div");
    for (var i = 0; i < divs.length; i++ ) {
      if (divs[i+1].className=='visible') {
        divs[i+1].className = 'hidden';
        divs[i].innerHTML = '&#9654; tekst SPARQL query (klik om uit te klappen):';

      }
    }
  }
  function toggleVisibility(elem) { // expand or collapse the next div
    var divs = document.getElementsByTagName("div");
    for(var i = 0; i < divs.length;i++) // find the next div element
      if(divs[i] == elem) {
        var item = divs[i + 1];
      }
    if (item) {
      if (item.className=='hidden') {
        item.className = 'visible';
        elem.innerHTML = '&#9650; tekst SPARQL query (klik om in te klappen):';
      } else {
        item.className = 'hidden';
        elem.innerHTML = '&#9654; tekst SPARQL query (klik om uit te klappen):';
      }
    }
  }
  </script>
</head>

<body>
<header>SPIDER</header>
<nav>
 <a href="../index.html">hoofdpagina</a>&nbsp &nbsp <a href="index.html">projecten</a>&nbsp &nbsp <a href="../datasets/index.html">datasets</a>&nbsp &nbsp <a href="../recommendations/index.html">aanbevelingen</a>&nbsp &nbsp <a href="../examples/index.html">voorbeelden</a>&nbsp &nbsp <a href="../contact.html">contact</a>
</nav>

<section>
  <h1>Voorbeelden</h1>
  <p>Op deze pagina staan voorbeelden van het <i>gebruik</i> van de data die via SPIDER als Linked Data op het web zijn gepubliceerd.</p>
  <h2>Webapplicaties</h2>
  <p>Webdata lenen zich van nature goed voor presentatie in (grafische) webapplicaties. Hieronder enkele simpele webpagina's die gebruik maken van de data die via SPIDER ter beschikking worden gesteld:</p>
  <ul>
  <li><a href="./example1" target="_blank">Locatie van kerkgebouwen op de kaart</a></li>
  </ul>
  <h2>SPARQL-query's</h2>
  <p><a href="https://nl.wikipedia.org/wiki/SPARQL" target="_blank">SPARQL</a> is een bevragingstaal voor data die op <abbr title="Resource Description Framework">RDF</abbr> zijn gebaseerd. Het is vergelijkbaar met <abbr title="Structured Query Language">SQL</abbr>, de bevragingstaal voor relationele databases. Via SPARQL kunnen op een standaardmanier simpele en complexe vragen aan datasets worden gesteld. Hieronder zie je wat voorbeelden van SPARQL-query's. De tekst van de query's kan worden gekopieerd naar de <a href="../squebi/spider_squebi.html">interactieve SPARQL-pagina</a>, om er mee te experimenteren, of kan direct als HTTP-verzoek worden uitgevoerd.</p>
  
  <h3>Welke eigenschappen heeft een kerkgebouw?</h3>
  <p>In deze vraag worden de nagegaan welke eigenschappen worden aangetroffen voor dingen die als kerk zijn gedefinieerd.</p>
    <a class="sparqluri" href="http://marmotta.spider-ld.org/marmotta/sparql?query=select%20distinct%20%3Fproperty%0Awhere%20%7B%0A%09%3Fs%20a%20%3Chttp%3A%2F%2Fschema.org%2FChurch%3E%20.%0A%09%3Fs%20%3Fproperty%20%3Fo%20.%0A%7D">HTTP-verzoek (klik om uit te voeren)</a>
  <div class="expandOrCollapse" onclick="toggleVisibility(this)">&#9654; tekst SPARQL query (klik om uit te klappen):</div>
  <div class="visible">
  <pre>
select distinct ?property
where {
	?s a &lthttp://schema.org/Church?gt .
	?s ?property ?o .
}
  </pre>
  </div>
  
  <h3>Geef de naam en coordinaten van alle kerkgebouwen</h3>
  <p>Hier wordt gevraagd naar de naam van de kerk, en de puntlocatie in <a href="https://en.wikipedia.org/wiki/Well-known_text">WKT-formaat</a>. Zulke data kunnen bijvoorbeeld worden gebruikt om op een kaart te tekenen.</p>
  <a class="sparqluri" href="http://marmotta.spider-ld.org/marmotta/sparql?query=prefix%20schema%3A%20%3Chttp%3A%2F%2Fschema.org%2F%3E%0Aprefix%20dcterms%3A%20%3Chttp%3A%2F%2Fpurl.org%2Fdc%2Fterms%2F%3E%0Aprefix%20locn%3A%20%3Chttp%3A%2F%2Fwww.w3.org%2Fns%2Flocn%23%3E%0Aprefix%20geom%3A%20%20%3Chttp%3A%2F%2Fdata.ign.fr%2Fdef%2Fgeometrie%23%3E%0Aprefix%20geosp%3A%20%3Chttp%3A%2F%2Fwww.opengis.net%2Font%2Fgeosparql%23%3E%0Aselect%20%3Fname%20%3Fwkt%0Awhere%20%7B%0A%3Fchurch%20a%20schema%3AChurch%20.%0A%3Fchurch%20dcterms%3Atitle%20%3Fname%20.%0A%3Fchurch%20locn%3Alocation%20%3Floc%20.%0A%3Floc%20locn%3Ageometry%20%3Fgeom%20.%0A%3Fgeom%20a%20geom%3APoint%20.%0A%3Fgeom%20geom%3Acrs%20%3Chttp%3A%2F%2Fwww.opengis.net%2Fdef%2Fcrs%2FEPSG%2F0%2F28992%3E.%0A%3Fgeom%20geosp%3AasWKT%20%3Fwkt%20.%0A%7D">HTTP-verzoek (klik om uit te voeren)</a>
  <div class="expandOrCollapse" onclick="toggleVisibility(this)">&#9654; tekst SPARQL query (klik om uit te klappen):</div>
  <div class="visible">
  <pre>
prefix schema: &lthttp://schema.org/&gt
prefix dcterms: &lthttp://purl.org/dc/terms/&gt
prefix locn: &lthttp://www.w3.org/ns/locn#&gt
prefix geom: &lthttp://data.ign.fr/def/geometrie#&gt
prefix geosp: &lthttp://www.opengis.net/ont/geosparql#&gt
select ?name ?wkt
where {
  ?church a schema:Church .
  ?church dcterms:title ?name .
  ?church locn:location ?loc .
  ?loc locn:geometry ?geom .
  ?geom a geom:Point .
  ?geom geom:crs &lthttp://www.opengis.net/def/crs/EPSG/0/28992&gt.
  ?geom geosp:asWKT ?wkt .
}
  </pre>
  </div>
  
  <h3>Kerken in Oosterbeek</h3>
  <p>Hier wordt gevraagd om alle kerkgebouwen met een adres in Oosterbeek.</p>
    <a class="sparqluri" href="http://marmotta.spider-ld.org/marmotta/sparql?query=prefix%20locn%3A%20%3Chttp%3A%2F%2Fwww.w3.org%2Fns%2Flocn%23%3E%20%0Aprefix%20schema%3A%20%3Chttp%3A%2F%2Fschema.org%2F%3E%0Aselect%20%3Fchurch%20%3Fstreet%20%3Fnumber%0Awhere%20%7B%0A%20%20%3Fchurch%20a%20schema%3AChurch%20.%20%0A%20%20%3Fchurch%20locn%3Aaddress%20%3Faddress%20.%20%0A%20%20%3Faddress%20locn%3ApostName%20%E2%80%98Oosterbeek%E2%80%99%20.%0A%20%20%3Faddress%20locn%3Athoroughfare%20%3Fstreet%20.%0A%20%20%3Faddress%20locn%3AlocatorDesignator%20%3Fnumber%20.%0A%7D">HTTP-verzoek (klik om uit te voeren)</a>
  <div class="expandOrCollapse" onclick="toggleVisibility(this)">&#9654; tekst SPARQL query (klik om uit te klappen):</div>
  <div class="visible">
  <pre>
prefix locn: &lthttp://www.w3.org/ns/locn#&gt 
prefix schema: &lthttp://schema.org/&gt
select ?church ?street ?number
where {
  ?church a schema:Church . 
  ?church locn:address ?address . 
  ?address locn:postName ‘Oosterbeek’ .
  ?address locn:thoroughfare ?street .
  ?address locn:locatorDesignator ?number .
}
  </pre>
  </div>
  
  <h3>Tel het aantal kerken per gebruiksfunctie</h3>
  <p>In deze vraag worden kerken gegroepeerd per gebruiksfunctie en wordt het aantal voorkomens per gebruiksfunctie geteld.</p>
    <a class="sparqluri" href="http://marmotta.spider-ld.org/marmotta/sparql?query=prefix%20dbo%3A%20%3Chttp%3A%2F%2Fdbpedia.org%2Fontology%2F%3E%0Aprefix%20cidoc%3A%20%3Chttp%3A%2F%2Fwww.cidoc-crm.org%2Frdfs%2Fcidoc_crm_v6.2-draft-2015August.rdfs%23%3E%0Aselect%20%3Fusage%20(count(%3Fchurch)%20as%20%3Fnumber_of_churches)%0Awhere%20%7B%0A%20%20%3Fchurch%20a%20dbo%3AChurch%20.%0A%20%20%3Fchurch%20cidoc%3AP103_was_intended_for%20%3Fusage%20.%0A%7D%0Agroup%20by%20%3Fusage">HTTP-verzoek (klik om uit te voeren</a>
  <div class="expandOrCollapse" onclick="toggleVisibility(this)">&#9654; tekst SPARQL query (klik om uit te klappen):</div>
  <div class="visible">
  <pre>
prefix dbo: &lthttp://dbpedia.org/ontology/&gt
prefix cidoc: &lthttp://www.cidoc-crm.org/rdfs/cidoc_crm_v6.2-draft-2015August.rdfs#&gt
select ?usage (count(?church) as ?number_of_churches)
where {
  ?church a dbo:Church .
  ?church cidoc:P103_was_intended_for ?usage .
}
group by ?usage
order by desc(?number_of_churches)
  </pre>
  </div>
  
</section>

<footer>
  <b>S</b>emantic <b>P</b>erspectives and <b>I</b>nterlinked <b>D</b>ata from <b>E</b>-humanities <b>R</b>esearch
</footer>

</body>
