:: This is a Windows batch file to write a dump of triples from PostgreSQL tables in NTriples format
:: The PostgreSQL client psql needs to be available on the command line
:: Edit the .pgpass file to prevent password prompts
:: Convert output to turtle: riot --formatted=turtle churches_extra.nt > churches_extra.ttl

@echo off
SETLOCAL ENABLEEXTENSIONS
set base=http://data.spider-ld.org/kerkennl/
set rdf=http://www.w3.org/1999/02/22-rdf-syntax-ns#
set rdfs=http://www.w3.org/2000/01/rdf-schema#
set xsd=http://www.w3.org/2001/XMLSchema#
set dcterms=http://purl.org/dc/terms/
set geo=http://www.w3.org/2003/01/geo/wgs84_pos#
set cidoc=http://www.cidoc-crm.org/rdfs/cidoc_crm_v6.2-draft-2015August.rdfs#
set dbo=http://dbpedia.org/ontology/
set dbp=http://dbpedia.org/resource/
set aat=http://vocab.getty.edu/aat/
set schema=http://schema.org/
set bag=http://lod.geodan.nl/vocab/bag#
set locn=http://www.w3.org/ns/locn#
set eth=http://data.cultureelerfgoed.nl/semnet/
set event=http://purl.org/NET/c4dm/event.owl#
set void=http://rdfs.org/ns/void#
set dcat=http://www.w3.org/ns/dcat#
set foaf=http://xmlns.com/foaf/0.1/
set dul=http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#
set umbel=http://umbel.org/umbel#
set rc=http://umbel.org/umbel/rc/
set time=http://www.w3.org/2006/time#
set geosparql=http://www.opengis.net/ont/geosparql#
set sd=http://www.w3.org/ns/sparql-service-description#
set crs=http://www.opengis.net/def/crs/EPSG/0/

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || id || '> <%locn%location> <%base%locatie' || id || '> .' from kerken_locatie;" > churches_extra.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%locatie' || id || '> <%rdf%type> <%dcterms%Location> .' from kerken_locatie;" >> churches_extra.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%locatie' || id || '> <%locn%geometry> ""' || st_astext(geometrie_4326) || '""^^' || '<%geosparql%wktLiteral> .' from kerken_locatie;" >> churches_extra.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%locatie' || id || '> <%locn%geometry> ""<%crs%28992> ' || st_astext(geometrie_28992) || '""^^' || '<%geosparql%wktLiteral> .' from kerken_locatie;" >> churches_extra.nt

::psql -U postgres -A -t -d spiderdb1 -c "select '<%base%locatie' || id || '> <%locn%geometry> <%base%kerk' || id || '_geom_crs84> .' from kerken_locatie;" >> churches_extra.nt
::psql -U postgres -A -t -d spiderdb1 -c "select '<%base%locatie' || id || '> <%locn%geometry> <%base%kerk' || id || '_geom_rd> .' from kerken_locatie;" >> churches_extra.nt
::psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || id || '_geom_crs84> <%rdf%type> <%locn%Geometry>.' from kerken_locatie;" >> churches_extra.nt
::psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || id || '_geom_crs84> <%geosparql%type> <%locn%Geometry>.' from kerken_locatie;" >> churches_extra.nt
::psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || id || '_geom_crs84> <%geosparql%type> <%geosparql%Geometry>.' from kerken_locatie;" >> churches_extra.nt
::psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || id || '_geom_crs84> <%geosparql%asWKT> ""' || st_astext(geometrie_4326) || '""^^' || '<%geosparql%wktLiteral>.' from kerken_locatie;" >> churches_extra.nt
