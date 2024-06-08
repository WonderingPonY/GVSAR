local trainingZone = trigger.misc.getZone("A2A Training Zone-1")
local unitInZone = {}
local playerUnits = {}
local spawnedGroups = {}
local maxSpawnedGroups = 4
local CJTF_RED = 81  -- Set country to CJTF_RED (ID 81)

function retrievePlayerUnits()
    playerUnits = {} -- Clear the list first
    for _, unit in pairs(coalition.getPlayers(coalition.side.BLUE)) do
        if string.sub(unit:getName(), 1, 8) == "Training" then
            table.insert(playerUnits, unit:getName())
        end
    end
    env.info("Player Units Retrieved: " .. table.concat(playerUnits, ", "))
end

PLAYERENTERS = {}
function PLAYERENTERS:onEvent(event)
    if event.id == world.event.S_EVENT_BIRTH and event.initiator then
        local unit = event.initiator
        if unit:getCategory() == Object.Category.UNIT and unit:getCoalition() == coalition.side.BLUE then
            env.info("Is a Unit")
            if unit:getDesc().category == Unit.Category.AIRPLANE then
                env.info("Is an Airplane")
                local playerName = unit:getPlayerName()
                if playerName then
                    env.info("Player " .. playerName .. " has spawned in unit: " .. unit:getName())
                    if string.sub(unit:getName(), 1, 8) == "Training" then
                        table.insert(playerUnits, unit:getName())
                        env.info("Player Unit Added: " .. unit:getName())
                    end
                else
                    env.info("Unit spawned but no player name: " .. unit:getName())
                end
            end
        else
            env.info("Non-unit, non-blue coalition, or no initiator in BIRTH event.")
        end
    end
end

AIRCRAFTDESTRUCTION = {}
function AIRCRAFTDESTRUCTION:onEvent(event)
    env.info("AIRCRAFTDESTRUCTION:onEvent called")
    if (event.id == world.event.S_EVENT_DEAD or event.id == world.event.S_EVENT_CRASH) and event.initiator then
        local unit = event.initiator
        local unitCoalition = unit:getCoalition()
        local unitCountry = unit:getCountry()
        env.info("Destroyed unit coalition: " .. tostring(unitCoalition) .. ", country: " .. tostring(unitCountry))
        if unitCoalition == coalition.side.RED then
            env.info("Detected destruction of a red coalition unit")
            local group = unit:getGroup()
            if group then
                local groupName = group:getName()
                env.info("Group name of destroyed unit: " .. groupName)
                for i, entry in ipairs(spawnedGroups) do
                    if entry.group == groupName then
                        env.info("Found matching group in spawnedGroups for player: " .. entry.player)
                        checkAndRemoveKnockItOff(entry.player)
                        break
                    end
                end
            end
        end
    end
end

function checkUnitsInZone()
    for _, playerName in ipairs(playerUnits) do
        local playerUnit = Unit.getByName(playerName)
        if playerUnit then
            local pos = playerUnit:getPoint()
            local inZone = ((pos.x - trainingZone.point.x)^2 + (pos.z - trainingZone.point.z)^2) < (trainingZone.radius^2)
            if inZone and not unitInZone[playerName] then
                unitInZone[playerName] = true
                trigger.action.outTextForGroup(playerUnit:getGroup():getID(), "Entered A2A Training Zone-1", 10)
                env.info(playerName .. " entered the training zone.")
                createF10MenuForPlayer(playerName)
            elseif not inZone and unitInZone[playerName] then
                unitInZone[playerName] = nil
                trigger.action.outTextForGroup(playerUnit:getGroup():getID(), "Left A2A Training Zone-1", 10)
                env.info(playerName .. " left the training zone.")
                removeKnockItOffMenuForPlayer(playerName)
                destroySpawnedAircraft(playerName)
            end
        end
    end
    timer.scheduleFunction(checkUnitsInZone, {}, timer.getTime() + 1)
end

function validateGroupData(groupData)
    if not groupData or type(groupData) ~= 'table' then
        env.error("Group data is invalid or not a table")
        return false
    end
    groupData.country = CJTF_RED  -- Ensure country is always set to CJTF_RED
    if not groupData.units or type(groupData.units) ~= 'table' then
        env.error("Group data is missing 'units' field or 'units' is not a table")
        return false
    end
    if #groupData.units == 0 then
        env.error("Group data 'units' table is empty")
        return false
    end
    return true
end

function spawnEnemyAircraft(playerUnitName, groupName)
    if #spawnedGroups >= maxSpawnedGroups then
        trigger.action.outTextForUnit(Unit.getByName(playerUnitName):getID(), "Maximum number of enemy aircraft reached.", 10)
        return
    end

    local playerUnit = Unit.getByName(playerUnitName)
    if playerUnit then
        local groupData = _G[groupName] -- Accessing groupData globally

        env.info("Spawning aircraft for " .. playerUnitName .. " with group data: " .. groupName)

        -- Additional logging for debugging
        env.info("Group Data: " .. table.tostring(groupData))

        if not validateGroupData(groupData) then
            trigger.action.outTextForUnit(playerUnit:getID(), "Failed to validate group data for " .. groupName, 10)
            return
        end

        -- Wrap the addGroup call in a protected call
        local status, newGroup = pcall(coalition.addGroup, groupData.country, Group.Category.AIRPLANE, groupData)
        if status and newGroup then
            table.insert(spawnedGroups, {player = playerUnitName, group = newGroup:getName()})
            trigger.action.outTextForUnit(playerUnit:getID(), "Spawned enemy aircraft " .. newGroup:getName(), 10)
            trigger.action.outTextForUnit(playerUnit:getID(), "The knock it off button has been added to your F10 menu. You can use this to destroy the aircraft you have spawned.", 10)
            env.info(playerUnitName .. " spawned enemy aircraft " .. newGroup:getName())
            updateKnockItOffMenuForPlayer(playerUnit:getGroup():getID(), playerUnitName)
        else
            env.error("Failed to spawn aircraft for " .. playerUnitName .. ". Error: " .. tostring(newGroup))
        end
    end
end

function updateKnockItOffMenuForPlayer(groupId, playerName)
    missionCommands.removeItemForGroup(groupId, {name = "Knock it off"})
    missionCommands.addCommandForGroup(groupId, "Knock it off", nil, function()
        env.info("Knock it off command triggered for player: " .. playerName)
        destroySpawnedAircraft(playerName)
    end)
end

function createF10MenuForPlayer(playerName)
    local playerUnit = Unit.getByName(playerName)
    if playerUnit then
        local groupId = playerUnit:getGroup():getID()
        local menuRoot = missionCommands.addSubMenuForGroup(groupId, "Spawn Adversary")
        missionCommands.addCommandForGroup(groupId, "Spawn TomcatA", menuRoot, spawnEnemyAircraft, playerName, "TomcatA")
        missionCommands.addCommandForGroup(groupId, "Spawn Eagle", menuRoot, spawnEnemyAircraft, playerName, "Eagle")
        missionCommands.addCommandForGroup(groupId, "Spawn Viper", menuRoot, spawnEnemyAircraft, playerName, "Viper")
    end
end

function removeKnockItOffMenuForPlayer(playerName)
    local playerUnit = Unit.getByName(playerName)
    if playerUnit then
        local groupId = playerUnit:getGroup():getID()
        missionCommands.removeItemForGroup(groupId, {name = "Knock it off"})
        env.info("Removed Knock it off menu for player: " .. playerName)
    else
        env.info("Player unit not found: " .. playerName .. " for removing Knock it off menu")
    end
end

function removeF10MenuForPlayer(playerName)
    local playerUnit = Unit.getByName(playerName)
    if playerUnit then
        local groupId = playerUnit:getGroup():getID()
        missionCommands.removeItemForGroup(groupId, {name = "Spawn Adversary"})
        missionCommands.removeItemForGroup(groupId, {name = "Knock it off"})
        env.info("Removed F10 menus for player: " .. playerName)
    else
        env.info("Player unit not found: " .. playerName .. " for removing F10 menus")
    end
end

function checkAndRemoveKnockItOff(playerName)
    local hasAliveAircraft = false
    for _, entry in ipairs(spawnedGroups) do
        if entry.player == playerName then
            local group = Group.getByName(entry.group)
            if group then
                env.info("Checking if group is alive: " .. entry.group)
                local units = group:getUnits()
                for _, unit in ipairs(units) do
                    if unit:isExist() then
                        env.info("Unit is still alive in group: " .. entry.group)
                        hasAliveAircraft = true
                        break
                    end
                end
                if not hasAliveAircraft then
                    env.info("No alive units in group: " .. entry.group)
                end
            else
                env.info("Group not found: " .. entry.group)
            end
        end
    end
    if not hasAliveAircraft then
        env.info("No alive aircraft found for player: " .. playerName)
        removeKnockItOffMenuForPlayer(playerName)
    else
        env.info("Alive aircraft still present for player: " .. playerName)
    end
end

function destroySpawnedAircraft(playerName)
    env.info("Destroying aircraft for player: " .. playerName)
    local destroyed = false
    local groupsToRemove = {}

    for i, entry in ipairs(spawnedGroups) do
        env.info("Checking group entry: " .. tostring(entry.group) .. " for player: " .. entry.player)
        if entry.player == playerName then
            local group = Group.getByName(entry.group)
            if group then
                env.info("Destroying group: " .. entry.group)
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
        table.remove(spawnedGroups, groupsToRemove[i])
    end

    if not destroyed then
        env.error("No aircraft found to destroy for player: " .. playerName)
    end

    local playerUnit = Unit.getByName(playerName)
    if playerUnit then
        local groupId = playerUnit:getGroup():getID()
        missionCommands.removeItemForGroup(groupId, {name = "Knock it off"})
        env.info("Removed Knock it off menu for player: " .. playerName)
    else
        env.error("Player unit not found: " .. playerName)
    end
end

function checkPlayerStatus()
    for playerName, inZone in pairs(unitInZone) do
        local playerUnit = Unit.getByName(playerName)
        if not playerUnit or not playerUnit:isExist() then
            unitInZone[playerName] = nil
            destroySpawnedAircraft(playerName)
            env.info("Destroyed aircraft spawned by " .. playerName .. " due to player death or exit")
        end
    end
    timer.scheduleFunction(checkPlayerStatus, {}, timer.getTime() + 1)
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

trigger.action.outText("Training Script Initialized", 10)
env.info("Training Script Initialized")

retrievePlayerUnits()
checkUnitsInZone()
checkPlayerStatus()
world.addEventHandler(PLAYERENTERS)
world.addEventHandler(AIRCRAFTDESTRUCTION)
