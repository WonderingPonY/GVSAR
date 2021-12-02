--HQ.CC Setup
local HQ = GROUP
  :FindByName( "Bravo HQ" )

local CommandCenter = COMMANDCENTER
  :New( HQ, "Lima" ) -- Create the CommandCenter.

--Easy A2A Task
local EasyA2ATask = MISSION
    :New( CommandCenter, "Easy A2A Intercept", "Primary", "Intercept and eliminate enenmy forces!", coalition.side.blue )
    :AddScoring( Scoring )

    AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterCategoryAirplane():FilterStart()

    TargetSetUnit = SET_UNIT:New():FilterCoalitions("red"):FilterPrefixes( "easyfighter" ):FilterStart()

--Medium A2A Task
local MediumA2ATask = MISSION
    :New( CommandCenter, "Medium A2A Intercept", "Primary", "Intercept and eliminate enenmy forces!", coalition.side.blue )
    :AddScoring( Scoring )

    AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterCategoryAirplane():FilterStart()

    TargetSetUnit = SET_UNIT:New():FilterCoalitions("red"):FilterPrefixes( "mediumfighter" ):FilterStart()

--Hard A2A Task
local HardA2ATask = MISSION
    :New( CommandCenter, "Hard A2A Intercept", "Primary", "Intercept and eliminate enenmy forces!", coalition.side.blue )
    :AddScoring( Scoring )

    AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterCategoryAirplane():FilterStart()

    TargetSetUnit = SET_UNIT:New():FilterCoalitions("red"):FilterPrefixes( "hardfighter" ):FilterStart()

local EWRSet = SET_GROUP:New():FilterPrefixes( "EWR" ):FilterCoalitions("blue"):FilterStart()
local EWRDetection = DETECTION_AREAS:New( EWRSet, 6000 )
      EWRDetection:SetFriendliesRange( 120000 )
      EWRDetection:SetRefreshTimeInterval(30)

      function TASK_A2A_DISPATCHER:New( EasyA2ATask, AttackGroups, EWRDetection )

          -- Inherits from DETECTION_MANAGER
          local self = BASE:Inherit( self, DETECTION_MANAGER:New( AttackGroups, EWRDetection ) ) -- #TASK_A2A_DISPATCHER

          self.Detection = EWRDetection
          self.Mission = EasyA2ATask
          self.FlashNewTask = true

          -- TODO: Check detection through radar.
          self.Detection:FilterCategories( Unit.Category.AIRPLANE, Unit.Category.HELICOPTER )
          self.Detection:InitDetectRadar( true )
          self.Detection:SetRefreshTimeInterval( 30 )

          self:AddTransition( "Started", "Assign", "Started" )


          --- OnAfter Transition Handler for Event Assign.
          -- @function [parent=#TASK_A2A_DISPATCHER] OnAfterAssign
          -- @param #TASK_A2A_DISPATCHER self
          -- @param #string From The From State string.
          -- @param #string Event The Event string.
          -- @param #string To The To State string.
          -- @param Tasking.Task_A2A#TASK_A2A Task
          -- @param Wrapper.Unit#UNIT TaskUnit
          -- @param #string PlayerName

          self:__Start( 5 )

          return self
        end
