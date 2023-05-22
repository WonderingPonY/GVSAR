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
________________________DISCORD.GG/graceysvillage________________________________
--]]

--THIS IS FOR DUMPING THE INFORMATION SO WE CAN USE THE INFORMATION LATER
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

-- function toDegreesMinutesAndSeconds(coordinate,char)
--   env.info(coordinate)
--     absolute = math.abs(coordinate)
--     degrees = math.floor(absolute)
--     minutesNotTruncated = (absolute - degrees) * 60
--     minutes = math.floor(minutesNotTruncated)
--     seconds = math.floor((minutesNotTruncated - minutes) * 60)
--
--     return char..degrees.."°"..minutes.."."..seconds
-- end



PLAYERENTERSLOTEVENTHANDLER = {}
function PLAYERENTERSLOTEVENTHANDLER:onEvent(Event) -- Event handler for Airbases being captured
  if Event.id == world.event.S_EVENT_PLAYER_ENTER_UNIT then
    if Event.initiator then
      if (Event.initiator:getCoalition() == 1) and (Event.initiator:getDesc().category == 2) then -- If the event initiator is RED then it will continue
        -- env.info("RED PLAYER ENTERED GROUND UNIT-----------------------")
        -- trigger.action.outText("RED PLAYER ENTERED GROUND UNIT-----------------",20)
      end
    end
  end
end

AIAIRSPANEVENTHANDLER = {}
function AIAIRSPANEVENTHANDLER:onEvent(Event) -- Event handler for Airbases being captured
  if Event.id == world.event.S_EVENT_BIRTH then
    if Event.initiator then
      if (Event.initiator:getCoalition() == 2) and (Event.initiator:getDesc().category == 0) and (Event.initiator:getTypeName() == "C-47") then -- If the event initiator is BLUE & an Aircraft then it will not do anything
        --trigger.action.outText("Penissssssssssssssssssssssssssssssssssssssssssssssssssssssssssss", 60)
      elseif (Event.initiator:getCoalition() == 2) and (Event.initiator:getDesc().category == 0) then
        -- env.info("BLUE AIR HAS SPAWNED")
        -- trigger.action.outText("BLUE AIR HAS SPAWNED-----------------",20)
        -- trigger.action.outText(Event.initiator:getName(),20)
        unit = Unit.getByName(Event.initiator:getName())
        unitGroup = unit:getGroup():getName()
        -- trigger.action.outText(unitGroup,20)
        mooseGroup = GROUP:FindByName(unitGroup)
        mooseGroup:StartUncontrolled(120)
      elseif (Event.initiator:getCoalition() == 1) and (Event.initiator:getDesc().category == 0) then
        unit = Unit.getByName(Event.initiator:getName())
        unitGroup = unit:getGroup():getName()
        -- trigger.action.outText(unitGroup,20)
        mooseGroup = GROUP:FindByName(unitGroup)
        mooseGroup:StartUncontrolled(120)
      end
    end
  end
 end

-- commandertable = {"instructor","artillery_commander","forward_observer"}

-- warehouseCommandsMenu = missionCommands.addSubMenu("Warehouse Commands")

-- warehouseMenu = missionCommands.addSubMenu("Warehouses", warehouseCommandsMenu)
-- -- CHERBOURG
-- warehouseCherbourgPortMenu = missionCommands.addSubMenu("Cherbourg", warehouseMenu)
-- warehouseCherbourgPortWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPortMenu)
-- warehouseCherbourgPortTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPortMenu)
-- warehouseCherbourgPortInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPortMenu)
-- warehouseCherbourgPortAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPortMenu)
-- -- Lessay
-- warehouseLessayMenu = missionCommands.addSubMenu("Lessay", warehouseMenu)
-- warehouseLessayWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseLessayMenu)
-- warehouseLessayTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseLessayMenu)
-- warehouseLessayInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseLessayMenu)
-- warehouseLessayAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseLessayMenu)
-- warehouseCherbourgPorttoLessayMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehouseLessayMenu)
-- warehouseCherbourgPorttoLessayWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttoLessayMenu)
-- warehouseCherbourgPorttoLessayTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttoLessayMenu)
-- warehouseCherbourgPorttoLessayInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttoLessayMenu)
-- warehouseCherbourgPorttoLessayAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttoLessayMenu)
-- -- Brucheville
-- warehouseBruchevilleMenu = missionCommands.addSubMenu("Brucheville", warehouseMenu)
-- warehouseBruchevilleWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseBruchevilleMenu)
-- warehouseBruchevilleTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseBruchevilleMenu)
-- warehouseBruchevilleInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseBruchevilleMenu)
-- warehouseBruchevilleAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseBruchevilleMenu)
-- warehouseCherbourgPorttoBruchevilleMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehouseBruchevilleMenu)
-- warehouseCherbourgPorttoBruchevilleWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttoBruchevilleMenu)
-- warehouseCherbourgPorttoBruchevilleTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttoBruchevilleMenu)
-- warehouseCherbourgPorttoBruchevilleInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttoBruchevilleMenu)
-- warehouseCherbourgPorttoBruchevilleAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttoBruchevilleMenu)
-- -- -- Carentan
-- -- warehouseCarentanMenu = missionCommands.addSubMenu("Carentan", warehouseMenu)
-- -- warehouseCarentanWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCarentanMenu)
-- -- warehouseCarentanTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCarentanMenu)
-- -- warehouseCarentanInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCarentanMenu)
-- -- warehouseCarentanAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCarentanMenu)
-- -- warehouseCherbourgPorttoCarentanMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehouseCarentanMenu)
-- -- warehouseCherbourgPorttoCarentanWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttoCarentanMenu)
-- -- warehouseCherbourgPorttoCarentanTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttoCarentanMenu)
-- -- warehouseCherbourgPorttoCarentanInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttoCarentanMenu)
-- -- warehouseCherbourgPorttoCarentanAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttoCarentanMenu)
-- -- -- St Lo
-- -- warehousewarehouseStLoFactoryMenu = missionCommands.addSubMenu("StLo Factory", warehouseMenu)
-- -- warehousewarehouseStLoFactoryWheeledMenu = missionCommands.addSubMenu("Wheeled", warehousewarehouseStLoFactoryMenu)
-- -- warehousewarehouseStLoFactoryTrackedMenu = missionCommands.addSubMenu("Tracked", warehousewarehouseStLoFactoryMenu)
-- -- warehousewarehouseStLoFactoryInfantryMenu = missionCommands.addSubMenu("Infantry", warehousewarehouseStLoFactoryMenu)
-- -- warehousewarehouseStLoFactoryAircraftMenu = missionCommands.addSubMenu("Aircraft", warehousewarehouseStLoFactoryMenu)
-- -- warehouseCherbourgPorttowarehouseStLoFactoryMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehousewarehouseStLoFactoryMenu)
-- -- warehouseCherbourgPorttowarehouseStLoFactoryWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttowarehouseStLoFactoryMenu)
-- -- warehouseCherbourgPorttowarehouseStLoFactoryTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttowarehouseStLoFactoryMenu)
-- -- warehouseCherbourgPorttowarehouseStLoFactoryInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttowarehouseStLoFactoryMenu)
-- -- warehouseCherbourgPorttowarehouseStLoFactoryAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttowarehouseStLoFactoryMenu)
-- -- -- Carpiquet
-- -- warehouseCarpiquetMenu = missionCommands.addSubMenu("Carpiquet", warehouseMenu)
-- -- warehouseCarpiquetWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCarpiquetMenu)
-- -- warehouseCarpiquetTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCarpiquetMenu)
-- -- warehouseCarpiquetInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCarpiquetMenu)
-- -- warehouseCarpiquetAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCarpiquetMenu)
-- -- warehouseCherbourgPorttoCarpiquetMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehouseCarpiquetMenu)
-- -- warehouseCherbourgPorttoCarpiquetWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttoCarpiquetMenu)
-- -- warehouseCherbourgPorttoCarpiquetTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttoCarpiquetMenu)
-- -- warehouseCherbourgPorttoCarpiquetInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttoCarpiquetMenu)
-- -- warehouseCherbourgPorttoCarpiquetAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttoCarpiquetMenu)
-- -- -- Le Mele Sur
-- -- warehouseLeMeleSurMenu = missionCommands.addSubMenu("Le Mele Sur", warehouseMenu)
-- -- warehouseLeMeleSurWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseLeMeleSurMenu)
-- -- warehouseLeMeleSurTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseLeMeleSurMenu)
-- -- warehouseLeMeleSurInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseLeMeleSurMenu)
-- -- warehouseLeMeleSurAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseLeMeleSurMenu)
-- -- warehouseCherbourgPorttoLeMeleSurMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehouseLeMeleSurMenu)
-- -- warehouseCherbourgPorttoLeMeleSurWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttoLeMeleSurMenu)
-- -- warehouseCherbourgPorttoLeMeleSurTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttoLeMeleSurMenu)
-- -- warehouseCherbourgPorttoLeMeleSurInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttoLeMeleSurMenu)
-- -- warehouseCherbourgPorttoLeMeleSurAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttoLeMeleSurMenu)
-- -- -- Bernay Factory
-- -- warehouseBernayFactoryMenu = missionCommands.addSubMenu("Bernay Factory", warehouseMenu)
-- -- warehouseBernayFactoryWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseBernayFactoryMenu)
-- -- warehouseBernayFactoryTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseBernayFactoryMenu)
-- -- warehouseBernayFactoryInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseBernayFactoryMenu)
-- -- warehouseBernayFactoryAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseBernayFactoryMenu)
-- -- warehouseCherbourgPorttoBernayFactoryMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehouseBernayFactoryMenu)
-- -- warehouseCherbourgPorttoBernayFactoryWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttoBernayFactoryMenu)
-- -- warehouseCherbourgPorttoBernayFactoryTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttoBernayFactoryMenu)
-- -- warehouseCherbourgPorttoBernayFactoryInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttoBernayFactoryMenu)
-- -- warehouseCherbourgPorttoBernayFactoryAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttoBernayFactoryMenu)
-- -- -- Rouen Factory
-- -- warehouseRouenFactoryMenu = missionCommands.addSubMenu("Rouen Factory", warehouseMenu)
-- -- warehouseRouenFactoryWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseRouenFactoryMenu)
-- -- warehouseRouenFactoryTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseRouenFactoryMenu)
-- -- warehouseRouenFactoryInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseRouenFactoryMenu)
-- -- warehouseRouenFactoryAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseRouenFactoryMenu)
-- -- warehouseCherbourgPorttoRouenFactoryMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehouseRouenFactoryMenu)
-- -- warehouseCherbourgPorttoRouenFactoryWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttoRouenFactoryMenu)
-- -- warehouseCherbourgPorttoRouenFactoryTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttoRouenFactoryMenu)
-- -- warehouseCherbourgPorttoRouenFactoryInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttoRouenFactoryMenu)
-- -- warehouseCherbourgPorttoRouenFactoryAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttoRouenFactoryMenu)
-- -- -- Port Le Harve
-- -- warehouseLeHavrePortMenu = missionCommands.addSubMenu("Port Le Harve", warehouseMenu)
-- -- warehouseLeHavrePortWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseLeHavrePortMenu)
-- -- warehouseLeHavrePortTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseLeHavrePortMenu)
-- -- warehouseLeHavrePortInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseLeHavrePortMenu)
-- -- warehouseLeHavrePortAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseLeHavrePortMenu)
-- -- warehouseCherbourgPorttoLeHavrePortMenu = missionCommands.addSubMenu("Transfer Units from Cherbourg", warehouseLeHavrePortMenu)
-- -- warehouseCherbourgPorttoLeHavrePortWheeledMenu = missionCommands.addSubMenu("Wheeled", warehouseCherbourgPorttoLeHavrePortMenu)
-- -- warehouseCherbourgPorttoLeHavrePortTrackedMenu = missionCommands.addSubMenu("Tracked", warehouseCherbourgPorttoLeHavrePortMenu)
-- -- warehouseCherbourgPorttoLeHavrePortInfantryMenu = missionCommands.addSubMenu("Infantry", warehouseCherbourgPorttoLeHavrePortMenu)
-- -- warehouseCherbourgPorttoLeHavrePortAircraftMenu = missionCommands.addSubMenu("Aircraft", warehouseCherbourgPorttoLeHavrePortMenu)

-- PLAYERENTERS = {}
-- function PLAYERENTERS:onEvent(Event)
--   if Event.id == world.event.S_EVENT_PLAYER_ENTER_UNIT then
--     env.info("PLAYER ENTERED A COMMAND SLOT")
--     unit = Event.initiator
--     unitGroup = unit:getGroup()
--     env.info(unitGroup)
--     if (Event.initiator:getCoalition() == 2) then -- If the PLayer is BLUE they will get these commands
--       -- CHERBOURG
--         -- Tracked Vehicles
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn Sherman Group(3)", warehouseCherbourgPortTrackedMenu, SPAWNUNITSCHERBOURG, "Sherman")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn APCHalfTrack Group(3)", warehouseCherbourgPortTrackedMenu, SPAWNUNITSCHERBOURG, "APCM2A1")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn 105Artillery Group(3)", warehouseCherbourgPortTrackedMenu, SPAWNUNITSCHERBOURG, "105Artillery")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn 155Artillery Group(3)", warehouseCherbourgPortTrackedMenu, SPAWNUNITSCHERBOURG, "155Artillery")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn SPGM10 Group(3)", warehouseCherbourgPortTrackedMenu, SPAWNUNITSCHERBOURG, "SPGM10")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn M4A1Firefly Group(3)", warehouseCherbourgPortTrackedMenu, SPAWNUNITSCHERBOURG, "M4A1Firefly")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn TM4Command(1)", warehouseCherbourgPortTrackedMenu, SPAWNUNITSCHERBOURG, "TM4Command")
--         -- Wheeled Vehicles
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn JimmyTruck Ammo(1)", warehouseCherbourgPortWheeledMenu, SPAWNUNITSCHERBOURG, "JimmyTruck")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn WillyJeep(1)", warehouseCherbourgPortWheeledMenu, SPAWNUNITSCHERBOURG, "WillyJeep")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn M8Greyhound Group(3)", warehouseCherbourgPortTrackedMenu, SPAWNUNITSCHERBOURG, "M8Greyhound")
--         -- Infantry
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn Infantry Group(5)", warehouseCherbourgPortInfantryMenu, SPAWNUNITSCHERBOURG, "dudes")
--         -- Aircraft
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn P47D40 Group(2)", warehouseCherbourgPortAircraftMenu, SPAWNUNITSCHERBOURG, "P-47D-40")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn P51D30 Group(2)", warehouseCherbourgPortAircraftMenu, SPAWNUNITSCHERBOURG, "P-51D-30-NA")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn Spitfire Group(2)", warehouseCherbourgPortAircraftMenu, SPAWNUNITSCHERBOURG, "Spitfire LF Mk.IX")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn Mosquito Group(2)", warehouseCherbourgPortAircraftMenu, SPAWNUNITSCHERBOURG, "Mosquito FB Mk.VI")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn B17G Group(2)", warehouseCherbourgPortAircraftMenu, SPAWNUNITSCHERBOURG, "B-17G")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Spawn A20G Group(2)", warehouseCherbourgPortAircraftMenu, SPAWNUNITSCHERBOURG, "A20G")

--         --Transfer Units
--         ---Cherbourg to Lessay
--         ---AIRCRAFT
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Spitfire Group", warehouseCherbourgPorttoLessayAircraftMenu, TRANSFERUNITS, "Spitfire Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer P-47D-40 Group", warehouseCherbourgPorttoLessayAircraftMenu, TRANSFERUNITS, "P-47D-40 Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer P-51D-30-NA Group", warehouseCherbourgPorttoLessayAircraftMenu, TRANSFERUNITS, "P-51D-30-NA Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Mosquito FB Mk.VI Group", warehouseCherbourgPorttoLessayAircraftMenu, TRANSFERUNITS, "Mosquito FB Mk.VI Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer B17G Group", warehouseCherbourgPorttoLessayAircraftMenu, TRANSFERUNITS, "B17G Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer A20G Group", warehouseCherbourgPorttoLessayAircraftMenu, TRANSFERUNITS, "A20G Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer C47 Group", warehouseCherbourgPorttoLessayAircraftMenu, TRANSFERUNITS, "C47 Group to Lessay")
--         ---TRACKED
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Sherman Group", warehouseCherbourgPorttoLessayTrackedMenu, TRANSFERUNITS, "Sherman Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer APCM2A1 Group", warehouseCherbourgPorttoLessayTrackedMenu, TRANSFERUNITS, "APCM2A1 Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer 105Artillery Group", warehouseCherbourgPorttoLessayTrackedMenu, TRANSFERUNITS, "105Artillery Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer 155Artillery Group", warehouseCherbourgPorttoLessayTrackedMenu, TRANSFERUNITS, "155Artillery Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer SPGM10 Group", warehouseCherbourgPorttoLessayTrackedMenu, TRANSFERUNITS, "SPGM10 Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer M4A1Firefly Group", warehouseCherbourgPorttoLessayTrackedMenu, TRANSFERUNITS, "M4A1Firefly Group to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer TM4Command Group", warehouseCherbourgPorttoLessayTrackedMenu, TRANSFERUNITS, "TM4Command Group to Lessay")
--         ---WHEELED
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Jimmy Truck", warehouseCherbourgPorttoLessayWheeledMenu, TRANSFERUNITS, "JimmyTruck to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer WillyJeep", warehouseCherbourgPorttoLessayWheeledMenu, TRANSFERUNITS, "WillyJeep to Lessay")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer M8Greyhound Group", warehouseCherbourgPorttoLessayTrackedMenu, TRANSFERUNITS, "M8Greyhound Group to Lessay")
--         ---INFANTRY
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Infantry Group", warehouseCherbourgPorttoLessayInfantryMenu, TRANSFERUNITS, "Infantry Group to Lessay")

--         ---Cherbourg to Brucheville
--         ---AIRCRAFT
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer P-47D-40 Group", warehouseCherbourgPorttoBruchevilleAircraftMenu, TRANSFERUNITS, "P-47D-40 Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer P-51D-30-NA Group", warehouseCherbourgPorttoBruchevilleAircraftMenu, TRANSFERUNITS, "P-51D-30-NA Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Spitfire Group", warehouseCherbourgPorttoBruchevilleAircraftMenu, TRANSFERUNITS, "Spitfire Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Mosquito FB Mk.VI Group", warehouseCherbourgPorttoBruchevilleAircraftMenu, TRANSFERUNITS, "Mosquito FB Mk.VI Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer B17G Group", warehouseCherbourgPorttoBruchevilleAircraftMenu, TRANSFERUNITS, "B17G Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer A20G Group", warehouseCherbourgPorttoBruchevilleAircraftMenu, TRANSFERUNITS, "A20G Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer C47 Group", warehouseCherbourgPorttoBruchevilleAircraftMenu, TRANSFERUNITS, "C47 Group to Brucheville")
--         ---TRACKED
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Sherman Group", warehouseCherbourgPorttoBruchevilleTrackedMenu, TRANSFERUNITS, "Sherman Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer APCM2A1 Group", warehouseCherbourgPorttoBruchevilleTrackedMenu, TRANSFERUNITS, "APCM2A1 Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer 105Artillery Group", warehouseCherbourgPorttoBruchevilleTrackedMenu, TRANSFERUNITS, "105Artillery Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer 155Artillery Group", warehouseCherbourgPorttoBruchevilleTrackedMenu, TRANSFERUNITS, "155Artillery Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer SPGM10 Group", warehouseCherbourgPorttoBruchevilleTrackedMenu, TRANSFERUNITS, "SPGM10 Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer M4A1Firefly Group", warehouseCherbourgPorttoBruchevilleTrackedMenu, TRANSFERUNITS, "M4A1Firefly Group to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer TM4Command Group", warehouseCherbourgPorttoBruchevilleTrackedMenu, TRANSFERUNITS, "TM4Command Group to Brucheville")
--         ---WHEELED
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Jimmy Truck", warehouseCherbourgPorttoBruchevilleWheeledMenu, TRANSFERUNITS, "JimmyTruck to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer WillyJeep", warehouseCherbourgPorttoBruchevilleWheeledMenu, TRANSFERUNITS, "WillyJeep to Brucheville")
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer M8Greyhound Group", warehouseCherbourgPorttoBruchevilleTrackedMenu, TRANSFERUNITS, "M8Greyhound Group to Brucheville")
--         ---INFANTRY
--         missionCommands.addCommandForGroup(unitGroup:getID(),"Transfer Infantry Group", warehouseCherbourgPorttoBruchevilleInfantryMenu, TRANSFERUNITS, "Infantry Group to Brucheville")
--     end
--   end
-- end

-- function TRANSFERUNITS(transfer)
--   --warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "Spitfire", 1)------ Lessay Requests units from Cherbourg
--   --Lessay
--   if transfer == "Spitfire Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "Spitfire", 1)
--   elseif transfer == "P-47D-40 Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "P47D40", 1)
--   elseif transfer == "P-51D-30-NA Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "P51D30", 1)
--   elseif transfer == "Mosquito FB Mk.VI Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "Mosquito", 1)
--   elseif transfer == "A20G Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "A20G", 1)
--   elseif transfer == "B17G Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "B17G", 1)
--   elseif transfer == "C47 Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "C47", 1)
--   elseif transfer == "Sherman Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "Sherman3", 1)
--   elseif transfer == "SPGM10 Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "SPGM10", 1)
--   elseif transfer == "M4A1Firefly Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "M4A1Firefly", 1)
--   elseif transfer == "TM4Command Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "TM4Command", 1)
--   elseif transfer == "M8Greyhound Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "M8Greyhound", 1)
--   elseif transfer == "APCM2A1 Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "APCM2A1", 1)
--   elseif transfer == "105Artillery Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "105Artillery", 1)
--   elseif transfer == "155Artillery Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "155Artillery", 1)
--   elseif transfer == "JimmyTruck Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "JimmyTruck", 1)
--   elseif transfer == "WillyJeep Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "WillyJeep", 1)
--   elseif transfer == "Infantry Group to Lessay" then
--     warehouseCherbourgPort:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "InfantryGarand6", 1)
--   --Brucheville
--   elseif transfer == "Spitfire Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "Spitfire", 1)
--   elseif transfer == "P-47D-40 Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "P47D40", 1)
--   elseif transfer == "P-51D-30-NA Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "P51D30", 1)
--   elseif transfer == "Mosquito FB Mk.VI Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "Mosquito", 1)
--   elseif transfer == "A20G Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "A20G", 1)
--   elseif transfer == "B17G Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "B17G", 1)
--   elseif transfer == "C47 Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "C47", 1)
--   elseif transfer == "Sherman Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "Sherman3", 1)
--   elseif transfer == "SPGM10 Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "SPGM10", 1)
--   elseif transfer == "M4A1Firefly Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "M4A1Firefly", 1)
--   elseif transfer == "TM4Command Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "TM4Command", 1)
--   elseif transfer == "M8Greyhound Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "M8Greyhound", 1)
--   elseif transfer == "APCM2A1 Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "APCM2A1", 1)
--   elseif transfer == "105Artillery Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "105Artillery", 1)
--   elseif transfer == "155Artillery Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "155Artillery", 1)
--   elseif transfer == "JimmyTruck Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "JimmyTruck", 1)
--   elseif transfer == "WillyJeep Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "WillyJeep", 1)
--   elseif transfer == "Infantry Group to Brucheville" then
--     warehouseCherbourgPort:AddRequest(warehouseBrucheville, WAREHOUSE.Descriptor.GROUPNAME, "InfantryGarand6", 1)
--   end
-- end

-- function SPAWNUNITSCHERBOURG(spawn) -- This function handles the spawning of the units from the warehouses
--   if spawn == "Sherman" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "Sherman3", 1) --This will make a request to spawn the group in the game
--   elseif spawn == "APCM2A1" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "APCM2A1", 1)
--   elseif spawn == "105Artillery" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "105Artillery", 1)
--   elseif spawn == "155Artillery" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "155Artillery", 1)
--   elseif spawn == "SPGM10" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "SPGM10", 1)
--   elseif spawn == "M4A1Firefly" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "M4A1Firefly", 1)
--   elseif spawn == "TM4Command" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "TM4Command", 1)
--   elseif spawn == "M8Greyhound" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "M8Greyhound", 1)
--   elseif spawn == "JimmyTruck" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "JimmyTruck", 1)
--   elseif spawn == "WillyJeep" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "WillyJeep", 1)
--   elseif spawn == "dudes" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "InfantryGarand6", 1)
--   elseif spawn == "P-47D-40" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "P47D40", 1)
--   elseif spawn == "P-51D-30-NA" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "P51D30", 1)
--   elseif spawn == "Spitfire LF Mk.IX" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "Spitfire", 1)
--   elseif spawn == "Mosquito FB Mk.VI" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "Mosquito", 1)
--   elseif spawn == "A20G" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "A20G", 1)
--   elseif spawn == "B17G" then
--     warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.GROUPNAME, "B17G", 1)
--   end
-- end


-- world.addEventHandler(PLAYERENTERS)
world.addEventHandler(PLAYERENTERSLOTEVENTHANDLER) -- Scheduler for the capture of airbases
world.addEventHandler(AIAIRSPANEVENTHANDLER)
