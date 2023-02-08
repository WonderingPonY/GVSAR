UKInfantry = GROUP:FindByName("UK Infantry")
USInfantry = GROUP:FindByName("US Infantry")
UKEngineers = GROUP:FindByName("UK Engineers")
USEngineers = GROUP:FindByName("US Engineers")

UKInfantryCargo = CARGO_GROUP:New(UKInfantry, "Infantry", "UK Infantry", 2000)
USInfantryCargo = CARGO_GROUP:New(USInfantry, "US Infantry", "US Infantry", 2000)
UKEngineersCargo = CARGO_GROUP:New(UKEngineers, "UK Engineers", "UK Infantry Engineers", 2000)
USEngineersCargo = CARGO_GROUP:New(USEngineers, "US Engineers", "US Infantry Engineers", 2000)

UKWillyCarrier = UNIT:FindByName("UK WillyJeep")
USWillyCarrier = GROUP:FindByName("US WillyJeep")
UKBedfordCarrier = GROUP:FindByName("UK Bedford Truck")
USJimmyCarrier = GROUP:FindByName("US JimmyTruck")