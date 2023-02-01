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

--This is the script to build warehouses in the Normandy v1 mission, "Battle for Normandy"

PLAYERENTERSLOTEVENTHANDLER = {}
function PLAYERENTERSLOTEVENTHANDLER:onEvent(Event) -- For player(commander) enters a unit
  if Event.id == world.event.S_EVENT_PLAYER_ENTER_UNIT then
    if Event.initiator then
      if (Event.initiator:getCoalition() == 2) and (Event.initiator:getDesc().category == 2) then
        env.info("BLUE COMMANDER ENTERED GROUND UNIT-----------------------")
        trigger.action.outText("COMMANDER ENTERED GROUND UNIT-----------------",20)
        unit = Event.initiator
        blueUnitName = unit:getName()
        blueunitGroup = unit:getGroup()
        env.info(blueUnitName)
        if string.match(blueUnitName,"WarehouseMan") then
            commandparams = {blueUnitName, "bobthebuilder"}
            missionCommands.addCommandForGroup(blueunitGroup:getID(),"Build Warehouse)", warehouseCommandsMenu, warehouseMan, commandparams)
        end
      end
    end
  end
end

function warehouseMan(commandparams)
    if commandparams[2] == "bobthebuilder" then
        group = GROUP:FindByName(commandparams[1]):Destroy()
        groupcoord = group:GetCoordinate()
        warehouse = SPAWNSTATIC:NewFromStatic("Warehouse", country.id.USA)
        warehouse:SpawnFromCoordinate(groupcoord,360,"The Great Dickhouse")
    end
end

world.addEventHandler(PLAYERENTERSLOTEVENTHANDLER)