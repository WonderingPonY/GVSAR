-- Define Zones and Variables
local trainingZone = trigger.misc.getZone("A2A Training Zone-1")
local SEADTrainingArea = trigger.misc.getZone("SEAD Training Area")
local SAMSpawnZones = {}
for i = 1, 13 do
    table.insert(SAMSpawnZones, "SAM Spawn Zone-" .. i)
end

local PlayersInA2AZone = {}
local PlayersInSEADZone = {}
local playerUnits = {}
local spawnedAircraftGroups = {}
local spawnedSAMGroups = {}
local maxSpawnedGroups = 4
local playerFlags = {}

-- Utility Functions
function isUnitInZone(unit, zone)
    local unitPos = unit:getPoint()
    local zonePos = zone.point
    local dx = unitPos.x - zonePos.x
    local dz = unitPos.z - zonePos.z
    return (dx * dx + dz * dz) <= (zone.radius * zone.radius)
end

function table.tostring(tbl)
    if type(tbl) == 'table' then
        local result = '{ '
        for k, v in pairs(tbl) do
            result = result .. '[' .. tostring(k) .. '] = ' .. table.tostring(v) .. ', '
        end
        return result .. '} '
    else
        return tostring(tbl)
    end
end

function getRandomSpawnZone()
    local zoneName = SAMSpawnZones[math.random(#SAMSpawnZones)]
    env.info("Selected spawn zone: " .. zoneName)
    local zone = trigger.misc.getZone(zoneName)
    if zone then
        env.info("Spawn zone coordinates: x=" .. tostring(zone.point.x) .. ", z=" .. tostring(zone.point.z))
        return zone.point
    else
        env.error("Zone " .. zoneName .. " not found.")
        return nil
    end
end

-- Menu Management
function manageMenu(action, playerGroupName, menuType)
    local playerUnit = Unit.getByName(playerGroupName)
    if playerUnit then
        local groupId = playerUnit:getGroup():getID()
        if menuType == "F10" then
            missionCommands.removeItemForGroup(groupId, {name = "Spawn Adversary"})
            missionCommands.removeItemForGroup(groupId, {name = "Spawn Adversary 2"})
            missionCommands.removeItemForGroup(groupId, {name = "Knock it off"})
            if action == "add" then
                local menuRoot1 = missionCommands.addSubMenuForGroup(groupId, "Spawn Adversary")
                local menuRoot2 = missionCommands.addSubMenuForGroup(groupId, "Spawn Adversary 2")
                local aircraftTypes = {
                    "Eagle", "Farmer", "Fishbed", "Flanker", "FlankerD", "FulcrumA", "FulcrumS", "Harrier", "Hornet",
                    "J11", "Jeff", "Mirage2000", "MirageF1", "Phantom", "Skyhawk", "TomcatA", "TomcatB", "Viggen", "Viper"
                }  -- Alphabetized list
                table.sort(aircraftTypes)
                for i, aircraftType in ipairs(aircraftTypes) do
                    if i <= 12 then
                        missionCommands.addCommandForGroup(groupId, "Spawn " .. aircraftType, menuRoot1, spawnEnemyAircraft, playerGroupName, aircraftType)
                    else
                        missionCommands.addCommandForGroup(groupId, "Spawn " .. aircraftType, menuRoot2, spawnEnemyAircraft, playerGroupName, aircraftType)
                    end
                end
            end
        elseif menuType == "SEAD" then
            missionCommands.removeItemForGroup(groupId, {name = "Spawn SAM Site"})
            if action == "add" then
                local parentCommand = missionCommands.addSubMenuForGroup(groupId, "Spawn SAM Site")
                local samTypes = {"Hawk", "NASAM", "Patriot", "Rapier", "SA11", "SA2", "SA10", "SA6", "SA3"}  -- Alphabetized list
                for _, samType in ipairs(samTypes) do
                    missionCommands.addCommandForGroup(groupId, "Spawn " .. samType, parentCommand, spawnSAM, playerGroupName, samType)
                end
            end
        elseif menuType == "SEADAbort" then
            missionCommands.removeItemForGroup(groupId, {name = "Abort SEAD Training"})
            if action == "add" then
                missionCommands.addCommandForGroup(groupId, "Abort SEAD Training", nil, function()
                    destroySpawnedSAM(playerGroupName)
                    manageMenu("remove", playerGroupName, "SEADAbort")
                end)
            end
        elseif menuType == "KnockItOff" then
            missionCommands.removeItemForGroup(groupId, {name = "Knock it off"})
            if action == "add" then
                missionCommands.addCommandForGroup(groupId, "Knock it off", nil, function()
                    env.info("Knock it off command triggered for player: " .. playerGroupName)
                    destroySpawnedAircraft(playerGroupName)
                end)
            end
        end
    end
end

-- Event Handlers
PLAYERENTERS = {}
function PLAYERENTERS:onEvent(event)
    if event.id == world.event.S_EVENT_BIRTH and event.initiator then
        local unit = event.initiator
        if unit:getCategory() == Object.Category.UNIT and unit:getCoalition() == coalition.side.BLUE then
            if unit:getDesc().category == Unit.Category.AIRPLANE then
                local playerGroup = unit:getGroup()
                local playerGroupName = playerGroup:getName()
                if playerGroupName and string.sub(unit:getName(), 1, 8) == "Training" then
                    table.insert(playerUnits, unit:getName())
                    env.info("Player Unit Added: " .. unit:getName())
                    checkUnitsInZones()
                end
            end
        end
    end
end

PLAYERLEAVES = {}
function PLAYERLEAVES:onEvent(event)
    if (event.id == world.event.S_EVENT_PLAYER_LEAVE_UNIT or event.id == world.event.S_EVENT_CRASH or event.id == world.event.S_EVENT_PILOT_DEAD) and event.initiator then
        local unit = event.initiator
        if unit:getCategory() == Object.Category.UNIT and unit:getCoalition() == coalition.side.BLUE then
            if unit:getDesc().category == Unit.Category.AIRPLANE then
                local playerGroup = unit:getGroup()
                local playerGroupName = playerGroup:getName()
                if playerGroupName and string.sub(unit:getName(), 1, 8) == "Training" then
                    if not playerFlags[playerGroupName] then
                        playerFlags[playerGroupName] = true
                        env.info("Player " .. playerGroupName .. " is leaving slot, removing menus and destroying units.")
                        manageMenu("remove", playerGroupName, "F10")
                        manageMenu("remove", playerGroupName, "SEAD")
                        manageMenu("remove", playerGroupName, "SEADAbort")
                        destroySpawnedAircraft(playerGroupName)
                        destroySpawnedSAM(playerGroupName)
                        for i, name in ipairs(playerUnits) do
                            if name == unit:getName() then
                                table.remove(playerUnits, i)
                                env.info("Player Unit Removed: " .. unit:getName())
                                break
                            end
                        end
                        playerFlags[playerGroupName] = nil
                    end
                end
            end
        end
    end
end

AIRCRAFTDESTRUCTION = {}
function AIRCRAFTDESTRUCTION:onEvent(event)
    if (event.id == world.event.S_EVENT_DEAD or event.id == world.event.S_EVENT_CRASH) and event.initiator then
        local unit = event.initiator
        if unit:getCoalition() == coalition.side.RED and unit:getDesc().category == Unit.Category.AIRPLANE then
            env.info("AIRCRAFTDESTRUCTION:onEvent called")
            local group = unit:getGroup()
            if group then
                local groupName = group:getName()
                for i, entry in ipairs(spawnedAircraftGroups) do
                    if entry.group == groupName then
                        checkAndRemoveKnockItOff(entry.player)
                        break
                    end
                end
            end
        end
    end
end

SAMDESTRUCTION = {}
function SAMDESTRUCTION:onEvent(event)
    if (event.id == world.event.S_EVENT_HIT or event.id == world.event.S_EVENT_DEAD) and event.initiator then
        local unit = event.initiator
        if unit:getCoalition() == coalition.side.RED and unit:getDesc().category == Unit.Category.GROUND_UNIT then
            env.info("SAMDESTRUCTION:onEvent called")
            local group = unit:getGroup()
            if group then
                local groupName = group:getName()
                for i, entry in ipairs(spawnedSAMGroups) do
                    if entry.group == groupName then
                        env.info("SAM group hit/destroyed, scheduling destruction of group " .. groupName)
                        timer.scheduleFunction(function()
                            destroySAMGroup(groupName)
                        end, {}, timer.getTime() + 3)
                        return
                    end
                end
            end
        end
    end
end

-- Spawn Functions
function spawnEnemyAircraft(playerGroupName, groupName)
    if #spawnedAircraftGroups >= maxSpawnedGroups then
        trigger.action.outTextForUnit(Unit.getByName(playerGroupName):getID(), "Maximum number of enemy aircraft reached.", 10)
        return
    end

    local playerUnit = Unit.getByName(playerGroupName)
    if playerUnit then
        local groupData = _G[groupName] -- Accessing groupData globally

        env.info("Spawning aircraft for " .. playerGroupName .. " with group data: " .. groupName)

        -- Additional logging for debugging
        env.info("Group Data: " .. table.tostring(groupData))

        -- Add random 4-digit number to the group name
        local randomSuffix = tostring(math.random(1000, 9999))
        local uniqueGroupName = groupData.name .. "-" .. randomSuffix

        local newGroupData = {
            visible = groupData.visible,
            hidden = groupData.hidden,
            units = {},
            y = groupData.y,
            x = groupData.x,
            name = uniqueGroupName,
            start_time = groupData.start_time,
            task = groupData.task,
            route = groupData.route
        }

        for _, unit in pairs(groupData.units) do
            local uniqueUnitName = unit.name .. "-" .. randomSuffix
            table.insert(newGroupData.units, {
                type = unit.type,
                transportable = { randomTransportable = false },
                skill = unit.skill,
                y = unit.y,
                x = unit.x,
                name = uniqueUnitName,
                playerCanDrive = false,
                heading = unit.heading
            })
        end

        -- Wrap the addGroup call in a protected call
        local status, newGroup = pcall(coalition.addGroup, country.id.CJTF_RED, Group.Category.AIRPLANE, newGroupData)
        if status and newGroup then
            table.insert(spawnedAircraftGroups, {player = playerGroupName, group = newGroup:getName()})
            trigger.action.outTextForUnit(playerUnit:getID(), "Spawned enemy aircraft " .. newGroup:getName(), 10)
            trigger.action.outTextForUnit(playerUnit:getID(), "The knock it off button has been added to your F10 menu. You can use this to destroy the aircraft you have spawned.", 10)
            env.info(playerGroupName .. " spawned enemy aircraft " .. newGroup:getName())
            manageMenu("add", playerGroupName, "KnockItOff") -- Add "Knock it off" button
        else
            env.error("Failed to spawn aircraft for " .. playerGroupName .. ". Error: " .. tostring(newGroup))
        end
    end
end

function spawnSAM(playerGroupName, groupName)
    if #spawnedSAMGroups >= maxSpawnedGroups then
        trigger.action.outTextForUnit(Unit.getByName(playerGroupName):getID(), "Maximum number of SAMs reached.", 10)
        return
    end

    local playerUnit = Unit.getByName(playerGroupName)
    if not playerUnit then
        env.info("Player unit not found: " .. playerGroupName)
        return
    end

    env.info("Attempting to spawn SAM group: " .. groupName .. " for player: " .. playerGroupName)

    local spawnPoint = getRandomSpawnZone()
    if not spawnPoint then return end
    env.info("Spawn point retrieved: " .. tostring(spawnPoint.x) .. ", " .. tostring(spawnPoint.z))

    local groupData = _G[groupName] -- Get the group data from the global table
    if not groupData then
        env.error("Group data for " .. groupName .. " not found.")
        return
    end

    env.info("Group data retrieved for: " .. groupName)

    local randomSuffix = tostring(math.random(1000, 9999))
    local uniqueGroupName = groupData.name .. "-" .. randomSuffix

    local newGroupData = {
        visible = groupData.visible,
        hidden = groupData.hidden,
        units = {},
        y = spawnPoint.z,
        x = spawnPoint.x,
        name = uniqueGroupName,
        start_time = groupData.start_time,
        task = groupData.task,
        route = groupData.route
    }

    -- Define a larger formation offset
    local formationOffsets = {
        {x = 0, y = 0},
        {x = 100, y = 0},
        {x = -100, y = 0},
        {x = 0, y = 100},
        {x = 0, y = -100},
        {x = 100, y = 100},
        {x = -100, y = -100},
        {x = 100, y = -100},
        {x = -100, y = 100},
        {x = 200, y = 0},
        {x = -200, y = 0},
        {x = 0, y = 200},
        {x = 0, y = -200},
        {x = 200, y = 200},
        {x = -200, y = -200},
        {x = 200, y = -200},
        {x = -200, y = 200},
        {x = 300, y = 0},
        {x = -300, y = 0},
        {x = 0, y = 300},
        {x = 0, y = -300}
    }

    for i, unit in pairs(groupData.units) do
        local offset = formationOffsets[(i % #formationOffsets) + 1]
        local uniqueUnitName = unit.name .. "-" .. randomSuffix
        table.insert(newGroupData.units, {
            type = unit.type,
            transportable = { randomTransportable = false },
            skill = unit.skill,
            y = spawnPoint.z + offset.y,
            x = spawnPoint.x + offset.x,
            name = uniqueUnitName,
            playerCanDrive = false,
            heading = unit.heading
        })
    end

    env.info("New group data created for: " .. uniqueGroupName)

    local status, newGroup = pcall(coalition.addGroup, country.id.CJTF_RED, Group.Category.GROUND, newGroupData)
    if status and newGroup then
        table.insert(spawnedSAMGroups, {player = playerGroupName, group = newGroup:getName()})
        trigger.action.outTextForUnit(playerUnit:getID(), "Spawned SAM Group " .. newGroup:getName(), 10)
        trigger.action.outTextForUnit(playerUnit:getID(), "The Abort SEAD Training button has been added to your F10 menu. You can use this to destroy the SAM group(s) you have spawned.", 10)
        env.info(playerGroupName .. " spawned SAM group " .. uniqueGroupName)
        manageMenu("add", playerGroupName, "SEADAbort")
    else
        env.error("Failed to spawn SAM group " .. groupName .. ". Error: " .. tostring(newGroup))
    end
end

-- Destroy Functions
function destroySpawnedAircraft(playerGroupName)
    env.info("Destroying aircraft for player: " .. playerGroupName)
    local destroyed = false
    local groupsToRemove = {}

    for i, entry in ipairs(spawnedAircraftGroups) do
        if entry.player == playerGroupName then
            local group = Group.getByName(entry.group)
            if group then
                local status, err = pcall(function() group:destroy() end)
                if status then
                    table.insert(groupsToRemove, i)
                    destroyed = true
                    env.info("Successfully destroyed group: " .. entry.group)
                else
                    env.error("Error destroying group: " .. tostring(err))
                end
            else
                env.error("Group not found: " .. tostring(entry.group))
            end
        end
    end

    for i = #groupsToRemove, 1, -1 do
        table.remove(spawnedAircraftGroups, groupsToRemove[i])
    end

    if not destroyed then
        env.error("No aircraft found to destroy for player: " .. playerGroupName)
    end

    local playerUnit = Unit.getByName(playerGroupName)
    if playerUnit then
        local groupId = playerUnit:getGroup():getID()
        missionCommands.removeItemForGroup(groupId, {name = "Knock it off"})
        env.info("Removed Knock it off menu for player: " .. playerGroupName)
    else
        env.error("Player unit not found: " .. playerGroupName)
    end
end

function destroySpawnedSAM(playerGroupName)
    env.info("Destroying SAM for player: " .. playerGroupName)
    local destroyed = false
    local groupsToRemove = {}

    for i, entry in ipairs(spawnedSAMGroups) do
        if entry.player == playerGroupName then
            local group = Group.getByName(entry.group)
            if group then
                local status, err = pcall(function() group:destroy() end)
                if status then
                    table.insert(groupsToRemove, i)
                    destroyed = true
                    env.info("Successfully destroyed SAM group: " .. entry.group)
                else
                    env.error("Error destroying SAM group: " .. tostring(err))
                end
            else
                env.error("Group not found: " .. tostring(entry.group))
            end
        end
    end

    for i = #groupsToRemove, 1, -1 do
        table.remove(spawnedSAMGroups, groupsToRemove[i])
    end

    if not destroyed then
        env.error("No SAM found to destroy for player: " .. playerGroupName)
    end

    local playerUnit = Unit.getByName(playerGroupName)
    if playerUnit then
        local groupId = playerUnit:getGroup():getID()
        missionCommands.removeItemForGroup(groupId, {name = "Abort SEAD Training"})
        env.info("Removed Abort SEAD Training menu for player: " .. playerGroupName)
    else
        env.error("Player unit not found: " .. playerGroupName)
    end
end

function destroySAMGroup(groupName)
    local group = Group.getByName(groupName)
    if group then
        group:destroy()
        env.info("Destroyed SAM group: " .. groupName)
    else
        env.error("SAM group not found: " .. groupName)
    end
end

-- Check and Remove Knock It Off Function
function checkAndRemoveKnockItOff(playerGroupName)
    local hasAliveAircraft = false
    for _, entry in ipairs(spawnedAircraftGroups) do
        if entry.player == playerGroupName then
            local group = Group.getByName(entry.group)
            if group then
                local units = group:getUnits()
                for _, unit in ipairs(units) do
                    if unit:isExist() then
                        hasAliveAircraft = true
                        break
                    end
                end
            end
        end
    end
    if not hasAliveAircraft then
        env.info("No alive aircraft found for player: " .. playerGroupName)
        manageMenu("remove", playerGroupName, "KnockItOff")
    else
        env.info("Alive aircraft still present for player: " .. playerGroupName)
    end
end

-- Zone Check Function
function checkUnitsInZones()
    if #playerUnits == 0 then
        env.info("No player units to check in zones.")
        return
    end

    for _, playerGroupName in ipairs(playerUnits) do
        local playerUnit = Unit.getByName(playerGroupName)
        if playerUnit then
            local pos = playerUnit:getPoint()
            local inTrainingZone = isUnitInZone(playerUnit, trainingZone)
            local inSEADZone = isUnitInZone(playerUnit, SEADTrainingArea)

            if inTrainingZone and not PlayersInA2AZone[playerGroupName] then
                PlayersInA2AZone[playerGroupName] = true
                trigger.action.outTextForGroup(playerUnit:getGroup():getID(), "You have entered A2A Training Area! Please use the F10 menu to spawn a variety of adversaries.", 20)
                env.info(playerGroupName .. " entered the A2A training zone.")
                manageMenu("add", playerGroupName, "F10")
            elseif not inTrainingZone and PlayersInA2AZone[playerGroupName] then
                PlayersInA2AZone[playerGroupName] = nil
                trigger.action.outTextForGroup(playerUnit:getGroup():getID(), "You have left A2A Training Area! Your spawned aircraft will be destroyed. ", 10)
                env.info(playerGroupName .. " left the A2A training zone.")
                manageMenu("remove", playerGroupName, "F10")
                destroySpawnedAircraft(playerGroupName)
            end

            if inSEADZone and not PlayersInSEADZone[playerGroupName] then
                PlayersInSEADZone[playerGroupName] = true
                trigger.action.outTextForGroup(playerUnit:getGroup():getID(), "You have entered the SEAD Training Area! Please use the F10 menu to spawn a variety of SAM sites.", 20)
                env.info(playerGroupName .. " entered the SEAD training zone.")
                manageMenu("add", playerGroupName, "SEAD")
            elseif not inSEADZone and PlayersInSEADZone[playerGroupName] then
                PlayersInSEADZone[playerGroupName] = nil
                trigger.action.outTextForGroup(playerUnit:getGroup():getID(), "You have left the SEAD Training Area! Your spawned SAMs will be destroyed", 10)
                env.info(playerGroupName .. " left the SEAD training zone.")
                manageMenu("remove", playerGroupName, "SEAD")
                destroySpawnedSAM(playerGroupName)
            end
        end
    end
    timer.scheduleFunction(checkUnitsInZones, {}, timer.getTime() + 1)
end

-- Initialize
trigger.action.outText("Training Script Initialized", 10)
env.info("Training Script Initialized")

checkUnitsInZones()
world.addEventHandler(PLAYERENTERS)
world.addEventHandler(PLAYERLEAVES)
world.addEventHandler(AIRCRAFTDESTRUCTION)
world.addEventHandler(SAMDESTRUCTION)
