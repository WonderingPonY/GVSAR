local RecceSetGroup = SET_GROUP:New():FilterPrefixes( "Reece Red" ):FilterStart()

local HQ = GROUP:FindByName( "RedHQ" )

local CC = COMMANDCENTER:New( HQ, "RedHQ" )

-- Let the RecceSetGroup vehicles in the collection detect targets and group them in AREAS of 1000 meters.
local RecceDetection = DETECTION_AREAS:New( RecceSetGroup, 300000 )

-- Create a Attack Set, which contains the human player client slots and CA vehicles.
local AttackSet = SET_GROUP:New():FilterPrefixes({"KM76","KM88","LM26","LM38","LM67","LM64","MM17","MM05","MM45","MM43", "Rookie", "Veteran", "Ace"}):FilterStart()

local RecceDesignation = DESIGNATE:New( CC, RecceDetection, AttackSet )

-- This sets the threat level prioritization on
local RecceDesignation:SetThreatLevelPrioritization( true )

-- Set the possible laser codes.
local RecceDesignation:GenerateLaserCodes()

local RecceDesignation:AddMenuLaserCode( 1113, "Lase with %d for Su-25T" )
--RecceDesignation:AddMenuLaserCode( 1680, "Lase with %d for A-10A" )
--RecceDesignation:AddMenuLaserCode( 1621, "Lase with %d for AH-64D" )

-- Start the detection process in 5 seconds.
local RecceDesignation:__Detect( -5 )
