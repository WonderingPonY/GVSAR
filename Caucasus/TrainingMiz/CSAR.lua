
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
  BlueCSAR:SpawnCSARAtZone( "HeartAttack", coalition.side.BLUE,"Heart Attack Victim", true )
  BlueCSAR:SpawnCSARAtZone( "HikingVictim", coalition.side.BLUE,"Lost Hiker", true )
  BlueCSAR:SpawnCSARAtZone( "HikingVictim2", coalition.side.BLUE,"Fall Victim", true )
  BlueCSAR:SpawnCSARAtZone( "FarmingVictim", coalition.side.BLUE,"Farming Accident Victim", true )
  BlueCSAR:SpawnCSARAtZone( "FarmingVictim2", coalition.side.BLUE,"Farming Accident Victim", true )
  BlueCSAR:SpawnCSARAtZone( "BoatingVictim", coalition.side.BLUE,"Drown Victim", true )
  BlueCSAR:SpawnCSARAtZone( "HeartAttack2", coalition.side.BLUE,"Fall Victim", true )
  BlueCSAR:SpawnCSARAtZone( "BoatingVictim2", coalition.side.BLUE,"Boating Accident", true )
end

local maulwuerfe = TIMER:New(Spawn_CSAR,BlueCsar)
maulwuerfe:Start(5)
