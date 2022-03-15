---
-- Name: TAD-CGO-007 - Transport Test - Cargo Fun
-- Author: FlightControl
-- Date Created: 05 Apr 2018
--
-- # Situation:
--
-- This mission demonstrates the dynamic task dispatching for cargo Transport operations of various cargo types.
--

HQ = GROUP:FindByName( "HQ", "Bravo" )

CommandCenter = COMMANDCENTER
  :New( HQ, "Lima" )

Mission = MISSION
  :New( CommandCenter, "Operation Cargo Fun", "Tactical", "Transport Cargo", coalition.side.BLUE )

TransportGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "Transport" ):FilterStart()

TaskDispatcher = TASK_CARGO_DISPATCHER:New( Mission, TransportGroups )



local CargoSetWorkmaterials = SET_CARGO:New():FilterTypes( "Workmaterials" ):FilterStart()
local EngineerCargoGroup = CARGO_GROUP:New( GROUP:FindByName( "Engineers" ), "Workmaterials", "Engineers", 250 )
local ConcreteCargo = CARGO_SLINGLOAD:New( STATIC:FindByName( "Concrete" ), "Workmaterials", "Concrete", 150, 50 )
local CrateCargo = CARGO_CRATE:New( STATIC:FindByName( "Crate" ), "Workmaterials", "Crate", 150, 50 )
local EnginesCargo = CARGO_CRATE:New( STATIC:FindByName( "Engines" ), "Workmaterials", "Engines", 150, 50 )
local MetalCargo = CARGO_CRATE:New( STATIC:FindByName( "Metal" ), "Workmaterials", "Metal", 150, 50 )

local WorkplaceTask = TaskDispatcher:AddTransportTask( "Transport workmaterials", CargoSetWorkmaterials, "Transport the workers, engineers and the equipment near the Workplace." )
TaskDispatcher:SetTransportDeployZone( WorkplaceTask, ZONE:New( "Workplace" ) )

local CargoSetLiquids = SET_CARGO:New():FilterTypes( "Liquids" ):FilterStart()
local FuelCargo = CARGO_SLINGLOAD:New( STATIC:FindByName( "Fuel" ), "Liquids", "Fuel", 100, 35 )
local GasCargo = CARGO_SLINGLOAD:New( STATIC:FindByName( "Gas" ), "Liquids", "Gas", 100, 35 )
local OilCargo = CARGO_SLINGLOAD:New( STATIC:FindByName( "Oil" ), "Liquids", "Oil", 100, 35 )

local FactoryTask = TaskDispatcher:AddTransportTask( "Transport liquids", CargoSetLiquids, "Transport the milk, gas, fuel, oil to the factory." )
TaskDispatcher:SetTransportDeployZone( FactoryTask, ZONE:New( "Factory" ) )


local CargoSetFood = SET_CARGO:New():FilterTypes( "Food" ):FilterStart()
local WorkerCargoGroupA = CARGO_GROUP:New( GROUP:FindByName( "Workers Team A" ), "Food", "Workers Team A", 250 )
local WorkerCargoGroupB = CARGO_GROUP:New( GROUP:FindByName( "Workers Team B" ), "Food", "Workers Team B", 250 )
local KitchenstuffCargo = CARGO_CRATE:New( STATIC:FindByName( "Kitchenstuff" ), "Food", "Kitchenstuff", 150, 50 )
local GoodCargo = CARGO_SLINGLOAD:New( STATIC:FindByName( "Food" ), "Food", "Food", 100, 35 )
local MilkCargo = CARGO_SLINGLOAD:New( STATIC:FindByName( "Milk" ), "Food", "Milk", 100, 35 )

local FoodTask = TaskDispatcher:AddTransportTask( "Transport food", CargoSetFood, "Transport the workers and the food to the  Canteen." )
TaskDispatcher:SetTransportDeployZone( FoodTask, ZONE:New( "Canteen" ) )

local CanteenCoordinate = ZONE:FindByName("Canteen"):GetCoordinate()
canteenmarker = MARKER:New(CanteenCoordinate, "Canteen"):ToAll()
local FactoryCoordinate = ZONE:FindByName("Factory"):GetCoordinate()
factorymarker = MARKER:New(FactoryCoordinate, "Factory"):ToAll()
local WorkplaceCoordinate = ZONE:FindByName("Workplace"):GetCoordinate()
workplacemarker = MARKER:New(WorkplaceCoordinate, "Workplace"):ToAll()
