---
-- Name: DET-310 - EWR - Line Of Sight
-- Author: FlightControl
-- Date Created: 12 Sep 2018
--
-- # Situation:
--
-- Demonstrates the lost of line of sight using an airplane.

SetGroup = SET_GROUP:New():FilterPrefixes( "Recce" ):FilterStart()

HQ = GROUP:FindByName( "HQ" )

CC = COMMANDCENTER:New( HQ, "HQ" )

RecceDetection = DETECTION_AREAS
  :New( SetGroup, 1500 )
  :FilterCategories( { Unit.Category.AIRPLANE } )
  --:InitDetectVisual( true )
  :InitDetectIRST( true )
  :InitDetectRadar( true )
  :InitDetectRWR( true )
  :InitDetectOptical( true )

RecceDetection:Start()

_SETTINGS:SetA2A_BRAA()
_SETTINGS:SetA2G_BR()

--- OnAfter Transition Handler for Event DetectedItem.
-- @param Functional.Detection#DETECTION_AREAS RecceDetection self
-- @param #string From The From State string.
-- @param #string Event The Event string.
-- @param #string To The To State string.
-- @param Functional.Detection#DETECTION_BASE.DetectedItem DetectedItem
function RecceDetection:OnAfterDetectedItem(From,Event,To,DetectedItem)

  local DetectionReport = self:DetectedReportDetailed( SetGroup:GetFirst() )

  HQ:MessageToAll( DetectionReport, 15, "Detection" )

  if DetectedItem.IsDetected then
    local Coordinate = DetectedItem.Coordinate -- Core.Point#COORDINATE
    HQ:MessageToAll( "Detected", 15, "Detection" )
  end

end

garbagecollect()
