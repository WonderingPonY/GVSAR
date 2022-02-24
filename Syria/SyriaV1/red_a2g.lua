-- Define a SET_GROUP object that builds a collection of groups that define the recce network.
-- Here we build the network with all the groups that have a name starting with CCCP Recce.
local DetectionSetGroup = SET_GROUP:New():FilterStart()
DetectionSetGroup:FilterPrefixes( "CCCP" )

local Detection = DETECTION_AREAS:New( DetectionSetGroup, 5000 )

-- Setup the A2A dispatcher, and initialize it.
A2GDispatcher = AI_A2G_DISPATCHER:New( Detection )

local HQ_Group = GROUP:FindByName( "HQ" )
local HQ_CC = COMMANDCENTER:New( HQ_Group, "HQ" )

-- Add defense coordinates.
A2GDispatcher:AddDefenseCoordinate( "Dicktator", GROUP:FindByName( "Dicktator" ):GetCoordinate() )
-- A2GDispatcher:AddDefenseCoordinate( "DomComm", GROUP:FindByName( "DomComm" ):GetCoordinate() )

A2GDispatcher:SetDefenseReactivityHigh()

A2GDispatcher:SetDefenseRadius( 370400 )

A2GDispatcher:SetCommandCenter( HQ_CC )

A2GDispatcher:SetTacticalDisplay( true )
DetectionSetGroup:Count()
BASE:E("Group set count " .. DetectionSetGroup:Count())

local PatrolZone = ZONE:New("DamascusPatrolZone")
local SUPatrolZone = ZONE:New("SUPatrolZone")
local ShayratPatrolZone = ZONE:New("ShayratPatrolZone")
local TartyPatrolZone = ZONE:New("TartyPatrolZone")

-- Setup the squadrons.

A2GDispatcher:SetSquadron( "Palmyra SEAD", AIRBASE.Syria.Palmyra, { "CCCP SGroundAttackSu24MRDR" }, 10 )
A2GDispatcher:SetSquadronSeadPatrol2( "Palmyra SEAD", SUPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronSeadPatrolInterval( "Palmyra SEAD", 2, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Palmyra SEAD" )
A2GDispatcher:SetSquadronOverhead( "Palmyra SEAD", 0.2 )

A2GDispatcher:SetSquadron( "Palmyra BAI", AIRBASE.Syria.Palmyra, { "CCCP SGroundAttackSu24MGND" }, 10 )
A2GDispatcher:SetSquadronBaiPatrol2( "Palmyra BAI", SUPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Palmyra BAI", 2, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Palmyra BAI" )
A2GDispatcher:SetSquadronOverhead( "Palmyra BAI", 0.25 )

A2GDispatcher:SetSquadron( "Assad BAI", AIRBASE.Syria.Bassel_Al_Assad, { "CCCP TartRotary" }, 10 )
A2GDispatcher:SetSquadronBaiPatrol2( "Assad BAI", TartyPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Assad BAI", 5, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Assad BAI" )
A2GDispatcher:SetSquadronOverhead( "Assad BAI", 0.25 )

A2GDispatcher:SetSquadron( "Shayrat BAI", AIRBASE.Syria.Bassel_Al_Assad, { "CCCP RatRotary" }, 10 )
A2GDispatcher:SetSquadronBaiPatrol2( "Shayrat BAI", ShayratPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Shayrat BAI", 5, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Shayrat BAI" )
A2GDispatcher:SetSquadronOverhead( "Shayrat BAI", 0.25 )

-- A2GDispatcher:SetSquadron( "Qabr BAI", AIRBASE.Syria.Qabr_as_Sitt, { "CCCP SCRotary" }, 10 )
-- A2GDispatcher:SetSquadronBaiPatrol2( "Qabr BAI", PatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
-- A2GDispatcher:SetSquadronBaiPatrolInterval( "Qabr BAI", 2, 30, 60, 1 )
-- A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Qabr BAI" )
-- A2GDispatcher:SetSquadronOverhead( "Qabr BAI", 0.25 )

--Takeoff Itnervals
A2GDispatcher:SetSquadronTakeoffInterval( "Palmyra SEAD", 60 )
A2GDispatcher:SetSquadronTakeoffInterval( "Palmyra BAI", 60 )
A2GDispatcher:SetSquadronTakeoffInterval( "Assad BAI", 60 )
A2GDispatcher:SetSquadronTakeoffInterval( "Shayrat BAI", 60 )
-- A2GDispatcher:SetSquadronTakeoffInterval( "Qabr BAI", 60 )
