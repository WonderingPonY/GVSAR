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
______________________DISCORD.GG/graceysvillage______________________________
--]]
TimerLoopTime = 17
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
 
 function toDegreesMinutesAndSeconds(coordinate,char)
   env.info(coordinate)
     absolute = math.abs(coordinate)
     degrees = math.floor(absolute)
     minutesNotTruncated = (absolute - degrees) * 60
     minutes = math.floor(minutesNotTruncated)
     seconds = math.floor((minutesNotTruncated - minutes) * 60)
 
     return char..degrees.."°"..minutes.."."..seconds
 end
 
 groupsOnMissions = {}
 groupsOnIsraelMissions = {}
 groupsOnSyriaMissions = {}
 groupsOnTurkeyMissions = {}
 groupsOnCyprusMissions = {}
 groupsOnLebanonMissions = {}
 groupsRegisteredForMissions = {}
 hospitalsTurkey = {
  "Adana Sakirpasa Helipad South",
  "Adana Sakirpasa Helipad North",
  "Adana University Hospital",
  "Adana Yuregir Hospital",
  "Gazipasa Airport",
  "Gaziantep Airport",
  "Sanliurfa Airport"
 }
hospitalsCyprus = {
  "Akrotiri Airport",
  "Ercan Airport",
  "Gecitkale Airport",
  "Kingsfield Airport",
  "Larnaca Airport",
  "Larnaca General Hospital",
  "Limassol General Hospital",
  "Nicosia General Hospital",
  "Paphos Airport",
  "Paphos General Hospital",
  "Pinarbashi Airport"
}
hospitalsSyria = {
  "Aleppo International Airport",
  "Bassel Al-Assad Airport",
  "Damascus International Airport"
}
hospitalsLebanon = {
  "Saint George University Hospital",
  "Rene Mouawad Airport",
  "Nawoura HeliDrome",
  "Rayak Airport"
}
hospitalsIsrael = {
  "Rosh Pina Airport",
  "Haifa Airport",
  "Kiryat Shmona Airport",
  "Rambam Health Care Centre",
  "Caremel Health Care Centre",
  "Eyn Shemer Airport"
}
 hospitalsHeliPads = {
  "Adana Sakirpasa Helipad South",
  "Adana Sakirpasa Helipad North",
  "Adana University Hospital",
  "Adana Yuregir Hospital",
  "Akrotiri Airport",
  "Aleppo International Airport",
  "Bassel Al-Assad Airport",
  "Beirut Rafic International Airport",
  "Carmel Heath Centre",
  "Damascus International Airport",
  "Ercan Airport",
  "Eyn Shemer Airport",
  "Gaziantep Airport",
  "Gecitkale Airport",
  "Haifa Airport",
  "Hatay Airport",
  "Kingsfield Airport",
  "Kiryat Shmona Airport",
  "Lakatamia Airport",
  "Larnaca Airport",
  "Larnaca General Hospital",
  "Limassol General Hospital",
  "Naqoura HeliDrome",
  "Nicosia General Hospital",
  "Paphos Airport",
  "Paphos General Hospital",
  "Pinarbashi Airport",
  "Rambam Health Care Campus",
  "Rayak Airport",
  "Rene Mouawad Airport",
  "Rosh Pina Airport",
  "Saint George University Hospital",
  "Sanliurfa Airport"
}
 
 --Menu Functions
 function version(groupName)
   group = Group.getByName(groupName)
   trigger.action.outTextForGroup(group:getID(),"Search & Rescue Version 3", 15)
 end
 
 function toDo(groupName)
  group = Group.getByName(groupName)
  if string.find(groupName,"Haifa") then
      trigger.action.outTextForGroup(group:getID(),"You are a SAR pilot flying out of Haifa, Israel.", 40)
  elseif string.find(groupName,"Damascus") then
      trigger.action.outTextForGroup(group:getID(),"Your are at Damasucus", 40)
  end
end
 
 function missionHelp(groupName)
  group = Group.getByName(groupName)
  trigger.action.outTextForGroup(group:getID(),"SAR missions are given at random intervals. You need to set yourself to Active Duty in the F10 menu to recieve missions.\n\nMissions will be recieved after a period of time. They are all random and without diffuculty selection.", 40)
 end
 
 function displayMissionInfo(params)
   groupid = params[1]
   missioninfo = params[2]
   trigger.action.outTextForGroup(groupid,missioninfo,60)
 end

 --Missions Registration
 function missionRegister(groupName)
  groupsRegisteredForMissions[groupName] = "registered"
  -- add a outtext to tell everyone that a player has registered for missions***********
 end

 --Timed mission
 function missionSelect(var,time)
  for group, registered in pairs(groupsRegisteredForMissions) do
    needsMission = true
    for mission, groupOnMission in pairs(groupsOnMissions) do
      if group == groupOnMission then
        needsMission = false
      end
    end
    if needsMission then
      if string.find(group,"Haifa") then
        zonePickerIsrael(group)
      end
    end
  end
  return time + TimerLoopTime
 end
 
--Mission Builder
function missionBuilder()
  -- if player registered for mission
  -- then select mission pieces from lists
end

 --Mission Functions
function zonePickerIsrael(groupName)
  env.info(groupName.." has asked for a EASY mission")
  ezn = { "IsraelMission1","IsraelMission2"}
  max = (#ezn)
  picked = math.random(1, max)
  count = 0
  while(groupsOnIsraelMissions[ezn[picked]] and count < 10) do
    picked = math.random(1, max)
    count = count +1
  end
  if groupsOnIsraelMissions[ezn[picked]] then
    trigger.action.outText("Unable to get a mission, all missions may be taken", 15)
  else
    groupsOnIsraelMissions[ezn[picked]] = groupName
    groupsOnMissions[ezn[picked]] = groupName
      env.info(dump(groupsOnIsraelMissions))
    env.info(ezn[picked])
    missionsIsrael(ezn[picked],groupName)
  end
end
 
function loadPatient(params)
  unit = Unit.getByName(params[1])
  mission = params[2]
  if areDoorsOpen(unit) then
      trigger.action.outText("Loaded Patient(s)", 15)
      patientLoad = 120
      trigger.action.setUnitInternalCargo(unit:getName(), patientLoad)
      groupname = mission.."-Patient"
      env.info(groupname)
      trigger.action.deactivateGroup(Group.getByName(groupname))
      missionCommands.removeItemForGroup(unit:getGroup():getID(), {[1] = "Patient Menu", [2] = "Load Patient"})
  else
      trigger.action.outTextForGroup(group:getID(),"You need to open your doors to load the Patient!!!", 15)
  end
end
 
 function areDoorsOpen(unit)
   typename = unit:getTypeName()
   doors_open = false
   if typename == "UH-1H" and (unit:getDrawArgumentValue(43) == 1 or  unit:getDrawArgumentValue(44) == 1) then
     doors_open = true
   elseif typename == "Mi-8MT" and (unit:getDrawArgumentValue(38) > 0.8 or  unit:getDrawArgumentValue(86) == 1 or  unit:getDrawArgumentValue(250) < 0) then
     env.info(typename)
     env.info(unit:getDrawArgumentValue(38))
     doors_open = true
   elseif typename == "UH-60L" and (unit:getDrawArgumentValue(401) == 1 or  unit:getDrawArgumentValue(402) == 1) then
     doors_open = true
   end
   return doors_open
 end
 
 function unloadPatient(params)
   unit = Unit.getByName(params[1])
   mission = params[2]
   group = unit:getGroup()
   if areDoorsOpen(unit) then
     unloadPatientDoorsOpen(unit,group,mission)
    else
       trigger.action.outTextForGroup(group:getID(),"You need to open your doors to unload the Patient(s)!!!", 15)
  end
 end
 
 function unloadPatientDoorsOpen(unit,group,mission)
   trigger.action.outText("Unloaded Patient(s)", 15)
   patientUnload = 0
   trigger.action.setUnitInternalCargo(unit:getName(), patientUnload)
   missionCommands.removeItemForGroup(group:getID(), {[1] = "Patient Menu"})
   missionCommands.removeItemForGroup(group:getID(), {[1] = "Rescue Command", [2] = "Mission Info"})
   missionCommands.removeItemForGroup(group:getID(), {[1] = "Rescue Command", [2] = "Cancel Mission"})
   missionCommands.addCommandForGroup(group:getID(), "Rescue Easy", rescueMenu, easyZonePicker, group:getName())
   missionCommands.addCommandForGroup(group:getID(), "Rescue Medium", rescueMenu, mediumZonePicker, group:getName())
   trigger.action.removeMark((group:getID()*51515151))
   trigger.action.effectSmokeStop(mission.."-Smoke")
   scenery = Group.getByName(mission.."-Scenery")
   if scenery then
     trigger.action.deactivateGroup(scenery)
   end
   if string.find(mission,"Easy") then
     groupsOnEasyMissions[mission] = nil
     env.info(dump(groupsOnEasyMissions))
   elseif string.find(mission,"Medium") then
     groupsOnMediumMissions[mission] = nil
     env.info(dump(groupsOnMediumMissions))
   end
 end
 
 function cancelMission(params)
   group = Group.getByName(params[1])
   mission = params[2]
   missiongroupname = mission.."-Patient"
   missiongroup = Group.getByName(missiongroupname)
   if pcall(trigger.action.deactivateGroup,missiongroup) then
     env.info("Mission group deactivated")
   else
     env.info("Mission group FAILED to deactivate")
   end
   trigger.action.effectSmokeStop(mission.."-Smoke")
   scenery = Group.getByName(mission.."-Scenery")
   if scenery then
     trigger.action.deactivateGroup(scenery)
     env.info("Deactivated Scenery")
   end
   scenery2 = Group.getByName(mission.."Group2-Scenery")
   if scenery2 then
     trigger.action.deactivateGroup(scenery2)
     env.info("Deactivated Group2 Scenery")
   end
   missionCommands.removeItemForGroup(group:getID(), {[1] = "Patient Menu"})
   groupsOnMissions[mission] = nil
   groupsOnEasyMissions[mission] = nil
   groupsOnMediumMissions[mission] = nil
   missionCommands.addCommandForGroup(group:getID(), "Rescue Easy", rescueMenu, easyZonePicker, group:getName())
   missionCommands.addCommandForGroup(group:getID(), "Rescue Medium", rescueMenu, mediumZonePicker, group:getName())
   missionCommands.removeItemForGroup(group:getID(), {[1] = "Rescue Command", [2] = "Cancel Mission"})
   missionCommands.removeItemForGroup(group:getID(), {[1] = "Rescue Command", [2] = "Mission Info"})
   trigger.action.outTextForGroup(group:getID(),"Mission Cancelled", 15)
   trigger.action.removeMark((group:getID()*51515151))
 end
 
 -- RADIO MENU
 searchRescueMenu = missionCommands.addSubMenu("Rescue Command")
 
 --Help Menus
 helpMenu = missionCommands.addSubMenu("Help")
 
 --Rescue Mission Menus
 rescueMenu = missionCommands.addSubMenu("Rescue", searchRescueMenu)
 
 
 -- for i, groupName in pairs(groupTable) do
 --  if Group.getByName(groupName) then
 --     foundGroup = Group.getByName(groupName)
 --     groupId = Group.getID(foundGroup)
 --     helpMenuWhatToDo = missionCommands.addCommandForGroup(groupId,"What to do", helpMenu, toDo, groupName)
 --     helpMenuVersion = missionCommands.addCommandForGroup(groupId,"Sar Version", helpMenu, version, groupName)
 --     helpMenuMissions = missionCommands.addCommandForGroup(groupId,"Missions", helpMenu, missionHelp, groupName)
 --     helpme = missionCommands.addCommandForGroup(groupId, "Rescue Easy", rescueMenu, easyZonePicker, groupName)
 --  end
 -- end
 
 
 -- rescueMenuEasy = missionCommands.addCommand("Rescue Easy", rescueMenu, easyZonePicker)
 -- rescueMenuMedium = missionCommands.addCommand("Rescue Medium", rescueMenu, rescueEasy)
 -- rescueMenuHard = missionCommands.addCommand("Rescue Hard", rescueMenu, rescueEasy)
 
 --Search Mission Menus
 -- sarMenu = missionCommands.addSubMenu("Search & Rescue", searchRescueMenu)
 -- sarMenuEasy = missionCommands.addCommand("Search & Rescue Easy", sarMenu, searchEasy)
 -- sarMenuMedium = missionCommands.addCommand("Search & Rescue Medium", sarMenu, searchEasy)
 -- sarMenuHard = missionCommands.addCommand("Search & Rescue Hard", sarMenu, sear
 
 
 MEDEVACEVENTHANDLER = {}
 function MEDEVACEVENTHANDLER:onEvent(Event)
 
     if Event.id == world.event.S_EVENT_LAND then
     env.info("Someone has Landed")
         if Event.initiator then
             if ( Event.initiator:getCategory() == 1) then 	-- UNIT
         env.info("Is a Unit")
         if (Event.initiator:getDesc().category == 1) then --HELICOPTER
           env.info("Is a HELICOPTER")
           unit = Event.initiator
           unitGroup = unit:getGroup():getName()
           env.info(unitGroup)
           for mission, group in pairs(groupsOnMissions) do
             env.info(group.." Is on mission "..mission)
            if group == unitGroup then
              env.info("Scanner is Running")
              result = ScanSquareZone(mission, group)
              env.info(dump(result))
              env.info(mission)
              env.info(group)
              if result then
                match = false
                env.info("Scanner has Found Units")
                for i, foundGroup in pairs(result) do
                  env.info(foundGroup)
                  if foundGroup == group then
                    match = true
                  end
                end
                if match then
                  env.info("Confirmed Helicopter has Landed in Zone")
                  loadMenu = missionCommands.addSubMenuForGroup(unit:getGroup():getID(), "Patient Menu")
                  unitname = unit:getName()
                  commandparams = {unitname, mission}
                  missionCommands.addCommandForGroup(unit:getGroup():getID(), "Load Patient", loadMenu, loadPatient, commandparams)
                  env.info(dump(loadPatient))
                end
              end
            end
           end
           for mission, group in pairs(groupsOnMissions) do
             if group == unitGroup then
               for i, hospitalZone in pairs(hospitalsHeliPads) do
                 env.info("Scanning Hospital Zone")
                 result = ScanSquareZone(hospitalZone, group)
                 if result then
                   match = false
                   for i, foundgroup in pairs(result) do
                     if foundGroup == group then
                       env.info("Someone has landed in hospital zone")
                       match = true
                     end
                   end
                   if match then
                     patientGroup = Group.getByName(mission.."-Patient")
                     if patientGroup then
                       trigger.action.outText("You need to pickup your Patient(s) before you can drop them off!!", 15)
                     else
                       env.info("Adding Dropoff Command")
                       loadMenu = missionCommands.addSubMenuForGroup(unit:getGroup():getID(), "Patient Menu")
                       unitname = unit:getName()
                       commandparams = {unitname, mission}
                       missionCommands.addCommandForGroup(unit:getGroup():getID(), "Unload Patient(s)", loadMenu, unloadPatient, commandparams)
                       trigger.action.outText("Landed in Hospital Zone", 15)
                     end
                   end
                 end
               end
             end
           end
         end
       end
     end
   end
 end
 
 PLAYERLEAVES = {}
 function PLAYERLEAVES:onEvent(Event)
 
     if Event.id == world.event.S_EVENT_PLAYER_LEAVE_UNIT or Event.id == world.event.S_EVENT_CRASH or Event.id == world.event.S_EVENT_PILOT_DEAD then
     env.info("PLAYER LEFT UNIT")
         if Event.initiator then
             if ( Event.initiator:getCategory() == 1) then 	-- UNIT
         env.info("Is a Unit")
         if (Event.initiator:getDesc().category == 1) then --HELICOPTER
           env.info("Is a HELICOPTER")
           unit = Event.initiator
           unitGroup = unit:getGroup()
           unitGroupName = unitGroup:getName()
           env.info(unitGroupName)
           for mission, group in pairs(groupsOnMissions) do
             env.info(group.." Is on mission "..mission)
            if group == unitGroupName then
              params = {group, mission}
              env.info("PLAYER LEFT CANCELLING MISSION "..mission)
              cancelMission(params)
            end
          end
          missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Rescue Command", [2] = "Rescue", [3] = "Rescue Easy"})
          missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Rescue Command", [2] = "Rescue", [3] = "Rescue Medium"})
          missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Help", [2] = "What to do"})
          missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Help", [2] = "Sar Version"})
          missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Help", [2] = "Missions"})
        end
      end
    end
  end
 end
 
 PLAYERENTERS = {}
 function PLAYERENTERS:onEvent(Event)
   if Event.id == world.event.S_EVENT_BIRTH then
     env.info("PLAYER ENTERED A HELICOPTER")
     unit = Event.initiator
     unitGroup = unit:getGroup()
     env.info(unitGroup)
     missionCommands.addCommandForGroup(unitGroup:getID(),"What to do", helpMenu, toDo, unitGroup:getName())
     missionCommands.addCommandForGroup(unitGroup:getID(),"Sar Version", helpMenu, version, unitGroup:getName())
     missionCommands.addCommandForGroup(unitGroup:getID(),"Missions", helpMenu, missionHelp, unitGroup:getName())
     missionCommands.addCommandForGroup(unitGroup:getID(), "Rescue Easy", rescueMenu, easyZonePicker, unitGroup:getName())
     missionCommands.addCommandForGroup(unitGroup:getID(), "Rescue Medium", rescueMenu, mediumZonePicker, unitGroup:getName())
   end
 end
 
 PLAYERTAKESOFF = {}
 function PLAYERTAKESOFF:onEvent(Event)
   if Event.id == world.event.S_EVENT_TAKEOFF then
     unit = Event.initiator
     unitGroup = unit:getGroup()
     missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Patient Menu"})
   end
 end

function atisMarkers(args,time)
  airbases = coalition.getAirbases(2)
  for i, ab in pairs(airbases) do
    abPoint = Airbase.getPoint(ab)
    abPoint.y = abPoint.y + 1
    abBaseID = (Airbase.getID(ab) + 100000)
    wind = atmosphere.getWind(abPoint)
    direction = math.floor(math.deg(math.atan2(wind.z, wind.x)) + 0.5)
    if direction < 0 then
      direction = 360 + direction
    end
    if direction > 180 then
      direction = direction - 180
    else
      direction = direction + 180
    end
    strength = math.floor((math.sqrt((wind.x)^2+(wind.z)^2)*1.94384) + 0.5)
    temp, pressure = atmosphere.getTemperatureAndPressure(abPoint)
    temp = math.floor((temp - 273.15) + 0.5)
    pressure = string.format("%.2f",(pressure / 3386))
    trigger.action.markToAll(abBaseID, "Wind: "..direction.." Degrees @ "..strength.." knots\n\nTemp & Pressure: "..temp.." Celsius "..pressure.." Inmg", abPoint, true, false)
  end
  return time + 300
end
 
 --TIMERS
 timer.scheduleFunction(missionSelect, {}, timer.getTime() + TimerLoopTime)
 timer.scheduleFunction(atisMarkers, {}, timer.getTime() + 1)
 
 world.addEventHandler(PLAYERTAKESOFF)
 world.addEventHandler(PLAYERENTERS)
 world.addEventHandler(MEDEVACEVENTHANDLER)
 world.addEventHandler(PLAYERLEAVES)
 