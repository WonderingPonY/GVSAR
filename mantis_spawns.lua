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
--[[
Mantis = ZONE:New("Mantis")
Mantis1 = ZONE:New("Mantis-1")
Mantis3 = ZONE:New("Mantis-3")
Mantis4 = ZONE:New("Mantis-4")
Mantis5 = ZONE:New("Mantis-5")
Mantis6 = ZONE:New("Mantis-6")

AAAMantis = ZONE:New("AAAMantis")
AAAMantis1 = ZONE:New("AAAMantis-1")
AAAMantis2 = ZONE:New("AAAMantis-2")
AAAMantis3 = ZONE:New("AAAMantis-3")
AAAMantis4 = ZONE:New("AAAMantis-4")
AAAMantis5 = ZONE:New("AAAMantis-5")
AAAMantis6 = ZONE:New("AAAMantis-6")
--]]
RNGMantisSpawnZones = MantisSpawnZones[math.random(7,#MantisSpawnZones)]
RNGAAAMantisSpawnZones = AAAMantisSpawnZones[math.random(7,#AAAMantisSpawnZones)]

--Unit Templates
MantisUnits = {
  "SA11Mantis",
  "SA3Mantis",
  "SA2Mantis",
  "SA6Mantis"
}

MantisAAA = {
  "AAAMantis-3",
  "AAAMantis-1",
  "AAAMantis-2"
}

--Spawns
--SA11Manits = SPAWN:New( "SA11Mantis" )
SA11Manits = SPAWN:New( "MantisSAM" )
SA11Manits:InitRandomizeTemplate( MantisUnit )
SA11Manits:InitLimit( 16, 0 )
SA11Manits:InitRandomizeZones( RNGMantisSpawnZones )--SA11Manits:SpawnInZone( Mantis,true )
SA11Manits:InitRandomizePosition( MantisUnit )
SA11Manits:SpawnScheduled( 5, .5 )

--SA2Manits = SPAWN:New( "SA2Mantis" )
SA2Manits = SPAWN:New( "MantisSAM-1" )
SA2Manits:InitRandomizeTemplate( MantisUnit )
SA2Manits:InitLimit( 16, 0 )
SA2Manits:InitRandomizeZones( RNGMantisSpawnZones )--SA2Manits:SpawnInZone( Mantis1,true )
SA2Manits:InitRandomizePosition(Mantis)
SA2Manits:SpawnScheduled( 5, .5 )

--SA3Mantis = SPAWN:New( "SA3Mantis" )
SA3Mantis = SPAWN:New( "MantisSAM-2" )
SA3Mantis:InitRandomizeTemplate( MantisUnit )
SA3Mantis:InitLimit( 16, 0 )
SA3Mantis:InitRandomizeZones( RNGMantisSpawnZones )
SA3Mantis:InitRandomizePosition( MantisUnit )
SA3Mantis:SpawnScheduled( 5, .5 )

--SA6Mantis = SPAWN:New( "SA6Mantis" )
SA6Mantis = SPAWN:New( "MantisSAM-3" )
SA6Mantis:InitRandomizeTemplate( MantisUnit )
SA6Mantis:InitLimit( 16, 0 )
SA6Mantis:InitRandomizeZones( RNGMantisSpawnZones )
SA6Mantis:InitRandomizePosition(Mantis)
SA6Mantis:SpawnScheduled( 5, .5 )

SAMMantis4 = SPAWN:New( "MantisSAM-4" )
SAMMantis4:InitRandomizeTemplate( MantisUnit )
SAMMantis4:InitLimit( 16, 0 )
SAMMantis4:InitRandomizeZones( RNGMantisSpawnZones )
SAMMantis4:InitRandomizePosition( MantisUnit )
SAMMantis4:SpawnScheduled( 5, .5 )

SAMMantis5 = SPAWN:New( "MantisSAM-5" )
SAMMantis5:InitRandomizeTemplate( MantisUnit )
SAMMantis5:InitLimit( 16, 0 )
SAMMantis5:InitRandomizeZones( RNGMantisSpawnZones )
SAMMantis5:InitRandomizePosition( MantisUnit )
SAMMantis5:SpawnScheduled( 5, .5 )

SAMMantis6 = SPAWN:New( "MantisSAM-6" )
SAMMantis6:InitRandomizeTemplate( MantisUnit )
SAMMantis6:InitLimit( 16, 0 )
SAMMantis6:InitRandomizeZones( RNGMantisSpawnZones )
SAMMantis6:InitRandomizePosition( MantisUnit )
SAMMantis6:SpawnScheduled( 5, .5 )

AAAMantis = SPAWN:New( "AAAMantis" )
AAAMantis:InitRandomizeTemplate(MantisAAA)
AAAMantis:InitLimit( 2, 0 )
AAAMantis:InitRandomizeZones( RNGAAAMantisSpawnZones )
--AAAMantis:SpawnInZone( AAAMantis )
AAAMantis:InitRandomizePosition(Mantis)
AAAMantis:SpawnScheduled( 5, .5 )

AAAMantis1 = SPAWN:New( "AAAMantis1" )
AAAMantis1:InitRandomizeTemplate(MantisAAA)
AAAMantis1:InitLimit( 2, 0 )
AAAMantis1:InitRandomizeZones( RNGAAAMantisSpawnZones )
AAAMantis1:InitRandomizePosition(Mantis)
AAAMantis1:SpawnScheduled( 5, .5 )

AAAMantis1 = SPAWN:New( "AAAMantis2" )
AAAMantis1:InitRandomizeTemplate(MantisAAA)
AAAMantis1:InitLimit( 2, 0 )
AAAMantis1:InitRandomizeZones( RNGAAAMantisSpawnZones )
AAAMantis1:InitRandomizePosition(Mantis)
AAAMantis1:SpawnScheduled( 5, .5 )

AAAMantis1 = SPAWN:New( "AAAMantis3" )
AAAMantis1:InitRandomizeTemplate(MantisAAA)
AAAMantis1:InitLimit( 2, 0 )
AAAMantis1:InitRandomizeZones( RNGAAAMantisSpawnZones )
AAAMantis1:InitRandomizePosition(Mantis)
AAAMantis1:SpawnScheduled( 5, .5 )

AAAMantis1 = SPAWN:New( "AAAMantis4" )
AAAMantis1:InitRandomizeTemplate(MantisAAA)
AAAMantis1:InitLimit( 2, 0 )
AAAMantis1:InitRandomizeZones( RNGAAAMantisSpawnZones )
AAAMantis1:InitRandomizePosition(Mantis)
AAAMantis1:SpawnScheduled( 5, .5 )

AAAMantis1 = SPAWN:New( "AAAMantis5" )
AAAMantis1:InitRandomizeTemplate(MantisAAA)
AAAMantis1:InitLimit( 2, 0 )
AAAMantis1:InitRandomizeZones( RNGAAAMantisSpawnZones )
AAAMantis1:InitRandomizePosition(Mantis)
AAAMantis1:SpawnScheduled( 5, .5 )

AAAMantis1 = SPAWN:New( "AAAMantis6" )
AAAMantis1:InitRandomizeTemplate(MantisAAA)
AAAMantis1:InitLimit( 2, 0 )
AAAMantis1:InitRandomizeZones( RNGAAAMantisSpawnZones )
AAAMantis1:InitRandomizePosition(Mantis)
AAAMantis1:SpawnScheduled( 5, .5 )
