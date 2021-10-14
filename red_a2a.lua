-- Define a SET_GROUP object that builds a collection of groups that define the EWR network.
-- Here we build the network with all the groups that have a name starting with DF CCCP AWACS and DF CCCP EWR.
DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes( { "SyriaEWR" } )
DetectionSetGroup:FilterStart()

-- Setup the detection and group targets to a 30km range!
Detection = DETECTION_AREAS:New( DetectionSetGroup, 300000 )
Detection:SetRefreshTimeInterval( 10 )

-- Setup the A2A dispatcher, and initialize it.
A2ADispatcher = AI_A2A_DISPATCHER:New( Detection )
A2ADispatcher:SetTacticalDisplay( true )
A2ADispatcher:SetRefreshTimeInterval( 10 )


A2ADispatcher:SetEngageRadius( 90000 )
--BorderZone
BorderZone = ZONE_POLYGON:New( "syriaborder", GROUP:FindByName( "syriaborder" ) )
A2ADispatcher:SetBorderZone( BorderZone )

--Here we will make the squadrons and set options for each squadron
A2ADispatcher:SetSquadron( "Sq 1", "Marj Ruhayyil", { "SFighterMiG29", "SFighterMiG21" }, 40 )
CAPZoneMid = ZONE:New("CAPZONEREDMID")
A2ADispatcher:SetSquadronCap( "Sq 1", CAPZoneMid, 4000, 8000, 600, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronGci( "Sq 1", 1000, 1500 )
A2ADispatcher:SetSquadron( "Sq 2", "Marj Ruhayyil", { "SFighterMiG29", "SFighterMiG21" }, 40 )
A2ADispatcher:SetSquadronGci( "Sq 2", 500, 1500 )

A2ADispatcher:SetDefaultTakeoffInAir()
A2ADispatcher:SetDefaultLandingNearAirbase()
