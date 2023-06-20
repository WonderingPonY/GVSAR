--///////////////////////////////////////////////////
--Tankers Spawn
--///////////////////////////////////////////////////

local Shell_KC130 = SPAWN:New( "PipeMan 1-1" )
 Shell_KC130:InitLimit(1,100)
 Shell_KC130:InitRepeatOnLanding()
 Shell_KC130:SpawnScheduled(30,0)

local Shell_KC130MPRS = SPAWN:New( "Bagman 1-1" )
Shell_KC130MPRS:InitLimit(1,100)
Shell_KC130MPRS:InitRepeatOnLanding()
Shell_KC130MPRS:SpawnScheduled(30,0)

local Shell_SKC130 = SPAWN:New( "Slowboi4A10 1-1" )
Shell_SKC130:InitLimit(1,100)
Shell_SKC130:InitRepeatOnLanding()
Shell_SKC130:SpawnScheduled(30,0)

local AWACS_E3A = SPAWN:New( "Big Daddy" )
AWACS_E3A:InitLimit(1,100)
AWACS_E3A:InitRepeatOnLanding()
AWACS_E3A:SpawnScheduled(30,0)
