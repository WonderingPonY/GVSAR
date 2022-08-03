RedLRZones = {ZONE:New( "Red LR SAM Zone-1" ), ZONE:New( "Red LR SAM Zone-2" ), ZONE:New( "Red LR SAM Zone-3" ), ZONE:New( "Red LR SAM Zone-4" ) }
RedMRZones = {ZONE:New( "Red MR SAM Zone-1" ), ZONE:New( "Red MR SAM Zone-2" ), ZONE:New( "Red MR SAM Zone-3" ), ZONE:New( "Red MR SAM Zone-4" ) }
RedForSAMSpawn = {"RED SAM MR-1", "RED SAM MR-2", "RED SAM MR-3"}
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
    SPAWN:New("RED SAM LR-1")
    :InitRandomizeZones(RedLRZones)
    --:InitRandomizeTemplate(RedForSpawn)
    :InitLimit( 18, 0 )
    :SpawnScheduled( 5, .5 )
  end

  local LM17zone = ZONE:FindByName("LM17")
  LM27zone = ZONE:FindByName("LM27")
  LM45zone = ZONE:FindByName("LM45")
  LM47zone = ZONE:FindByName("LM47")
  RedMRZones1 = ZONE:FindByName("Red MR SAM Zone-1")
  RedMRZones2 = ZONE:FindByName("Red MR SAM Zone-2")
  RedMRZones3 = ZONE:FindByName("Red MR SAM Zone-3")
  RedMRZones4 = ZONE:FindByName("Red MR SAM Zone-4")

  if blufor:NoneInZone(LM17zone) or blufor:NoneInZone(LM27zone) or blufor:NoneInZone(LM45zone) or blufor:NoneInZone(LM47zone) and redfor:NoneInZone(RedMRZones) then
    SPAWN:New("RED SAM Medium")
    :InitRandomizeZones(RedMRZones)
    :InitRandomizeTemplate(RedForSAMSpawn)
    :InitLimit( 18, 0 )
    :SpawnScheduled( 5, .5 )
  end


end, {}, 10 )
