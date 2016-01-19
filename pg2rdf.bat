:: This is a Windows batch file to write a dump of triples from PostgreSQL tables
:: The PostgreSQL client psql needs to be available on the command line
:: Edit the .pgpass file to prevent password prompts
:: Convert output to turtle: riot --formatted=turtle churches.nt > churches.ttl

@echo off
SETLOCAL ENABLEEXTENSIONS
set base=http://data.spider-ld.org/kerkennl/
set rdf=http://www.w3.org/1999/02/22-rdf-syntax-ns#
set rdfs=http://www.w3.org/2000/01/rdf-schema#
set xsd=http://www.w3.org/2001/XMLSchema#
set dcterms=http://purl.org/dc/terms/
set geo=http://www.w3.org/2003/01/geo/wgs84_pos#
set cidoc=http://www.cidoc-crm.org/rdfs/cidoc_crm_v6.2-draft-2015August.rdfs#
set dpo=http://dbpedia.org/ontology/
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

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%dpo%Church> .' from \"01_Hoofdtabel_Kerken\";" > churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%cidoc%E22_Man-Made_Object> .' from \"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%cidoc%E93_Presence> .' from \"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%schema%Church> .' from \"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%dul%DesignedArtifact> .' from \"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%rc%Church_Building> .' from \"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%void%inDataSet> <%base%> .' from \"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dpo%type> <%dbp%Cathedral> .' from \"01_Hoofdtabel_Kerken\" where \"Functie_kathedraal\" = '1';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dpo%type> <%dbp%Minor_basilica> .' from \"01_Hoofdtabel_Kerken\" where \"Eretitel_Basiliek\" = '1';" >> churches.nt
:: Weird double quotes, but it works.
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || k.\"ID\" || '> <%dcterms%title> ""' || n.\"Naam_Kerk\" || '\" .' from \"01_Hoofdtabel_Kerken\" k, \"011_Naam_Kerk\" n where k.\"ID\" = n.\"ID\"; >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || k.\"ID\" || '> <%dpo%buildingName> ""' || n.\"Naam_Kerk\" || '\" .' from \"01_Hoofdtabel_Kerken\" k, \"011_Naam_Kerk\" n where k.\"ID\" = n.\"ID\"; >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || k.\"ID\" || '> <%cidoc%E42_Identifier> ""' || n.\"Naam_Kerk\" || '\" .' from \"01_Hoofdtabel_Kerken\" k, \"011_Naam_Kerk\" n where k.\"ID\" = n.\"ID\"; >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdfs%comment> ""' || \"Bijzonderheden\" || '\" .' from \"01_Hoofdtabel_Kerken\" where \"Bijzonderheden\" is not null";" >> churches.nt
