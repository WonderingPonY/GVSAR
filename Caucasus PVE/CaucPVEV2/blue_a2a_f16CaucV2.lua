local DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes( { "BLUE" } )
DetectionSetGroup:FilterStart()

-- Setup the detection and group targets to a 30km range!
local Detection = DETECTION_AREAS:New( DetectionSetGroup, 300000 )
Detection:SetRefreshTimeInterval( 10 )
--Filter Catagories
DetectionSetGroup:FilterCategories( Unit.Category.Airplane )

-- Setup the A2A dispatcher, and initialize it.
local A2ADispatcher = AI_A2A_DISPATCHER:New( Detection )
A2ADispatcher:SetTacticalDisplay( false )
A2ADispatcher:SetRefreshTimeInterval( 10 )


A2ADispatcher:SetEngageRadius( 100000 )
--BorderZone
local BorderZone = ZONE_POLYGON:New( "Cuacborder", GROUP:FindByName( "Cuacborder" ) )
A2ADispatcher:SetBorderZone( BorderZone )
--local GudPatrolZone = ZONE:New("CapZoneGud")
--local SenakiPatrolZone = ZONE:New("CapZoneSenaki")
local TbilisiPatrolZone = ZONE:New("Spawn Trigger Zone-6")
--local EastRusPatrolZone = ZONE:New("CapZoneRusEast")
--local WestRusPatrolZone = ZONE:New("CapZoneRusWest")

--Here we will make the squadrons and set options for each squadron
-- Squadron 1
A2ADispatcher:SetSquadron( "Sq 13", AIRBASE.Caucasus.Vaziani, { "Panthers" }, 100 )
A2ADispatcher:SetSquadronCap( "Sq 13", TbilisiPatrolZone, 4000, 8000, 600, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronGci( "Sq 13", 1000, 1500 )
A2ADispatcher:SetSquadronLandingNearAirbase( "Sq 13" , "Vaziani")
A2ADispatcher:SetSquadronGrouping( "Sq 13", 2 )
A2ADispatcher:SetSquadronOverhead( "Sq 13", 0.1)
A2ADispatcher:SetSquadronFuelThreshold( "Sq 13", 0.35 )
A2ADispatcher:SetSquadronCapInterval( "Sq 13", 1, 60, 120, 1 )
A2ADispatcher:SetSquadronTakeoffFromParkingHot("Sq 13")
--A2ADispatcher:SetSquadronLanding( "Sq 1" , "Palmyra")
--Squadron 2
-- A2ADispatcher:SetSquadron( "Sq 2", AIRBASE.Caucasus.Nalchik, { "SPatrolMiG21" }, 100 )
-- A2ADispatcher:SetSquadronCap( "Sq 2", TbilisiPatrolZone, 8000, 23000, 600, 800, 800, 1200, "BARO" )
-- A2ADispatcher:SetSquadronGci( "Sq 2", 500, 1500 )
-- A2ADispatcher:SetSquadronLandingNearAirbase( "Sq 2" , "Sochi-Adler")
-- A2ADispatcher:SetSquadronGrouping( "Sq 2", 2 )
-- A2ADispatcher:SetSquadronOverhead( "Sq 2", 0.1)
-- A2ADispatcher:SetSquadronFuelThreshold( "Sq 2", 0.25 )
-- A2ADispatcher:SetSquadronCapInterval( "Sq 2", 1, 600, 1200, 1 )
--A2ADispatcher:SetSquadronLanding( "Sq 2" , "Palmyra")
--Squadron 3
-- A2ADispatcher:SetSquadron( "Sq 3", AIRBASE.Caucasus.Sochi_Adler, { "GPatrolMiG21" }, 100)
-- A2ADispatcher:SetSquadronCap( "Sq 3", GudPatrolZone, 4000, 8000, 600, 800, 800, 1200, "BARO" )
-- A2ADispatcher:SetSquadronGci( "SSq 3", 500, 1500 )
-- A2ADispatcher:SetSquadronLandingNearAirbase( "Sq 3" , "Sochi-Adler")
-- A2ADispatcher:SetSquadronGrouping( "Sq 3", 2 )
-- A2ADispatcher:SetSquadronOverhead( "Sq 3", 0.1)
-- A2ADispatcher:SetSquadronFuelThreshold( "Sq 3", 0.25 )
-- A2ADispatcher:SetSquadronCapInterval( "Sq 3", 1, 600, 1200, 1 )
--A2ADispatcher:SetSquadronLanding( "Sq 2" , "Palmyra")
--Squadron 4
-- A2ADispatcher:SetSquadron( "Sq 4", "Sayqal", { "SPatrolMiG21" }, 40 )
-- A2ADispatcher:SetSquadronCap( "Sq 4", CAPZoneMid, 4000, 8000, 600, 800, 800, 1200, "BARO" )
-- A2ADispatcher:SetSquadronGci( "Sq 4", 500, 1500 )
-- A2ADispatcher:SetSquadronLandingNearAirbase( "Sq 4" , "Sayqal")
-- A2ADispatcher:SetSquadronGrouping( "Sq 4", 2 )
-- A2ADispatcher:SetSquadronOverhead( "Sq 4", 0.1)
-- A2ADispatcher:SetSquadronFuelThreshold( "Sq 4", 0.25 )
-- A2ADispatcher:SetSquadronCapInterval( "Sq 4", 1, 600, 1200, 1 )
--A2ADispatcher:SetSquadronLanding( "Sq 4" , "Sayqal")

A2ADispatcher:SetDefaultCapLimit(1)
--A2ADispatcher:SetDefaultTakeOffFromParkingHot()
--A2ADispatcher:SetDefaultLandingNearAirbase()
