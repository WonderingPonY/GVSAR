--Northern Spawns
NorhternSpawnZones = {
ZONE:New( "Northern Border Spawn Zone-1" ),
ZONE:New( "Northern Border Spawn Zone-2" ),
ZONE:New( "Northern Border Spawn Zone-3" ),
ZONE:New( "Northern Border Spawn Zone-4" ),
ZONE:New( "Northern Border Spawn Zone-5" ),
ZONE:New( "Northern Border Spawn Zone-6" ),
ZONE:New( "Northern Border Spawn Zone-7" ),
ZONE:New( "Northern Border Spawn Zone-8" ),
ZONE:New( "Northern Border Spawn Zone-9" ),
ZONE:New( "Northern Border Spawn Zone-10" ),
ZONE:New( "Northern Border Spawn Zone-11" ),
ZONE:New( "Northern Border Spawn Zone-12" ),
ZONE:New( "Northern Border Spawn Zone-13" ) }

--Northern unit templates
NBU = {
"Northern Border Units-1",
"Northern Border Units-2",
"Northern Border Units-3" }

--Spawns
NorthernSpawnForces = SPAWN:New( "Northern Border Forces" )
:InitRandomizeTemplate(NBU)
:InitLimit( 104, 0 )
:InitRandomizeRoute( 0, 1, 200 )
:InitRandomizeZones( NorhternSpawnZones )
:InitRandomizePosition(NBU)
:SpawnScheduled( 5, .5 )
