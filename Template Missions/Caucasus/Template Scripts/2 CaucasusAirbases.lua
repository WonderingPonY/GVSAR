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

TimerLoopTime = 300 -- 5 minute timer
--Set up functions to run when a unit captures an airbase
AIRBASECAPTUREEVENTHANDLER = {}
function AIRBASECAPTUREEVENTHANDLER:onEvent(Event) -- Event handler for Airbases being captured
  if Event.id == world.event.S_EVENT_BASE_CAPTURED then
    if Event.initiator then
      if (Event.initiator:getCoalition() == 1) then -- If the event initiator is RED then it will continue
        baseName = Event.place:getName(Airbase) --Gets airbase name
        baseID = (Event.place:getID(Airbase) + 100000) -- Get airbase ID
        trigger.action.outText("Red Forces have captured Airbase ".. baseName,30) -- Tells Players that the airbase has been captured
        trigger.action.setMarkupColor(baseID,{1,0,0,1}) -- Sets the colour of the marker around the airbase
      end
      if (Event.initiator:getCoalition() == 2) then
        baseName = Event.place:getName(Airbase)
        baseID = (Event.place:getID(Airbase) + 100000)
        trigger.action.setMarkupColor(baseID,{0,0,1,1})
        trigger.action.outText("Blue Forces have captured Airbase ".. baseName,30)
      end
    end
  end
end



AIRBASECIRCLEMAKER = {}
function AIRBASECIRCLEMAKER() -- Function to make circles around all airbases on the map
  rAirbases = coalition.getAirbases(1) -- Gets the airbases that start as RED
  --env.info("Red Airbases" .. dump(rAirbases)) -- Puts the airbases found that are RED in the log
  for i, rab in pairs(rAirbases) do -- Looks through the table
    rPoint = Airbase.getPoint(rab) -- Is the point(vec3) of the airbase
    rBaseID = (Airbase.getID(rab) + 100000) -- Is the ID of the airbase
    trigger.action.circleToAll(-1 , rBaseID , rPoint , 1981 , {1,0,0,1} , {0,0,0,0} , 5) -- Creates the marker at the airfield in RED
  end
  bAirbases = coalition.getAirbases(2) -- Gets the airbases that start as BLUE
  --env.info("Blue Airbases" .. dump(bAirbases))
  for i, bab in pairs(bAirbases) do
    bPoint = Airbase.getPoint(bab)
    bBaseID = (Airbase.getID(bab) + 100000)
    trigger.action.circleToAll(-1 , bBaseID , bPoint , 1981 , {0,0,1,1} , {0,0,0,0} , 5)
  end
  nAirbases = coalition.getAirbases(0) -- Gets the airbases that start as Neutral
  --env.info("Neutral Airbases" .. dump(nAirbases))
  for i, nab in pairs(nAirbases) do
    nPoint = Airbase.getPoint(nab)
    nBaseID = (Airbase.getID(nab) + 100000)
    trigger.action.circleToAll(-1 , nBaseID , nPoint , 1981 , {192,192,192,1} , {0,0,0,0} , 5)
  end
end


function AIRBASECONTESTED(timeloop, time) -- Funtion to search for contested Zones in a timeloop
  env.info("RUNNING CONTESTED SCANNER") -- Tells if the function is running in the DCS log
  for i, abz in pairs(env.mission.triggers.zones) do
    --env.info(dump(abz["properties"]))
    if (abz["properties"][1] and abz["properties"][1]["value"] == "airbasezone") then
      REDFORCES = ScanZone(Object.Category.UNIT, coalition.side.BLUE, abz["name"]) -- Scans the Zones for BLUE ground Units
      BLUEFORCES = ScanZone(Object.Category.UNIT, coalition.side.RED, abz["name"]) -- Scans the Zones for RED ground units
      env.info(abz)
      ab = Airbase.getByName(abz["name"]) -- Gets the Airbase name
      abid = (ab.getID(ab) + 100000) -- Gets the listed airbase ID
      if BLUEFORCES and REDFORCES then -- RED and BLUE forces are seen in the Zone
        trigger.action.setMarkupColor(abid , {255,255,0,1} ) -- Changes the colour of the marker
        trigger.action.outText(abz["name"].." is being contested", 15) -- Tells the players if the Zone is contested
      end
      if BLUEFORCES == nil and REDFORCES == nil then
        trigger.action.setMarkupColor(abid , {255,255,255,1} )
        trigger.action.outText(abz["name"].." is not controlled", 15)
      end
    end
  end
  return time + TimerLoopTime -- Returns to the start of the loop
end

timer.scheduleFunction(AIRBASECONTESTED, 53, timer.getTime() + TimerLoopTime) -- Schedule timer for the Contested Function
timer.scheduleFunction(AIRBASECIRCLEMAKER, 53, timer.getTime() + 10) -- Schedule timer for the Circles around the airbases
world.addEventHandler(AIRBASECAPTUREEVENTHANDLER) -- Scheduler for the capture of airbases
