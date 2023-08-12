local JRCCCsar = CSAR:New(coalition.side.BLUE,"Victim","JRCC Cairo")
JRCCCsar.invisiblecrew = false
JRCCCsar.mashprefix = {"Hospital"}
JRCCCsar.useprefix = true  -- Requires CSAR helicopter #GROUP names to have the prefix(es) defined below.
JRCCCsar.csarPrefix = { "JRCC"}
JRCCCsar.coordtype = 2
JRCCCsar.autosmoke = false -- automatically smoke a downed pilot\'s location when a heli is near.
local HeartAttackVictim = UNIT:FindByName("Test-1")
HeartAttackVictimCoordinate = HeartAttackVictim:GetCoordinate()
JRCCCsar:SpawnCASEVAC( HeartAttackVictimCoordinate, coalition.side.BLUE,"Heart Attack Victim", true )
JRCCCsar:SpawnCSARAtZone( "HikingVictim", coalition.side.BLUE,"Lost Hiker", true )
JRCCCsar:SpawnCSARAtZone( "HikingVictim2", coalition.side.BLUE,"Fall Victim", true )
JRCCCsar:SpawnCSARAtZone( "FarmingVictim", coalition.side.BLUE,"Farming Accident Victim", true )
JRCCCsar:SpawnCSARAtZone( "FarmingVictim2", coalition.side.BLUE,"Farming Accident Victim", true )
JRCCCsar:SpawnCSARAtZone( "BoatingVictim", coalition.side.BLUE,"Drown Victim", true )
JRCCCsar:SpawnCSARAtZone( "HeartAttack2", coalition.side.BLUE,"Fall Victim", true )
JRCCCsar:SpawnCSARAtZone( "BoatingVictim2", coalition.side.BLUE,"Boating Accident", true )
JRCCCsar:SpawnCSARAtZone( "NovoVictim", coalition.side.BLUE,"Heart Attack Victim", true )
JRCCCsar:SpawnCSARAtZone( "SportVictim", coalition.side.BLUE,"Heart Attack Victim", true )
JRCCCsar:__Start(5)
