A2ASpawnZones = {
  ZONE:New("A2A Spawns-1"),
  ZONE:New("A2A Spawns-2"),
  ZONE:New("A2A Spawns-3"),
  ZONE:New("A2A Spawns-4"),
  ZONE:New("A2A Spawns-5"),
  ZONE:New("A2A Spawns-6")
}
HardA2A = {
  "HardAerial1",
  "HardAerial2"
}
MediumA2A = SPAWN:New( "hardfighter" )
:InitRandomizeTemplate(HardA2A)
:InitLimit( 2, 0 )
:InitRandomizeRoute( 0, 1, 200 )
:InitRandomizeZones( A2ASpawnsZones )
:SpawnScheduled( 5, .5 )

local HQ = GROUP
  :FindByName( "Bravo HQ" )

local CommandCenter = COMMANDCENTER
  :New( HQ, "Lima" ) -- Create the CommandCenter.

MediumA2ATask = MISSION
    :New( CommandCenter, "Hard A2A Intercept", "Primary", "Intercept and eliminate enenmy forces!", coalition.side.blue )
    :AddScoring( Scoring )

    AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterCategoryAirplane():FilterStart()

    TargetSetUnit = SET_UNIT:New():FilterCoalitions("red"):FilterPrefixes( "hardfighter" ):FilterStart()

TASK_A2A_INTERCEPT:New( EasyA2ATask, AttackGroups, "Hard Intercept", TargetSetUnit)
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
