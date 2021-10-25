A2ASpawnsZones = {
  ZONE:New("A2A Spawns-1"),
  ZONE:New("A2A Spawns-2"),
  ZONE:New("A2A Spawns-3"),
  ZONE:New("A2A Spawns-4"),
  ZONE:New("A2A Spawns-5"),
  ZONE:New("A2A Spawns-6")
}

EasyA2A = {
  "EasyAerial1",
  "EasyAerial2"

EasyA2A = SPAWN:New( "easyfighter" )
:InitRandomizeTemplate(EasyA2A)
:InitLimit( 2, 0 )
:InitRandomizeRoute( 0, 1, 200 )
:InitRandomizeZones( A2ASpawnsZones )
:SpawnScheduled( 5, .5 )
