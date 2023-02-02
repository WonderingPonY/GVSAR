--WAREHOUSES
warehouseFordAF = WAREHOUSE:New(STATIC:FindByName("Warehouse Ford AF"))
warehouseBiniville = WAREHOUSE:New(STATIC:FindByName("Warehouse Biniville"))
warehouseBrucheville = WAREHOUSE:New(STATIC:FindByName("Warehouse Brucheville"))
warehouseLessay = WAREHOUSE:New(STATIC:FindByName("Warehouse Lessay"))
warehouseCarpiquet = WAREHOUSE:New(STATIC:FindByName("Warehouse Carpiquet"))
warehouseLeMeleSur = WAREHOUSE:New(STATIC:FindByName("Warehouse Le Mele Sur"))
warehouseEvreux = WAREHOUSE:New(STATIC:FindByName("Warehouse Evreux"))
warehouseMaupertus = WAREHOUSE:New(STATIC:FindByName("Warehouse Maupertus"))
warehouseBezenville = WAREHOUSE:New(STATIC:FindByName("Warehouse Bezenville"))
warehouseLongues = WAREHOUSE:New(STATIC:FindByName("Warehouse Longues"))
warehouseSainteLaurent = WAREHOUSE:New(STATIC:FindByName("Warehouse Sainte-Laurent"))
warehouseCourseulles = WAREHOUSE:New(STATIC:FindByName("Warehouse Courseulles"))
warehouseFordAF:Load("Q:\\MOOSE\\")
warehouseFordAF:Start()
warehouseBrucheville:Load("Q:\\MOOSE\\")
warehouseBrucheville:Start()
warehouseLessay:Load("Q:\\MOOSE\\")
warehouseLessay:Start()
warehouseCarpiquet:Load("Q:\\MOOSE\\")
warehouseCarpiquet:Start()
warehouseLeMeleSur:Load("Q:\\MOOSE\\")
warehouseLeMeleSur:Start()
warehouseEvreux:Load("Q:\\MOOSE\\")
warehouseEvreux:Start()
warehouseMaupertus:Load("Q:\\MOOSE\\")
warehouseMaupertus:Start()
warehouseBezenville:Load("Q:\\MOOSE\\")
warehouseBezenville:Start()
warehouseLongues:Load("Q:\\MOOSE\\")
warehouseLongues:Start()
warehouseSainteLaurent:Load("Q:\\MOOSE\\")
warehouseSainteLaurent:Start()
warehouseCourseulles:Load("Q:\\MOOSE\\")
warehouseCourseulles:Start()

--SHIPYARS(PORTS)
warehouseCherbourgPort = WAREHOUSE:New(STATIC:FindByName("Cherbourg Port"))
warehouseLeHavrePort = WAREHOUSE:New(STATIC:FindByName("Le Havre Port"))
warehouseCherbourgPort:Start()
warehouseLeHavrePort:Start()

--FACTORIES
warehouseStLoFactory = WAREHOUSE:New(STATIC:FindByName("St Lo Factory"))
warehouseRouenFactory = WAREHOUSE:New(STATIC:FindByName("Rouen Factory"))
warehouseBernayFactory = WAREHOUSE:New(STATIC:FindByName("Bernay Factory"))
warehouseCarentanFactory = WAREHOUSE:New(STATIC:FindByName("Carentan Factory"))
warehouseBricquebecFactory = WAREHOUSE:New(STATIC:FindByName("Bricquebec Factory"))
warehouseCaenFactory = WAREHOUSE:New(STATIC:FindByName("Caen Factory"))
warehouseStLoFactory:Start()
warehouseRouenFactory:Start()
warehouseBernayFactory:Start()
warehouseCarentanFactory:Start()
warehouseBricquebecFactory:Start()
warehouseCaenFactory:Start()

--MARKS ON OR OFF
warehouseCherbourgPort:SetMarker(false)
warehouseCarentanFactory:SetMarker(false)
warehouseBrucheville:SetMarker(false)
warehouseLessay:SetMarker(false)
warehouseCarpiquet:SetMarker(false)
warehouseStLoFactory:SetMarker(false)
warehouseLeHavrePort:SetMarker(false)
warehouseRouenFactory:SetMarker(false)
warehouseLeMeleSur:SetMarker(false)
warehouseBernayFactory:SetMarker(false)
warehouseEvreux:SetMarker(false)
warehouseLongues:SetMarker(false)
warehouseSainteLaurent:SetMarker(false)
warehouseCourseulles:SetMarker(false)

---------------------ATTACHED AIRBASES-------
-- warehouseCherbourg:SetAirbase("Maupertus")
-- warehouseLittleHampton:SetAirbase("Ford_AF")

---------------------SPAWN ZONES-------------
fordunitspawnzone = ZONE:FindByName("FordAFHarborZone")
warehouseFordAF:SetSpawnZone(fordunitspawnzone)