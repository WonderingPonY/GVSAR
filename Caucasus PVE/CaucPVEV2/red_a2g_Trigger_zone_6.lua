-- Define a SET_GROUP object that builds a collection of groups that define the recce network.
-- Here we build the network with all the groups that have a name starting with CCCP Recce.
local DetectionSetGroup = SET_GROUP:New():FilterStart()
DetectionSetGroup:FilterPrefixes( "CCCP" )


local Detection = DETECTION_AREAS:New( DetectionSetGroup, 5000 )

-- Setup the A2A dispatcher, and initialize it.
A2GDispatcher = AI_A2G_DISPATCHER:New( Detection )

local HQ_Group = GROUP:FindByName( "HQ-1" )
local HQ_CC = COMMANDCENTER:New( HQ_Group, "HQ-1" )

-- Add defense coordinates.
A2GDispatcher:AddDefenseCoordinate( "4th GUARDS MR REGT C2-17", GROUP:FindByName( "4th GUARDS MR REGT C2-17" ):GetCoordinate() )
-- A2GDispatcher:AddDefenseCoordinate( "DomComm", GROUP:FindByName( "DomComm" ):GetCoordinate() )

A2GDispatcher:SetDefenseReactivityHigh()

A2GDispatcher:SetDefenseRadius( 370400 )

A2GDispatcher:SetCommandCenter( HQ_CC )

A2GDispatcher:SetTacticalDisplay( false )
DetectionSetGroup:Count()
BASE:E("Group set count " .. DetectionSetGroup:Count())

--local GudPatrolZone = ZONE:New("CapZoneGud")
--local SenakiPatrolZone = ZONE:New("CapZoneSenaki")
local TbilisiPatrolZone = ZONE:New("Spawn Trigger Zone-6")
--local EastRusPatrolZone = ZONE:New("CapZoneRusEast")
--local WestRusPatrolZone = ZONE:New("CapZoneRusWest")


-- Setup the squadrons.

--A2GDispatcher:SetSquadron( "Sochi SEAD", AIRBASE.Caucasus.Vaziani, { "CCCP SGroundAttackSu24MRDR" }, 100 )
--A2GDispatcher:SetSquadronSeadPatrol2( "Sochi SEAD", TbilisiPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
--A2GDispatcher:SetSquadronSeadPatrolInterval( "Sochi SEAD", 2, 300, 600, 1 )
--A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Sochi SEAD" )
--A2GDispatcher:SetSquadronOverhead( "Sochi SEAD", 0.2 )

A2GDispatcher:SetSquadron( "Tbilisi BAI", AIRBASE.Caucasus.Kutaisi, { "CCCP SGroundAttackSu24MGND" }, 100 )
A2GDispatcher:SetSquadronBaiPatrol2( "Tbilisi BAI", TbilisiPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Tbilisi BAI", 2, 300, 600, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Tbilisi BAI" )
A2GDispatcher:SetSquadronOverhead( "Tbilisi BAI", 0.25 )

A2GDispatcher:SetSquadron( "Tbrotary BAI", "Russian Farp Alpha-1", { "CCCP TbilisiRotary-1" }, 100 )
A2GDispatcher:SetSquadronBaiPatrol2( "Tbrotary BAI", TbilisiPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Tbrotary BAI", 2, 300, 600, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Tbrotary BAI" )
A2GDispatcher:SetSquadronOverhead( "Tbrotary BAI", 0.25 )

A2GDispatcher:SetSquadron( "Tb2rotary BAI", "Russian Farp Alpha-1", { "CCCP TbilisiRotary-2" }, 100 )
A2GDispatcher:SetSquadronBaiPatrol2( "Tb2rotary BAI", TbilisiPatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
A2GDispatcher:SetSquadronBaiPatrolInterval( "Tb2rotary BAI", 2, 300, 600, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Tb2rotary BAI" )
A2GDispatcher:SetSquadronOverhead( "Tb2rotary BAI", 0.25 )

-- A2GDispatcher:SetSquadron( "Qabr BAI", AIRBASE.Syria.Qabr_as_Sitt, { "CCCP SCRotary" }, 10 )
-- A2GDispatcher:SetSquadronBaiPatrol2( "Qabr BAI", PatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" )
-- A2GDispatcher:SetSquadronBaiPatrolInterval( "Qabr BAI", 2, 30, 60, 1 )
-- A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Qabr BAI" )
-- A2GDispatcher:SetSquadronOverhead( "Qabr BAI", 0.25 )

--Takeoff Itnervals
A2GDispatcher:SetSquadronTakeoffInterval( "Tbilisi BAI", 60 )
--A2GDispatcher:SetSquadronTakeoffInterval( "Sochi BAI", 60 )
--A2GDispatcher:SetSquadronTakeoffInterval( "Senaki BAI", 60 )
--A2GDispatcher:SetSquadronTakeoffInterval( "Kutaisi BAI", 60 )
-- A2GDispatcher:SetSquadronTakeoffInterval( "Qabr BAI", 60 )
