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

groupTable = {"Medevac","Medevac-1","Medevac-2","Medevac-3","Medevac-4","Medevac-5","Medevac-6","Medevac-7","Medevac-8","Medevac-9","Medevac-10","Medevac-11","Medevac-12","Medevac-13"}
groupsOnMissions = {}
groupsOnEasyMissions = {}
groupsOnMediumMissions = {}
hospitalsHeliPads = {"Adana Main", "Adana Clinic", "Adana Shakirpasa Airport North", "Adana Shakirpasa Airport South"}

--Menu Functions
function version(groupName)
  group = Group.getByName(groupName)
  trigger.action.outTextForGroup(group:getID(),"Search & Rescue Version 2.0", 15)
end

function toDo(groupName)
  group = Group.getByName(groupName)
  trigger.action.outTextForGroup(group:getID(),"Search & Rescue give you as a pilot Search and Rescue missions based on the difficulty selected. Test your skills as a Air Ambulance or SAR pilot around and in the city of Adana, Turkey", 40)
end

function missionHelp(groupName)
  group = Group.getByName(groupName)
  trigger.action.outTextForGroup(group:getID(),"Missions are seperated into two catagories, 'Rescue' and 'Search & Rescue', these have 3 levels of difficulties to choose from.\n\nSearch & Rescue missions will give you a description of the area or a grid location where the incident occured. Fly to the area and land safely near the Patient(s).\n\nOnce you have your Patient(s) on board, fly them to one of the hospitals in the area or the Airport. These are marked on your map.", 60)
end

function displayMissionInfo(params)
  groupid = params[1]
  missioninfo = params[2]
  trigger.action.outTextForGroup(groupid,missioninfo,60)
end

--Mission Functions
function easyZonePicker(groupName)
  env.info(groupName.." has asked for a EASY mission")
  ezn = {"EasyMission9"} --"EasyMission1","EasyMission2","EasyMission3","EasyMission4","EasyMission5","EasyMission6","EasyMission7","EasyMission8"
  max = (#ezn)
  picked = math.random(1, max)
  count = 0
  while(groupsOnEasyMissions[ezn[picked]] and count < 10) do
    picked = math.random(1, max)
    count = count +1
  end
  if groupsOnEasyMissions[ezn[picked]] then
    trigger.action.outText("Unable to get a mission, all missions may be taken", 15)
  else
    groupsOnEasyMissions[ezn[picked]] = groupName
    groupsOnMissions[ezn[picked]] = groupName
      env.info(dump(groupsOnEasyMissions))
    env.info(ezn[picked])
    easyMissions(ezn[picked],groupName)
  end
end

function mediumZonePicker(groupName)
  env.info(groupName.." has asked for a MEDIUM mission")
  mzn = {"MediumMission1","MediumMission2","MediumMission3"} --
  max = (#mzn)
  picked = math.random(1, max)
  count = 0
  while(groupsOnMediumMissions[mzn[picked]] and count < 10) do
    picked = math.random(1, max)
    count = count +1
  end
  if groupsOnMediumMissions[mzn[picked]] then
    trigger.action.outText("Unable to get a mission, all missions may be taken", 15)
  else
    groupsOnMediumMissions[mzn[picked]] = groupName
    groupsOnMissions[mzn[picked]] = groupName
      env.info(dump(groupsOnMediumMissions))
    env.info(mzn[picked])
    mediumMissions(mzn[picked],groupName)
  end
end

function easyMissions(zonename,groupName)
  group = Group.getByName(groupName)
  missionCommands.removeItemForGroup(group:getID(), {[1] = "Rescue Command", [2] = "Rescue", [3] = "Rescue Easy"})
  missionCommands.removeItemForGroup(group:getID(), {[1] = "Rescue Command", [2] = "Rescue", [3] = "Rescue Medium"})
  commandparams = {groupName, zonename}
  missionCommands.addCommandForGroup(group:getID(), "Cancel Mission", {[1] = "Rescue Command"}, cancelMission, commandparams)
  zone = trigger.misc.getZone(zonename)
  lat, lon, alt = coord.LOtoLL(zone["point"])
  env.info(lat)
  lattitude = toDegreesMinutesAndSeconds(lat,"N")
  longitude = toDegreesMinutesAndSeconds(lon,"E")
  if (zonename == "EasyMission1") then
    coalition.addGroup(80,2,easyMission1Guy) --Adds the Group for the mission
    -- trigger.action.smoke(zone.point,2) --Spawns smoke at the target location
    -- trigger.action.signalFlare(zone.point,2,30) -- Drops signalflare at the Zone location
    -- trigger.action.effectSmokeBig(zone.point,3,1) -- Adds smoke on the zone center
    trigger.action.outText("Easy Mission #1 Spawned!",15)
    missioninfo = "A Mechanic has broken his leg while working on his Vehicle. He needs to be taken to the hospital and is at "..lattitude.." "..longitude.." Look for a Blue Vehicle, there is a mark on your map."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 1",zone["point"],groupId,true)
  elseif (zonename == "EasyMission2") then
    coalition.addGroup(80,2,EasyMission2BuildingFire)
    trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
    trigger.action.outText("Easy Mission #2 Spawned!",15)
    missioninfo = "A structure has caught fire. There are fire rescue on the way however they will not be there in time you must retreive the victims and take them to one of the Hospitals in Adana. The structure fire is located at "..lattitude.." "..longitude.." South East of Yenidam, there is a mark on your map as well."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 2",zone["point"],groupId,true)
  elseif (zonename == "EasyMission3") then
    coalition.addGroup(80,2,EasyMission3)
    coalition.addGroup(80,2,EasyMission3Scenery)
    trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission3-Smoke")
    trigger.action.outText("Easy Mission #3 Spawned!",15)
    missioninfo = "There has been a bus crash. You need to go pickup the Patients. There is Rescue Crews on scene. "..lattitude.." "..longitude.." There is a mark placed on your map."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 3",zone["point"],groupId,true)
  elseif (zonename == "EasyMission4") then
    coalition.addGroup(80,2,EasyMission4)
    coalition.addGroup(80,2,EasyMission4Scenery)
    -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission3-Smoke")
    trigger.action.outText("Easy Mission #4 Spawned!",15)
    missioninfo = "Some workers spraying the orchard north of the village Cihadiye. They have inhaled some of the chemicals and need to be transported to Hospital. Crews are on scene and waiting for your arrival. "..lattitude.." "..longitude.." There is a mark placed on your map."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 4",zone["point"],groupId,true)
  elseif (zonename == "EasyMission5") then
    coalition.addGroup(80,2,EasyMission5)
    coalition.addGroup(80,2,EasyMission5Scenery)
    -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission3-Smoke")
    trigger.action.outText("Easy Mission #5 Spawned!",15)
    missioninfo = "Someone fishing alone 10NM north of Adana International has fallen and was unconcious for several hours. He has asked for medical assistance. Due to his distance from Adana we are sending your to retrieve him. He is at "..lattitude.." "..longitude.." There is a mark placed on your map."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 5",zone["point"],groupId,true)
  elseif (zonename == "EasyMission6") then
    coalition.addGroup(80,2,EasyMission6)
    coalition.addGroup(80,2,EasyMission6Scenery)
    -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission3-Smoke")
    trigger.action.outText("Easy Mission #6 Spawned!",15)
    missioninfo = "An 90 year old had a heart attack in her home in the villag of Seyhmurat. She need immediate transport to Adana Main Hospital. The location is "..lattitude.." "..longitude.." There is a mark placed on your map."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 6",zone["point"],groupId,true)
  elseif (zonename == "EasyMission7") then
    coalition.addGroup(80,2,EasyMission7)
    coalition.addGroup(80,2,EasyMission7Scenery)
    -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission3-Smoke")
    trigger.action.outText("Easy Mission #7 Spawned!",15)
    missioninfo = "Man has fallen from a tree and suffered severe head trama. He needs immediate transport to Adana Main Hospital. The location is "..lattitude.." "..longitude.." There is a mark placed on your map."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 7",zone["point"],groupId,true)
  elseif (zonename == "EasyMission8") then
    coalition.addGroup(80,2,EasyMission8)
    coalition.addGroup(80,2,EasyMission8Scenery)
    -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission3-Smoke")
    trigger.action.outText("Easy Mission #8 Spawned!",15)
    missioninfo = "Two men have been injured in a 4x4 accident. They needs immediate transport to Adana Main Hospital. The location is "..lattitude.." "..longitude.." There is a mark placed on your map."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 8",zone["point"],groupId,true)
  elseif (zonename == "EasyMission9") then
    coalition.addGroup(80,2,EasyMission9)
    coalition.addGroup(80,2,EasyMission9Scenery)
    trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission9")
    trigger.action.outText("Easy Mission #9 Spawned!",15)
    missioninfo = "A boating accident has occered causing severe injury to two individuals. They needs immediate transport to Adana Main Hospital. The location is "..lattitude.." "..longitude.." There is a mark placed on your map."
    groupId = group:getID()
    trigger.action.outTextForGroup(groupId,missioninfo,15)
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Easy Mission 9",zone["point"],groupId,true)
  end
end

function mediumMissions(zonename,groupName)
  group = Group.getByName(groupName)
  missionCommands.removeItemForGroup(group:getID(), {[1] = "Rescue Command", [2] = "Rescue", [3] = "Rescue Easy"})
  missionCommands.removeItemForGroup(group:getID(), {[1] = "Rescue Command", [2] = "Rescue", [3] = "Rescue Medium"})
  commandparams = {groupName, zonename}
  missionCommands.addCommandForGroup(group:getID(), "Cancel Mission", {[1] = "Rescue Command"}, cancelMission, commandparams)
  zone = trigger.misc.getZone(zonename)
  lat, lon, alt = coord.LOtoLL(zone["point"])
  env.info(lat)
  lattitude = toDegreesMinutesAndSeconds(lat,"N")
  longitude = toDegreesMinutesAndSeconds(lon,"E")
  if (zonename == "MediumMission1") then
    coalition.addGroup(80,2,MediumMission1Scenery) -- adds the scenery for the mission
    coalition.addGroup(80,2,MediumMission1) --Adds the Group for the mission
    -- trigger.action.smoke(zone.point,2) --Spawns smoke at the target location
    -- trigger.action.signalFlare(zone.point,2,30) -- Drops signalflare at the Zone location
    -- trigger.action.effectSmokeBig(zone.point,3,1) -- Adds smoke on the zone center
    trigger.action.outText("Medium Mission #1 Spawned!",15)
    missioninfo = "There was an accident at a fuel oil transfer station. There is downed workers who need to be transported to the Adana Hostpital. You will need to land on the dock to recieve the Patient(s) "..lattitude.." "..longitude.." There is a mark placed on your map at the location of the incident."
    groupId = group:getID()
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Medium Mission 1",zone["point"],groupId,true)
  elseif (zonename == "MediumMission2") then
    coalition.addGroup(80,2,MediumMission2Scenery) -- adds the scenery for the mission
    coalition.addGroup(80,2,MediumMission2)
    -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
    trigger.action.outText("Medium Mission #2 Spawned!",15)
    missioninfo = "There are serious injuries reported at a Structure fire in the city of Adana. You will need to land in a parking lot to recieve the Patients(s). "..lattitude.." "..longitude.." There is a mark placed on your map at the location of the incident."
    groupId = group:getID()
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Medium Mission 2",zone["point"],groupId,true)
  elseif (zonename == "MediumMission3") then
    coalition.addGroup(80,3,MediumMission3Scenery) -- adds the scenery for the mission
    coalition.addGroup(80,3,MediumMission3Group2Scenery)
    -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
    trigger.action.outText("Medium Mission #3 Spawned!",15)
    missioninfo = "A Sailor has had a heart attack on the Bulker ship BALTIC COVE. Head for the ship and retrieve the Patient. Take them to Adana Main Hopital. "..lattitude.." "..longitude.." There is a mark placed on your map at the location of the incident."
    groupId = group:getID()
    params = {groupId,missioninfo}
    missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
    trigger.action.markToGroup((groupId*51515151),"Medium Mission 3",zone["point"],groupId,true)
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
                result = ScanSquareZone(hospitalZone, group)
                if result then
                  match = false
                  for i, foundgroup in pairs(result) do
                    if foundGroup == group then
                      match = true
                    end
                  end
                  if match then
                    patientGroup = Group.getByName(mission.."-Patient")
                    if patientGroup then
                      trigger.action.outText("You need to pickup your Patient(s) before you can drop them off!!", 15)
                    else
                      unitname = unit:getName()
                      commandparams = {unitname, mission}
                      missionCommands.addCommandForGroup(unit:getGroup():getID(), "Unload Patient(s)", {[1] = "Patient Menu"}, unloadPatient, commandparams)
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
             missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Rescue Command", [2] = "Rescue Easy"})
             missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Rescue Command", [2] = "Rescue Medium"})
             missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Help", [2] = "What to do"})
             missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Help", [2] = "Sar Version"})
             missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Help", [2] = "Missions"})
           end
         end
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


world.addEventHandler(PLAYERTAKESOFF)
world.addEventHandler(PLAYERENTERS)
world.addEventHandler(MEDEVACEVENTHANDLER)
world.addEventHandler(PLAYERLEAVES)
