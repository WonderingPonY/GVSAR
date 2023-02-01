---------------------PORT ZONES--------------
warehouseFordAF:SetPortZone(ZONE_POLYGON:NewFromGroupName("needsOarPointPZone","needsOarPointPZone"))
warehouseCourseulles:SetPortZone(ZONE_POLYGON:NewFromGroupName("courseullesPZone","courseullesPZone"))
warehouseLongues:SetPortZone(ZONE_POLYGON:NewFromGroupName("longuesPZone","longuesPZone"))
warehouseSainteLaurent:SetPortZone(ZONE_POLYGON:NewFromGroupName("sainteLaurentPZone","sainteLaurentPZone"))

---------------------HARBOR ZONES--------------
fordHarborZone = ZONE:FindByName("FordAFHarborZone")--This needs to be set as the warehouse spawn point, Otherwise the ship seems to ignore the group
warehouseFordAF:SetHarborZone(fordHarborZone)

courseullesHarborZone = ZONE:FindByName("courseullesHarborZone")
warehouseCourseulles:SetHarborZone(courseullesHarborZone)

LonguesHarborZone = ZONE:FindByName("LonguesHarborZone")
warehouseLongues:SetHarborZone(LonguesHarborZone)

SainteLaurentHarborZone = ZONE:FindByName("SainteLaurentHarborZone")
warehouseSainteLaurent:SetHarborZone(SainteLaurentHarborZone)

---------------------SHIPPING LANES--------------
courseullesShiplane = GROUP:FindByName("Ford2CoursuellesShipLane")
longuesShiplane = GROUP:FindByName("Ford2LonguesShipLane")
sainteLaurentShiplane = GROUP:FindByName("Ford2SainteLaurentShipLane")
warehouseFordAF:AddShippingLane(warehouseCourseulles, courseullesShiplane,false)
warehouseFordAF:AddShippingLane(warehouseSainteLaurent, sainteLaurentShiplane,false)
warehouseFordAF:AddShippingLane(warehouseLongues, longuesShiplane,false)
