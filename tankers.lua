--///////////////////////////////////////////////////
--Tankers Spawn
--///////////////////////////////////////////////////

local Shell_KC130 = SPAWN:New( "Tanker 135" )
 Shell_KC130:InitLimit(1,100)
 Shell_KC130:InitRepeatOnLanding()
 Shell_KC130:SpawnScheduled(30,0)

local Shell_KC130MPRS = SPAWN:New( "Tanker 135MPRS" )
Shell_KC130MPRS:InitLimit(1,100)
Shell_KC130MPRS:InitRepeatOnLanding()
Shell_KC130MPRS:SpawnScheduled(30,0)

local Shell_SKC130 = SPAWN:New( "Tanker 135A10" )
Shell_SKC130:InitLimit(1,100)
Shell_SKC130:InitRepeatOnLanding()
Shell_SKC130:SpawnScheduled(30,0)
