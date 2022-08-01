RedLRZones = {ZONE:New( "Red LR SAM Zone-1" ), ZONE:New( "Red LR SAM Zone-2" ), ZONE:New( "Red LR SAM Zone-3" ), ZONE:New( "Red LR SAM Zone-4" ) }
blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()


BlueFarptrigger = SCHEDULER:New(nil,
function()

  local KM96zone = ZONE:FindByName("KM96")
  KM97zone = ZONE:FindByName("KM97")
  KM88zone = ZONE:FindByName("KM88")
  KM77zone = ZONE:FindByName("KM77")
  RedLRZones1 = ZONE:FindByName("Red LR SAM Zone-1")
  RedLRZones2 = ZONE:FindByName("Red LR SAM Zone-2")
  RedLRZones3 = ZONE:FindByName("Red LR SAM Zone-3")

  if blufor:NoneInZone(KM96zone) or blufor:NoneInZone(KM97zone) or blufor:NoneInZone(KM88zone) or blufor:NoneInZone(KM77zone) and redfor:NoneInZone(RedLRZones) then
    SPAWN:New("Red LR SAM-1")
    :InitRandomizeZones(RedLRZones)
    --:InitRandomizeTemplate(RedForSpawn)
    :InitLimit( 18, 0 )
    :SpawnScheduled( 5, .5 )
  end


end, {}, 10 )
