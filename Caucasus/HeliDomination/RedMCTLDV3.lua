_SETTINGS:SetPlayerMenuOff()
--red_ctld:__Load(10)
-- initialize and start a CTLD for the blue side, using helicopter groups named "Helicargo" and alias "Habubbery"
-- initialize CTLD
red_ctld = CTLD:New(coalition.side.RED,{"KM76","KM88","LM26","LM38","LM67","LM64","MM17","MM05","MM45","MM43"},"Debachery")


--SETTINGS
red_ctld.CrateDistance = 250-- List and Load crates in this radius only.
red_ctld.dropcratesanywhere = true -- Option to allow crates to be dropped anywhere.
red_ctld.maximumHoverHeight = 15 -- Hover max this high to load.
red_ctld.minimumHoverHeight = 4 -- Hover min this low to load.
red_ctld.forcehoverload = false -- Crates (not: troops) can **only** be loaded while hovering.
red_ctld.hoverautoloading = false -- Crates in CrateDistance in a LOAD zone will be loaded automatically if space allows.
red_ctld.smokedistance = 2000 -- Smoke or flares can be request for zones this far away (in meters).
red_ctld.movetroopstowpzone = false -- Troops and vehicles will move to the nearest MOVE zone...
red_ctld.movetroopsdistance = 5000 -- .. but only if this far away (in meters)
red_ctld.smokedistance = 2000 -- Only smoke or flare zones if requesting player unit is this far away (in meters)
red_ctld.suppressmessages = false -- Set to true if you want to script your own messages.
red_ctld.repairtime = 300 -- Number of seconds it takes to repair a unit.
red_ctld.cratecountry = country.id.RUSSIA -- ID of crates. Will default to country.id.RUSSIA for RED coalition setups.
red_ctld.allowcratepickupagain = true  -- allow re-pickup crates that were dropped.
red_ctld.enableslingload = true -- allow cargos to be slingloaded - might not work for all cargo types
red_ctld.pilotmustopendoors = false -- force opening of doors
red_ctld.SmokeColor = SMOKECOLOR.red -- default color to use when dropping smoke from heli
red_ctld.FlareColor = FLARECOLOR.red -- color to use when flaring from heli
red_ctld.basetype = "barrels_cargo" -- default shape of the cargo container
red_ctld.droppedbeacontimeout = 1200 -- dropped beacon lasts 10 minutes
red_ctld.usesubcats = true
red_ctld.enableLoadSave = true  --Allows auto saving of the files
red_ctld.saveinterval = 600 -- How often this save function saves
red_ctld.filename = "domination-red.csv" -- Filename for the save
red_ctld.filepath = "C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Missions" -- Path the save file will be saved to
red_ctld.eventoninject = true -- fire OnAfterCratesBuild and OnAfterTroopsDeployed events when loading (uses Inject functions) -- use sub-category names for crates, adds an extra menu layer in "Get Crates", useful if you have > 10 crate types.
red_ctld:__Start(5)

-- generate generically loadable stuff

--Troops
red_ctld:AddTroopsCargo("Anti-Tank Small 3",{"redATS"},CTLD_CARGO.Enum.TROOPS,3,80,nil,"Troops")
red_ctld:AddTroopsCargo("Anti-Air 4",{"redAA"},CTLD_CARGO.Enum.TROOPS,4,80,nil,"Troops")
red_ctld:AddTroopsCargo("Infrantry Section 8",{"redInfantrySection"},CTLD_CARGO.Enum.TROOPS,8,80,nil,"Troops")
-- red_ctld:AddTroopsCargo("Engineers 3",{"Engineers"},CTLD_CARGO.Enum.ENGINEERS,3,80,nil,"Troops")
-- red_ctld.EngineerSearch = 2000

--Light Armor
red_ctld:AddCratesCargo("Ammo Truck (1 crate)",{"Red Supply Truck"},CTLD_CARGO.Enum.VEHICLE,1,400,nil,"Light Armor")
red_ctld:AddCratesRepair("Humvee Repair (1 crate)","RedHumvee",CTLD_CARGO.Enum.REPAIR,1,400,nil,"Light Armor")
   red_ctld.repairtime = 300
red_ctld:AddCratesCargo("IFV BMD PLT (3 crates)",{"BMD"},CTLD_CARGO.Enum.VEHICLE,3,400,20,"Light Armor")
red_ctld:AddCratesCargo("BTR-80 PLT (3 crates)",{"BTR-80"},CTLD_CARGO.Enum.VEHICLE,4,400,20,"Light Armor")
red_ctld:AddCratesCargo("ReeceJTAC 1",{"Reece Red JTAC"},CTLD_CARGO.Enum.VEHICLE,1,400,nil,"Light Armor")


-- Armoured
red_ctld:AddCratesCargo("T-90 PLT (4 crates) ",{"T-72 PLT"},CTLD_CARGO.Enum.VEHICLE,4,400,10,"Armored")


--Anti Air
--red_ctld:AddCratesCargo("Patriot Large 6",{"BLUE SAM PatriotLarge"},CTLD_CARGO.Enum.FOB,6,400,nil,"Anti-Air")
red_ctld:AddCratesCargo("Tunguska (4 crates)",{"SA-19"},CTLD_CARGO.Enum.FOB,4,400,5,"Anti-Air")
--red_ctld:AddCratesCargo("Linebacker PLT",{"Linebacker"},CTLD_CARGO.Enum.VEHICLE,3,400,nil,"Anti-Air")
red_ctld:AddCratesCargo("Shilka PLT (3 crates)",{"Shilka"},CTLD_CARGO.Enum.VEHICLE,3,400,10,"Anti-Air")
red_ctld:AddCratesCargo("Strela PLT (3 crates)",{"Strela"},CTLD_CARGO.Enum.VEHICLE,3,400,10,"Anti-Air")
red_ctld:AddCratesCargo("EWR (2 crates)",{"RED EWR"},CTLD_CARGO.Enum.VEHICLE,2,400,3,"Anti-Air")
--red_ctld:AddCratesCargo("SA-8 PLT",{"Gecko"},CTLD_CARGO.Enum.VEHICLE,3,400,nil,"Anti-Air")

-- Base
--red_ctld:AddCratesCargo("Forward Ops Base",{"FOB"},CTLD_CARGO.Enum.FOB,4,400,nil,"Base")

-- Artillery
--red_ctld:AddCratesCargo("Dana 4",{"Dana"},CTLD_CARGO.Enum.VEHICLE,4,400,nil,"Artillery")
red_ctld:AddCratesCargo("2S19 Msta (4 crates)",{"Msta"},CTLD_CARGO.Enum.VEHICLE,4,400,10,"Artillery")

-- generate zone types
red_ctld:AddCTLDZone("Red KM76 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red KM88 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red LM26 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red LM38 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red LM67 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red LM64 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red MM17 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red MM05 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red MM45 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)
red_ctld:AddCTLDZone("Red MM43 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.red,true,true)


-- update unit capabilities for testing
--red_ctld:UnitCapabilities("SA342Mistral", false, false, 0, 0)
--red_ctld:UnitCapabilities("SA342L", false, false, 0, 0)
--red_ctld:UnitCapabilities("SA342M", false, false, 0, 0)
--red_ctld:UnitCapabilities("SA342Minigun", false, false, 0, 0)
red_ctld:UnitCapabilities("KA-50", false, false, 0, 0)
red_ctld:UnitCapabilities("Mi-8MT", true, true, 4, 24, 15, 3200)
red_ctld:UnitCapabilities("Mi-24P", true, true, 1, 8, 18, 1200)
--red_ctld:UnitCapabilities("UH-1H", true, true, 1, 8, 15, 1200)
