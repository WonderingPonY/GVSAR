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

function missionsIsrael(zonename,groupName)
    group = Group.getByName(groupName)
    commandparams = {groupName, zonename}
    missionCommands.addCommandForGroup(group:getID(), "Cancel Mission", {[1] = "Rescue Command"}, cancelMission, commandparams)
    zone = trigger.misc.getZone(zonename)
    lat, lon, alt = coord.LOtoLL(zone["point"])
    env.info(lat)
    lattitude = toDegreesMinutesAndSeconds(lat,"N")
    longitude = toDegreesMinutesAndSeconds(lon,"E")
    unit1 = Group.getUnit(Group.getByName(groupName),1)
    if (zonename == "IsraelMission1") then
        coalition.addGroup(80,2,Mission1) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission1Scenery) --Adds the Group for the mission
        -- trigger.action.smoke(zone.point,2) --Spawns smoke at the target location
        -- trigger.action.signalFlare(zone.point,2,30) -- Drops signalflare at the Zone location
        -- trigger.action.effectSmokeBig(zone.point,3,1) -- Adds smoke on the zone center
        trigger.action.outText("Mission #1 Spawned!",15)
        missioninfo = "A Mechanic has broken his leg while working on his Vehicle. He needs to be taken to the hospital and is at "..lattitude.." "..longitude.." there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 1 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission2") then
        coalition.addGroup(80,2,Mission2) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission2Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission2-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #2 Started!",15)
        missioninfo = "A structure has caught fire. There are fire rescue on scene, retreive the victim(s) and take them to one of the Hospitals in Haifa. The structure fire is located at "..lattitude.." "..longitude.." South East of Yenidam, there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 2 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission3") then
        coalition.addGroup(80,2,Mission3) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission3Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(zone.point,1,1,"IsraelMission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #3 Started!",15)
        missioninfo = "A severe vehicle colision has occurred in the city of Tiberias, retreive the victim(s) and take them to one of the Hospitals in Haifa. The accident is located at "..lattitude.." "..longitude.." West of the Sea of Galilee, there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 3 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission4") then
        coalition.addGroup(80,2,Mission4) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission4Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"Mission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #4 Started!",15)
        missioninfo = "A stroke victim needs transport to one of the Hospitals in Haifa. The victim is located at "..lattitude.." "..longitude.." there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 4 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission5") then
        coalition.addGroup(80,2,Mission5) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission5Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"Mission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #5 Started!",15)
        missioninfo = "A person is extremely hurt after driving off the road and hit a tree. He needs immediate evac to the nearest Hospital. The victim is located at "..lattitude.." "..longitude.." there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 5 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission6") then
        coalition.addGroup(80,2,Mission6) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission6Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"Mission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #6 Started!",15)
        missioninfo = "A workplace accident has severed a workers arm. There is one patient that needs evac to the nearest Hospital. The victim is located at "..lattitude.." "..longitude.." Look a blue roofed mosque near by, there is also a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 6 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission7") then
      IsraelMission7Smoke = trigger.misc.getZone('IsraelMission7-1-Smoke').point
      IsraelMission7Smoke.y = land.getHeight( {x =IsraelMission7Smoke.x, y = IsraelMission7Smoke.z} )
        coalition.addGroup(80,2,Mission7) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission7Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(IsraelMission7Smoke,2,1,"IsraelMission7-1-Smoke") -- Adds smoke on the zone center
        --trigger.action.effectSmokeBig(zone.point,2,1,"IsraelMission7-2-Smoke")
        --trigger.action.effectSmokeBig(zone.point,2,1,"IsraelMission7-3-Smoke")
        trigger.action.outText("Israel Mission #7 Started!",15)
        missioninfo = "A multi vehicle traffic collision has occured south of the city of Kafr Qara. There are four patients that needs evac to the nearest Hospital. The victim is located at "..lattitude.." "..longitude.." Look for the smoke south of the town, there is also a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 7 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission8") then
        coalition.addGroup(80,2,Mission8) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission8Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"Mission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #8 Started!",15)
        missioninfo = "A dock worker has been stuck by a vehicle and cant feel his legs. The patient  needs evac to the nearest Hospital. The victim is located at "..lattitude.." "..longitude.." there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 8 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission9") then
      IsraelMission9Smoke = trigger.misc.getZone('IsraelMission9-Smoke').point
      IsraelMission9Smoke.y = land.getHeight( {x =IsraelMission9Smoke.x, y = IsraelMission9Smoke.z} )
        coalition.addGroup(80,2,Mission9) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission9Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(IsraelMission9Smoke,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #9 Started!",15)
        missioninfo = "A structure has caught fire. There are fire rescue on scene, retreive the victim(s) and take them to one of the Hospitals in Haifa. The victim is located at "..lattitude.." "..longitude.." there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 9 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission10") then
        coalition.addGroup(80,2,Mission10) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission10Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #10 Started!",15)
        missioninfo = "A child has fallen from a tree and hit his head causing a seizure. the child is stable but needs transport to a nearby hospital. The victim is located at "..lattitude.." "..longitude.." there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 10 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission11") then
        coalition.addGroup(80,2,Mission11) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission11Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #11 Started!",15)
        missioninfo = "An elderly gentlmen called from the side of a road complaining of severe chest pain. Medical personel arrived to find person unconscious. The victim is located at "..lattitude.." "..longitude.." look for an emergency vehicle parked parked in a clearing. there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 11 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission12") then
        coalition.addGroup(80,2,Mission12) --Adds the Group for the mission
        coalition.addGroup(80,2,Mission12Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #12 Started!",15)
        missioninfo = "We received a call that a streamer has gone outside and touched grass. Medical personel arrived to find person unconscious. The victim is located at "..lattitude.." "..longitude.." there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 12 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)




    end
end
