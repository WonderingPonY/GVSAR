Senakicounterzones = {
  ZONE_UNIT:New("Spawn1", Spawnunit1, 100),
  ZONE_UNIT:New("Spawn1", Spawnunit1, 100)

}

Senakicountrunits = {
  "SenakiCounterConvoy-1",
  "SenakiCounterConvoy-2",
  "SenakiCounterConvoy-3"
}
EasyA2A = SPAWN:New( "SenakiCounterSpawn" )
:InitRandomizeTemplate( Senakicountrunits )
:InitLimit( 8, 0 )
:InitRandomizeZones( Senakicounterzones )
:SpawnScheduled(  14400, .5 )
