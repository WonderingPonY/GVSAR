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
        coalition.addGroup(80,2,CyprusMission1) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission1Scenery)
        -- trigger.action.smoke(zone.point,2) --Spawns smoke at the target location
        -- trigger.action.signalFlare(zone.point,2,30) -- Drops signalflare at the Zone location
        -- trigger.action.effectSmokeBig(zone.point,3,1) -- Adds smoke on the zone center
        trigger.action.outText("Cyprus Mission #1 Spawned!",15)
        missioninfo = "A power plant worker has been electrocuted needs to be taken to the hospital. Emergency crew is on scene stabalizing the worker. Power plant is at "..lattitude.." "..longitude.." There is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 1 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission2") then
        coalition.addGroup(80,2,CyprusMission2) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission2Scenery)
        coalition.addGroup(80,3,CyprusMission2Scenery2)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #2 Spawned!",15)
        missioninfo = "An accident has occured at a boating ramp at the Dağdere Reservoir, north of the town of Myrtou. A man has been run over while trying to back his boat down the ramp. The boat ramp is located at "..lattitude.." "..longitude..". There is a mark on your map as well. EMTs are on scene prepping the victim for transport."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 2 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission3") then
        coalition.addGroup(80,2,CyprusMission3) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission3Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #3 Spawned!",15)
        missioninfo = "An injured hiker needs evac from a fire watch station just to the east of Mount Olympus . The landing pad being used for pick up is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 3 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission4") then
        CyprusMission4Smoke = trigger.misc.getZone('CyprusMission4-Smoke').point
        CyprusMission4Smoke.y = land.getHeight( {x =CyprusMission4Smoke.x, y = CyprusMission4Smoke.z} )
        coalition.addGroup(80,2,CyprusMission4) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission4Scenery)
        trigger.action.effectSmokeBig(CyprusMission4Smoke,1,1, "CyprusMission4-Smoke")
        trigger.action.outText("Cyprus Mission #4 Spawned!",15)
        missioninfo = "A structure fire has broken out in the town of Pentageia. There is one burn victim that needs transport. The structure fire is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 4 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission5") then
        coalition.addGroup(80,2,CyprusMission5) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission5Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #5 Spawned!",15)
        missioninfo = "A farmer has been crushed by a hay bale and needs transport to the nearest hospital. The farm is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 5 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission6") then
        coalition.addGroup(80,2,CyprusMission6) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission6Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #6 Spawned!",15)
        missioninfo = "A tourist has fallen off a historical tower and needs transport to the nearest hospital. The ancient city of Soli is located at "..lattitude.." "..longitude..". There is a mark on your map as well.A tourist has become deathly ill at a local resort and local doctors arent sure whats wrong with them. He needs transport to the closest hospital. The resort is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 6 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission7") then
        coalition.addGroup(80,2,CyprusMission7) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission7Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #7 Spawned!",15)
        missioninfo = "A tourist has become deathly ill at a local resort and local doctors arent sure whats wrong with them. He needs transport to the closest hospital. The resort is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 7 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission8") then
        coalition.addGroup(80,2,CyprusMission8) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission8Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #8 Spawned!",15)
        missioninfo = "A group of people have been trapped in the Queens hotel for several days due to a furry convention. Three indiviuals are in need of medivac as they have been exposed to dangerous levels of furry cooties. The resort is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 8 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission9") then
        coalition.addGroup(80,2,CyprusMission9) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission9Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #9 Spawned!",15)
        missioninfo = "A drunk driver has driven through a wall and into a family's pool. The family is ok, but the drunk driver needs transport to the nearest hospital for is injuries. The house is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 9 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission10") then
      CyprusMission10Smoke = trigger.misc.getZone('CyprusMission10-Smoke').point
      CyprusMission10Smoke.y = land.getHeight( {x =CyprusMission10Smoke.x, y = CyprusMission10Smoke.z} )
        coalition.addGroup(80,2,CyprusMission10) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission10Scenery)
        trigger.action.effectSmokeBig(CyprusMission10Smoke,1,1, "CyprusMission10-Smoke")
        trigger.action.outText("Cyprus Mission #10 Spawned!",15)
        missioninfo = "An accident involving a tour bus and truck has occured on the coastal highway south of Pomos. Two tourists and the driver of the truck are in critcal condition. The wreck is located at "..lattitude.." "..longitude..". There is a mark on your map as well. Pick up the patients and transprt them to the nearest hospital"
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 10 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission11") then
        coalition.addGroup(80,2,CyprusMission11) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission11Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #11 Spawned!",15)
        missioninfo = "A child has fallen into the spillway of Asprokremmos Reservoir east of the city of Anarita. The child has broke both of their legs and needs transport to the nearest hospital. The reservoir is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 11 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission12") then
        coalition.addGroup(80,2,CyprusMission12) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission12Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #12 Spawned!",15)
        missioninfo = "Someone has been bitten by a blunt nosed viper while working in the field outside their house. EMS is on scene stabalizing the victim for transport to the nearest hospital. The incident occured in the town of Mazotos and is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 12 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission13") then
        coalition.addGroup(80,2,CyprusMission13) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission13Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #13 Spawned!",15)
        missioninfo = "Two off-road enthusiast had an accident on the trails causing them to hit a tree. The passenger is non-responsive and needs transport to the nearest hospital. The incident is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 13 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission14") then
        coalition.addGroup(80,2,CyprusMission14) --Adds the Group for the mission
        --coalition.addGroup(80,2,CyprusMission14Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #14 Spawned!",15)
        missioninfo = "A missing hiker has gotten lost in the hills east of Mount Olympus. After pinging the hikers cell phone we estimate the hiker be located somewhere around "..lattitude.." "..longitude..". There is a mark on your map as well. Find them and take them to the nearest hospital for medical evaluation."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 14 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission15") then
      coalition.addGroup(80,2,CyprusMission15) --Adds the Group for the mission
      coalition.addGroup(80,2,CyprusMission15Scenery)
      -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
      trigger.action.outText("Cyprus Mission #15 Spawned!",15)
        missioninfo = "A patient transfer has been requested from a small clinic. Patient believed to be having a stroke and needs to be taken to a larger hospital. The Clinc is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 15 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission16") then
        coalition.addGroup(80,2,CyprusMission16) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission16Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #16 Spawned!",15)
        missioninfo = "We recieved a call that a fisherman is having a heart attack at Lake Evretou. The fisherman is located on the north side of the lake. Lake Evretou is Southeast of the town of Polis and is located at "..lattitude.." "..longitude..". There is a mark on your map as well. Pick up the fisherman and take him to the nearest hospital."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 16 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission17") then
        coalition.addGroup(80,2,CyprusMission17) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission17Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #17 Spawned!",15)
        missioninfo = "Someone has fallen from the top of the waterslide at the UM Hotel. EMS on scene say the guest is critical and needs imediate air lift to the nearest hospital. The UM Hotel is west of the town of Polis and is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 17 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission18") then
        coalition.addGroup(80,2,CyprusMission18) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission18Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #18 Spawned!",15)
        missioninfo = "A worker at Vasilikos Power Station has been electricuted. Emergency services are on scene prepping the worker for transport to nearest hospital. The Vasilikos Power Station is east of the city of Limassol and is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 18 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission19") then
        coalition.addGroup(80,2,CyprusMission19) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission19Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #19 Spawned!",15)
        missioninfo = "A car has drove off a bridge outside the town of Morfou. Emergency services are on scene, one passenger in critical condition in need of transport to nearest hospital. The wreck is just east of the town of Morfou and is located at "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 19 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission20") then
        coalition.addGroup(80,2,CyprusMission20) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission20Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #20 Spawned!",15)
        missioninfo = "A tourist is having an allergic reaction to some concession stand food. Tourist does not have epipen and needs transport to nearest hospital. Tourist is located in old fort on the coast north of the city of Kyrenia, coordinates are "..lattitude.." "..longitude..". There is a mark on your map as well. You have been instructed to land inside the fort to expidite the pick up of said tourist."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 20 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission21") then
        coalition.addGroup(80,2,CyprusMission21) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission21Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #21 Spawned!",15)
        missioninfo = "A hiker has slipped and fallen down a cliff face and landed on a ledge some 30-40 feet down. The hiker is alive but going in and out of consciousness and needs immediate air evac. Park services on scene advise the ledge is large enough for a helicopter to land. The hiker is located south of the city of Trimithi, coordinates are "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 21 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission22") then
      CyprusMission22Smoke = trigger.misc.getZone('CyprusMission22-Smoke').point
      CyprusMission22Smoke.y = land.getHeight( {x =CyprusMission22Smoke.x, y = CyprusMission22Smoke.z} )
        coalition.addGroup(80,2,CyprusMission22) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission22Scenery)
        trigger.action.effectSmokeBig(CyprusMission22Smoke,1,1, "CyprusMission22-Smoke")
        trigger.action.outText("Cyprus Mission #22 Spawned!",15)
        missioninfo = "A large explosion and fire has broken out at a gas station west of Vasilia on the north coast. Several burn victims in critical condition needs urgent transport to the nearest hospital, coordinates are "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 22 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission23") then
      CyprusMission23Smoke = trigger.misc.getZone('CyprusMission23-Smoke').point
      CyprusMission23Smoke.y = land.getHeight( {x =CyprusMission23Smoke.x, y = CyprusMission23Smoke.z} )
        coalition.addGroup(80,2,CyprusMission23) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission23Scenery)
        trigger.action.effectSmokeBig(CyprusMission23Smoke,1,1, "CyprusMission23-Smoke")
        trigger.action.outText("Cyprus Mission #23 Spawned!",15)
        missioninfo = "Ugra Burger has caught on fire. A grease fire has burned two victims and are in critical condition and require urgent transport to the nearest hospital, coordinates are "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 23 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission24") then
        coalition.addGroup(80,2,CyprusMission24) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission24Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #24 Spawned!",15)
        missioninfo = "A failure in scafolding at the Lala Mustafa Pasha Mosque has caused a window washer to fall. The window washer has suffered severe head trama as well as a broken hip. Urgent transport to the nearest hospital is needed, the mosque coordinates are "..lattitude.." "..longitude..". It is located on the East coast of the island. There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 24 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission25") then
        coalition.addGroup(80,2,CyprusMission25) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission25Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #25 Spawned!",15)
        missioninfo = "A sailor for a cargo ship in Famagusta Port is having a heart attack. The sailor needs transport to the nearest hospital, the helipad for pick coordinates are "..lattitude.." "..longitude..". It is located on the East coast of the island. There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 24 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission26") then
        coalition.addGroup(80,2,CyprusMission26) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission26Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #26 Spawned!",15)
        missioninfo = "A pick up is requested at a local amusement park in the city of Ayia Napa. There was a malfunction with the rollercoaster causing one of the workers to have his arm severed, the pickup coordinates are "..lattitude.." "..longitude..". It is located on the Southeast coast of the island. There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 26 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission27") then
        coalition.addGroup(80,2,CyprusMission27) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission27Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #27 Spawned!",15)
        missioninfo = "A shark attack has accured just south of the city of Protaras. The victim is in critical condition and needs immediate transport to a hospital, the beach coordinates are "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 27 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission28") then
      --  coalition.addGroup(80,2,CyprusMission28) --Adds the Group for the mission
      --  coalition.addGroup(80,2,CyprusMission28Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #28 Spawned!",15)
        missioninfo = "An oil rig worker has colapsed and is complaining of chest pain, a medivac has been requested at te following coordinates "..lattitude.." "..longitude..". There is a mark on your map as well. The oil rig is located 5 miles off shore."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 28 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission29") then
        -- coalition.addGroup(80,2,EasyMission2BuildingFire)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #29 Spawned!",15)
        missioninfo = "There has been a fire on an oil rig Southwest of the island, several oil rig personel have sustained severe burns and need a medivac. Coordinates of the oil rig are "..lattitude.." "..longitude..". There is a mark on your map as well. The oil rig is located 7 miles off shore."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 29 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission30") then
        coalition.addGroup(80,2,CyprusMission30) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission30Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #30 Spawned!",15)
        missioninfo = "We recieved a call that someone has become stranded on a remote back road. Get out there, find, and bring back the stranded individual. Coordinates are as followed "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 30 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission31") then
        coalition.addGroup(80,2,CyprusMission31) --Adds the Group for the mission
      --  coalition.addGroup(80,2,CyprusMission31Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #31 Spawned!",15)
        missioninfo = "We just received word that there has been a missing hiker reported. Get out there, find, and bring back the missing hiker. Last cell phone pings point to the coordinates "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 31 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission32") then
        coalition.addGroup(80,2,CyprusMission32) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission32Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #32 Spawned!",15)
        missioninfo = "We just received word that a SAR ground team has found a missing hiker in critical condition. The ground team has relayed the following coordinates "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 32 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission33") then
        coalition.addGroup(80,2,CyprusMission33) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission33Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #33 Spawned!",15)
        missioninfo = "A patient pickup has been requested at the town of Lympia. Pick up coordinates are "..lattitude.." "..longitude..". There is a mark on your map as well. Get there and take the patient to the nearest hospital."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 33 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission34") then
        coalition.addGroup(80,2,CyprusMission34) --Adds the Group for the mission
        coalition.addGroup(80,2,CyprusMission34Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #34 Spawned!",15)
        missioninfo = "A farm hand has been kicked in the head by a cow. Pick up coordinates are "..lattitude.." "..longitude..". There is a mark on your map as well. Pick up the patient and take them to the nearest hospital. Watch out for the cows!"
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 34 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission35") then
        --coalition.addGroup(80,2,CyprusMission34) --Adds the Group for the mission
        coalition.addGroup(80,3,CyprusMission35Scenery)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        trigger.action.outText("Cyprus Mission #35 Spawned!",15)
        missioninfo = "We just recieved a distress call from the tanker Seawise Giant of the north coast of the island. Several crew members have fell to an unknown illness and need transport to the nearest hospital. Pick up coordinates are "..lattitude.." "..longitude..". There is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 35 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    end
end
