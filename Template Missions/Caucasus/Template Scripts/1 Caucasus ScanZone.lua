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

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         if type(v) ~= 'table' then
           s = s .. '['..k..'] = "' .. dump(v) .. '",'
         else
           s = s .. '['..k..'] = ' .. dump(v) .. ','
         end
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function table.removekey(table, key)
   local element = table[key]
   table[key] = nil
   return element
end


function ScanZone(category, coalition, zoneName)

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
        -- search the volume for an object category
        world.searchObjects(category, searchVolume, function(obj)

            -- if the found object is of the same coalition, add it to the table
            if obj:getCoalition() == coalition then
                foundUnits[#foundUnits+1] = obj
            end
        end)
    end

    if #foundUnits > 0 then
        -- return the found units
        return foundUnits
    end

    -- return nil if no found units
    return nil
end

-- return an array of object, of matching coalition found in a zone
-- @param #enum category (the object category to search for. eg Object.Category.UNIT)
-- @param #enum coalition (the coalition to search for. eg coalition.side.BLUE)
-- @param #string zoneName (the zone to search in. eg "SAM Zone")
function ScanGridZone(category, coalition, zoneName, verticies)

    local foundUnits = {}

    if trigger.misc.getZone(zoneName) ~= nil then
    env.info(zoneName.." Zone Found*******************************************************************************************")

        local searchZone = trigger.misc.getZone(zoneName)
        -- new sphere searchVolume from searchZone
        local searchVolume = {
            ["id"] = world.VolumeType.BOX,
            ["params"] = {
                ["min"] = {x = verticies[1]["x"], y = 0, z = verticies[1]["y"]}, --Bottom Left
                ["max"] = {x = verticies[3]["x"], y = 50000, z = verticies[3]["y"]}, --Top Right
            }
        }
        env.info(dump(searchVolume).." --------------------------")
        -- search the volume for an object category
        world.searchObjects(category, searchVolume, function(obj)

            -- if the found object is of the same coalition, add it to the table
            if obj:getCoalition() == coalition then
                foundUnits[#foundUnits+1] = obj
            end
        end)
    else 
      env.info(zoneName.." Zone Not Found*******************************************************************************************")
    end

    if #foundUnits > 0 then
        -- return the found units
        return foundUnits
    end

    -- return nil if no found units
    return nil
end