-- main.lua

-- Function to spawn a group
function spawnGroup(groupData)
    --trigger.action.outText("Spawning group: " .. groupData.name, 10)
    local group = {
        ["visible"] = true,              -- Set to true to make the group visible on the F10 map
        ["groupId"] = nil,
        ["hidden"] = false,
        ["units"] = {},
        ["y"] = groupData.units[1].y,    -- Using the y position from the first unit
        ["x"] = groupData.units[1].x,    -- Using the x position from the first unit
        ["name"] = groupData.name,
        ["task"] = {},
        ["route"] = groupData.route,     -- Include the route information
    }

    -- Iterate over the units in the groupData and create the units table for the new group
    for i, unit in ipairs(groupData.units) do
        local unitData = {
            ["y"] = unit.y,
            ["x"] = unit.x,
            ["heading"] = unit.heading,
            ["type"] = unit.type,
            ["name"] = unit.name,
            ["skill"] = unit.skill,
            ["payload"] = unit.payload,  -- Include payload
            ["alt"] = unit.alt,
            ["speed"] = unit.speed,
            ["callsign"] = unit.callsign,
            ["alt_type"] = unit.alt_type,
            ["onboard_num"] = unit.onboard_num,
        }
        table.insert(group.units, unitData)
    end

    -- Add the group to the coalition
    coalition.addGroup(country.id.CJTF_BLUE, Group.Category.AIRPLANE, group)
    --trigger.action.outText("Group spawned successfully: " .. groupData.name, 10)
end

-- Function to check fuel levels and respawn if necessary
function monitorFuel()
    local function checkAndRespawn(groupData)
        local group = Group.getByName(groupData.name)

        if group and group:isExist() then
            local unit = group:getUnit(1)
            if unit then
                local fuel = unit:getFuel()
                --trigger.action.outText(groupData.name .. " fuel level: " .. (fuel * 100) .. "%", 10)
                if fuel <= 0.25 then
                    trigger.action.outText(groupData.name .. " fuel below 25%, respawning in 30 seconds...", 10)
                    group:destroy()
                    timer.scheduleFunction(function()
                        spawnGroup(groupData)
                    end, nil, timer.getTime() + 30)
                end
            end
        end
    end

    checkAndRespawn(DrogueBoi)
    checkAndRespawn(StickBoi)
    checkAndRespawn(SlowBoi)
    checkAndRespawn(BigDaddy)

    -- Schedule the next check
    timer.scheduleFunction(monitorFuel, nil, timer.getTime() + 1800)
end

-- Initial spawn of the groups
spawnGroup(DrogueBoi)
spawnGroup(StickBoi)
spawnGroup(SlowBoi)
spawnGroup(BigDaddy)

-- Start monitoring fuel levels
monitorFuel()
