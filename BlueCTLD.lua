--Initiate CTLD
local my_ctld = CTLD:New(coalition.side.BLUE,{"Heli"},"Lufttransportbrigade I")
my_ctld:__Start(5)

--Available Cargo Types
my_ctld:AddCratesCargo("Forward Ops Base",{"FOB"},CTLD_CARGO.Enum.FOB,4)

--Available Load Zones
my_ctld:AddCTLDZone("Loadzone",CTLD.CargoZoneType.LOAD,SMOKECOLOR.Blue,true,true)

--options
my_ctld.dropcratesanywhere = true

--Available Recources

--User Functions
my_ctld:UnitCapabilities("SA342Mistral", false, false, 0, 2, 12)
my_ctld:UnitCapabilities("SA342L", false, false, 0, 2, 12)
my_ctld:UnitCapabilities("SA342M", false, false, 0, 2, 12)
my_ctld:UnitCapabilities("SA342Minigun", false, false, 0, 2, 12)
my_ctld:UnitCapabilities("UH-1H", true, true, 1, 10, 12)
my_ctld:UnitCapabilities("Mi-8MTV2", true, true, 3, 24, 12)
my_ctld:UnitCapabilities("Ka-50", false, false, 0, 0, 12)
my_ctld:UnitCapabilities("Mi-24P", true, true, 1, 8, 12)
