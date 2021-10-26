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
    :New( CommandCenter, "Norhtern Border Strike", "Primary", "Sweep the boarder and eliminate enenmy forces!", coalition.side.blue )
    :AddScoring( Scoring )

function TASK_A2A_INTERCEPT:New( Mission, SetGroup, TaskName, TargetSetUnit, TaskBriefing )
   local self = BASE:Inherit( self, TASK_A2A:New( Mission, SetGroup, TaskName, TargetSetUnit, "INTERCEPT", TaskBriefing ) ) -- #TASK_A2A_INTERCEPT
   self:F()

   Mission:AddTask( self )

   self:SetBriefing(
     TaskBriefing or
     "Intercept incoming intruders.\n"
   )

   return self
 end

 --- Set a score when a target in scope of the A2A attack, has been destroyed .
 -- @param #TASK_A2A_INTERCEPT self
 -- @param #string PlayerName The name of the player.
 -- @param #number Score The score in points to be granted when task process has been achieved.
 -- @param Wrapper.Unit#UNIT TaskUnit
 -- @return #TASK_A2A_INTERCEPT
 function TASK_A2A_INTERCEPT:SetScoreOnProgress( PlayerName, Score, TaskUnit )
   self:F( { PlayerName, Score, TaskUnit } )

   local ProcessUnit = self:GetUnitProcess( TaskUnit )

   ProcessUnit:AddScoreProcess( "Engaging", "Account", "AccountForPlayer", "Player " .. PlayerName .. " has intercepted a target.", Score )

   return self
 end

 --- Set a score when all the targets in scope of the A2A attack, have been destroyed.
 -- @param #TASK_A2A_INTERCEPT self
 -- @param #string PlayerName The name of the player.
 -- @param #number Score The score in points.
 -- @param Wrapper.Unit#UNIT TaskUnit
 -- @return #TASK_A2A_INTERCEPT
 function TASK_A2A_INTERCEPT:SetScoreOnSuccess( PlayerName, Score, TaskUnit )
   self:F( { PlayerName, Score, TaskUnit } )

   local ProcessUnit = self:GetUnitProcess( TaskUnit )

   ProcessUnit:AddScore( "Success", "All targets have been successfully intercepted!", Score )

   return self
 end

 --- Set a penalty when the A2A attack has failed.
 -- @param #TASK_A2A_INTERCEPT self
 -- @param #string PlayerName The name of the player.
 -- @param #number Penalty The penalty in points, must be a negative value!
 -- @param Wrapper.Unit#UNIT TaskUnit
 -- @return #TASK_A2A_INTERCEPT
 function TASK_A2A_INTERCEPT:SetScoreOnFail( PlayerName, Penalty, TaskUnit )
   self:F( { PlayerName, Penalty, TaskUnit } )

   local ProcessUnit = self:GetUnitProcess( TaskUnit )

   ProcessUnit:AddScore( "Failed", "The intercept has failed!", Penalty )

   return self
 end


end
