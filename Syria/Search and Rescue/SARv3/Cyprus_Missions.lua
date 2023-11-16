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

function missionsCyprus(zonename,groupName)
    group = Group.getByName(groupName)
    missionCommands.removeItemForGroup(unitGroup:getID(), {[1] = "Rescue Command", [2] = "Rescue", [3] = "Register"})
    commandparams = {groupName, zonename}
    missionCommands.addCommandForGroup(group:getID(), "Cancel Mission", {[1] = "Rescue Command"}, cancelMission, commandparams)
    zone = trigger.misc.getZone(zonename)
    lat, lon, alt = coord.LOtoLL(zone["point"])
    env.info(lat)
    lattitude = toDegreesMinutesAndSeconds(lat,"N")
    longitude = toDegreesMinutesAndSeconds(lon,"E")
    unit1 = Group.getUnit(Group.getByName(groupName),1)
    if (zonename == "CyprusMission1") then
        -- coalition.addGroup(80,2,easyMission1Guy) --Adds the Group for the mission
        -- trigger.action.smoke(zone.point,2) --Spawns smoke at the target location
        -- trigger.action.signalFlare(zone.point,2,30) -- Drops signalflare at the Zone location
        -- trigger.action.effectSmokeBig(zone.point,3,1) -- Adds smoke on the zone center
        -- trigger.action.outText("Easy Mission #1 Spawned!",15)
        missioninfo = "A power plant worker has been electrocuted needs to be taken to the hospital. Emergency crew is on scene stabalizing the worker. Power plant is at "..lattitude.." "..longitude.." There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 1 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission2") then
        -- coalition.addGroup(80,2,EasyMission2BuildingFire)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        -- trigger.action.outText("Easy Mission #2 Spawned!",15)
        missioninfo = "An accident has occured at a boating ramp at the Dağdere Reservoir, north of the town of Myrtou. A man has been run over while trying to back his boat down the ramp. The boat ramp is located at "..lattitude.." "..longitude..". There is a mark on your map as well. EMTs are on scene prepping the victim for transport."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 2 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission3") then
        -- coalition.addGroup(80,2,EasyMission2BuildingFire)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        -- trigger.action.outText("Easy Mission #2 Spawned!",15)
        missioninfo = "An injured hiker needs evac from a fire watch station just to the east of Mount Olympus . The landing pad being used for pick up is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 3 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission4") then
        -- coalition.addGroup(80,2,EasyMission2BuildingFire)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        -- trigger.action.outText("Easy Mission #2 Spawned!",15)
        missioninfo = "A structure fire has broken out in the town of Pentageia. There is one burn victim that needs transport. The structure fire is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 4 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission5") then
        -- coalition.addGroup(80,2,EasyMission2BuildingFire)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        -- trigger.action.outText("Easy Mission #2 Spawned!",15)
        missioninfo = "A farmer has been crushed by a hay bale and needs transport to the nearest hospital. The farm is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 5 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission6") then
        -- coalition.addGroup(80,2,EasyMission2BuildingFire)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        -- trigger.action.outText("Easy Mission #2 Spawned!",15)
        missioninfo = "A tourist has fallen off a historical tower and needs transport to the nearest hospital. The ancient city of Soli is located at "..lattitude.." "..longitude..". There is a mark on your map as well.A tourist has become deathly ill at a local resort and local doctors arent sure whats wrong with them. He needs transport to the closest hospital. The resort is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 6 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission7") then
        -- coalition.addGroup(80,2,EasyMission2BuildingFire)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        -- trigger.action.outText("Easy Mission #2 Spawned!",15)
        missioninfo = "A tourist has become deathly ill at a local resort and local doctors arent sure whats wrong with them. He needs transport to the closest hospital. The resort is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 7 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    end
end
