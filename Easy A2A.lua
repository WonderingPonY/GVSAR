A2ASpawnsZones = {
  ZONE:New("A2A Spawns-1"),
  ZONE:New("A2A Spawns-2"),
  ZONE:New("A2A Spawns-3"),
  ZONE:New("A2A Spawns-4"),
  ZONE:New("A2A Spawns-5"),
  ZONE:New("A2A Spawns-6")
}

EasyA2A = {
  "EasyAerial1",
  "EasyAerial2"
}
EasyA2A = SPAWN:New( "easyfighter" )
:InitRandomizeTemplate( EasyA2A )
:InitLimit( 2, 0 )
:InitRandomizeZones( A2ASpawnsZones )
:SpawnScheduled( 5, .5 )

local HQ = GROUP
  :FindByName( "Bravo HQ" )

local CommandCenter = COMMANDCENTER
  :New( HQ, "Lima" ) -- Create the CommandCenter.

  EasyA2ATask = MISSION
    :New( CommandCenter, "Easy A2A Intercept", "Primary", "Intercept and eliminate enenmy forces!", coalition.side.blue )
    :AddScoring( Scoring )

    AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterCategoryAirplane():FilterStart()

    TargetSetUnit = SET_UNIT:New():FilterCoalitions("red"):FilterPrefixes( "easyfighter" ):FilterStart()

TASK_A2A_INTERCEPT:New( EasyA2ATask, AttackGroups, "Easy Intercept", TargetSetUnit)
local self = BASE:Inherit( self, TASK_A2A_INTERCEPT:New( EasyA2ATask, AttackGroups, "Easy Intercept", TargetSetUnit) ) -- #TASK_A2A_INTERCEPT
    self:F()

    Mission:AddTask( self )

    self:SetBriefing(
      TaskBriefing or
      "Intercept incoming intruders.\n"
    )

    return self
  end
--TASK_A2A_INTERCEPT:AddGroups("HAF-347S-Persues-Squadron","HAF-330-Thunder-Squadron")
function TASK_A2A_INTERCEPT:SetScoreOnProgress( PlayerName, Score, TaskUnit )
    self:F( { PlayerName, Score, TaskUnit } )

   local ProcessUnit = self:GetUnitProcess( TaskUnit )

   ProcessUnit:AddScoreProcess( "Engaging", "Account", "AccountForPlayer", "Player " .. PlayerName .. " has intercepted a target.", Score )

   return self
 end

 function TASK_A2A_INTERCEPT:SetScoreOnSuccess( PlayerName, Score, TaskUnit )
   self:F( { PlayerName, Score, TaskUnit } )

   local ProcessUnit = self:GetUnitProcess( TaskUnit )

   ProcessUnit:AddScore( "Success", "All targets have been successfully intercepted!", Score )

   return self
 end

 function TASK_A2A_INTERCEPT:SetScoreOnFail( PlayerName, Penalty, TaskUnit )
   self:F( { PlayerName, Penalty, TaskUnit } )

   local ProcessUnit = self:GetUnitProcess( TaskUnit )

   ProcessUnit:AddScore( "Failed", "The intercept has failed!", Penalty )

   return self
 end
