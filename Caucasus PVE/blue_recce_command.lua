RecceSetGroup = SET_GROUP:New():FilterPrefixes( "ReeceJTAC" ):FilterStart()

HQ = GROUP:FindByName( "HQ" )

CC = COMMANDCENTER:New( HQ, "HQ" )

-- Let the RecceSetGroup vehicles in the collection detect targets and group them in AREAS of 1000 meters.
RecceDetection = DETECTION_AREAS:New( RecceSetGroup, 10000 )

-- Create a Attack Set, which contains the human player client slots and CA vehicles.
AttackSet = SET_GROUP:New():FilterPrefixes("Helicargo"):FilterStart()

RecceDesignation = DESIGNATE:New( CC, RecceDetection, AttackSet )

-- This sets the threat level prioritization on
RecceDesignation:SetThreatLevelPrioritization( true )

-- Set the possible laser codes.
RecceDesignation:GenerateLaserCodes()

RecceDesignation:AddMenuLaserCode( 1113, "Lase with %d for Su-25T" )
RecceDesignation:AddMenuLaserCode( 1680, "Lase with %d for A-10A" )
RecceDesignation:AddMenuLaserCode( 1621, "Lase with %d for AH-64D" )

-- Start the detection process in 5 seconds.
RecceDesignation:__Detect( -5 )
