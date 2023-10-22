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

function missionsLebanon(zonename,groupName)
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
    if (zonename == "LebanonMission1") then
        coalition.addGroup(80,2,LebanonMission1) --Adds the Group for the mission
        coalition.addGroup(80,2,LebanonMission1Scenery)
        -- trigger.action.smoke(zone.point,2) --Spawns smoke at the target location
        -- trigger.action.signalFlare(zone.point,2,30) -- Drops signalflare at the Zone location
        -- trigger.action.effectSmokeBig(zone.point,3,1) -- Adds smoke on the zone center
        trigger.action.outText("Lebanon Mission #1 Spawned!",15)
        missioninfo = "A building in Haret Chbib had a bad carbon monoxide leak located at "..lattitude.." "..longitude..". Three patients need transport to the nearest hospital. There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 1 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission2") then
        coalition.addGroup(80,2,LebanonMission2)
        coalition.addGroup(80,2,LebanonMission2Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Lebanon Mission #2 Spawned!",15)
        missioninfo = "A sports fan at Camille Chamoun Sports City Stadium has suffered a heart attack and needs air lifted to the nearest hospital. Stadium located at "..lattitude.." "..longitude.." Central Beirut, there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 2 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission3") then
        LebanonMission3Smoke = trigger.misc.getZone('LebanonMission3-Smoke').point
        LebanonMission3Smoke.y = land.getHeight( {x =LebanonMission3Smoke.x, y = LebanonMission3Smoke.z} )
        coalition.addGroup(80,2,LebanonMission3)
        coalition.addGroup(80,2,LebanonMission3Scenery)
        trigger.action.effectSmokeBig(LebanonMission3Smoke,1,1, "LebanonMission3-Smoke")
        trigger.action.outText("Lebanon Mission #3 Spawned!",15)
        missioninfo = "A fuel depot on the coast north of Beirut has caught fire at "..lattitude.." "..longitude..". A dock worker is severly burned and needs transport to the nearest hospital or airport (in Lebanon), there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 3 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission4") then
        coalition.addGroup(80,2,LebanonMission4)
        coalition.addGroup(80,3,LebanonMission4Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission3-Smoke")
        trigger.action.outText("Lebanon Mission #4 Spawned!",15)
        missioninfo = "A boating accident involving a drunk boater has occurred just outside a harbor located at "..lattitude.." "..longitude..". Transport the victim to the nearest hospital or airport (in Lebanon), there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 4 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission5") then
        coalition.addGroup(80,2,LebanonMission5)
        coalition.addGroup(80,2,LebanonMission5Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission3-Smoke")
        trigger.action.outText("Lebanon Mission #5 Spawned!",15)
        missioninfo = "A tourist has had a stroke at Our Lady of Lebanon Church located here "..lattitude.." "..longitude..". Transport the patient to the nearest hospital or airport (in Lebanon), there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 5 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission6") then
        coalition.addGroup(80,2,LebanonMission6)
        coalition.addGroup(80,2,LebanonMission6Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission3-Smoke")
        trigger.action.outText("Lebanon Mission #6 Spawned!",15)
        missioninfo = "There has been a shark attack at a hotel resort north of Beirut, location is "..lattitude.." "..longitude..". There is a mark on your map as well. Medical personel is on scene and stabilizing the victim, transport them to the nearest medical facility or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 6 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission7") then
        coalition.addGroup(80,2,LebanonMission7)
        --coalition.addGroup(80,2,LebanonMission6Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission3-Smoke")
        trigger.action.outText("Lebanon Mission #7 Spawned!",15)
        missioninfo = "A missing person has been reported on an elderly gentlmen with dementia, last cell phone ping puts the victim's last known location around"..lattitude.." "..longitude..". There is a mark on your map as well. Search the area and bring the victim to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 7 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission8") then
      LebanonMission8Smoke = trigger.misc.getZone('LebanonMission8-Smoke').point
      LebanonMission8Smoke.y = land.getHeight( {x =LebanonMission8Smoke.x, y = LebanonMission8Smoke.z} )
        coalition.addGroup(80,2,LebanonMission8)
        --coalition.addGroup(80,2,LebanonMission6Scenery)
        trigger.action.smoke(LebanonMission8Smoke,3)
        trigger.action.outText("Lebanon Mission #8 Spawned!",15)
        missioninfo = "A hiker called in stating his friend took a tumble down a hill and needs evac. Satellite phone puts their location around"..lattitude.." "..longitude..". Look for orange smoke, there is a mark on your map as well. Search the area and bring the pair to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 8 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission9") then
      LebanonMission9Smoke = trigger.misc.getZone('LebanonMission9-Smoke').point
      LebanonMission9Smoke.y = land.getHeight( {x =LebanonMission9Smoke.x, y = LebanonMission9Smoke.z} )
        coalition.addGroup(80,2,LebanonMission9)
        coalition.addGroup(80,2,LebanonMission9Scenery)
        trigger.action.effectSmokeBig(LebanonMission9Smoke,1,1, "LebanonMission9-Smoke")
        trigger.action.outText("Lebanon Mission #9 Spawned!",15)
        missioninfo = "A severe accident has occured on the coastal highway at this location"..lattitude.." "..longitude..". There is a mark on your map as well. Three victims in critical condition that need transport to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 9 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission10") then
        coalition.addGroup(80,2,LebanonMission10)
        coalition.addGroup(80,2,LebanonMission10Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission9-Smoke")
        trigger.action.outText("Lebanon Mission #10 Spawned!",15)
        missioninfo = "A child has been bitten by a lebanon mountain viper and needs transport to the nearest hospital or airport (in Lebanon). Victim's location is "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 10 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission11") then
      LebanonMission11Smoke = trigger.misc.getZone('LebanonMission11-Smoke').point
      LebanonMission11Smoke.y = land.getHeight( {x =LebanonMission11Smoke.x, y = LebanonMission11Smoke.z} )
        coalition.addGroup(80,2,LebanonMission11)
        coalition.addGroup(80,2,LebanonMission11Scenery)
        trigger.action.effectSmokeBig(LebanonMission11Smoke,3,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #11 Spawned!",15)
        missioninfo = "A structure fire has occured in Tripoli. Structure's location is "..lattitude.." "..longitude..". Look for the Tripoli Citadel, there is a mark on your map as well. Two burn victims need transport to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 11 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission12") then
        coalition.addGroup(80,2,LebanonMission12)
        coalition.addGroup(80,2,LebanonMission12Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #12 Spawned!",15)
        missioninfo = "A warehouse worker had a large corrugated pipe fall on him. Paramedics are on scene stabalizing the victim for transport. Warhouse's location is "..lattitude.." "..longitude..". There is a mark on your map as well. Transport the worker to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 12 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission13") then
        coalition.addGroup(80,2,LebanonMission13)
        --coalition.addGroup(80,2,LebanonMission12Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #13 Spawned!",13)
        missioninfo = "A call has come in requesting medevac for found lost hiker. Hiker's location is "..lattitude.." "..longitude..". There is a mark on your map as well. Search and rescue team report they have carried victim to a clearing. Transport patient to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 13 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission14") then
        coalition.addGroup(80,2,LebanonMission14)
        coalition.addGroup(80,2,LebanonMission14Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #14 Spawned!",13)
        missioninfo = "A call has come in to search for a missing person. Caller reports husband was supposed to be two days ago but hasnt heard anything. Pinging the persons phone gave us this location "..lattitude.." "..longitude..". Roughly on the border of Syria. There is a mark on your map as well. The partner says to look for a green jeep. Find and transport victim to the nearest hospital or airport (in Lebanon)"
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 14 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission15") then
        coalition.addGroup(80,2,LebanonMission15)
        coalition.addGroup(80,2,LebanonMission15Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #15 Spawned!",13)
        missioninfo = "We need a heli to fly out to this location "..lattitude.." "..longitude.." and pick up renown virologist Dr Jack MeHof. There is a mark on your map as well. He is transporting a cure for Hepatitis C virus ands to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 15 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission16") then
        coalition.addGroup(80,2,LebanonMission16)
        coalition.addGroup(80,2,LebanonMission16Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #16 Spawned!",13)
        missioninfo = "An urgent patient transfer is required at "..lattitude.." "..longitude..". There is a mark on your map as well. The patient needs to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 16 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission17") then
        coalition.addGroup(80,2,LebanonMission17)
        coalition.addGroup(80,2,LebanonMission17Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #17 Spawned!",13)
        missioninfo = "A person has fallen down into a steep valley seriously injuring themselves. Medical team is on scene at the top of the hill but are having issues reaching the victim. Injured patient located at "..lattitude.." "..longitude..". There is a mark on your map as well. The patient needs to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 17 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission18") then
        coalition.addGroup(80,2,LebanonMission18)
        coalition.addGroup(80,2,LebanonMission18Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #18 Spawned!",13)
        missioninfo = "A hazardous chemical spill has occured at a factory Southwest of Lake Qaraoun "..lattitude.." "..longitude..". There is a mark on your map as well. Hazmat and medical teams on scene report two patients in critical condition. The patients need to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 18 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission19") then
        coalition.addGroup(80,2,LebanonMission19)
        coalition.addGroup(80,2,LebanonMission19Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #19 Spawned!",13)
        missioninfo = "We received a call of a father and son lost control of their vehicle and drove off the road and into a creek at "..lattitude.." "..longitude..". There is a mark on your map as well. Emergency services on scene report father in critical condition with severe head trama. The patients need to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 19 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission20") then
        coalition.addGroup(80,2,LebanonMission20)
        coalition.addGroup(80,2,LebanonMission20Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #20 Spawned!",13)
        missioninfo = "A Syrian refugee claiming asylum has showed up at a border point located at "..lattitude.." "..longitude..". There is a mark on your map as well. The refugee is extremely malnourished, dehydrated and weak. The refugee needs to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 20 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission21") then
        coalition.addGroup(80,2,LebanonMission21)
        coalition.addGroup(80,2,LebanonMission21Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #21 Spawned!",13)
        missioninfo = "A fisherman has has a heart attack and needs air evac. His location is "..lattitude.." "..longitude..". There is a mark on your map as well. Emergency services are enroute and expected to arive before you to stabilize the patient. The patient needs to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 21 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission22") then
      LebanonMission22Smoke1 = trigger.misc.getZone('LebanonMission22-1-Smoke').point
      LebanonMission22Smoke1.y = land.getHeight( {x =LebanonMission22Smoke1.x, y = LebanonMission22Smoke1.z} )

      LebanonMission22Smoke2 = trigger.misc.getZone('LebanonMission22-2-Smoke').point
      LebanonMission22Smoke2.y = land.getHeight( {x =LebanonMission22Smoke2.x, y = LebanonMission22Smoke2.z} )

      LebanonMission22Smoke3 = trigger.misc.getZone('LebanonMission22-3-Smoke').point
      LebanonMission22Smoke3.y = land.getHeight( {x =LebanonMission22Smoke3.x, y = LebanonMission22Smoke3.z} )

      LebanonMission22Smoke4 = trigger.misc.getZone('LebanonMission22-4-Smoke').point
      LebanonMission22Smoke4.y = land.getHeight( {x =LebanonMission22Smoke4.x, y = LebanonMission22Smoke4.z} )

      LebanonMission22Smoke5 = trigger.misc.getZone('LebanonMission22-5-Smoke').point
      LebanonMission22Smoke5.y = land.getHeight( {x =LebanonMission22Smoke5.x, y = LebanonMission22Smoke5.z} )

      LebanonMission22Smoke6 = trigger.misc.getZone('LebanonMission22-6-Smoke').point
      LebanonMission22Smoke6.y = land.getHeight( {x =LebanonMission22Smoke6.x, y = LebanonMission22Smoke6.z} )
        coalition.addGroup(80,2,LebanonMission22)
        coalition.addGroup(80,2,LebanonMission22Scenery)
        trigger.action.effectSmokeBig(LebanonMission22Smoke1,4,1, "LebanonMission22-1-Smoke")
        trigger.action.effectSmokeBig(LebanonMission22Smoke2,4,1, "LebanonMission22-2-Smoke")
        trigger.action.effectSmokeBig(LebanonMission22Smoke3,4,1, "LebanonMission22-3-Smoke")
        trigger.action.effectSmokeBig(LebanonMission22Smoke4,4,1, "LebanonMission22-4-Smoke")
        trigger.action.effectSmokeBig(LebanonMission22Smoke5,4,1, "LebanonMission22-5-Smoke")
        trigger.action.smoke(LebanonMission22Smoke6,3)
        trigger.action.outText("Lebanon Mission #22 Spawned!",13)
        missioninfo = "A fire has broke out at a power plant south of the town of Saida "..lattitude.." "..longitude..". There is a mark on your map as well. Fire fighters have marked a safe place to land with orange smoke. Several power plant workers have suffered severe burns and need transport to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 22 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission23") then
        coalition.addGroup(80,2,LebanonMission23)
        coalition.addGroup(80,2,LebanonMission23Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #23 Spawned!",13)
        missioninfo = "A farmer was working on his car and it drop on his legs. He is located in the town of Bent Jbail "..lattitude.." "..longitude..". There is a mark on your map as well. Emergency services are on scene prepping the farmer for transport. The patient needs to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 23 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission24") then
        coalition.addGroup(80,2,LebanonMission24)
        coalition.addGroup(80,2,LebanonMission24Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #24 Spawned!",13)
        missioninfo = "A tourist at the Rest House Tyre Resort fell from his balcony severly injuring himself. The resort is located at "..lattitude.." "..longitude..". On the south shore of the city of Tyre. There is a mark on your map as well. Emergency services are on scene stabalizing the patient. The patient needs to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 24 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission25") then
        coalition.addGroup(80,2,LebanonMission25)
        coalition.addGroup(80,2,LebanonMission25Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #25 Spawned!",13)
        missioninfo = "A patient needs transfered to a more capable facility. The the medical clinic the patient is located at is in the town of Nabatieh "..lattitude.." "..longitude..". There is a mark on your map as well. The patient needs to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 25 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission26") then
        coalition.addGroup(80,2,LebanonMission26)
        coalition.addGroup(80,2,LebanonMission26Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #26 Spawned!",13)
        missioninfo = "An accident has occured involving a bus and sedan. The accident has occured North-East of the city of Chim "..lattitude.." "..longitude..". There is a mark on your map as well. The several indiviuals need to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 26 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission27") then
        coalition.addGroup(80,2,LebanonMission27)
        coalition.addGroup(80,2,LebanonMission27Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #27 Spawned!",13)
        missioninfo = "A dock worker fell from a tower changing a light bulb. The dock worker is on the pier in the town of Saida "..lattitude.." "..longitude..". There is a mark on your map as well. The dock worker needs to be taken to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 27 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission28") then
        --coalition.addGroup(80,2,LebanonMission27)
        coalition.addGroup(80,3,LebanonMission28Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #28 Spawned!",13)
        missioninfo = "A distress signal has been sent from the supply ship Tilde. They report one of their engineers got his arm stuck in some machinery below deck. The ship's last reported position was "..lattitude.." "..longitude..". There is a mark on your map as well. Find the ship, pick up the engineer, and take them to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 28 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission29") then
        --coalition.addGroup(80,2,LebanonMission27)
        coalition.addGroup(80,3,LebanonMission29Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #29 Spawned!",13)
        missioninfo = "A distress signal has been sent from the tanker Seawise Giant. They report one of their deckhands are having a heart attack. The ship's last reported position was "..lattitude.." "..longitude..". There is a mark on your map as well. They say they have come to a full stop for pick up. Find the ship, pick up the deck hand, and take them to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 29 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "LebanonMission30") then
        --coalition.addGroup(80,2,LebanonMission27)
        --coalition.addGroup(80,3,LebanonMission30Scenery)
        --trigger.action.effectSmokeBig(zone.point,1,1, "LebanonMission11-Smoke")
        trigger.action.outText("Lebanon Mission #30 Spawned!",13)
        missioninfo = "A distress signal has been sent from an oil rig off the coast. They report one of their deckhands got his leg caught in a chain and shattered it. The oil rigs position is "..lattitude.." "..longitude..". There is a mark on your map as well. Find the oil rig, pick up the deck hand, and take them to the nearest hospital or airport (in Lebanon)."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Lebanon Mission 30 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    end
end
