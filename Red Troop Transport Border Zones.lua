Reinforcementtemplate={
  "RedInfantryMortor",
  "RedInfantryMANPAD",
  "RedInfantryMortor-2",
  "RedInfantryMortor-3"
}
APCtemplate={
  "APC Border transport",
  "APC Border transport-1",
  "APC Border transport-2",
  "APC Border transport-3"
}

SpawnInfantry = SPAWN:New( "RedInfantry1" )
:InitRandomizeTemplate(Reinforcementtemplate)
:InitLimit( 30, 100 )
:InitRandomizePosition(true,500,100)
:InitRandomizeZones( { ZONE:New( "Spawn Red Troops-1" ),ZONE:New( "Spawn Red Troops-2" ),ZONE:New( "Spawn Red Troops-3" ),ZONE:New( "Spawn Red Troops-4" ) } )
:OnSpawnGroup(
  function( SpawnGroup )
    CARGO_GROUP:New(SpawnGroup,"InfantryType",SpawnGroup:GetName(),75,10)
  end
)
:SpawnScheduled( 2, 0 )


local CargoInfantrySet = SET_CARGO:New():FilterTypes( "InfantryType" ):FilterStart()
local SetAPC = SET_GROUP:New():FilterPrefixes( "APC" ):FilterStart()
local PickupZonesSet = SET_ZONE:New():FilterPrefixes( "Spawn" ):FilterOnce()
local DeployZonesSet = SET_ZONE:New():FilterPrefixes( "Deploy" ):FilterOnce()

-- For the manpads to unload on time, a range of 8000 meters is appropriate.
AICargoDispatcherAPC = AI_CARGO_DISPATCHER_APC:New( SetAPC, CargoInfantrySet, nil, DeployZonesSet, 0 )
AICargoDispatcherAPC:SetPickupOffRoad(false, Formation)
AICargoDispatcherAPC:SetDeployOffRoad(false, Formation)

AICargoDispatcherAPC = AI_CARGO_DISPATCHER_APC:New( SetAPC, CargoInfantrySet, nil, DeployZonesSet, 0 )
AICargoDispatcherAPC:SetPickupOffRoad(false, Formation)
AICargoDispatcherAPC:SetDeployOffRoad(false, Formation)

-- This will work too, so the combat range can be provided, but must be 0.
--AICargoDispatcherAPC = AI_CARGO_DISPATCHER_APC:New( SetAPC, SetCargoInfantry, nil, SetDeployZones, 0 )

-- Now also make the carriers spawn in.
CarrierSpawn = SPAWN:New( "APC Trasport-1" )
:InitRandomizeTemplate(APCtemplate)
:InitLimit( 6, 10 )
:InitRandomizePosition( true, 200, 50 )
:SpawnScheduled( 10, 0 )

CarrierSpawn1 = SPAWN:New( "APC Trasport-2" )
:InitRandomizeTemplate(APCtemplate)
:InitLimit( 6, 10 )
:InitRandomizePosition( true, 200, 50 )
:SpawnScheduled( 10, 0 )

CarrierSpawn2 = SPAWN:New( "APC Trasport-3" )
:InitRandomizeTemplate(APCtemplate)
:InitLimit( 6, 10 )
:InitRandomizePosition( true, 200, 50 )
:SpawnScheduled( 10, 0 )

CarrierSpawn3 = SPAWN:New( "APC Trasport-4" )
:InitRandomizeTemplate(APCtemplate)
:InitLimit( 6, 10 )
:InitRandomizePosition( true, 200, 50 )
:SpawnScheduled( 10, 0 )

AICargoDispatcherAPC:Start()
