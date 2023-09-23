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
        coalition.addGroup(80,2,IsraelMission1) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission1Scenery) --Adds the Group for the mission
        -- trigger.action.smoke(zone.point,2) --Spawns smoke at the target location
        -- trigger.action.signalFlare(zone.point,2,30) -- Drops signalflare at the Zone location
        -- trigger.action.effectSmokeBig(zone.point,3,1) -- Adds smoke on the zone center
        trigger.action.outText("Mission #1 Spawned!",15)
        missioninfo = "A Mechanic has broken his leg while working on his Vehicle. He needs to be taken to the hospital and is at "..lattitude.." "..longitude..". There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 1 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission2") then
        coalition.addGroup(80,2,IsraelMission2) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission2Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission2-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #2 Started!",15)
        missioninfo = "A structure has caught fire. There are fire rescue on scene, retreive the victim(s) and take them to one of the Hospitals in Haifa. The structure fire is located at "..lattitude.." "..longitude.." South East of Yenidam, there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 2 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission3") then
        coalition.addGroup(80,2,IsraelMission3) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission3Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(zone.point,1,1,"IsraelMission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #3 Started!",15)
        missioninfo = "A severe vehicle colision has occurred in the city of Tiberias, retreive the victim(s) and take them to one of the Hospitals in Haifa. The accident is located at "..lattitude.." "..longitude.." West of the Sea of Galilee, there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 3 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission4") then
        coalition.addGroup(80,2,IsraelMission4) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission4Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"Mission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #4 Started!",15)
        missioninfo = "A stroke victim needs transport to one of the Hospitals in Haifa. The victim is located at "..lattitude.." "..longitude.." There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 4 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission5") then
        coalition.addGroup(80,2,IsraelMission5) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission5Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"Mission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #5 Started!",15)
        missioninfo = "A person is extremely hurt after driving off the road and hit a tree. He needs immediate evac to the nearest Hospital. The victim is located at "..lattitude.." "..longitude.." There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 5 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission6") then
        coalition.addGroup(80,2,IsraelMission6) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission6Scenery) --Adds the Group for the mission
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
        coalition.addGroup(80,2,IsraelMission7) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission7Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(IsraelMission7Smoke,2,1,"IsraelMission7-1-Smoke") -- Adds smoke on the zone center
        --trigger.action.effectSmokeBig(zone.point,2,1,"IsraelMission7-2-Smoke")
        --trigger.action.effectSmokeBig(zone.point,2,1,"IsraelMission7-3-Smoke")
        trigger.action.outText("Israel Mission #7 Started!",15)
        missioninfo = "A multi vehicle traffic collision has occured south of the city of Kafr Qara. There are four patients that need evac to the nearest Hospital. The victim is located at "..lattitude.." "..longitude.." Look for the smoke south of the town, there is also a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 7 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission8") then
        coalition.addGroup(80,2,IsraelMission8) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission8Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"Mission3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #8 Started!",15)
        missioninfo = "A dock worker has been stuck by a vehicle and cant feel his legs. The patient  needs evac to the nearest Hospital. The victim is located at "..lattitude.." "..longitude.." There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 8 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission9") then
      IsraelMission9Smoke = trigger.misc.getZone('IsraelMission9-Smoke').point
      IsraelMission9Smoke.y = land.getHeight( {x =IsraelMission9Smoke.x, y = IsraelMission9Smoke.z} )
        coalition.addGroup(80,2,IsraelMission9) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission9Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(IsraelMission9Smoke,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #9 Started!",15)
        missioninfo = "A structure has caught fire. There are fire rescue on scene, retreive the victim(s) and take them to one of the Hospitals in Haifa. The victim is located at "..lattitude.." "..longitude.." There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 9 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission10") then
        coalition.addGroup(80,2,IsraelMission10) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission10Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #10 Started!",15)
        missioninfo = "A child has fallen from a tree and hit his head causing a seizure. the child is stable but needs transport to a nearby hospital. The victim is located at "..lattitude.." "..longitude.." There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 10 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission11") then
        coalition.addGroup(80,2,IsraelMission11) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission11Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #11 Started!",15)
        missioninfo = "An elderly gentlmen called from the side of a road complaining of severe chest pain. Medical personel arrived to find person unconscious. The victim is located at "..lattitude.." "..longitude.." Look for an emergency vehicle parked in a clearing. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 11 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission12") then
        coalition.addGroup(80,2,IsraelMission12) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission12Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #12 Started!",15)
        missioninfo = "We received a call that a streamer has gone outside and touched grass. Medical personnel arrived to find person unconscious. The victim is located at "..lattitude.." "..longitude.." There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 12 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission13") then
        coalition.addGroup(80,2,IsraelMission13) --Adds the Group for the mission
        --coalition.addStaticObject(country.id.USA,Mission13Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #13 Started!",15)
        missioninfo = "A general aviation aircraft has crashed somewhere east of the Sea of Galilee. The downed aircraft is estimated to be located at "..lattitude.." "..longitude.." Look for survivors and bring them to the nearest Hospital. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 13 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission14") then
        coalition.addGroup(80,2,IsraelMission14) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission14Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #14 Started!",15)
        missioninfo = "A patient needs to be transported from a remote clinic to the nearest hospital. The helipad is located at "..lattitude.." "..longitude.." at the top of a hill. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 14 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission15") then
        coalition.addGroup(80,2,IsraelMission15) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission15Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #15 Started!",15)
        missioninfo = "A construction wroker has suffered severe head trama and needs evac to the nearest hospital. Medical personel are on the scene. The job site is located at "..lattitude.." "..longitude.." . There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 15 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission16") then
        coalition.addGroup(80,2,IsraelMission16) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission16Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #16 Started!",15)
        missioninfo = "A geologist car as broken down and has become stranded. The person is a type 1 diabetic and has no insulin, and without it he will die. His estimated location is "..lattitude.." "..longitude.." . There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 16 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission17") then
      IsraelMission17Smoke1 = trigger.misc.getZone('IsraelMission17-1-Smoke').point
      IsraelMission17Smoke1.y = land.getHeight( {x =IsraelMission17Smoke1.x, y = IsraelMission17Smoke1.z} )
      IsraelMission17Smoke2 = trigger.misc.getZone('IsraelMission17-2-Smoke').point
      IsraelMission17Smoke2.y = land.getHeight( {x =IsraelMission17Smoke2.x, y = IsraelMission17Smoke2.z} )
      IsraelMission17Smoke3 = trigger.misc.getZone('IsraelMission17-3-Smoke').point
      IsraelMission17Smoke3.y = land.getHeight( {x =IsraelMission17Smoke3.x, y = IsraelMission17Smoke3.z} )
        coalition.addGroup(80,2,IsraelMission17) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission17Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(IsraelMission17Smoke1,1,1,"IsraelMission17-1-Smoke") -- Adds smoke on the zone center
        trigger.action.effectSmokeBig(IsraelMission17Smoke2,1,1,"IsraelMission17-2-Smoke") -- Adds smoke on the zone center
        trigger.action.effectSmokeBig(IsraelMission17Smoke3,1,1,"IsraelMission17-3-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #17 Started!",15)
        missioninfo = "Several structure fires have broken out at a dildo factory. Fire and rescue are on scene and have several patients that need evac. Factory location is "..lattitude.." "..longitude.." . There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 17 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission18") then
        coalition.addGroup(80,2,IsraelMission18) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission18Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #18 Started!",15)
        missioninfo = "A cell tower worker has fallen from the tower he was working on. Paramedics on scene report he is alive but his condition is worsening. Helipad location for pick up is "..lattitude.." "..longitude.." . There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 18 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission19") then
        coalition.addGroup(80,2,IsraelMission19) --Adds the Group for the mission
        --coalition.addGroup(80,2,Mission19Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #19 Started!",15)
        missioninfo = "A pair of hikers have become lost in the hills and need rescue. Triangulating thier cell phone signal puts them around "..lattitude.." "..longitude..". Just North East of Deir al-Asad. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 19 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission20") then
        coalition.addGroup(80,2,IsraelMission20) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission20Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #20 Started!",15)
        missioninfo = "A child has fallen into a pond drowned. Child has been resuscitated but vitals are weak, paramedics have not reached the location yet. Pond location is "..lattitude.." "..longitude..". East of Acre. Pick the patient up and take him to the nearest hospital. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 20 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission21") then
        coalition.addGroup(80,2,IsraelMission21) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission21Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #21 Started!",15)
        missioninfo = "A worker running cable got hit arm amputated on the job site. Paramedics on scene but need evac to the nearest hospital from the following location "..lattitude.." "..longitude..". Look for a large cell tower. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 21 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission22") then
        coalition.addGroup(80,2,IsraelMission22) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission22Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(zone.point,3,1,"IsraelMission9-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #22 Started!",15)
        missioninfo = "A patient requires transfer from a remote outpost to a larger hospital. Heli pad is located "..lattitude.." "..longitude..". There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 22 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission23") then
        IsraelMission23Smoke = trigger.misc.getZone('IsraelMission23-Smoke').point
        IsraelMission23Smoke.y = land.getHeight( {x =IsraelMission23Smoke.x, y = IsraelMission23Smoke.z} )
        coalition.addGroup(80,2,IsraelMission23) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission23Scenery) --Adds the Group for the mission
        trigger.action.effectSmokeBig(IsraelMission23Smoke,1,1,"IsraelMission23-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #23 Started!",15)
        missioninfo = "A vehicle fire has been reported at "..lattitude.." "..longitude..". Fire and rescue on scene with one patient needing evac. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 23 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "IsraelMission24") then
        coalition.addGroup(80,2,IsraelMission24) --Adds the Group for the mission
        coalition.addGroup(80,2,IsraelMission24Scenery) --Adds the Group for the mission
        --trigger.action.effectSmokeBig(IsraelMission23Smoke,1,1,"IsraelMission23-Smoke") -- Adds smoke on the zone center
        trigger.action.outText("Israel Mission #24 Started!",15)
        missioninfo = "A factory worker was exposed to a hazardous chemical and needs transport to the nearest hospital. Factory location is "..lattitude.." "..longitude..". Paramedics on scene with one patient needing evac. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Israel Mission 24 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    end
end
