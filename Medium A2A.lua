A2ASpawnZones = {
  ZONE:New("A2A Spawns-1"),
  ZONE:New("A2A Spawns-2"),
  ZONE:New("A2A Spawns-3"),
  ZONE:New("A2A Spawns-4"),
  ZONE:New("A2A Spawns-5"),
  ZONE:New("A2A Spawns-6")
}
MediumA2A = {
  "MediumAerial1",
  "MediumAerial2"
}
MediumA2A = SPAWN:New( "mediumfighter" )
:InitRandomizeTemplate(MediumA2A)
:InitLimit( 2, 0 )
:InitRandomizeRoute( 0, 1, 200 )
:InitRandomizeZones( A2ASpawnsZones )
:SpawnScheduled( 5, .5 )
