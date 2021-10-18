DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes( { "SyriaEWR" } )
DetectionSetGroup:FilterStart()

-- Setup the detection and group targets to a 30km range!
Detection = DETECTION_AREAS:New( DetectionSetGroup, 300000 )
Detection:SetRefreshTimeInterval( 10 )
--Filter Catagories
DetectionSetGroup:FilterCategories( Unit.Category.AIRPLANE )

-- Setup the A2A dispatcher, and initialize it.
A2ADispatcher = AI_A2A_DISPATCHER:New( Detection )
A2ADispatcher:SetTacticalDisplay( false )
A2ADispatcher:SetRefreshTimeInterval( 10 )


A2ADispatcher:SetEngageRadius( 90000 )
--BorderZone
BorderZone = ZONE_POLYGON:New( "syriaborder", GROUP:FindByName( "syriaborder" ) )
A2ADispatcher:SetBorderZone( BorderZone )

--Here we will make the squadrons and set options for each squadron
-- Squadron 1
A2ADispatcher:SetSquadron( "Sq 1", "Palmyra", { "SFighterMiG29" }, 15 )
CAPZoneMid = ZONE:New("CAPZONEREDMID")
CAPZoneHigh = ZONE:New("CAPZONEREDHIGH")
A2ADispatcher:SetSquadronCap( "Sq 1", CAPZoneHigh, 4000, 8000, 600, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronGci( "Sq 1", 1000, 1500 )
A2ADispatcher:SetSquadronLandingAtRunway( "Sq 1" )
A2ADispatcher:SetSquadronGrouping( "Sq 1", 2 )
A2ADispatcher:SetSquadronOverhead( "Sq 1", 0.1)
A2ADispatcher:SetSquadronFuelThreshold( "Sq 1", 0.25 )
A2ADispatcher:SetSquadronCapInterval( "Sq 1", 1, 180, 300, 1 )
A2ADispatcher:SetSquadronLanding( "Sq 1" , "Palmyra")
--Squadron 2
A2ADispatcher:SetSquadron( "Sq 2", "Palmyra", { "SPatrolMiG21" }, 40 )
A2ADispatcher:SetSquadronCap( "Sq 2", CAPZoneHigh, 4000, 8000, 600, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronGci( "Sq 2", 500, 1500 )
A2ADispatcher:SetSquadronLandingAtRunway( "Sq 2" )
A2ADispatcher:SetSquadronGrouping( "Sq 2", 2 )
A2ADispatcher:SetSquadronOverhead( "Sq 2", 0.1)
A2ADispatcher:SetSquadronFuelThreshold( "Sq 2", 0.25 )
A2ADispatcher:SetSquadronCapInterval( "Sq 2", 1, 180, 300, 1 )
A2ADispatcher:SetSquadronLanding( "Sq 2" , "Palmyra")
--Squadron 3
A2ADispatcher:SetSquadron( "Sq 3", "Sayqal", { "SPatrolMiG21" }, 40 )
A2ADispatcher:SetSquadronCap( "Sq 3", CAPZoneMid, 4000, 8000, 600, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronGci( "Sq 3", 500, 1500 )
A2ADispatcher:SetSquadronLandingAtRunway( "Sq 2" )
A2ADispatcher:SetSquadronGrouping( "Sq 3", 2 )
A2ADispatcher:SetSquadronOverhead( "Sq 3", 0.1)
A2ADispatcher:SetSquadronFuelThreshold( "Sq 3", 0.25 )
A2ADispatcher:SetSquadronCapInterval( "Sq 3", 1, 180, 300, 1 )
A2ADispatcher:SetSquadronLanding( "Sq 3" , "Sayqal")
--Squadron 4
A2ADispatcher:SetSquadron( "Sq 4", "Sayqal", { "SPatrolMiG21" }, 40 )
A2ADispatcher:SetSquadronCap( "Sq 4", CAPZoneMid, 4000, 8000, 600, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronGci( "Sq 4", 500, 1500 )
A2ADispatcher:SetSquadronLandingAtRunway( "Sq 4" )
A2ADispatcher:SetSquadronGrouping( "Sq 4", 2 )
A2ADispatcher:SetSquadronOverhead( "Sq 4", 0.1)
A2ADispatcher:SetSquadronFuelThreshold( "Sq 4", 0.25 )
A2ADispatcher:SetSquadronCapInterval( "Sq 4", 1, 180, 300, 1 )
A2ADispatcher:SetSquadronLanding( "Sq 4" , "Sayqal")

A2ADispatcher:SetDefaultCapLimit(4)
A2ADispatcher:SetDefaultTakeoffInAir()
A2ADispatcher:SetDefaultLandingNearAirbase()
