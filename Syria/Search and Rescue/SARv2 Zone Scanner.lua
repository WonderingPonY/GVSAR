--[[
                            ___________ _
  \/                    __/   .::::.-'-(/-/)
                     _/:  .::::.-' .-'\/\_`*******            __ (_))
        \/          /:  .::::./   -._-.  d\|                 (_))_(__))
                     /: (""""/    '.  (__/||             (_))__(_))--(__))
                      \::).-'  -._  \/ \\/\|
              __ _ .-'`)/  '-'. . '. |  (i_O
          .-'      \       -'      '\|
     _ _./      .-'|       '.  (    \\                           % % %
  .-'   :      '_  \         '-'\  /|/      @ @ @               % % % %
 /      )\_      '- )_________.-|_/^\      @ @ @@@             % %\/% %
 (   .-'   )-._-:  /        \(/\'-._ `.     @|@@@@@              ..|........
  (   )  _//_/|:  /          `\()   `\_\     |/_@@               )'-._.-._.-
   ( (   \()^_/)_/             )/      \\    /                  /   /
    )  _.-\\.\(_)__._.-'-.-'-.//_.-'-.-.)\-'/._                /
.-.-.-'   _o\ \\\     '::'   (o_ '-.-' |__\'-.-;~ ~ ~ ~ ~ ~ ~~/   /\
          \ /  \\\__          )_\    .:::::::.-'\            '- - -|
     :::''':::::^)__\:::::::::::::::::'''''''-.  \                  '- - - -
    :::::::  '''''''''''   ''''''''''''':::. -'\  \
_____':::::_____________________________________\__\_________________________
___________________________GRACEY'S VILLAGE__________________________________
_________________________ALWAYS BE A UNICORN_________________________________
________________________DISCORD.GG/wubkxQHstC________________________________
--]]
function ScanZone(zoneName, groupName)

    local foundUnits = {}

    if trigger.misc.getZone(zoneName) ~= nil then

        local searchZone = trigger.misc.getZone(zoneName)

        -- new sphere searchVolume from searchZone
        local searchVolume = {
            ["id"] = world.VolumeType.SPHERE,
            ["params"] = {
                ["point"] = searchZone.point,
                ["radius"] = searchZone.radius,
            }
        }

        local foundunit = function(unit, val)
          foundGroup = unit:getGroup():getName()
          table.insert(foundUnits, foundGroup)
        end
        -- search the volume for an object category
        world.searchObjects(1, searchVolume, foundunit)

    end

    if #foundUnits > 0 then
        -- return the found units
        return foundUnits
    end

    -- return nil if no found units
    return nil
end

function ScanSquareZone(zoneName, groupName)

    local foundUnits = {}

    if trigger.misc.getZone(zoneName) ~= nil then

        missionZone = nil
        local searchZone = trigger.misc.getZone(zoneName)
        for i, gzone in pairs(env.mission.triggers.zones) do
          if gzone["name"] == zoneName then
            missionZone = gzone
          end
        end
        if missionZone then
          -- new sphere searchVolume from searchZone
          local searchVolume = {
              ["id"] = world.VolumeType.BOX,
              ["params"] = {
                  ["min"] = {x = missionZone["verticies"][1]["x"], y = 0, z = missionZone["verticies"][1]["y"]}, --Bottom Left
                  ["max"] = {x = missionZone["verticies"][3]["x"], y = 50000, z = missionZone["verticies"][3]["y"]}, --Top Right
              }
          }

          local foundunit = function(unit, val)
            foundGroup = unit:getGroup():getName()
            table.insert(foundUnits, foundGroup)
          end
          -- search the volume for an object category
          world.searchObjects(1, searchVolume, foundunit)

      end
    end

    if #foundUnits > 0 then
        -- return the found units
        return foundUnits
    end

    -- return nil if no found units
    return nil
end
