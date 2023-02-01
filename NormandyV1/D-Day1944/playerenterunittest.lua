PLAYERENTERSLOTEVENTHANDLER = {}
function PLAYERENTERSLOTEVENTHANDLER:onEvent(Event) -- Event handler for Airbases being captured
  if Event.id == world.event.S_EVENT_PLAYER_ENTER_UNIT then
    if Event.initiator then
      if (Event.initiator:getCoalition() == 1) and (Event.initiator:getDesc().category == 2) then -- If the event initiator is RED then it will continue
        env.info("RED PLAYER ENTERED GROUND UNIT-----------------------")
        trigger.action.outText("RED PLAYER ENTERED GROUND UNIT-----------------",20)
      end
    end
  end
end


world.addEventHandler(PLAYERENTERSLOTEVENTHANDLER) -- Scheduler for the capture of airbases
