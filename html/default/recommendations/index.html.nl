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
  Mocht het echt niet lukken om geschikte bestaande semantiek te vinden, dan is het altijd mogelijk dat zelf te ontwikkelen en vervolgens op het web te publiceren. Er zijn daar veschillende stanaarden voor. Het <a href="https://nl.wikipedia.org/wiki/SKOS">Simple Knowledge Organization System (SKOS)</a> is relatief simpel, maar heeft niet veel mogelijkheden. Meer is mogelijk via <a href="https://nl.wikipedia.org/wiki/RDFS">RDFS</a>, en op het semantisch web heeft de <a href="https://nl.wikipedia.org/wiki/Web_Ontology_Language">Web Ontology Language (OWL)</a> de meeste mogelijkheden, maar is daarmee ook het moeilijkst om onder de knie te krijgen.
  </p>
  <h3>Modelleringsproblemen</h3>
  <p>Naast het vinden van de juiste semantiek kan het ook nog een uitdaging zijn om semantiek goed toe te passen en daarbij een goede onderlinge samenhang te vinden. Met andere woorden, de structuur en logica van een dataset moeten zo goed mogelijk aan bestaande websemantiek worden gekoppeld. Bij SPIDER was het op sommige onderdelen lastig om de juiste websemantiek te vinden en te gebruiken. Hieronder enkele beschrijving van dat soort problemen en de oplossingen waarvoor we hebben gekozen:</p>
  <ul>
    <li><a href="http://www.pilod.nl/wiki/Versies_van_dingen_in_een_dataset">Versies van dingen in een dataset</a></li>
    <li><a href="http://www.pilod.nl/wiki/SKOS-concepten_als_temporele_eigenschappen">SKOS-concepten als temporele eigenschappen</a></li>
  </ul>
  <h2 id="transform">Data transformeren</h2>
  <h2 id="publish">Data ter beschikking stellen op het web</h2>
  <br>
  <hr>
</section>

<footer>
  <b>S</b>emantic <b>P</b>erspectives and <b>I</b>nterlinked <b>D</b>ata from <b>E</b>-humanities <b>R</b>esearch
</footer>

</body>