--[[
Reinforcementtemplate={
  "RedInf1",--5 Insurgents AK-74U, 1 RPG, 1 Mortor
  "RedInf2",--4 Insurgents AK-74U, 1 RPG, 1 MANPAD
  "RedInf3"--1
}

APCtemplate={
  "APC Border transport",
  "APC Border transport-1",
  "APC Border transport-2",
  "APC Border transport-3"
}

SpawnInfantry = SPAWN:New( "RedInfantry1" )
:InitRandomizeTemplate(Reinforcementtemplate)
:InitLimit( 1, 0 )
:InitRandomizePosition(true,500,100)
:InitRandomizeZones( { ZONE:New( "Spawn Red Troops-1" ),ZONE:New( "Spawn Red Troops-2" ) } )
:OnSpawnGroup(

  function( SpawnGroup )
    CARGO_GROUP:New(SpawnGroup,"InfantryType",SpawnGroup:GetName(),75,10)
  end
)
--SpawnScheduled( 2, 0 )
--]]
--CARGO_GROUP:New(Reinforcementtemplate,"InfantryType",Reinforcementtemplate,75,10)
local CargoInfantrySet = SET_CARGO:New():FilterTypes( "Infantry" ):FilterStart()
local SetAPC = SET_GROUP:New():FilterPrefixes( "APC" ):FilterStart()
local PickupZonesSet = SET_ZONE:New():FilterPrefixes( "Spawn" ):FilterOnce()
local DeployZonesSet = SET_ZONE:New():FilterPrefixes( "Deploy" ):FilterOnce()

-- For the manpads to unload on time, a range of 8000 meters is appropriate.
AICargoDispatcherAPC = AI_CARGO_DISPATCHER_APC:New( SetAPC, CargoInfantrySet, PickupZonesSet, DeployZonesSet, 0 )
AICargoDispatcherAPC:SetPickupOffRoad(false, Formation)
AICargoDispatcherAPC:SetDeployOffRoad(false, Formation)

-- This will work too, so the combat range can be provided, but must be 0.
--AICargoDispatcherAPC = AI_CARGO_DISPATCHER_APC:New( SetAPC, SetCargoInfantry, nil, SetDeployZones, 0 )

-- Now also make the carriers spawn in.
--[[CarrierSpawn = SPAWN:New( "APC Trasport-1" )
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
--]]
AICargoDispatcherAPC:Start()
