local gv_csar = CSAR:New(coalition.side.BLUE,"Downed Pilot","Luftrettung")

-- options
  gv_csar.allowDownedPilotCAcontrol = false -- Set to false if you don\'t want to allow control by Combined Arms.
  gv_csar.allowFARPRescue = true -- allows pilots to be rescued by landing at a FARP or Airbase. Else MASH only!
  gv_csar.FARPRescueDistance = 100 -- you need to be this close to a FARP or Airport for the pilot to be rescued.
  gv_csar.autosmoke = false -- automatically smoke a downed pilot\'s location when a heli is near.
  gv_csar.autosmokedistance = 1000 -- distance for autosmoke
  gv_csar.coordtype = 1 -- Use Lat/Long DDM (0), Lat/Long DMS (1), MGRS (2), Bullseye imperial (3) or Bullseye metric (4) for coordinates.
  gv_csar.csarOncrash = false -- (WIP) If set to true, will generate a downed pilot when a plane crashes as well.
  gv_csar.enableForAI = false -- set to false to disable AI pilots from being rescued.
  gv_csar.pilotRuntoExtractPoint = true -- Downed pilot will run to the rescue helicopter up to self.extractDistance in meters.
  gv_csar.extractDistance = 500 -- Distance the downed pilot will start to run to the rescue helicopter.
  gv_csar.immortalcrew = true -- Set to true to make wounded crew immortal.
  gv_csar.invisiblecrew = false -- Set to true to make wounded crew insvisible.
  gv_csar.loadDistance = 75 -- configure distance for pilots to get into helicopter in meters.
  gv_csar.mashprefix = {"MASH"} -- prefixes of #GROUP objects used as MASHes.
  gv_csar.max_units = 6 -- max number of pilots that can be carried if #CSAR.AircraftType is undefined.
  gv_csar.messageTime = 15 -- Time to show messages for in seconds. Doubled for long messages.
  gv_csar.radioSound = "beacon.ogg" -- the name of the sound file to use for the pilots\' radio beacons.
  gv_csar.smokecolor = 4 -- Color of smokemarker, 0 is green, 1 is red, 2 is white, 3 is orange and 4 is blue.
  gv_csar.useprefix = true  -- Requires CSAR helicopter #GROUP names to have the prefix(es) defined below.
  gv_csar.csarPrefix = { "Alpha", "MEDEVAC"} -- #GROUP name prefixes used for useprefix=true - DO NOT use # in helicopter names in the Mission Editor!
  gv_csar.verbose = 0 -- set to > 1 for stats output for debugging.
  gv_csar.limitmaxdownedpilots = true
  gv_csar.maxdownedpilots = 30
  gv_csar.approachdist_far = 5000 -- switch do 10 sec interval approach mode, meters
  gv_csar.approachdist_near = 3000 -- switch to 5 sec interval approach mode, meters
  gv_csar.pilotmustopendoors = false -- switch to true to enable check of open doors
  gv_csar.suppressmessages = false -- switch off all messaging if you want to do your own
  gv_csar.rescuehoverheight = 30 -- max height for a hovering rescue in meters
  gv_csar.rescuehoverdistance = 10 -- max distance for a hovering rescue in meters

-- start the FSM
   gv_csar:__Start(5)
