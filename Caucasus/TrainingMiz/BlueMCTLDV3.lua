_SETTINGS:SetPlayerMenuOff()

-- initialize and start a CTLD for the blue side, using helicopter groups named "Helicargo" and alias "Habubbery"
-- initialize CTLD
blue_ctld = CTLD:New(coalition.side.BLUE,{"WP1","WP2","WP3","WP4"},"Habubery")
-- blue_ctld:__Load(10) -- Initial Loading of the saved units

--SETTINGS
blue_ctld.CrateDistance = 250-- List and Load crates in this radius only.
blue_ctld.dropcratesanywhere = true -- Option to allow crates to be dropped anywhere.
blue_ctld.maximumHoverHeight = 15 -- Hover max this high to load.
blue_ctld.minimumHoverHeight = 4 -- Hover min this low to load.
blue_ctld.forcehoverload = false -- Crates (not: troops) can **only** be loaded while hovering.
blue_ctld.hoverautoloading = false -- Crates in CrateDistance in a LOAD zone will be loaded automatically if space allows.
blue_ctld.smokedistance = 2000 -- Smoke or flares can be request for zones this far away (in meters).
blue_ctld.movetroopstowpzone = false -- Troops and vehicles will move to the nearest MOVE zone...
blue_ctld.movetroopsdistance = 5000 -- .. but only if this far away (in meters)
blue_ctld.smokedistance = 2000 -- Only smoke or flare zones if requesting player unit is this far away (in meters)
blue_ctld.suppressmessages = false -- Set to true if you want to script your own messages.
blue_ctld.repairtime = 300 -- Number of seconds it takes to repair a unit.
blue_ctld.cratecountry = country.id.GERMANY -- ID of crates. Will default to country.id.RUSSIA for RED coalition setups.
blue_ctld.allowcratepickupagain = true  -- allow re-pickup crates that were dropped.
blue_ctld.enableslingload = true -- allow cargos to be slingloaded - might not work for all cargo types
blue_ctld.pilotmustopendoors = false -- force opening of doors
blue_ctld.SmokeColor = SMOKECOLOR.blue -- default color to use when dropping smoke from heli
blue_ctld.FlareColor = FLARECOLOR.blue -- color to use when flaring from heli
blue_ctld.basetype = "barrels_cargo" -- default shape of the cargo container
blue_ctld.droppedbeacontimeout = 1200 -- dropped beacon lasts 10 minutes
blue_ctld.usesubcats = true -- use sub-category names for crates, adds an extra menu layer in "Get Crates", useful if you have > 10 crate types.
-- blue_ctld.enableLoadSave = true --Allows auto saving of the files
-- blue_ctld.saveinterval = 600 -- How often this save function saves
-- blue_ctld.filename = "domination-blue.csv" -- Filename for the save
-- blue_ctld.filepath = "C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Missions" -- Path the save file will be saved to
-- blue_ctld.eventoninject = true -- fire OnAfterCratesBuild and OnAfterTroopsDeployed events when loading (uses Inject functions)
blue_ctld:__Start(5)

-- generate generically loadable stuff

--Troops
blue_ctld:AddTroopsCargo("Anti-Tank Small 3",{"ATS"},CTLD_CARGO.Enum.TROOPS,3,80,nil,"Troops")
blue_ctld:AddTroopsCargo("Anti-Air 4",{"AA"},CTLD_CARGO.Enum.TROOPS,4,80,nil,"Troops")
blue_ctld:AddTroopsCargo("Infrantry Section 8",{"InfantrySection"},CTLD_CARGO.Enum.TROOPS,8,80,nil,"Troops")
-- blue_ctld:AddTroopsCargo("Engineers 3",{"Engineers"},CTLD_CARGO.Enum.ENGINEERS,3,80,nil,"Troops")
-- blue_ctld.EngineerSearch = 2000

--Light Armor
blue_ctld:AddCratesCargo("Ammo Truck",{"Supply Truck"},CTLD_CARGO.Enum.VEHICLE,1,400,nil,"Light Armor")
-- blue_ctld:AddCratesRepair("Humvee Repair","Humvee",CTLD_CARGO.Enum.REPAIR,1,400,nil,"Light Armor")
--    blue_ctld.repairtime = 300
blue_ctld:AddCratesCargo("LAV Mephisto 3 (4 crates)",{"LAV Mephisto"},CTLD_CARGO.Enum.VEHICLE,4,400,80,"Light Armor")
blue_ctld:AddCratesCargo("MG Stryker (3 crates)",{"Stryker"},CTLD_CARGO.Enum.VEHICLE,3,400,60,"Light Armor")
blue_ctld:AddCratesCargo("IFV Warrior (4 crates)",{"Warrior"},CTLD_CARGO.Enum.VEHICLE,4,400,80,"Light Armor")
-- blue_ctld:AddCratesCargo("IFV Lav-25 (3 crates)",{"Lav-25"},CTLD_CARGO.Enum.VEHICLE,3,400,60,"Light Armor")
--blue_ctld:AddCratesCargo("ReeceJTAC (1 crate)",{"Reece Blue JTAC"},CTLD_CARGO.Enum.VEHICLE,1,400,nil,"Light Armor")


-- Armoured
blue_ctld:AddCratesCargo("LEOPARD (4 crates)",{"LEOPARD"},CTLD_CARGO.Enum.VEHICLE,4,400,40,"Armored")
blue_ctld:AddCratesCargo("Chieftain Mk3 (4 crates)",{"Chieftain Mk3"},CTLD_CARGO.Enum.VEHICLE,4,400,40,"Armored")

--Anti Air
--blue_ctld:AddCratesCargo("Patriot Large 6",{"BLUE SAM PatriotLarge"},CTLD_CARGO.Enum.FOB,6,400,nil,"Anti-Air")
blue_ctld:AddCratesCargo("Rapier site (4 crates)",{"BLUE SAM Rapier Site"},CTLD_CARGO.Enum.FOB,4,400,20,"Anti-Air")
blue_ctld:AddCratesCargo("SAM Linebackers (4 crates)",{"SAM Linebackers"},CTLD_CARGO.Enum.FOB,4,400,20,"Anti-Air")
-- blue_ctld:AddCratesCargo("2 LC ZU-23 (2 crates)",{"LC ZU-23"},CTLD_CARGO.Enum.FOB,2,400,nil,"Anti-Air")
-- blue_ctld:AddCratesCargo("2 40mm Bofors (3 crates)",{"40mm Bofors"},CTLD_CARGO.Enum.FOB,3,400,60,"Anti-Air")
-- blue_ctld:AddCratesCargo("Linebacker PLT",{"Linebacker"},CTLD_CARGO.Enum.VEHICLE,3,400,nil,"Anti-Air")
blue_ctld:AddCratesCargo("Gepard PLT(3 crates)",{"Gepard PLT"},CTLD_CARGO.Enum.VEHICLE,3,400,30,"Anti-Air")
blue_ctld:AddCratesCargo("Avenger PLT(3 crates)",{"Avenger PLT"},CTLD_CARGO.Enum.VEHICLE,3,400,30,"Anti-Air")
blue_ctld:AddCratesCargo("EWR (2 crates)",{"BLUE EWR"},CTLD_CARGO.Enum.VEHICLE,2,400,6,"Anti-Air")
--blue_ctld:AddCratesCargo("SA-8 PLT",{"Gecko"},CTLD_CARGO.Enum.VEHICLE,3,400,nil,"Anti-Air")

-- Base
--blue_ctld:AddCratesCargo("Forward Ops Base",{"FOB"},CTLD_CARGO.Enum.FOB,4,400,nil,"Base")

-- Artillery
blue_ctld:AddCratesCargo("MLRS M270 (4 crates)",{"M270"},CTLD_CARGO.Enum.VEHICLE,4,400,nil,"Artillery")
blue_ctld:AddCratesCargo("Panzer 2000 (4 crates)",{"Panzer2000"},CTLD_CARGO.Enum.VEHICLE,4,400,40,"Artillery")
blue_ctld:AddCratesCargo("Dana (4 crates)",{"Dana"},CTLD_CARGO.Enum.VEHICLE,4,400,40,"Artillery")

-- generate zone types
blue_ctld:AddCTLDZone("WP1 Zone",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
blue_ctld:AddCTLDZone("WP2 Zone",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
blue_ctld:AddCTLDZone("WP3 Zone",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
blue_ctld:AddCTLDZone("WP4 Zone",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
-- blue_ctld:AddCTLDZone("Blue LM97 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
-- blue_ctld:AddCTLDZone("Blue LM95 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
-- blue_ctld:AddCTLDZone("Blue LM68 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
-- blue_ctld:AddCTLDZone("Blue LM54 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
-- blue_ctld:AddCTLDZone("Blue LM26 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
-- blue_ctld:AddCTLDZone("Blue LM08 FARP",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)


-- update unit capabilities for testing
blue_ctld:UnitCapabilities("SA342Mistral", false, false, 0, 0)
blue_ctld:UnitCapabilities("SA342L", false, false, 0, 0)
blue_ctld:UnitCapabilities("SA342M", false, false, 0, 0)
blue_ctld:UnitCapabilities("SA342Minigun", false, false, 0, 0)
--blue_ctld:UnitCapabilities("KA-50", false, false, 0, 0)
blue_ctld:UnitCapabilities("Mi-8MT", true, true, 4, 24, 15, 3200)
--blue_ctld:UnitCapabilities("Mi-24P", true, true, 1, 8, 18, 1200)
blue_ctld:UnitCapabilities("UH-1H", true, true, 1, 8, 15, 1200)
