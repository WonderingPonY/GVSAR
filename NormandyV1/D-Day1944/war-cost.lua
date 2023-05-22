--This will get the ammo and fuel that the aircraft has
--Getting this when a player enters the aircraft
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


playerEntersAirEvent = {}
function playerEntersAirEvent:onEvent(Event)
    if Event.id == world.event.S_EVENT_PLAYER_ENTER_UNIT then
        if Event.initiator then
            if (Event.initiator:getDesc().category == 0) then
                unit = Event.initiator
                env.info(dump(unit))
                unitname = Object.getName(unit)
                env.info(unitname)
                unitammo = Unit.getByName(unitname):getAmmo()
                env.info(dump(unitammo))
                --trigger.action.outText(unitname.." Entered a Aircraft",20)
            end
        end
    end
end




world.addEventHandler(playerEntersAirEvent)