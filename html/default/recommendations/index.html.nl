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
  <p>Het beschikbaar stellen van data op het web is een nuttige en nobele daad. Het maakt data goed bruikbaar voor vele afnemers, maar voor de aanbieder is het niet echt makkelijk om voor elkaar te krijgen. Tijdens het werk aan SPIDER zijn verschillende problemen en uitdagingen voorbij gekomen. Die hebben we zo goed mogelijk proberen op te lossen. Daaruit volgen aanbevelingen die we graag willen delen, min of meer in de volgorde van opeenvolgde stappen die men normaal gesproken moet zetten om tot publicatie van webdata te komen. De aanbevelingen hieronder zijn voorzien van voorbeelden uit de SPIDER-praktijk.</p>
  
  <h2 id="toc">Inhoud</h2>
  <a href="#read">Inlezen</a><br>
  <a href="#uris">URI's maken</a><br>
  <a href="#metadata">Datasets beschrijven via metadata</a><br>
  <a href="#semantics">Betekenis vastleggen: semantiek</a><br>
  <a href="#transform">Data transformeren</a><br>
  <a href="#publish">Data ter beschikking stellen op het web</a>
  
  <h2 id="read">Inlezen</h2>
  <p>Over hoe je het beste data op het web kunt delen is al veel informatie te vinden, natuurlijk ook op het web. Enkele behulpzame bronnen:</p>
  <ul>
  <li><a href="http://linkeddatabook.com/editions/1.0/">Linked Data: Evolving the Web into a Global Data Space</a>: Dit als HTML-pagina beschikbaar gestelde boek geeft een compleet overzicht van Linked Data. Het vereist weinig voorkennis.</li>
  <li><a href="https://www.w3.org/TR/ld-bp/">Best Practices for Publishing Linked Data</a>: Stapsgewijze aanbevelingen voor het publiceren van Linked Data.</li> 
  <li><a href="https://www.w3.org/TR/dwbp/">Data on the Web Best Practices</a>: Een overzicht van aanbevelingen voor het publiceren van data op het web van het <abbr title="World Wide Web Consortium">W3C</abbr>. De aanbevelingen zijn algemener dan de principes van Linked Data.</li>
  <li><a href="https://developers.google.com/search/docs/data-types/datasets">Science Datasets</a>: Aanbevelingen van Google voor het publiceren van onderzoeksdata op het web, vooral gericht op tegemoetkoming aan zoekmachines, zodat datasets makkelijk te vinden zijn.</a>
  <li><a href="https://www.w3.org/TR/ld-glossary/">Linked Data Glossary</a>: Een verklarende lijst van begrippen die bij Linked Data worden gebruikt.</li>
  </ul>
  
  <h2 id="uris">URI's maken</h2>
  <p>Volgens het idee van Linked Data worden data op het web aangeduid en toegankelijk gemaakt via HTTP(S) <a href="https://nl.wikipedia.org/wiki/Uniform_resource_identifier">URI</a>'s. Het vastellen van URI's voor de elementen in je dataset is daarmee een belangijke stap. Het is ook een stap die zorgvuldig moet worden gezet en die een vooruitziende blik vereist. Want als data eenmaal zijn gepubliceerd kan je nog veel veranderen, maar URI's veranderen kan je beter vermijden. Zodra je data op het web gepubliceerd zijn, kan iedereen die URI's gebruiken als verwijzingen gebruiken in andere publicaties. URI's moeten dus persistent zijn om het web goed te laten werken. Naast dat URI's beschikbaar moeten blijven, moeten ze ook naar hetzelfde ding blijven verwijzen, wat niet betekent dat de data die dat ding beschrijven hetzelfde moeten blijven.</p>
  <p>Het samenstellen van goede URI's begint vaak met het vaststellen van een hostnaam die als basis dient. Wat die hostnaam precies is doet er niet zo veel toe, want URIs zelf of delen ervan worden doorgaans niet geïnterpreteerd. Het is vooral zaak te zorgen dat de hostnaam stabiel kan blijven, zodat URIs later niet te hoeven veranderen. In het geval van SPIDER is het domein <b>spider-ld.org</b> aangekocht door Geodan en is besloten om <b>http://data.spider-ld.org</b> als basis voor alle data-URI's te gebruiken. Verder hebben we bedacht dat we waarschijnlijk meerdere datasets gaan publiceren, zodat het handig is een identificatie van de dataset in het pad op te nemen. Daarmee komen we op bijvoorbeeld "<b>http://data.spider-ld.org/kerkennl</b>, waarbij <b>kerkennl</b> een identificatie van een dataset is. Omdat het zou kunnen dat we naast ruwe data ook makkelijk leesbare documentatie van de dataset willen publiceren is URI-pad uitgebreid tot <b>http://data.spider-ld.org/kerkennl/data</b>. Daarmee wordt de mogelijkheid vrijgemaakt om bijvoorbeeld documentatie via een basis-URI als <b>http://data.spider-ld.org/kerkennl/doc</b> ter beschikking te stellen.</p>
  <p>Om vervolgens URI's te maken voor elk individueel ding in de dataset hebben we in het geval van de kerkendataset gebruik kunnen maken van unieke identificatiecodes die in de brondataset al waren toegekend. Van die identificatiecodes is bekend dat ze uniek zijn en steeds hetzelfde object identificeren. Zo'n unieke sleutel is zeer geschikt om in URI's te worden opgenomen. In de URI "<b>http://data.spider-ld.org/kerkennl/data/kerk17</b>, die tot de data over een kerkgebouw leidt, is het nummer 17 de identificatiecode uit de brondataset (een Access-bestand in dit geval).</p>
  <p>Zie voor meer advies over het maken van URI's het hoofdstuk <a href="https://www.w3.org/TR/ld-bp/#HTTP-URIS">'The Role of "Good URIs" for Linked Data'</a> in <a href="https://www.w3.org/TR/ld-bp">Best Practices for Publishing Linked Data</a>.</p>
  
  <h2 id="metadata">Datasets beschrijven via metadata</h2>
  <p><a href="https://nl.wikipedia.org/wiki/Metadata">Metadata</a> zijn data over datasets en zijn erg nuttig en belangrijk. Goede en uitgebreide metadata kunnen er voor zorgen dat je dataset makkelijk te vinden, goed te begrijpen en goed te gebruiken is. Het het verminderd de kans dat data verkeerd gebruikt worden. Dus het is slim om zo veel mogelijk eigenschappen van de dataset te beschrijven in de metadata.</p>
  <p>Metadata zijn ook gewoon data en kunnen dus ook als Linked Data, via HTTP(S)-URI's, worden gepubliceerd. Daarbij kan gebruik gemaakt worden van bestaande <a href="https://www.w3.org/TR/ld-glossary/#vocabulary">vocabularia</a> (verzamelingen van begripsdefinities) voor metadata. Metadata van verschillende datasets bestaan namelijk vaak uit dezelfde soort details, bijvoorbeeld:</p> 
  <ul>
    <li>Wie is de eigenaar van de data?</li>
    <li>Wie publiceert de data?</li>
    <li>Wat zijn de gebruiksvoorwaarden?</li>
    <li>Wat is de temporele of ruimtelijke dekking van de data?</li>
  </ul>
  <p>Er zijn daarom enkele geschikte en elkaar aanvullende vocabularia op het web te vinden, zoals:</p>
  <ul>
  <li><a href="http://dublincore.org/documents/dcmi-terms/">Dublin Core metadata (DC Terms)</a>: Algemene metadatabegrippen.</li>
  <li><a href="https://www.w3.org/TR/void/">Het <i>Vocabulary of Interlinked Datasets</i> (VoID)</a>: Metadata-elementen speciaal voor RDF-datasets.</li>
  <li><a href="https://www.w3.org/TR/vocab-dcat/">Het <i>Data Catalog Vocabulary</i> (DCAT)</a>: Termen voor het beschrijven van datacatalogi.</i>
  </ul>
  <p>Een voorbeeld van metadata van een dataset zijn de metadata van de dataset "Kerkgebouwen in Nederland van 1800-1970", op te vragen via de URI van die dataset: <a href="http://data.spider-ld.org/kerkennl/data">http://data.spider-ld.org/kerkennl/data</a>. Bij SPIDER worden de metadata met de hand bijgehouden in een bestand in <a href="https://nl.wikipedia.org/wiki/Turtle_(syntaxis)">Turtle-formaat</a> (Turtle is een notatievorm voor het RDF die voor mensen makkelijk te lezen en te schrijven is). Zo'n bestand is met een gewone teksteditor te maken en aan te passen. Controleren of er geen vormfouten in zo'n bestand staan kan online (zoek naar 'RDF turtle validator'), of op de commandoregel via het programma "riot", een onderdeel van het Open Source-project <a href="https://jena.apache.org/">Apache Jena</a>. 
  Bij SPIDER wordt het bestand met metadata na elke wijziging ingelezen in het gekozen publicatieplatform (daarover meer in <a href="#publish">Data ter beschikking stellen op het web</a>).<p>
  
  <h2 id="semantics">Betekenis vastleggen: semantiek</h2>
  <p>
  Een belangrijke stap in het delen van data is het kenbaar maken van de betekenis van de verschillende onderdelen van een dataset. Bij webdata gebeurt dat bij voorkeur via al bestaande, algemene semantiek. Daardoor wordt een belangrijk voordeel bereikt: <a href="https://en.wikipedia.org/wiki/Semantic_interoperability"> semantische interoperabiliteit</a>. Dat vergemakkelijkt het vinden en combineren van data uit verschillende bronnen en verlaagt het risico van misinterpretatie.
  </p>  
  <p>
  Op het web zijn vele <a href="https://www.w3.org/TR/ld-glossary/#vocabulary">vocabularia</a> te vinden die definities bevatten van tal van concepten. Er zijn verschillende soorten vocabularia. Sommige bevatten heel algemene termen, zoals de verschillende <a href="https://en.wikipedia.org/wiki/Upper_ontology">upper ontologies</a> die zijn ontwikkeld, of het vocabulaire <a href="http://schema.org/">schema.org</a>, dat door makers van zoekmachines ter beschikking wordt gesteld om indexeerbaarheid van data en webpagina's te verhogen. Daarnaast zijn er gespecialiseerde vocabularia die definities bevatten van begrippen binnen een bepaald domein. Bij publicatie van de dataset "Kerkgebouwen in Nederland van 1800-1970" hebben we bijvoorbeeld gebruik gemaakt van vocabularia die toegespitst zijn op cultureel erfgoed:
  </p>
  <ul>
  <li><a href="http://www.cidoc-crm.org/">CIDOC-CRM</a></li>
  <li><a href="http://www.getty.edu/research/tools/vocabularies/aat/">Getty's Art & Architecture Thesaurus</a></li>
  <li><a href="http://www.erfgoedthesaurus.nl/">De Erfgoedthesaurus</a> van de Rijksdienst voor het Cultureel Erfgoed</li>
  </ul>
  <p>Het kan nog best lastig zijn om voor een dataset alle benodigde semantiek te vinden op het <a href="https://nl.wikipedia.org/wiki/Semantisch_web">semantisch web</a>. Een handige bron voor het vinden van toepasselijke vocabularia is <a href="http://lov.okfn.org/dataset/lov">Linked Open Vocabularies</a>.
  </p>
  <p>
  Mocht het echt niet lukken om geschikte bestaande semantiek te vinden, dan is het altijd mogelijk semantiek zelf te ontwikkelen en vervolgens op het web te publiceren. Er zijn daar veschillende stanaarden voor. Het <a href="https://nl.wikipedia.org/wiki/SKOS">Simple Knowledge Organization System (SKOS)</a> is relatief simpel, maar heeft niet veel mogelijkheden. Meer is mogelijk via <a href="https://nl.wikipedia.org/wiki/RDFS">RDFS</a>, en op het semantisch web heeft de <a href="https://nl.wikipedia.org/wiki/Web_Ontology_Language">Web Ontology Language (OWL)</a> de meeste mogelijkheden, maar is daarmee ook het moeilijkst om onder de knie te krijgen.
  </p>
  <h3>Modelleringsproblemen</h3>
  <p>Naast het vinden van de juiste semantiek kan het ook nog een uitdaging zijn om semantiek goed toe te passen en daarbij een goede onderlinge samenhang te vinden. Met andere woorden, de structuur en logica van een dataset moeten zo goed mogelijk aan bestaande websemantiek worden gekoppeld. Bij SPIDER was het op sommige onderdelen lastig om de juiste websemantiek te vinden en te gebruiken. Hieronder enkele beschrijving van dat soort problemen en de oplossingen waarvoor we hebben gekozen:</p>
  <ul>
    <li><a href="http://www.pilod.nl/wiki/Versies_van_dingen_in_een_dataset">Versies van dingen in een dataset</a></li>
    <li><a href="http://www.pilod.nl/wiki/SKOS-concepten_als_temporele_eigenschappen">SKOS-concepten als temporele eigenschappen</a></li>
  </ul>
  
  <h2 id="transform">Data transformeren</h2>
  <p>Data ter beschikking stellen als Linked Data betekent dat die data van het <a href="https://nl.wikipedia.org/wiki/Resource_Description_Framework">Resource Description Framework (RDF)</a> gebruik moeten maken. In RDF worden data uitgedrukt in tripletten, een trio <b>subject</b>, <b>predicaat</b> en <b>object</b>, en die tripletten kunnen <a href="https://nl.wikipedia.org/wiki/Grafentheorie">grafen</a> vormen. Dat is een om meerdere redenen handige manier van data uitdrukken, maar het is wel heel anders dan de manier waarop de meeste data waarschijnlijk aanvankelijk beschikbaar zijn, namelijk in de vorm van tabellen. Vaak zal het dus nodig zijn onderzoeksdata om te zetten (transformeren) van een tabelstructuur naar RDF.
  </p>
  <p>
  Uit de vorige stap, het vinden van (algemene) websemantiek om de data te beschrijven, kan al bijna geheel de structuur volgen die de data zouden moeten hebben bij publicatie op het web. De websemantiek moet immers een samenhang hebben. Is er bijvoorbeeld semantiek gevonden voor de begrippen 'boek' en 'auteur', dan is een begrip als 'is geschreven door' nodig om die data-elementen te aan elkaar te relateren. We kunnen er dus van uit gaan dat zowel de uitgangssituatie (de data in tabelvorm) als de doelsituatie (de data in RDF) bekend zijn. De vraag is dan: hoe kunnen de data van de ene vorm in de andere worden omgezet?
  </p>
  <p>
  De wens tabeldata naar RDF te transformeren komt vaak voor. Er zijn daardoor meerdere oplossingen beschreven. Om er een paar te noemen:
  </p>
  <ul>
  <li><a href="https://www.w3.org/TR/r2rml/">R2RML</a>: een taal om (in RDF) een afbeelding van tabulaire data op een RDF-dataset te beschrijven.</li>
  <li><a href="http://d2rq.org/d2rq-language">D2RQ</a>: een taal (in <a href="https://nl.wikipedia.org/wiki/Turtle_(syntaxis)">Turtle-formaat</a>) een afbeelding van tabulaire data op een RDF-dataset te beschrijven.</li>
  <li><a href="https://www.w3.org/wiki/ConverterToRdf">Deze W3C-wikipagina</a> geeft een overzicht van hulpmiddelen om van verschillende formaten naar RDF te converteren</li>
  </ul>
  <p>Bij SPIDER hebben we voor een pragmatische oplossing gekozen, gebaseerd op de veronderstelling dat kennis van <a href="https://nl.wikipedia.org/wiki/SQL">SQL</a>, de bevragingstaal voor tabeldata, vrijwel altijd nodig is bij een transformatie naar RDF. Er is daarom gekozen voor een methode die alleen kennis van SQL vereist. Wel is dan nodig dat de data via een database die ondersteuning voor SQL heeft toegankelijk zijn. Een goede Open Source relationele database is <a href="https://www.postgresql.org/">PostgreSQL<a>. Het heeft veel mogelijkheden om data te manipuleren, wat handig is bij transformatie naar RDF. In de eerste SPIDER-casus waren de oorspronkelijke data verzameld in een Access-bestand. Via de <a href="https://www.postgresql.org/docs/current/static/postgres-fdw.html">Foreign Data Wrapper</a>, een PostgreSQL-module om externe data via PostgreSQL te benaderen, werd het mogelijk via PostgreSQL de data via SQL te bevragen. Daarna wordt het mogelijk via een SQL-query RDF-tripletten te genereren. Bijvoorbeeld, de volgende SQL-query 
  </p>
  <pre>
select '&lthttp://data.spider-ld.org/kerkennl/data/kerk' || id || '&gt &lthttp://www.w3.org/1999/02/22-rdf-syntax-ns#type&gt &lthttp://dbpedia.org/ontology/Church&gt .' from kerken;
  </pre>
  produceert tripletten als hieronder, evenveel als er rijen in de tabel 'kerken' zitten.
  <pre>
&lthttp://data.spider-ld.org/kerkennl/data/kerk1&gt &lthttp://www.w3.org/1999/02/22-rdf-syntax-ns#type&gt &lthttp://dbpedia.org/ontology/Church&gt .
&lthttp://data.spider-ld.org/kerkennl/data/kerk2&gt &lthttp://www.w3.org/1999/02/22-rdf-syntax-ns#type&gt &lthttp://dbpedia.org/ontology/Church&gt .
&lthttp://data.spider-ld.org/kerkennl/data/kerk3&gt &lthttp://www.w3.org/1999/02/22-rdf-syntax-ns#type&gt &lthttp://dbpedia.org/ontology/Church&gt .
  </pre>
  <p>Deze tripletten zijn uitgeschreven als <a href="https://en.wikipedia.org/wiki/N-Triples">N-Triples</a>, een RDF-formaat dat in een willekeurig ander RDF-formaat kan worden omgezet, of kan worden ingelezen in een opslagmedium voor RDF.</p>
  <p>Een dergelijke query kan worden gebruikt op de commandoregel, door gebruik te maken van <a href="https://www.postgresql.org/docs/current/static/app-psql.html">psql</a>:</p>
  <pre>
psql -U postgres -A -t -d spiderdb1 -c "select '&lthttp://data.spider-ld.org/kerkennl/data/kerk' || id || '&gt &lthttp://www.w3.org/1999/02/22-rdf-syntax-ns#type&gt &lthttp://dbpedia.org/ontology/Church&gt .' from kerken;" &gt churches.nt
  </pre>
  <p>Het uitvoeren van de bovenstaande regel heeft tot gevolg dat de gegenereerde tripletten naar een bestand 'churches.nt' worden geschreven. Meerdere van dit soort regels kunnen samen een script vormen dat in één keer alle data naar RDF in N-Triples-formaat kan transformeren.
  </p>
  <p>De bovenstaande SQL-query is relatief simpel. Het mooie van het gebruik van een geavanceerde database als PostgreSQL is dat er complexere query's kunnen worden gemaakt om de data in de gewenste vorm te krijgen. In het voorbeeld hieronder worden geografische puntcoordinaten uitgedrukt in WKT-formaat en tegelijkertijd afgerond, via de PostGIS-extensie:
  </p>
  <pre>
select '&lthttp://data.spider-ld.org/kerkennl_extra/data/geom' || id || '_point_rd&gt &lthttp://www.opengis.net/ont/geosparql#asWKT&gt ""&lthttp://www.opengis.net/def/crs/EPSG/0/28992&gt ' || ST_AsText(ST_GeomFromGeoJSON(ST_AsGeoJSON(puntgeometrie_28992,0,0))) || '""^^' || '&lthttp://www.opengis.net/ont/geosparql#wktLiteral&gt .' from kerken_locatie;
  </pre>
  
  <h2 id="publish">Data ter beschikking stellen op het web</h2>
  <p>Heb je RDF-data in bestanden, dan zou je die bestanden via een webserver op het web kunnen publiceren. Voor het gemak van de gebruiker zouden de bestanden in meerdere formaten kunnen worden omgezet. Handige formaten om in ieder geval aan te bieden zijn <a href="https://nl.wikipedia.org/wiki/HyperText_Markup_Language">HTML</a> en <a href="http://json-ld.org/">JSON-LD</a>. Het formatteren van data als HTML-pagina's is handig omdat webbrowsers direct HTML kunnen weergeven. HTML daarmee een formaat dat nuttig is om mensen direct inzicht in de data te geven. Bovendien kunnen via een HTML-pagina hyperlinks worden aangeboden aan een gebruiker, die de hyperlinks kan volgen om andere data te ontdekken.
  </p>
  <p>JSON-LD is handig doordat het snel te verwerken is door webapplicaties, want het is gebaseerd op <a href="https://nl.wikipedia.org/wiki/JSON">JSON</a>. JSON-LD kan gebruikt worden als één van de notatievormen voor RDF, net als Turtle en N-Triples. Via JSON-LD kunnen dus data als graaf worden opgehaald.</p>
  <p>Bij het publiceren van data in de vorm van bestanden is het zaak de webserver zo in te stellen dat <a href="https://en.wikipedia.org/wiki/Content_negotiation">content negotiation</a> wordt ondersteund. Zodoende kunnen gebuikers de data in het gewenste formaat opvragen.</p>
  <p>Voor kleine en overzichtelijke datasetjes is het misschien afdoende om de data als bestanden aan te bieden. Maar wanneer er gespecialiseerde software wordt gebruikt om data te ontsluiten wordt de gebruikersvriendelijkheid verhoogd, vooral bij grote datasets. Platforms voor het beheren en ontsluiten van RDF-data kunnen ook geavanceerdere manieren aanbieden om data te onderzoeken, te selecteren en op te vragen. Er kunnen diverse API's worden aangeboden, bijvoorbeeld <a href="https://nl.wikipedia.org/wiki/SPARQL">SPARQL</a>, een gestandaardiseerde bevragingstaal voor RDF-data.</p>
  <p>
  Er zijn verschillende platforms voor het ontsluiten van Linked Data. Soms heeft zo'n systeem een eigen opslagmedium, een <a href="https://en.wikipedia.org/wiki/Triplestore">triplestore</a> of <i>quadstore</i>, geoptimaliseerd voor het opslaan van RDF-data. Een systeem kan ook worden gekoppeld aan een relationele database, waarbij het platform de transformatie naar RDF voor zijn rekening neemt. Enkele platforms die als Open Source-projecten worden ontwikkeld zijn, in willekeurige volgorde:
  </p>
  <ul>
  <li><a href="https://virtuoso.openlinksw.com/dataspace/doc/dav/wiki/Main/VOSIndex">Virtusoso Open Source</a></li>
  <li><a href="http://d2rq.org/d2r-server">D2R Server</a></li>
  <li><a href="http://aksw.org/Projects/Sparqlify.html">Sparqlify</a></li>
  <li><a href=http://silkframework.org/">SILK</a></li>
  <li><a href="http://www.swi-prolog.org/web/ClioPatria/">ClioPatria</a></li>
  <li><a href="http://marmotta.apache.org/">Apache Marmotta</a></li>
  <li><a href="http://neo4j-org-dev.herokuapp.com/develop/linked_data">Neo4J</a></li>
  <li><a href="http://allegrograph.com/allegrograph/">AllegroGraph Free Edition</a></li>
  </ul>
  <p>Daarnaast worden er diverse commerciële producten aangeboden.</p>
  <p>Bij SPIDER hebben we gekozen voor het Open Source project <a href="http://marmotta.apache.org/">Marmotta</a>, vanwege de huidige functionaliteit, de toekomstige ondersteuning voor <a href="http://www.opengeospatial.org/standards/geosparql">GeoSPARQL</a>, maar vooral vanwege de laagdrempeligheid. Het installeren en aan het werk zetten van Marmotta is niet zo moeilijk, wat het een goed product lijkt te maken voor de geesteswettenschapper die haar of zijn data op het web wil delen.</p>
  <br>
  <hr>
</section>

<footer>
  <b>S</b>emantic <b>P</b>erspectives and <b>I</b>nterlinked <b>D</b>ata from <b>E</b>-humanities <b>R</b>esearch
</footer>

</body>