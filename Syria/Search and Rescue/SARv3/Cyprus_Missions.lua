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
        missioninfo = "A Mechanic has broken his leg while working on his Vehicle. He needs to be taken to the hospital and is at "..lattitude.." "..longitude.." Look for a Blue Vehicle, there is a mark on your map."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 1 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)

    elseif (zonename == "CyprusMission2") then
        -- coalition.addGroup(80,2,EasyMission2BuildingFire)
        -- trigger.action.effectSmokeBig(zone.point,1,1, "EasyMission2-Smoke")
        -- trigger.action.outText("Easy Mission #2 Spawned!",15)
        missioninfo = "A structure has caught fire. There are fire rescue on the way however they will not be there in time you must retreive the victims and take them to one of the Hospitals in Adana. The structure fire is located at "..lattitude.." "..longitude.." South East of Yenidam, there is a mark on your map as well."
        groupId = group:getID()
        trigger.action.outTextForGroup(groupId,missioninfo,15)
        params = {groupId,missioninfo}
        missionCommands.addCommandForGroup(groupId, "Mission Info", {[1] = "Rescue Command"}, displayMissionInfo, params)
        trigger.action.markToGroup((groupId*51515151),"Cyprus Mission 2 for "..Unit.getPlayerName(unit1),zone["point"],groupId,true)
    end
end
