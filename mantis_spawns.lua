--Spawn Zones
MantisSpawnZones = {
  ZONE:New("Mantis"),
  ZONE:New("Mantis-1"),
  ZONE:New("Mantis-2"),
  ZONE:New("Mantis-3"),
  ZONE:New("Mantis-4"),
  ZONE:New("Mantis-5"),
  ZONE:New("Mantis-6")
}

AAAMantisSpawnZones = {
  ZONE:New("AAAMantis"),
  ZONE:New("AAAMantis-1"),
  ZONE:New("AAAMantis-2"),
  ZONE:New("AAAMantis-3"),
  ZONE:New("AAAMantis-4"),
  ZONE:New("AAAMantis-5"),
  ZONE:New("AAAMantis-6")
}

--Unit Templates
Mantis = {
  "SA11Mantis",
  "SA3Mantis",
  "SA2Mantis",
  "SA6Mantis"
}

MantisAAA = {
  "AAAMantis"
}

--Spawns
SA11Manits = SPAWN:New( "SA11Mantis" )
SA11Manits:InitRandomizeTemplate(Mantis)
SA11Manits:InitLimit( 24, 0 )
SA11Manits:InitRandomizeZones( MantisSpawnZones )
SA11Manits:InitRandomizePosition(Mantis)
SA11Manits:SpawnScheduled( 5, .5 )

SA2Manits = SPAWN:New( "SA2Mantis" )
SA2Manits:InitRandomizeTemplate(Mantis)
SA2Manits:InitLimit( 30, 0 )
SA2Manits:InitRandomizeZones( MantisSpawnZones )
SA2Manits:InitRandomizePosition(Mantis)
SA2Manits:SpawnScheduled( 5, .5 )

SA3Mantis = SPAWN:New( "SA3Mantis" )
SA3Mantis:InitRandomizeTemplate(Mantis)
SA3Mantis:InitLimit( 24, 0 )
SA3Mantis:InitRandomizeZones( MantisSpawnZones )
SA3Mantis:InitRandomizePosition(Mantis)
SA3Mantis:SpawnScheduled( 5, .5 )

SA6Mantis = SPAWN:New( "SA6Mantis" )
SA6Mantis:InitRandomizeTemplate(Mantis)
SA6Mantis:InitLimit( 22, 0 )
SA6Mantis:InitRandomizeZones( MantisSpawnZones )
SA6Mantis:InitRandomizePosition(Mantis)
SA6Mantis:SpawnScheduled( 5, .5 )

AAAMantis = SPAWN:New( "AAAMantis" )
AAAMantis:InitRandomizeTemplate(Mantis)
AAAMantis:InitLimit( 22, 0 )
AAAMantis:InitRandomizeZones( AAAMantisSpawnZones )
AAAMantis:InitRandomizePosition(Mantis)
AAAMantis:SpawnScheduled( 5, .5 )
