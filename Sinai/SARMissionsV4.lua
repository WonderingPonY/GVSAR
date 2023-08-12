local JRCCCsar = CSAR:New(coalition.side.BLUE,"Victim","JRCC Cairo")
JRCCCsar.invisiblecrew = false
JRCCCsar.mashprefix = {"Hospital"}
JRCCCsar.useprefix = true  -- Requires CSAR helicopter #GROUP names to have the prefix(es) defined below.
JRCCCsar.csarPrefix = { "JRCC"}
JRCCCsar.coordtype = 2
JRCCCsar.autosmoke = false -- automatically smoke a downed pilot\'s location when a heli is near.
 JRCCCsar.messageTime = 15

JRCCCsar:__Start(5)

local easyMissionFlag = 69
local mediumMissionFlag = 70
local hardMissionFlag = 71



-- Function to handle the Easy Mission button
function EasyMissionGenerator()
  local FlagValue = math.random(1, 3)

     trigger.action.setUserFlag(easyMissionFlag, FlagValue)--Sets Flag 69 value
     env.info(easyMissionFlag.." Value is "..FlagValue)

    do easymissions(FlagValue)--Runs easymission funciton
    env.info( "Easy Mission Generator Funciton Complete")

  end
end
  function easymissions(FlagValue) --Easy Mission Selector
    EasyMissionSelector = trigger.misc.getUserFlag(easyMissionFlag)
    EasyZone2 = ZONE:FindByName("SportVictim")
    EasyZone2:Scan()
    local EasyZone2IsEmpty = EasyZone2:IsNoneInZone()
    --unitGroup = unit:getGroup()

    if  EasyMissionSelector == 1 then
        local HeartAttackVictim = UNIT:FindByName("Test-1")
        HeartAttackVictimCoordinate = HeartAttackVictim:GetCoordinate()
        JRCCCsar:SpawnCASEVAC(HeartAttackVictimCoordinate, coalition.side.BLUE, "Heart Attack Victim", false, true, "Adam Smith","Heart Attack", true)
        trigger.action.setUserFlag(easyMissionFlag, 0)
        --trigger.action.outTextForUnit(unitGroup:getID() , "Heart Attack Victim needs urgent transportation to a hospital" , 15 )

    elseif EasyMissionSelector == 2 and EasyZone2IsEmpty = true then
        JRCCCsar:SpawnCSARAtZone("HikingVictim", coalition.side.BLUE, "Lost Hiker needs found and Medivac", true, true, "Papa John","Test Plane", true)
        trigger.action.setUserFlag(easyMissionFlag, 0)
        --trigger.action.outTextForUnit(unitGroup:getID() , "Patient had aneurysm trying to write this script, please pick up and drop from tall height" , 15 )
    -- Add more cases for other values if needed...
    elseif EasyMissionSelector == 3 then
      JRCCCsar:SpawnCSARAtZone( "SportVictim", coalition.side.BLUE,"Heart Attack Victim", true, true, "Abe Lincoln","Test Plane", true )
      trigger.action.setUserFlag(easyMissionFlag, 0)
      --trigger.action.outTextForUnit(unitGroup:getID() , "Track athelte impaled with javalin" , 15 )
    -- Add code here to execute the Easy Mission logic
    -- For example, you can load a specific mission or trigger events.
    env.info("Player has asked for a EASY mission Flag "..easyMissionFlag..FlagValue.." has been activated")
    end
  end

-- Function to handle the Medium Mission button
function onMediumMission()
    -- Generate a random value between 1 and 10
    local randomValue = getRandomValue(1, 10)

    -- Set the random value to the flag for Medium Mission
    trigger.action.setUserFlag(mediumMissionFlag, randomValue)

    -- Send a message to players with the flag value
    local message = "Flag 1 is active with value: " .. randomValue
    sendMessageToPlayers(message)

    -- Add code here to execute the Medium Mission logic
    -- For example, you can load a different mission or trigger events.
end

-- Function to handle the Hard Mission button
function onHardMission()
    -- Generate a random value between 1 and 10
    local randomValue = getRandomValue(1, 10)

    -- Set the random value to the flag for Hard Mission
    trigger.action.setUserFlag(hardMissionFlag, randomValue)

    -- Send a message to players with the flag value
    local message = "Flag 1 is active with value: " .. randomValue
    sendMessageToPlayers(message)

    -- Add code here to execute the Hard Mission logic
    -- For example, you can load another mission or trigger events.
end

-- Register the functions with the F10 menu and assign flags

local displayRequests = missionCommands.addSubMenu( "SAR Missions")
missionCommands.addCommand("Easy Mission", displayRequests, EasyMissionGenerator)
missionCommands.addCommand("Medium Mission", displayRequests,  onMediumMission)
missionCommands.addCommand("Hard Mission", displayRequests,  onHardMission)

-- PLAYERENTERS = {}
-- function PLAYERENTERS:onEvent(Event)
--   if Event.id == world.event.S_EVENT_BIRTH then
--     env.info("PLAYER ENTERED A HELICOPTER")
--     unit = Event.initiator
--     unitGroup = unit:getGroup()
--     env.info(unitGroup)
--     missionCommands.addCommandForGroup("Easy Mission", displayRequests, onEasyMission)
--     missionCommands.addCommandForGroup("Medium Mission", displayRequests, onMediumMission)
--     missionCommands.addCommandForGroup("Hard Mission", displayRequests, onHardMission)
--   end
-- end
--
-- world.addEventHandler(PLAYERENTERS)
