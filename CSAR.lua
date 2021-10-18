--Civilian SAR
_SETTINGS:SetPlayerMenuOff()
_SETTINGS:SetA2G_BR()
_SETTINGS:SetA2A_BULLS()
_SETTINGS:SetImperial()

my_scoring = SCORING:New("CSAR")

local BlueCsar = CSAR:New(coalition.side.BLUE,"Victim","Luftrettung")
BlueCsar.coordtype = 2
BlueCsar:__Start(5)

function BlueCsar:OnAfterRescued(From, Event, To, HeliUnit, HeliName, NumberSaved)
  -- add score to player
  local NumberSaved = NumberSaved or 1
  local points = 100 * NumberSaved
  local PlayerName = HeliUnit:GetPlayerName()
  my_scoring:_AddPlayerFromUnit( HeliUnit )
  my_scoring:AddGoalScore(HeliUnit, "CSAR", string.format(" %s has been awarded %d points!", HeliName, points), points)
end

function Spawn_CSAR(BlueCSAR)
  BlueCSAR:SpawnCSARAtZone( "CYPRUSRAT", coalition.side.BLUE,"Heart Attack Victim", true )
  BlueCSAR:SpawnCSARAtZone( "HikingVictims2", coalition.side.BLUE,"Lost Hiker", true )
  BlueCSAR:SpawnCSARAtZone( "HikingVictims", coalition.side.BLUE,"Fall Victim", true )
  BlueCSAR:SpawnCSARAtZone( "CYPRUSRAT", coalition.side.BLUE,"Aircraft Accident Victim", true )
  BlueCSAR:SpawnCSARAtZone( "CYPRUSRAT", coalition.side.BLUE,"Heart Attack Victim", true )
  BlueCSAR:SpawnCSARAtZone( "HikingVictims2", coalition.side.BLUE,"Lost Hiker", true )
  BlueCSAR:SpawnCSARAtZone( "HikingVictims", coalition.side.BLUE,"Fall Victim", true )
  BlueCSAR:SpawnCSARAtZone( "CYPRUSRAT", coalition.side.BLUE,"Aircraft Accident Victim", true )
end

local maulwuerfe = TIMER:New(Spawn_CSAR,BlueCsar)
maulwuerfe:Start(5)
