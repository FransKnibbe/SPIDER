:: This is a Windows batch file to write a dump of triples from kerken.PostgreSQL tables in NTriples format
:: The PostgreSQL client psql needs to be available on the command line
:: Edit the .pgpass file to prevent password prompts
:: Convert output to turtle: riot --formatted=turtle churches.nt > churches.ttl

@echo off
SETLOCAL ENABLEEXTENSIONS
set base=http://data.spider-ld.org/kerkennl/data/
set rdf=http://www.w3.org/1999/02/22-rdf-syntax-ns#
set rdfs=http://www.w3.org/2000/01/rdf-schema#
set xsd=http://www.w3.org/2001/XMLSchema#
set dcterms=http://purl.org/dc/terms/
set geo=http://www.w3.org/2003/01/geo/wgs84_pos#
set cidoc=http://www.cidoc-crm.org/rdfs/cidoc_crm_v6.2-draft-2015August.rdfs#
set dbpo=http://dbpedia.org/ontology/
set dbpr=http://dbpedia.org/resource/
set dbprnl=http://nl.dbpedia.org/resource/
set dbpp=http://dbpedia.org/property/
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

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%dbpo%Church> .' from kerken.\"01_Hoofdtabel_Kerken\";" > churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%cidoc%E22_Man-Made_Object> .' from kerken.\"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%cidoc%E93_Presence> .' from kerken.\"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%schema%Church> .' from kerken.\"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%dul%DesignedArtifact> .' from kerken.\"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%rc%Church_Building> .' from kerken.\"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdf%type> <%dbpo%ArchitecturalStructure> .' from kerken.\"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%void%inDataSet> <http://data.spider-ld.org/kerkennl/data> .' from kerken.\"01_Hoofdtabel_Kerken\";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%type> <%dbpr%Cathedral> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Functie_kathedraal\" = '1';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%type> <%dbpr%Minor_basilica> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Eretitel_Basiliek\" = '1';" >> churches.nt
:: Weird double quotes, but it works.
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || k.\"ID\" || '> <%dcterms%title> ""' || n.\"Naam_Kerk\" || '\" .' from kerken.\"01_Hoofdtabel_Kerken\" k, kerken.\"011_Naam_Kerk\" n where k.\"ID\" = n.\"ID\" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || k.\"ID\" || '> <%dbpo%buildingName> ""' || n.\"Naam_Kerk\" || '\" .' from kerken.\"01_Hoofdtabel_Kerken\" k, kerken.\"011_Naam_Kerk\" n where k.\"ID\" = n.\"ID\" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || k.\"ID\" || '> <%cidoc%E42_Identifier> ""' || n.\"Naam_Kerk\" || '\" .' from kerken.\"01_Hoofdtabel_Kerken\" k, kerken.\"011_Naam_Kerk\" n where k.\"ID\" = n.\"ID\" >> churches.nt
:: Long literals ("""like this""") are needed if the string can contain newlines or double quotes
:: commented out because Riot (Jena) and Cliopatria do not seem to accept triple quotes.
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%rdfs%comment> """"""' || \"Bijzonderheden\" || '\""""" .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Bijzonderheden\" is not null";" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%locn%address> <%base%kerk' || \"ID\" || '/address> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Plaats\" is not null;" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/address> <%rdf%type> <%locn%Address> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Plaats\" is not null;" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/address> <%locn%postName> ""' || \"Plaats\" || '"" .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Plaats\" is not null;" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/address> <%locn%thoroughfare> ""' || \"Straatnaam\" || '"" .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Straatnaam\" is not null;" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/address> <%locn%locatorDesignator> ""' || \"Huisnummer\" || '""^^<%xsd%Integer> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huisnummer\" is not null and \"Huisnummer\" > 0;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dcterms%created> ""' || \"Jaar_ingebruikname\" || '""^^<%xsd%gYear> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_ingebruikname\" is not null and \"Jaar_ingebruikname\" > 0;" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%rdf%type> <%dcterms%event> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%rdf%type> <%cidoc%E%_Event> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%rdf%type> <%dul%Event> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%rdf%type> <%umbel%Events> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%dcterms%subject> <%aat%300069272> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%dul%includesObject> <%base%kerk' || \"ID\" || '> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%cidoc%P12_occurred_in_the_presence_of> <%base%kerk' || \"ID\" || '> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%umbel%relatesToFacility> <%base%kerk' || \"ID\" || '> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '/consecration> <%dcterms%date> ""' || \"Jaar_Consecratie\" || '""^^<%xsd%gYear> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Jaar_Consecratie\" is not null and \"Jaar_Consecratie\" <> 0 ;"  >> churches.nt
:: start 'bestemming'
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_church> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'kerk' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_museum> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'museum' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_communitycentre> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'wijkcentrum' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_mosque> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'moskee' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_healthcentre> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'gezondheidscentrum' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_house> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'woningen' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_office> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'kantoren' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_culturalcentre> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'cultureel centrum / buurthuis' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_school> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'school' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_columbarium> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'columbarium' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_library> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'bibliotheek' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_retail> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'winkel' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_preschool> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'kinderdagverblijf' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%cidoc%P103_was_intended_for> <%base%usage_other> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Huidige_bestemming\" = 'overig' ;"  >> churches.nt
:: end 'bestemming'

:: start 'vorm_type'
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%eth%6297a7f8-a900-4f56-b599-5fd07f8da0b3> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'pseudobasiliek';"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%dbprnl%Pseudobasiliek> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'pseudobasiliek';"  >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%eth%6dd12192-6ae6-472f-a8ac-df0f2fc2c122> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'kruisbasiliek';"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%dbprnl%Kruisbasiliek> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'kruisbasiliek' ;"  >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%eth%b08a18e2-f9fc-49f6-bb0f-71c9a06b86c3> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" =  'centraalbouw' or \"Vorm_type\" = 'basiliek/centraalbouw';"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%dbprnl%Centraalbouw> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" =  'centraalbouw' or \"Vorm_type\" = 'basiliek/centraalbouw';"  >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%eth%5c688668-31a7-4080-b6ad-95e7d2b1ea9f> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'zaalkerk' ;"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%dbprnl%Zaalkerk> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'zaalkerk';"  >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%eth%676c9f43-eb1d-4201-b274-7db0a2e54ca4> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'hallenkerk';"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%dbprnl%Hallenkerk> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'hallenkerk';"  >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%eth%4cc2952d-a9c7-438e-9286-3241c0581796> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" =  'centraalbouw' or \"Vorm_type\" = 'basiliek/centraalbouw';"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%dbprnl%Basiliek> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" =  'centraalbouw' or \"Vorm_type\" = 'basiliek/centraalbouw';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%eth%aa257980-4d44-42d9-9167-415d0a7af8a1> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'kruiskerk';"  >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpp%architectureType> <%dbprnl%Kruiskerk> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Vorm_type\" = 'basliliek';" >> churches.nt
:: end 'vorm_type'

:: start 'stijl'
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%1e9cc0cf-e8c3-480b-a0b6-506e48531f5e> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neogothiek' or \"Stijl\" = 'neogotiek';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Gothic_Revival_architecture> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neogothiek' or \"Stijl\" = 'neogotiek';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%b8a38fbe-8aa2-4dd6-969f-877e5159775c> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'expressionisme';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Expressionist_architecture> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'expressionisme';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%d0de673e-2cb8-40b9-96fe-4edcca978ddf> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neoromaans';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Romanesque_Revival_architecture> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neoromaans';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%53be61c5-deb7-4a04-8792-fc0718de4136> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neorenaissance';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Renaissance_Revival_architecture> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neorenaissance';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%dfeca8b3-5a03-4409-ab9c-4dccf35a3369> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'eclecticisme';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Eclecticism> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'eclecticisme';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%82e98a31-7c87-4ea2-ac44-dde6c33ff22f> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neoclassicisme';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Neoclassicism> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neoclassicisme';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%56133cf2-e496-4a5e-9166-c675a6e9ec02> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neobarok';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Baroque_Revival_architecture> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'neobarok';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%faa473dc-0eeb-481f-bd36-51c43e77c609> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'traditionalisme';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Traditionalist_School_(architecture)> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'traditionalisme';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%1e094ce2-e879-4687-bd3c-5968e33cd1d9> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'modernisme - functionalisme';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%03d7eb43-62dc-4d8b-8a50-d809d2d0e332> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'modernisme - functionalisme';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Modernism)> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'modernisme - functionalisme';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Functionalism_(architecture)> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'modernisme - functionalisme';" >> churches.nt

psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%eth%d19a7bd4-d479-422c-838a-d4d3749205a> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'rationalisme';" >> churches.nt
psql -U postgres -A -t -d spiderdb1 -c "select '<%base%kerk' || \"ID\" || '> <%dbpo%architecturalStyle> <%dbpr%Rationalism_(architecture)> .' from kerken.\"01_Hoofdtabel_Kerken\" where \"Stijl\" = 'rationalisme';" >> churches.nt

:: end 'stijl'
