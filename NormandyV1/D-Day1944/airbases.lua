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

TimerLoopTime = 300 -- 5 minute timer
--Set up functions to run when a unit captures an airbase
AIRBASECAPTUREEVENTHANDLER = {}
function AIRBASECAPTUREEVENTHANDLER:onEvent(Event) -- Event handler for Airbases being captured
  if Event.id == world.event.S_EVENT_BASE_CAPTURED then
    if Event.initiator then
      if (Event.initiator:getCoalition() == 1) then -- If the event initiator is RED then it will continue
        baseName = Event.place:getName(Airbase) --Gets airbase name
        baseID = (Event.place:getID(Airbase) + 100000) -- Get airbase ID
        trigger.action.outText("Red Forces have captured Airbase ".. baseName,30) -- Tells Players that the airbase has been captured
        trigger.action.setMarkupColor(baseID,{1,0,0,1}) -- Sets the colour of the marker around the airbase
      end
      if (Event.initiator:getCoalition() == 2) then
        baseName = Event.place:getName(Airbase)
        baseID = (Event.place:getID(Airbase) + 100000)
        trigger.action.setMarkupColor(baseID,{0,0,1,1})
        trigger.action.outText("Blue Forces have captured Airbase ".. baseName,30)
      end
    end
  end
end



AIRBASECIRCLEMAKER = {}
function AIRBASECIRCLEMAKER() -- Function to make circles around all airbases on the map
  rAirbases = coalition.getAirbases(1) -- Gets the airbases that start as RED
  env.info("Red Airbases" .. dump(rAirbases)) -- Puts the airbases found that are RED in the log
  for i, rab in pairs(rAirbases) do -- Looks through the table
    rPoint = Airbase.getPoint(rab) -- Is the point(vec3) of the airbase
    rBaseID = (Airbase.getID(rab) + 100000) -- Is the ID of the airbase
    trigger.action.circleToAll(-1 , rBaseID , rPoint , 1981 , {1,0,0,1} , {0,0,0,0} , 5) -- Creates the marker at the airfield in RED
  end
  bAirbases = coalition.getAirbases(2) -- Gets the airbases that start as BLUE
  env.info("Blue Airbases" .. dump(bAirbases))
  for i, bab in pairs(bAirbases) do
    bPoint = Airbase.getPoint(bab)
    bBaseID = (Airbase.getID(bab) + 100000)
    trigger.action.circleToAll(-1 , bBaseID , bPoint , 1981 , {0,0,1,1} , {0,0,0,0} , 5)
  end
  nAirbases = coalition.getAirbases(0) -- Gets the airbases that start as Neutral
  env.info("Neutral Airbases" .. dump(nAirbases))
  for i, nab in pairs(nAirbases) do
    nPoint = Airbase.getPoint(nab)
    nBaseID = (Airbase.getID(nab) + 100000)
    trigger.action.circleToAll(-1 , nBaseID , nPoint , 1981 , {192,192,192,1} , {0,0,0,0} , 5)
  end
end


function AIRBASECONTESTED(timeloop, time) -- Funtion to search for contested Zones in a timeloop
  env.info("RUNNING CONTESTED SCANNER") -- Tells if the function is running in the DCS log

AirbaseZones = { -- This is the list of all the Zones at the airfields
  "Maupertus",
  "Biniville",
  "Azeville",
  "Beuzeville",
  "Picauville",
  "Cretteville",
  "Meautis",
  "Lessay",
  "Brucheville",
  "Cardonville",
  "Saint Pierre du Mont",
  "Cricqueville-en-Bessin",
  "Sainte-Laurent-sur-Mer",
  "Longues-sur-Mer",
  "Sommervieu",
  "Chippelle",
  "Le Molay",
  "Lignerolles",
  "Rucqueville",
  "Lantheuil",
  "Bazenville",
  "Sainte-Croix-sur-Mer",
  "Beny-sur-Mer",
  "Carpiquet",
  "Essay",
  "Hauterive",
  "Barville",
  "Argentan",
  "Goulet",
  "Vrigny",
  "Conches",
  "Evreux"
}

for i, abz in pairs(AirbaseZones) do
  RedAirbaseContested = ScanZone(Object.Category.UNIT, coalition.side.BLUE, abz) -- Scans the Zones for BLUE ground Units
  BlueAirbaseContested = ScanZone(Object.Category.UNIT, coalition.side.RED, abz) -- Scans the Zones for RED ground units
  -- env.info(abz)
  ab = Airbase.getByName(abz) -- Gets the Airbase name
  abid = (ab.getID(ab) + 1000) -- Gets the listed airbase ID
    if RedAirbaseContested and BlueAirbaseContested ~= nil then -- RED and BLUE forces are seen in the Zone
      trigger.action.setMarkupColor(abid , {192,192,0,1} ) -- Changes the colour of the marker
      trigger.action.outText(abz.."is being contested", 15) -- Tells the players if the Zone is contested
    end
    if BlueAirbaseContested and RedAirbaseContested ~= nil then
      trigger.action.setMarkupColor(abid , {192,192,0,1} )
      trigger.action.outText(abz.."is being contested", 15)
    end
    if BlueAirbaseContested == nil and RedAirbaseContested == nil then
      trigger.action.setMarkupColor(abid , {192,192,192,1} )
      -- trigger.action.outText(abz.."is not controlled", 15)
    end
  end
  return time + TimerLoopTime -- Returns to the start of the loop
end

-- function AIRBASECONTESTED(timeloop, time) -- Funtion to search for contested Zones in a timeloop
--   env.info("RUNNING CONTESTED SCANNER") -- Tells if the function is running in the DCS log
--
-- AirbaseZones = { -- This is the list of all the Zones at the airfields
--   "WA70",
-- "WA60",
-- "WA50",
-- "WA40",
-- "WA30",
-- "WA20",
-- "WA10",
-- "WV19",
-- "WV29",
-- "WV39",
-- "WV49",
-- "WV59",
-- "WV69",
-- "WV79",
-- "WA80",
-- "WV89",
-- "WV99",
-- "WA90",
-- "XA00",
-- "XV09",
-- "XV19",
-- "XA10",
-- "XA20",
-- "XV29",
-- "XV39",
-- "XA30",
-- "XA40",
-- "XV49",
-- "XA50",
-- "XV59",
-- "XV69",
-- "XV79",
-- "XA70",
-- "XA60",
-- "XA80",
-- "XV89",
-- "XV99",
-- "XA90",
-- "YA00",
-- "YV09",
-- "WV18",
-- "WV28",
-- "WV38",
-- "WV48",
-- "WV58",
-- "WV68",
-- "WV78",
-- "WV88",
-- "WV98",
-- "XV08",
-- "XV18",
-- "XV28",
-- "XV38",
-- "XV48",
-- "XV58",
-- "XV68",
-- "XV78",
-- "XV88",
-- "XV98",
-- "YV08",
-- "YV07",
-- "XV97",
-- "XV87",
-- "XV77",
-- "XV67",
-- "XV57",
-- "XV47",
-- "XV37",
-- "XV27",
-- "XV17",
-- "XV07",
-- "WV97",
-- "WV87",
-- "WV77",
-- "WV67",
-- "WV57",
-- "WV47",
-- "WV37",
-- "WV27",
-- "WV17",
-- "WV16",
-- "WV26",
-- "WV36",
-- "WV46",
-- "WV56",
-- "WV66",
-- "WV76",
-- "WV86",
-- "WV96",
-- "XV06",
-- "XV16",
-- "XV26",
-- "XV36",
-- "XV46",
-- "XV56",
-- "XV66",
-- "XV76",
-- "XV86",
-- "XV96",
-- "YV06",
-- "YV05",
-- "XV95",
-- "XV85",
-- "XV75",
-- "XV65",
-- "XV55",
-- "XV45",
-- "XV35",
-- "XV25",
-- "XV15",
-- "XV05",
-- "WV95",
-- "WV85",
-- "WV75",
-- "WV65",
-- "WV55",
-- "WV45",
-- "WV35",
-- "WV25",
-- "WV15",
-- "WV14",
-- "WV24",
-- "WV34",
-- "WV44",
-- "WV54",
-- "WV64",
-- "WV74",
-- "WV84",
-- "WV94",
-- "XV04",
-- "XV14",
-- "XV24",
-- "XV34",
-- "XV44",
-- "XV54",
-- "XV64",
-- "XV74",
-- "XV84",
-- "XV94",
-- "YV04",
-- "YV03",
-- "XV93",
-- "XV83",
-- "XV73",
-- "XV63",
-- "XV53",
-- "XV43",
-- "XV33",
-- "XV23",
-- "XV13",
-- "XV03",
-- "WV93",
-- "WV83",
-- "WV73",
-- "WV63",
-- "WV53",
-- "WV43",
-- "WV33",
-- "WV23",
-- "WV13",
-- "WV12",
-- "WV22",
-- "WV32",
-- "WV42",
-- "WV52",
-- "WV62",
-- "WV72",
-- "WV82",
-- "WV92",
-- "XV02",
-- "XV12",
-- "XV22",
-- "XV32",
-- "XV42",
-- "XV52",
-- "XV62",
-- "XV72",
-- "XV82",
-- "XV92",
-- "YV02",
-- "YV12",
-- "YV11",
-- "YV10",
-- "YU19",
-- "YU18",
-- "YU17",
-- "YU16",
-- "YU06",
-- "YU07",
-- "YU08",
-- "YU09",
-- "YU00",
-- "YU01",
-- "XV91",
-- "XV90",
-- "XU99",
-- "XU98",
-- "XU97",
-- "XU96",
-- "XU86",
-- "XU87",
-- "XU88",
-- "XU89",
-- "XV80",
-- "XV81",
-- "XV71",
-- "XV70",
-- "XU79",
-- "XU78",
-- "XU77",
-- "XU76",
-- "XU66",
-- "XU56",
-- "XU57",
-- "XU67",
-- "XU68",
-- "XU58",
-- "XU59",
-- "XU69",
-- "XU60",
-- "XV50",
-- "XV61",
-- "XV51",
-- "XV41",
-- "XV31",
-- "XV21",
-- "XV11",
-- "XV01",
-- "WV91",
-- "WV81",
-- "WV71",
-- "WV61",
-- "WV51",
-- "WV41",
-- "WV31",
-- "WV21",
-- "WV11",
-- "WV10",
-- "WV20",
-- "WV30",
-- "WV40",
-- "WV50",
-- "WV60",
-- "WV70",
-- "WV80",
-- "WV90",
-- "XV00",
-- "XV10",
-- "XV20",
-- "XV30",
-- "XV40",
-- "XU49",
-- "XU39",
-- "XU29",
-- "XU19",
-- "XU09",
-- "WU99",
-- "WU89",
-- "WU79",
-- "WU69",
-- "WU59",
-- "UW49",
-- "WU39",
-- "WU29",
-- "WU19",
-- "YV13",
-- "YV14",
-- "YV15",
-- "YV16",
-- "YV17",
-- "YV18",
-- "YV19",
-- "YA10",
-- "YU26",
-- "YU27",
-- "YU28",
-- "YU29",
-- "YV20",
-- "YV21",
-- "BQ71",
-- "BQ70",
-- "BP79",
-- "BP78",
-- "BP77",
-- "BP76",
-- "BP96",
-- "BP86",
-- "CP06",
-- "CP07",
-- "CP17",
-- "CP16",
-- "CP26",
-- "CP27",
-- "BP97",
-- "BP87",
-- "BP88",
-- "BP98",
-- "CP08",
-- "CP18",
-- "CP19",
-- "CP09",
-- "BP99",
-- "BP89",
-- "BQ80",
-- "BQ81",
-- "BQ82",
-- "BQ83",
-- "BQ84",
-- "BQ85",
-- "BQ86",
-- "BQ87",
-- "BQ88",
-- "BQ89",
-- "BR80",
-- "BR90",
-- "BQ99",
-- "BQ98",
-- "BQ97",
-- "BQ96",
-- "BQ95",
-- "BQ94",
-- "BQ93",
-- "BQ92",
-- "BQ91",
-- "BQ90",
-- "CQ00",
-- "CQ10",
-- "CQ11",
-- "CQ01",
-- "CQ02",
-- "CQ12",
-- "CQ13",
-- "CQ03",
-- "CQ04",
-- "CQ14",
-- "CQ15",
-- "CQ05",
-- "CQ06",
-- "CQ16",
-- "CQ17",
-- "CQ07",
-- "CQ08",
-- "CQ18",
-- "CQ19",
-- "CQ09",
-- "CR00",
-- "CR10",
-- "CP28",
-- "CP29",
-- "CQ20",
-- "CQ21",
-- "CQ22",
-- "CQ23",
-- "CQ24",
-- "CQ25",
-- "CQ26",
-- "CQ27",
-- "CQ28",
-- "CQ29",
-- "CR20",
-- "CR30",
-- "CR40",
-- "CR50",
-- "CR60",
-- "CR70",
-- "CR80",
-- "CQ89",
-- "CQ88",
-- "CQ78",
-- "CQ79",
-- "CQ69",
-- "CQ68",
-- "CQ67",
-- "CQ77",
-- "CQ87",
-- "CQ57",
-- "CQ47",
-- "CQ37",
-- "CQ38",
-- "CQ48",
-- "CQ58",
-- "CQ59",
-- "CQ49",
-- "CQ39",
-- "CQ36",
-- "CQ46",
-- "CQ56",
-- "CQ66",
-- "CQ76",
-- "CQ86",
-- "CQ75",
-- "CQ74",
-- "CQ64",
-- "CQ65",
-- "CQ55",
-- "CQ45",
-- "CQ35",
-- "CQ34",
-- "CQ44",
-- "CQ54",
-- "CQ33",
-- "CQ43",
-- "CQ53",
-- "CQ63",
-- "CQ73",
-- "CQ72",
-- "CQ62",
-- "CQ52",
-- "CQ42",
-- "CQ32",
-- "CQ31",
-- "CQ41",
-- "CQ51",
-- "CQ61",
-- "CQ71",
-- "CQ70",
-- "CQ60",
-- "CQ50",
-- "CQ40",
-- "CQ30",
-- "CP39",
-- "CP49",
-- "CP59",
-- "CP69",
-- "CP79",
-- "CP78",
-- "CP68",
-- "CP58",
-- "CP48",
-- "CP38",
-- "CP37",
-- "CP47",
-- "CP57",
-- "CP67",
-- "CP77",
-- "CP36",
-- "CP46",
-- "CP56"
-- }
--
-- for i, abz in pairs(AirbaseZones) do
--   RedAirbaseContested = ScanZone(Object.Category.UNIT, coalition.side.BLUE, abz) -- Scans the Zones for BLUE ground Units
--   BlueAirbaseContested = ScanZone(Object.Category.UNIT, coalition.side.RED, abz) -- Scans the Zones for RED ground units
--   ab = Airbase.getByName(abz) -- Gets the Airbase name
--   env.info("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
--   abid = (Airbase.getID(ab) + 1000) -- Gets the listed airbase ID
--     if RedAirbaseContested and BlueAirbaseContested ~= nil then -- RED and BLUE forces are seen in the Zone
--       env.info("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB")
--       trigger.action.setMarkupColor(abid , {192,192,0,1} ) -- Changes the colour of the marker
--       trigger.action.outText(abz.."is being contested", 15) -- Tells the players if the Zone is contested
--     end
--     if BlueAirbaseContested and RedAirbaseContested ~= nil then
--       trigger.action.setMarkupColor(abid , {192,192,0,1} )
--       trigger.action.outText(abz.."is being contested", 15)
--     end
--     if BlueAirbaseContested == nil and RedAirbaseContested == nil then
--       trigger.action.setMarkupColor(abid , {192,192,192,1} )
--       trigger.action.outText(abz.."is being contested", 15)
--     end
--   end
--   return time + TimerLoopTime -- Returns to the start of the loop
-- end

timer.scheduleFunction(AIRBASECONTESTED, 53, timer.getTime() + TimerLoopTime) -- Schedule timer for the Contested Function
timer.scheduleFunction(AIRBASECIRCLEMAKER, 53, timer.getTime() + 10) -- Schedule timer for the Circles around the airbases
world.addEventHandler(AIRBASECAPTUREEVENTHANDLER) -- Scheduler for the capture of airbases
