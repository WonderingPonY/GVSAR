--HQ.CC Setup
local HQ = GROUP
  :FindByName( "Bravo HQ" )

local CommandCenter = COMMANDCENTER
  :New( HQ, "Lima" ) -- Create the CommandCenter.

--Northern Border Task
Northern Border Push = MISSION
  :New( CommandCenter, "Overlord", "Primary", "Sweep the boarder and eliminate enenmy forces!", coalition.side.blue )
  :AddScoring( Scoring )

AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "Attack" ):FilterStart()

TargetSetUnit = SET_UNIT:New():FilterCoalitions("red")FilterPrefixes( "Northern" ):FilterStart()

TaskBAI = TASK_A2G_BAI:New( Northern Border Push, AttackGroups,"Northern Border sweep", TargetSetUnit )
