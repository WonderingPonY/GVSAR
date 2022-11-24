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

function GRIDZONEMAKER() -- Function to make colour changing squares around the MGRS Grids
  for i, gzone in pairs(env.mission.triggers.zones) do
    --env.info(dump(gzone["properties"]))
    if (gzone["properties"] and gzone["properties"][1] and gzone["properties"][1]["value"] == "gridsquare") then -- Looks for the Properties in the mission file. Then picks out Property 1 with the specific value
      --env.info(gzone["zoneId"]+30000) 
      gid = gzone["zoneId"]+30000 -- The Zone ID PLUS 30000. This prevents some overlap with other objects in game that are the same ID
      gverticies = gzone["verticies"] -- The Zone Verticies. These are the points of the Zones
      four = {x = gverticies[4]["x"], y = 0, z = gverticies[4]["y"]} --Top Left
      three = {x = gverticies[3]["x"], y = 0, z = gverticies[3]["y"]} --Top Right
      two = {x = gverticies[2]["x"], y = 0, z = gverticies[2]["y"]} --Bottom Right
      one = {x = gverticies[1]["x"], y = 0, z = gverticies[1]["y"]} --Bottom Left
      trigger.action.lineToAll(-1,gid,four,three,{192,192,192,1} , 5) -- Makes the line, and the colour of the line
      gid = gid+30000
      trigger.action.lineToAll(-1,gid,one,two,{192,192,192,1} , 5)
      gid = gid+30000
      trigger.action.lineToAll(-1,gid,four,one,{192,192,192,1} , 5)
      gid = gid+30000
      trigger.action.lineToAll(-1,gid,three,two,{192,192,192,1} , 5)
    end
  end
end
GRIDZONEMAKER()

TimerLoopTime = 60 -- 1 minute timer

function ZONESCANNER(timeloop, time) -- Funtion to search for contested Zones in a timeloop
  env.info("-------------------RUNNING ZONE SCANNER------------------------") -- Tells if the function is running in the DCS log
  for i, gzone in pairs(env.mission.triggers.zones) do
    --env.info(dump(gzone["properties"]))
    if (gzone["properties"][1] and gzone["properties"][1]["value"] == "gridsquare") then
      zn = gzone["name"] -- Gets the Airbase name
      BLUEFORCE = ScanGridZone(Object.Category.UNIT, coalition.side.BLUE, zn, gzone["verticies"]) -- Scans the Zones for BLUE ground Units
      REDFORCE = ScanGridZone(Object.Category.UNIT, coalition.side.RED, zn, gzone["verticies"]) -- Scans the Zones for RED ground units
      --env.info("")
      gid = gzone["zoneId"]+30000 -- Gets the listed airbase ID
      --env.info(zn)
      --env.info(dump(BLUEZONE))
      --env.info(dump(REDZONE))
      if REDFORCE and BLUEFORCE == nil then -- RED forces are seen in the Zone
        --env.info("")
        trigger.action.setMarkupColor(gid,{255,0,0,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,0,0,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,0,0,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,0,0,1})-- Changes the colour of the marker
        --trigger.action.outText(zn.."is RED", 15) -- Tells the players if the Zone is RED
      end
      if BLUEFORCE and REDFORCE == nil then -- BLUE forces are seen in the Zone
        trigger.action.setMarkupColor(gid,{0,0,255,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{0,0,255,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{0,0,255,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{0,0,255,1})-- Changes the colour of the marker
        --trigger.action.outText(zn.."is BLUE", 15) -- Tells the players if the Zone is BLUE
      end
      if BLUEFORCE and REDFORCE then -- Blue and Red forces are seen in the Zone
        trigger.action.setMarkupColor(gid,{255,255,0,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,255,0,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,255,0,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,255,0,1})-- Changes the colour of the marker
        --trigger.action.outText(zn.."is being contested", 15) -- Tells the players if the Zone has is Contested
      end
      if BLUEFORCE == nil and REDFORCE == nil then -- No forces are seen in the Zone
        trigger.action.setMarkupColor(gid,{255,255,255,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,255,255,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,255,255,1})
        gid = gid+30000
        trigger.action.setMarkupColor(gid,{255,255,255,1})-- Changes the colour of the marker
        --trigger.action.outText(zn.."is empty", 15) -- Tells the players if the Zone has no one in it
      end
    end
  end
  return time + TimerLoopTime -- Returns to the start of the loop
end

timer.scheduleFunction(ZONESCANNER, 53, timer.getTime() + TimerLoopTime) -- Schedule timer for the Contested Function