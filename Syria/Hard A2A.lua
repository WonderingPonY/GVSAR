A2ASpawnZones = {
  ZONE:New("A2A Spawns-1"),
  ZONE:New("A2A Spawns-2"),
  ZONE:New("A2A Spawns-3"),
  ZONE:New("A2A Spawns-4"),
  ZONE:New("A2A Spawns-5"),
  ZONE:New("A2A Spawns-6")
}
HardA2A = {
  "HardAerial1",
  "HardAerial2"
}
MediumA2A = SPAWN:New( "hardfighter" )
:InitRandomizeTemplate(HardA2A)
:InitLimit( 2, 0 )
:InitRandomizeRoute( 0, 1, 200 )
:InitRandomizeZones( A2ASpawnsZones )
:SpawnScheduled( 5, .5 )
