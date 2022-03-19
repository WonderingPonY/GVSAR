Senakicounterzones = {
  ZONE:New("SenakiCounterAttk-1"),
  ZONE:New("SenakiCounterAttk-2")

}

Senakicountrunits = {
  "SenakiCounterConvoy-1",
  "SenakiCounterConvoy-2",
  "SenakiCounterConvoy-3"
}
EasyA2A = SPAWN:New( "SenakiCounterSpawn" )
:InitRandomizeTemplate( Senakicountrunits )
:InitLimit( 8, 64 )
:InitRandomizeZones( Senakicounterzones )
:SpawnScheduled( 3600, .5 )
