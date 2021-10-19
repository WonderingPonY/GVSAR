--Initiate CTLD
local my_ctld = CTLD:New(coalition.side.BLUE,{"Alpha"},"Lufttransportbrigade I")
my_ctld:__Start(5)

--Available Cargo Types
my_ctld:AddCratesCargo("Forward Ops Base 4",{"FOB"},CTLD_CARGO.Enum.FOB,1)
my_ctld:AddTroopsCargo("Anti-Tank Small 2",{"ATS"},CTLD_CARGO.Enum.TROOPS,2,45)
my_ctld:AddTroopsCargo("Regular Squad 10",{"Squad"},CTLD_CARGO.Enum.TROOPS,10,45)
my_ctld:AddTroopsCargo("Anti-Air Small 2",{"AAS"},CTLD_CARGO.Enum.TROOPS,2,45)
my_ctld:AddCratesCargo("MBT Merkava 4",{"Merkava"},CTLD_CARGO.Enum.VEHICLE,1)
my_ctld:AddCratesCargo("TPz Fuchs 2",{"TPzFuchs"},CTLD_CARGO.Enum.VEHICLE,1)
my_ctld:AddCratesCargo("Paladin 4",{"Paladin"},CTLD_CARGO.Enum.VEHICLE,1)
my_ctld:AddCratesCargo("Patriot 6",{"ISRAELPATRIOT"},CTLD_CARGO.Enum.VEHICLE,1)
my_ctld:AddCratesCargo("Rapier 1",{"Rapier"},CTLD_CARGO.Enum.VEHICLE,1)
my_ctld:AddTroopsCargo("Engineers 4",{"Engineers"},CTLD_CARGO.Enum.ENGINEERS,4)
my_ctld:AddCratesRepair("FOB Repair","FOB",CTLD_CARGO.Enum.REPAIR,1)
my_ctld:AddStaticsCargo("Ammunition",500)

--Available Load Zones
my_ctld:AddCTLDZone("Warsaw",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)

--options
my_ctld.dropcratesanywhere = true
my_ctld.minimumHoverHeight = 10
my_ctld.forcehoverload = false
my_ctld.enableslingload = true
my_ctld.pilotmustopendoors = false
my_ctld.repairtime = 300
my_ctld.EngineerSearch = 2000

--Available Recources

--User Functions
my_ctld:UnitCapabilities("SA342Mistral", false, false, 0, 2, 12)
my_ctld:UnitCapabilities("SA342L", false, false, 0, 2, 12)
my_ctld:UnitCapabilities("SA342M", false, false, 0, 2, 12)
my_ctld:UnitCapabilities("SA342Minigun", false, false, 0, 2, 12)
my_ctld:UnitCapabilities("UH-1H", true, true, 1, 10, 12)
my_ctld:UnitCapabilities("Mi-8MTV2", true, true, 3, 24, 12)
my_ctld:UnitCapabilities("Ka-50", false, false, 0, 0, 12)
my_ctld:UnitCapabilities("Mi-24P", true, true, 1, 10, 12)

--FSM Functions

--Markers For Zones
local WarsawCoordinate = ZONE:FindByName("Warsaw"):GetCoordinate()
Warsawmarker = MARKER:New(WarsawCoordinate, "Warsaw"):ToAll()
local KiryatCoordinate = ZONE:FindByName("Kiryat"):GetCoordinate()
Kiryatmarker = MARKER:New(KiryatCoordinate, "Kiryat"):ToAll()
local RoshPinaCoordinate = ZONE:FindByName("RoshPina"):GetCoordinate()
RoshPinamarker = MARKER:New(RoshPinaCoordinate, "Rosh Pina"):ToAll()
