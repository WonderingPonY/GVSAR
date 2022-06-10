-- Define a SET_GROUP object that builds a collection of groups that define the recce network.
-- Here we build the network with all the groups that have a name starting with CCCP Recce.
local DetectionSetGroup = SET_GROUP:New():FilterStart()
DetectionSetGroup:FilterPrefixes( "41st" )

local Detection = DETECTION_AREAS:New( DetectionSetGroup, 5000 )

-- Setup the A2A dispatcher, and initialize it.
A2GDispatcher = AI_A2G_DISPATCHER:New( Detection )

local HQ_Group = GROUP:FindByName( "4ths Guard-5" )
local HQ_CC = COMMANDCENTER:New( HQ_Group, "4ths Guard-5" )

-- Add defense coordinates.
A2GDispatcher:AddDefenseCoordinate( "4ths Guard-5", GROUP:FindByName( "4ths Guard-5" ):GetCoordinate() )
A2GDispatcher:AddDefenseCoordinate( "41st Combined Army-9", GROUP:FindByName( "41st Combined Army-9" ):GetCoordinate() )
A2GDispatcher:AddDefenseCoordinate( "41st Combined Army-64", GROUP:FindByName( "41st Combined Army-64" ):GetCoordinate() )
-- A2GDispatcher:AddDefenseCoordinate( "DomComm", GROUP:FindByName( "DomComm" ):GetCoordinate() )

A2GDispatcher:SetDefenseReactivityHigh()

A2GDispatcher:SetDefenseRadius( 370400 )

A2GDispatcher:SetCommandCenter( HQ_CC )

A2GDispatcher:SetTacticalDisplay( false )
DetectionSetGroup:Count()
BASE:E("Group set count " .. DetectionSetGroup:Count())

--local GudPatrolZone = ZONE:New("CapZoneGud")
--local SenakiPatrolZone = ZONE:New("Spawn Trigger Zone-1")
--local TbilisiPatrolZone = ZONE:New("Spawn Trigger Zone-6")
local KutaisiPatrolZone = ZONE:New("Spawn Trigger Zone-2")
--local KobuletiPatrolZone = ZONE:New("Spawn Trigger Zone-3")


-- Setup the squadrons.

A2GDispatcher:SetSquadron( "Kutaisi SEAD", AIRBASE.Caucasus.Kutaisi, { "CCCP kutGroundAttackSu25T" }, 100 )
A2GDispatcher:SetSquadronSeadPatrol2( "Kutaisi SEAD", KutaisiPatrolZone, 500, 550, 2000, 12000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronSeadPatrolInterval( "Kutaisi SEAD", 2, 300, 600, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Kutaisi SEAD" )
A2GDispatcher:SetSquadronOverhead( "Kutaisi SEAD", 0.2 )

A2GDispatcher:SetSquadron( "Kutaisi BAI", AIRBASE.Caucasus.Kutaisi, { "CCCP kutGroundAttackSu24MGND" }, 100 )
A2GDispatcher:SetSquadronBaiPatrol2( "Kutaisi BAI", KutaisiPatrolZone, 500, 550, 2000, 7658, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Kutaisi BAI", 2, 300, 600, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Kutaisi BAI" )
A2GDispatcher:SetSquadronOverhead( "Kutaisi BAI", 0.25 )

A2GDispatcher:SetSquadron( "Kutrotary BAI", AIRBASE.Caucasus.Kutaisi, { "CCCP KutaisiRotary-1" }, 100 )
A2GDispatcher:SetSquadronBaiPatrol2( "Kutrotary BAI", KutaisiPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Kutrotary BAI", 2, 300, 600, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Kutrotary BAI" )
A2GDispatcher:SetSquadronOverhead( "Kutrotary BAI", 0.25 )

A2GDispatcher:SetSquadron( "Kut2rotary BAI", AIRBASE.Caucasus.Kutaisi, { "CCCP KutaisiRotary-2" }, 100 )
A2GDispatcher:SetSquadronBaiPatrol2( "Kut2rotary BAI", KutaisiPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Kut2rotary BAI", 2, 300, 600, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Kut2rotary BAI" )
A2GDispatcher:SetSquadronOverhead( "Kut2rotary BAI", 0.25 )

-- A2GDispatcher:SetSquadron( "Qabr BAI", AIRBASE.Syria.Qabr_as_Sitt, { "CCCP SCRotary" }, 10 )
-- A2GDispatcher:SetSquadronBaiPatrol2( "Qabr BAI", PatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
-- A2GDispatcher:SetSquadronBaiPatrolInterval( "Qabr BAI", 2, 30, 60, 1 )
-- A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Qabr BAI" )
-- A2GDispatcher:SetSquadronOverhead( "Qabr BAI", 0.25 )

--Takeoff Itnervals
A2GDispatcher:SetSquadronTakeoffInterval( "Kutaisi BAI", 60 )
A2GDispatcher:SetSquadronTakeoffInterval( "Kutaisi SEAD", 60 )
--A2GDispatcher:SetSquadronTakeoffInterval( "Senaki BAI", 60 )
--A2GDispatcher:SetSquadronTakeoffInterval( "Kutaisi BAI", 60 )
-- A2GDispatcher:SetSquadronTakeoffInterval( "Qabr BAI", 60 )
