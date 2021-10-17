--HQ.CC Setup
local HQ = GROUP
  :FindByName( "Bravo HQ" )

local CommandCenter = COMMANDCENTER
  :New( HQ, "Lima" ) -- Create the CommandCenter.

--Northern Border Task
Northern_Border_Push = MISSION
  :New( CommandCenter, "Norhtern Border Strike", "Primary", "Sweep the boarder and eliminate enenmy forces!", coalition.side.blue )
  :AddScoring( Scoring )

AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterStart()

TargetSetUnit = SET_UNIT:New():FilterCoalitions("red"):FilterPrefixes( "Northern" ):FilterStart()

TaskBAI = TASK_A2G_BAI:New( Northern_Border_Push, AttackGroups,"Northern Border sweep", TargetSetUnit )
