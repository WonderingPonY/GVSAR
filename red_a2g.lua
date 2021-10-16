--Uses V2 of the AI A2G

local DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes( { "CCCP Recce" } )
DetectionSetGroup:FilterStart()

local Detection = DETECTION_AREAS:New( DetectionSetGroup, 1000 )

-- Setup the A2A dispatcher, and initialize it.
A2GDispatcher = AI_A2G_DISPATCHER:New( Detection )

-- The Command Center (HQ) is the defense point and will also handle the communication to the coalition.
local HQ_Group = GROUP:FindByName( "HQ_Red" )
local HQ_CC = COMMANDCENTER:New( HQ_Group, "HQ_Red" )

-- Add defense coordinates.
A2GDispatcher:AddDefenseCoordinate( "HQ_Red", HQ_Group:GetCoordinate() )
A2GDispatcher:SetDefenseReactivityHigh() -- High defense reactivity. So far proximity of a threat will trigger a defense action.
A2GDispatcher:SetDefenseRadius( 200000 ) -- Defense radius wide enough to also trigger defenses far away.

-- Communication to the players within the coalition. The HQ services the communication of the defense actions.
A2GDispatcher:SetCommandCenter( HQ_CC )

-- Show a tactical display.
A2GDispatcher:SetTacticalDisplay( true )


-- Setup the patrols.

-- The patrol zone.
local PatrolZone = ZONE:New( "CAPZONEREDMID" )

-- SEAD from Marj.
A2GDispatcher:SetSquadron( "Marj SEAD", "Marj Ruhayyil", { "SGroundAttackSu24MRDR" }, 10 )
A2GDispatcher:SetSquadronSeadPatrol2( "Marj SEAD", PatrolZone, 700, 750, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" ) -- New API
A2GDispatcher:SetSquadronSeadPatrolInterval( "Marj SEAD", 1, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Marj SEAD" )
A2GDispatcher:SetSquadronOverhead( "Marj SEAD", 0.2 )
A2GDispatcher:SetSquadronGrouping( "Marj SEAD", 2 )
A2GDispatcher:SetSquadronFuelThreshold("Marj SEAD", 0.25)
A2GDispatcher:SetDefaultPatrolLimit("Marj SEAD", 1)
A2GDispatcher:SetSquadronLanding("Marj SEAD", "Marj Ruhayyil")

-- CAS from Marj
A2GDispatcher:SetSquadron( "Marj CAS", "Marj Ruhayyil", { "SGroundAttackSu24MGND" }, 10 )
A2GDispatcher:SetSquadronCasPatrol2( "Marj CAS", PatrolZone, 700, 750, 2000, 2000, "BARO", 750, 800, 30, 30, "RADIO" ) -- New API
A2GDispatcher:SetSquadronCasPatrolInterval( "Marj CAS", 1, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Marj CAS" )
A2GDispatcher:SetSquadronOverhead( "Marj CAS", 0.2 )
A2GDispatcher:SetSquadronGrouping( "Marj CAS", 2 )
A2GDispatcher:SetSquadronFuelThreshold("Marj CAS", 0.25)
A2GDispatcher:SetDefaultPatrolLimit("Marj CAS", 1)
A2GDispatcher:SetSquadronLanding("Marj CAS", "Marj Ruhayyil")

-- CAS from Khalkhalah
A2GDispatcher:SetSquadron( "Khalkhalah CAS", "Khalkhalah", { "SCRotary" }, 10 )
A2GDispatcher:SetSquadronCasPatrol2( "Khalkhalah CAS", PatrolZone, 50, 80, 600, 700, "BARO", 200, 230, 30, 30, "RADIO" ) -- New API
A2GDispatcher:SetSquadronCasPatrolInterval( "Khalkhalah CAS", 1, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Khalkhalah CAS" )
A2GDispatcher:SetSquadronOverhead( "Khalkhalah CAS", 0.1 )
A2GDispatcher:SetSquadronFuelThreshold("Khalkhalah CAS", 0.25)
A2GDispatcher:SetDefaultPatrolLimit("Khalkhalah CAS", 1)
A2GDispatcher:SetSquadronLanding("Khalkhalah CAS", "Khalkhalah")

-- BAI from Khalkhalah
A2GDispatcher:SetSquadron( "Khalkhalah BAI", "Khalkhalah", { "SCRotary" }, 10 )
A2GDispatcher:SetSquadronBaiPatrol2( "Khalkhalah BAI", PatrolZone, 50, 80, 600, 700, "BARO", 200, 230, 800, 900, "RADIO" ) -- New API
A2GDispatcher:SetSquadronBaiPatrolInterval( "Khalkhalah BAI", 1, 30, 60, 1 )
A2GDispatcher:SetSquadronTakeoffFromParkingHot( "Khalkhalah BAI" )
A2GDispatcher:SetSquadronOverhead( "Khalkhalah BAI", 0.1 )
A2GDispatcher:SetSquadronFuelThreshold("Khalkhalah BAI", 0.25)
A2GDispatcher:SetDefaultPatrolLimit("Khalkhalah BAI", 1)
A2GDispatcher:SetSquadronLanding("Khalkhalah BAI", "Khalkhalah")

--Intercals for the Squadrons
A2GDispatcher:SetSquadronTakeoffInterval( "Marj CAS", 10 )
A2GDispatcher:SetSquadronTakeoffInterval( "Marj SEAD", 10 )
A2GDispatcher:SetSquadronTakeoffInterval( "Khalkhalah CAS", 60 )
A2GDispatcher:SetSquadronTakeoffInterval( "Khalkhalah BAI", 60 )
A2GDispatcher:SetDefaultDamageThreshold(0.50)
--A2GDispatcher:SetDefaultPatrolLimit(1)
