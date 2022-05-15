Senakicounterzones = {
  ZONE:New("Insurgentspawn-1"),
  ZONE:New("Insurgentspawn-2"),
  ZONE:New("Insurgentspawn-3"),
  ZONE:New("Insurgentspawn-4"),
  ZONE:New("Insurgentspawn-5"),
  ZONE:New("Insurgentspawn-6"),
  ZONE:New("Insurgentspawn-7")

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
