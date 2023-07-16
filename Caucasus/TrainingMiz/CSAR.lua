
_SETTINGS:SetPlayerMenuOff()
_SETTINGS:SetA2G_BR()
_SETTINGS:SetA2A_BULLS()
_SETTINGS:SetImperial()

my_scoring = SCORING:New("CSAR")

local BlueCsar = CSAR:New(coalition.side.BLUE,"Victim","Luftrettung")
BlueCsar.invisiblecrew = false
BlueCsar.mashprefix = {"Hospital"}
BlueCsar.useprefix = true  -- Requires CSAR helicopter #GROUP names to have the prefix(es) defined below.
BlueCsar.csarPrefix = { "TRAINING MEDEVAC"}
BlueCsar.coordtype = 2
BlueCsar.autosmoke = true -- automatically smoke a downed pilot\'s location when a heli is near.
BlueCsar.autosmokedistance = 2000
BlueCsar.smokecolor = 3
BlueCsar:SpawnCSARAtZone( "HeartAttack", coalition.side.BLUE,"Heart Attack Victim", true )
BlueCsar:SpawnCSARAtZone( "HikingVictim", coalition.side.BLUE,"Lost Hiker", true )
BlueCsar:SpawnCSARAtZone( "HikingVictim2", coalition.side.BLUE,"Fall Victim", true )
BlueCsar:SpawnCSARAtZone( "FarmingVictim", coalition.side.BLUE,"Farming Accident Victim", true )
BlueCsar:SpawnCSARAtZone( "FarmingVictim2", coalition.side.BLUE,"Farming Accident Victim", true )
BlueCsar:SpawnCSARAtZone( "BoatingVictim", coalition.side.BLUE,"Drown Victim", true )
BlueCsar:SpawnCSARAtZone( "HeartAttack2", coalition.side.BLUE,"Fall Victim", true )
BlueCsar:SpawnCSARAtZone( "BoatingVictim2", coalition.side.BLUE,"Boating Accident", true )
BlueCsar:SpawnCSARAtZone( "NovoVictim", coalition.side.BLUE,"Heart Attack Victim", true )
BlueCsar:SpawnCSARAtZone( "SportVictim", coalition.side.BLUE,"Heart Attack Victim", true )
BlueCsar:__Start(5)

-- function BlueCsar:OnAfterRescued(From, Event, To, HeliUnit, HeliName, NumberSaved)
--   -- add score to player
--   local NumberSaved = NumberSaved or 1
--   local points = 100 * NumberSaved
--   local PlayerName = HeliUnit:GetPlayerName()
--   my_scoring:_AddPlayerFromUnit( HeliUnit )
--   my_scoring:AddGoalScore(HeliUnit, "CSAR", string.format(" %s has been awarded %d points!", HeliName, points), points)
-- end

-- function Spawn_CSAR(BlueCSAR)
--   BlueCsar:SpawnCSARAtZone( "HeartAttack", coalition.side.BLUE,"Heart Attack Victim", true )
--   BlueCsar:SpawnCSARAtZone( "HikingVictim", coalition.side.BLUE,"Lost Hiker", true )
--   BlueCsar:SpawnCSARAtZone( "HikingVictim2", coalition.side.BLUE,"Fall Victim", true )
--   BlueCsar:SpawnCSARAtZone( "FarmingVictim", coalition.side.BLUE,"Farming Accident Victim", true )
--   BlueCsar:SpawnCSARAtZone( "FarmingVictim2", coalition.side.BLUE,"Farming Accident Victim", true )
--   BlueCsar:SpawnCSARAtZone( "BoatingVictim", coalition.side.BLUE,"Drown Victim", true )
--   BlueCsar:SpawnCSARAtZone( "HeartAttack2", coalition.side.BLUE,"Fall Victim", true )
--   BlueCsar:SpawnCSARAtZone( "BoatingVictim2", coalition.side.BLUE,"Boating Accident", true )
-- end
--
-- --local maulwuerfe = TIMER:New(Spawn_CSAR,BlueCsar)
-- BlueCSAR:__Start(5)
