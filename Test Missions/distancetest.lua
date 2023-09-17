-- Calculate the distance from center of the Landing Test Zone
PLAYERLANDS = {}
function PLAYERLANDS:onEvent(Event)
  if Event.id == world.event.S_EVENT_LAND then
    env.info("Player Landed")
    unit = Event.initiator
    unitP = Unit.getPoint(unit)
    unitGroup = unit:getGroup()
    if Group.getName(unitGroup) == "Tester-1" then
        result = ScanZone("LandingTest-1", Group.getName(unitGroup))
        zoneP = trigger.misc.getZone("LandingTest-1").point
        zoneH = land.getHeight({x = zoneP.x, y = zoneP.z})
        distance = math.sqrt((zoneP.x-unitP.x)^2 + (zoneP.z - unitP.z)^2)
        --distance = math.sqrt((zoneP.x-unitP.x)^2 + (zoneP.y - unitP.y)^2 + (zoneP.z - unitP.z)^2) - zoneH
        distanceFeet = math.floor((distance * 3.281) + 0.5)
        trigger.action.outText(Unit.getPlayerName(unit).."'s "..distanceFeet.."FT From Center", 15)
    elseif Group.getName(unitGroup) == "Tester-2" then
        -- result = ScanZone("LandingTest-2", Group.getName(unitGroup))
        -- zoneP = trigger.misc.getZone("WireTest-1").point
        -- zoneH = land.getHeight({x = zoneP.x, y = zoneP.z})
        -- distance = math.sqrt((zoneP.x-unitP.x)^2 + (zoneP.z - unitP.z)^2)
        -- --distance = math.sqrt((zoneP.x-unitP.x)^2 + (zoneP.y - unitP.y)^2 + (zoneP.z - unitP.z)^2) - zoneH
        -- distanceFeet = math.floor((distance * 3.281) + 0.5)
        -- trigger.action.outText(Unit.getPlayerName(unit).."'s "..distanceFeet.."FT From the Wire", 15)
        trigger.action.circleToAll(-1, Group.getID(unitGroup) + 100000, unitP, 1, {255, 0, 255, 1}, {255, 0, 255, 1}, 1, True)
    end
  end
end

function hoverTest(args,time)
    group = Group.getByName("Tester-1")
    unit1 = Group.getUnit(Group.getByName("Tester-1"),1)
    unitP = Unit.getPoint(unit1)
    zoneP = trigger.misc.getZone("HoverTest-1").point
    zoneH = land.getHeight({x = zoneP.x, y = zoneP.z})
    distance = math.sqrt((zoneP.x-unitP.x)^2 + (zoneP.z - unitP.z)^2)
    height = math.sqrt((zoneP.y - unitP.y)^2) - zoneH
    distanceFeet = math.floor((distance * 3.281) + 0.5)
    heightFeet = math.floor((height * 3.281) + 0.5)
    trigger.action.outText(distanceFeet.." "..heightFeet, 15, true)
    return time + 1
end

-- timer.scheduleFunction(hoverTest, {}, timer.getTime() + 1)
world.addEventHandler(PLAYERLANDS)