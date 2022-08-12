BlueLRZones = {ZONE:New( "Blue LR SAM Zone-1" ), ZONE:New( "Blue LR SAM Zone-2" ) }
BlueMRZones = {ZONE:New( "Blue MR SAM Zone-1" ), ZONE:New( "Blue MR SAM Zone-2" ), ZONE:New( "Blue MR SAM Zone-3" ), ZONE:New( "Blue MR SAM Zone-4" ) }
RedLRZones = {ZONE:New( "Red LR SAM Zone-1" ), ZONE:New( "Red LR SAM Zone-2" ), ZONE:New( "Red LR SAM Zone-3" ), ZONE:New( "Red LR SAM Zone-4" ) }
RedMRZones = {ZONE:New( "Red MR SAM Zone-1" ), ZONE:New( "Red MR SAM Zone-2" ), ZONE:New( "Red MR SAM Zone-3" ), ZONE:New( "Red MR SAM Zone-4" ) }
RedForSAMSpawn = {"RED SAM MR-1", "RED SAM MR-2", "RED SAM MR-3"}
BluForSAMSpawn = {"BLUE SAM MR-1", "BLUE SAM MR-2" }
blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()


RedSAMtrigger = SCHEDULER:New(nil,
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
    :InitLimit( 1, 0 )
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
    :InitLimit( 1, 0 )
    :SpawnScheduled( 5, .5 )
  end


end, {}, 10 )

blueSAMtrigger = SCHEDULER:New(nil,
function()
  MM73zone = ZONE:FindByName("MM73")
  MM74zone = ZONE:FindByName("MM74")
  RedLRZones1 = ZONE:FindByName("Blue LR SAM Zone-1")
  RedLRZones2 = ZONE:FindByName("Blue LR SAM Zone-2")

  if redfor:NoneInZone(MM73zone) or redfor:NoneInZone(MM74zone) and blufor:NoneInZone(BlueLRZones) then
    SPAWN:New("BLUE SAM LR-1")
    :InitRandomizeZones(BlueLRZones)
    --:InitRandomizeTemplate(RedForSpawn)
    :InitLimit( 1, 0 )
    :SpawnScheduled( 5, .5 )
  end

  local MM44zone = ZONE:FindByName("MM44")
  MM35zone = ZONE:FindByName("MM35")
  MM26zone = ZONE:FindByName("MM26")
  MM14zone = ZONE:FindByName("MM14")
  BlueMRZones1 = ZONE:FindByName("Blue MR SAM Zone-1")
  BlueMRZones2 = ZONE:FindByName("Blue MR SAM Zone-2")
  BlueMRZones3 = ZONE:FindByName("Blue MR SAM Zone-3")
  BlueMRZones4 = ZONE:FindByName("Blue MR SAM Zone-4")

  if redfor:NoneInZone(MM44zone) or redfor:NoneInZone(MM35zone) or redfor:NoneInZone(MM26zone) or redfor:NoneInZone(MM14zone) and blufor:NoneInZone(BlueMRZones) then
    SPAWN:New("BLUE SAM Medium")
    :InitRandomizeZones(BlueMRZones)
    :InitRandomizeTemplate(BluForSAMSpawn)
    :InitLimit( 1, 0 )
    :SpawnScheduled( 5, .5 )
  end

end, {}, 15 )
