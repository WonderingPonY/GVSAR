DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes("SN")

DetectionSetGroup:FilterStart()

Detection = DETECTION_AREAS:New(DetectionSetGroup, 10000)

A2GDispatcher = AI_A2G_DISPATCHER:New(Detection)

-- Add defense coordinates.
A2GDispatcher:AddDefenseCoordinate( "HQ", GROUP:FindByName( "HQ" ):GetCoordinate() )
A2GDispatcher:SetDefenseRadius( 370400 )
A2GDispatcher:SetDefenseReactivityHigh()

local PatrolZone = ZONE:New("DamascusPatrolZone")
local SU24RDRPatrolZone = ZONE:New("CAPZONEREDMID")

--Squadrons
------------------------------------------DamascusPatrolZone------------------------------------------
--Hinds
A2GDispatcher:SetSquadron( "Squadron1", AIRBASE.Syria.Qabr_as_Sitt, "SQ1", 40 )
A2GDispatcher:SetSquadronBaiPatrol2("Squadron1", PatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO")
A2GDispatcher:SetSquadronBaiPatrolInterval("Squadron1", 1, 30, 60, 1)
A2GDispatcher:SetSquadronTakeoffFromParkingHot("Squadron1")
A2GDispatcher:SetSquadronTakeoffInterval("Squadron1",15)
A2GDispatcher:SetSquadronGrouping( "Squadron1", 2 )

A2GDispatcher:SetSquadron( "Squadron2", AIRBASE.Syria.Qabr_as_Sitt, "SQ2", 40 )
A2GDispatcher:SetSquadronCasPatrol2("Squadron2", PatrolZone, 500, 550, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO")
A2GDispatcher:SetSquadronCasPatrolInterval("Squadron2", 1, 30, 60, 1)
A2GDispatcher:SetSquadronTakeoffFromParkingHot("Squadron2")
A2GDispatcher:SetSquadronTakeoffInterval("Squadron2",15)
A2GDispatcher:SetSquadronGrouping( "Squadron1", 2 )

--SU24's
A2GDispatcher:SetSquadron( "Squadron3", AIRBASE.Syria.Mezzeh, "SQ3", 40 )
A2GDispatcher:SetSquadronBaiPatrol2("Squadron3", PatrolZone, 500, 900, 2000, 8000, "BARO", 500, 900, 30, 8000, "RADIO")
A2GDispatcher:SetSquadronBaiPatrolInterval("Squadron3", 2, 30, 60, 1)
A2GDispatcher:SetSquadronTakeoffFromParkingHot("Squadron3")
A2GDispatcher:SetSquadronTakeoffInterval("Squadron3",15)
A2GDispatcher:SetSquadronGrouping( "Squadron1", 2 )

A2GDispatcher:SetSquadron( "Squadron4", AIRBASE.Syria.Palmyra, "SQ4", 40 )
A2GDispatcher:SetSquadronSeadPatrol2("Squadron4", SU24RDRPatrolZone, 500, 900, 2000, 8000, "BARO", 500, 900, 30, 8000, "RADIO")
A2GDispatcher:SetSquadronSeadPatrolInterval("Squadron4", 2, 30, 60, 1)
A2GDispatcher:SetSquadronTakeoffFromParkingHot("Squadron4")
A2GDispatcher:SetSquadronTakeoffInterval("Squadron4",15)
A2GDispatcher:SetSquadronGrouping( "Squadron4", 2 )

A2GDispatcher:SetTacticalDisplay( false )
DetectionSetGroup:Count()
BASE:E("Group set count " .. DetectionSetGroup:Count())
