_SETTINGS:SetPlayerMenuOff()

-- initialize and start a CTLD for the blue side, using helicopter groups named "Helicargo" and alias "Habubbery"
-- initialize CTLD
local my_ctld = CTLD:New(coalition.side.BLUE,{"Alpha","Bravo","Charlie"},"Habubery")


--SETTINGS
my_ctld.CrateDistance = 35 -- List and Load crates in this radius only.
my_ctld.dropcratesanywhere = true -- Option to allow crates to be dropped anywhere.
my_ctld.maximumHoverHeight = 15 -- Hover max this high to load.
my_ctld.minimumHoverHeight = 4 -- Hover min this low to load.
my_ctld.forcehoverload = false -- Crates (not: troops) can **only** be loaded while hovering.
my_ctld.hoverautoloading = true -- Crates in CrateDistance in a LOAD zone will be loaded automatically if space allows.
my_ctld.smokedistance = 2000 -- Smoke or flares can be request for zones this far away (in meters).
my_ctld.movetroopstowpzone = false -- Troops and vehicles will move to the nearest MOVE zone...
my_ctld.movetroopsdistance = 5000 -- .. but only if this far away (in meters)
my_ctld.smokedistance = 2000 -- Only smoke or flare zones if requesting player unit is this far away (in meters)
my_ctld.suppressmessages = false -- Set to true if you want to script your own messages.
my_ctld.repairtime = 300 -- Number of seconds it takes to repair a unit.
my_ctld.cratecountry = country.id.GERMANY -- ID of crates. Will default to country.id.RUSSIA for RED coalition setups.
my_ctld.allowcratepickupagain = true  -- allow re-pickup crates that were dropped.
my_ctld.enableslingload = true -- allow cargos to be slingloaded - might not work for all cargo types
my_ctld.pilotmustopendoors = false -- force opening of doors
my_ctld.SmokeColor = SMOKECOLOR.Red -- default color to use when dropping smoke from heli
my_ctld.FlareColor = FLARECOLOR.Red -- color to use when flaring from heli
my_ctld.basetype = "barrels_cargo" -- default shape of the cargo container
my_ctld.droppedbeacontimeout = 1200 -- dropped beacon lasts 10 minutes
my_ctld.usesubcats = true -- use sub-category names for crates, adds an extra menu layer in "Get Crates", useful if you have > 10 crate types.
my_ctld:__Start(5)

-- generate generically loadable stuff

--Troops
my_ctld:AddTroopsCargo("Anti-Tank Small 3",{"ATS"},CTLD_CARGO.Enum.TROOPS,3,80,nil,"Troops")
my_ctld:AddTroopsCargo("Anti-Air 4",{"AA"},CTLD_CARGO.Enum.TROOPS,4,80,nil,"Troops")
my_ctld:AddTroopsCargo("Infrantry Section 8",{"InfantrySection"},CTLD_CARGO.Enum.TROOPS,8,80,nil,"Troops")
my_ctld:AddTroopsCargo("Engineers 3",{"Engineers"},CTLD_CARGO.Enum.TROOPS,3,80,nil,"Troops")

--Light Armor
my_ctld:AddCratesCargo("Humvee 1",{"Humvee"},CTLD_CARGO.Enum.VEHICLE,1,400,nil,"Light Armor")

-- Armoured
my_ctld:AddCratesCargo("LEOPARD 4",{"LEOPARD"},CTLD_CARGO.Enum.VEHICLE,4,400,nil,"Armored")
my_ctld:AddCratesCargo("Stryker Weapons PLT 4",{"Stryker"},CTLD_CARGO.Enum.VEHICLE,4,400,nil,"Armored")
my_ctld:AddCratesCargo("ReeceJTAC 1",{"ReeceJTAC"},CTLD_CARGO.Enum.VEHICLE,1,400,nil,"Armored")

--Anti Air
my_ctld:AddCratesCargo("Patriot Large 6",{"PatriotLarge"},CTLD_CARGO.Enum.VEHICLE,6,400,nil,"Anti-Air")
my_ctld:AddCratesCargo("Rapier site 1",{"Rapier Site"},CTLD_CARGO.Enum.VEHICLE,4,400,nil,"Anti-Air")
my_ctld:AddCratesCargo("Gepard PLT",{"Gepard PLT"},CTLD_CARGO.Enum.VEHICLE,3,400,nil,"Anti-Air")
my_ctld:AddCratesCargo("Avenger PLT",{"Avenger PLT"},CTLD_CARGO.Enum.VEHICLE,3,400,nil,"Anti-Air")

-- Base
my_ctld:AddCratesCargo("Forward Ops Base",{"FOB"},CTLD_CARGO.Enum.FOB,4,400,nil,"Base")

-- Artillery
my_ctld:AddCratesCargo("Dana 4",{"Dana"},CTLD_CARGO.Enum.VEHICLE,4,400,nil,"Artillery")
my_ctld:AddCratesCargo("Panzer 2000 4",{"Panzer2000"},CTLD_CARGO.Enum.VEHICLE,4,400,nil,"Artillery")

-- generate zone types
my_ctld:AddCTLDZone("pickzone1",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
my_ctld:AddCTLDZone("pickzone2",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
my_ctld:AddCTLDZone("pickzone3",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)
my_ctld:AddCTLDZone("pickzone4",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)

-- update unit capabilities for testing
my_ctld:UnitCapabilities("SA342Mistral", false, false, 0, 0)
my_ctld:UnitCapabilities("SA342L", false, false, 0, 0)
my_ctld:UnitCapabilities("SA342M", false, false, 0, 0)
my_ctld:UnitCapabilities("SA342Minigun", false, false, 0, 0)
my_ctld:UnitCapabilities("KA-50", false, false, 0, 0)
my_ctld:UnitCapabilities("Mi-8MT", true, true, 4, 24, 15, 3200)
my_ctld:UnitCapabilities("Mi-24P", true, true, 1, 8, 18, 1200)
my_ctld:UnitCapabilities("UH-1H", true, true, 1, 8, 15, 1200)
