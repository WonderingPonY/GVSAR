-- Define a SET_GROUP object that builds a collection of groups that define the recce network.
-- Here we build the network with all the groups that have a name starting with CCCP Recce.
local DetectionSetGroup = SET_GROUP:New():FilterStart()
DetectionSetGroup:FilterPrefixes( "CN Recce" )

local Detection = DETECTION_AREAS:New( DetectionSetGroup, 5000 )

-- Setup the A2A dispatcher, and initialize it.
A2GDispatcher = AI_A2G_DISPATCHER:New( Detection )

local HQ_Group = GROUP:FindByName( "HQ" )
local HQ_CC = COMMANDCENTER:New( HQ_Group, "HQ" )

-- Add defense coordinates.
A2GDispatcher:AddDefenseCoordinate( "HQ", GROUP:FindByName( "HQ" ):GetCoordinate() )

A2GDispatcher:SetDefenseReactivityHigh()

A2GDispatcher:SetDefenseRadius( 370400 )

A2GDispatcher:SetCommandCenter( HQ_CC )

A2GDispatcher:SetTacticalDisplay( true )

local PatrolZone = ZONE:New("WonPatPatrolZone")
local VanDammePatrolZone = ZONE:New("VanDammePatrolZone")

-- Setup the squadrons.

-- A2GDispatcher:SetSquadron( "Anderson SEAD", AIRBASE.MarianaIslands.Andersen_AFB, { "Rotary1" }, 10 )
-- A2GDispatcher:SetSquadronSeadPatrol2( "Anderson SEAD", PatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
-- A2GDispatcher:SetSquadronCasPatrolInterval( "Anderson SEAD", 2, 30, 60, 1 )
-- A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Anderson SEAD" )
-- A2GDispatcher:SetSquadronOverhead( "Anderson SEAD", 0.2 )

A2GDispatcher:SetSquadron( "Anderson CAS", AIRBASE.MarianaIslands.Andersen_AFB, { "Rotary2" }, 10 )
A2GDispatcher:SetSquadronBaiPatrol2( "Anderson CAS", PatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Anderson CAS", 2, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Anderson CAS" )
A2GDispatcher:SetSquadronOverhead( "Anderson CAS", 0.25 )

A2GDispatcher:SetSquadron( "Anderson BAI", AIRBASE.MarianaIslands.Andersen_AFB, { "sexy1" }, 10 )
A2GDispatcher:SetSquadronBaiPatrol2( "Anderson BAI", VanDammePatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Anderson BAI", 2, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Anderson BAI" )
A2GDispatcher:SetSquadronOverhead( "Anderson BAI", 0.25 )

-- We set for each squadron a takeoff interval, as each helicopter will launch from a FARP.
-- This to prevent helicopters to clutter.
-- Each helicopter group is taking off the FARP in hot start.
-- A2GDispatcher:SetSquadronTakeoffInterval( "Anderson SEAD", 60 )
A2GDispatcher:SetSquadronTakeoffInterval( "Anderson CAS", 60 )
A2GDispatcher:SetSquadronTakeoffInterval( "Anderson BAI", 60 )
