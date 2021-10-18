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

TaskCAS = TASK_A2G_CAS:New( Northern_Border_Push, AttackGroups,"Northern Border sweep", TargetSetUnit )

--Central Border Task
Central_Border_Push = MISSION
  :New( CommandCenter, "Central Border Strike", "Primary", "Sweep the boarder and eliminate enenmy forces!", coalition.side.blue )
  :AddScoring( Scoring )

AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterStart()

TargetSetUnit = SET_UNIT:New():FilterCoalitions("red"):FilterPrefixes( "Central" ):FilterStart()

TaskCAS = TASK_A2G_CAS:New( Central_Border_Push, AttackGroups,"Central Border sweep", TargetSetUnit )

--Southern Border Task
Southern_Border_Push = MISSION
  :New( CommandCenter, "Southern Border Strike", "Primary", "Sweep the boarder and eliminate enenmy forces!", coalition.side.blue )
  :AddScoring( Scoring )

AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterStart()

TargetSetUnit = SET_UNIT:New():FilterCoalitions("red"):FilterPrefixes( "Southern" ):FilterStart()

TaskCAS = TASK_A2G_CAS:New( Southern_Border_Push, AttackGroups,"Southern Border sweep", TargetSetUnit )
