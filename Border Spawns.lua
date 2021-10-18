--Northern Spawns Zones
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

--Central Spawn Zones
CentralSpawnZones = {
ZONE:New( "Central Border Spawn Zone-1" ),
ZONE:New( "Central Border Spawn Zone-2" ),
ZONE:New( "Central Border Spawn Zone-3" ),
ZONE:New( "Central Border Spawn Zone-4" ),
ZONE:New( "Central Border Spawn Zone-5" ),
ZONE:New( "Central Border Spawn Zone-6" ),
ZONE:New( "Central Border Spawn Zone-7" ),
ZONE:New( "Central Border Spawn Zone-8" ),
ZONE:New( "Central Border Spawn Zone-9" ),
ZONE:New( "Central Border Spawn Zone-10" ),
ZONE:New( "Central Border Spawn Zone-11" ),
ZONE:New( "Central Border Spawn Zone-12" ),
ZONE:New( "Central Border Spawn Zone-13" ) }


--Northern Unit Templates
NBU = {
"Northern Border Units-1",
"Northern Border Units-2",
"Northern Border Units-3" }

--Central Unit Template
CBU = {
"Central Border Units-1",
"Central Border Units-2",
"Central Border Units-3" }


--Spawns
NorthernSpawnForces = SPAWN:New( "Northern Border Forces" )
:InitRandomizeTemplate(NBU)
:InitLimit( 104, 0 )
:InitRandomizeRoute( 0, 1, 200 )
:InitRandomizeZones( NorhternSpawnZones )
:InitRandomizePosition(NBU)
:SpawnScheduled( 5, .5 )

CentralSpawnForces = SPAWN:New( "Central Border Forces" )
:InitRandomizeTemplate(CBU)
:InitLimit( 104, 0 )
:InitRandomizeRoute( 0, 1, 200 )
:InitRandomizeZones( CentralSpawnZones )
:InitRandomizePosition(CBU)
:SpawnScheduled( 5, .5 )
