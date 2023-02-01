
---------------------PATHS-------------------------
-- warehouseCherbourgPort:AddOffRoadPath(warehouseBricquebec, "OffRoadGroup1", false)

---------------------REQESTORS---------------------
-- warehouseCherbourgPort:AddRequest(warehouseStJoseph, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_INFANTRY, 4, WAREHOUSE.TransportType.APC, 2)
-- warehouseCherbourgPort:AddRequest(warehouseLittleHampton, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_INFANTRY, 4, WAREHOUSE.TransportType.AIRPLANE, 2)
-- warehouseCherbourgPort:AddRequest(warehouseCherbourgPort, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_TANK, 1) --This will make a request to spawn the group in the game
-- warehouseCherbourgPort:SetMarker(true)


-- Groups for the warehouses  ----------BLUE----------
--US
InfantryUS = GROUP:FindByName("US Infantry")
HalfTrackUS = GROUP:FindByName("US APCM2A1")
ShermanUS = GROUP:FindByName("US Sherman")
JimmyTruckUS = GROUP:FindByName("US JimmyTruck")
WillyJeepUS = GROUP:FindByName("US WillyJeep")
M45AAAUS = GROUP:FindByName("US M45AAA")
Artillery105US = GROUP:FindByName("US 105Artillery")
Artillery155US = GROUP:FindByName("US 155Artillery")
SPGM10US = GROUP:FindByName("US SPGM10")
M4A1FireflyUS = GROUP:FindByName("US M4A1Firefly")
M8GreyhoundUS = GROUP:FindByName("US M8Greyhound")
TM4CommandUS = GROUP:FindByName("US TM4Command")
LandingCraftUS = GROUP:FindByName("US LandingCraft")
SamuelChaseUS = GROUP:FindByName("US Samuel Chase")
LSTMK2US = GROUP:FindByName("US LSTMK2")
A20GUS = GROUP:FindByName("US A20G")
B17GUS = GROUP:FindByName("US B17G")
C47US = GROUP:FindByName("US C47")
P47D40US = GROUP:FindByName("US P47D40")
P51D30US = GROUP:FindByName("US P51D30")
--UK
InfantryUK = GROUP:FindByName("UK Infantry")
MosquitoUK = GROUP:FindByName("UK Mosquito")
SpitfireUK = GROUP:FindByName("UK Spitfire")
C47UK = GROUP:FindByName("UK C47")
DaimlerUK = GROUP:FindByName("UK Daimler")
WillyJeepUK = GROUP:FindByName("UK WillyJeep")
M2A1HafTrackUK = GROUP:FindByName("UK M2A1Half Track")
BedfordTruckUK = GROUP:FindByName("UK Bedford Truck")
QF37AAAUK = GROUP:FindByName("UK QF3.7AAA")
M137MMAAAUK = GROUP:FindByName("UK M1 37MM AAA")
TetrachUK = GROUP:FindByName("UK Tetrach")
ChurchillVIIUK = GROUP:FindByName("UK Churchill VII")
CentaurIVCSUK = GROUP:FindByName("UK Centaur IV CS")
CromwellIVUK = GROUP:FindByName("UK Cromwell IV")
ArtilleryM12155UK = GROUP:FindByName("UK 155Artillery M12")
LSTMK2UK = GROUP:FindByName("UK LSTMK2")
--CAN
MosquitoCAN = GROUP:FindByName("CAN Mosquito")
ShermanFireflyCAN = GROUP:FindByName("CAN ShermanFirefly")
DaimlerCAN = GROUP:FindByName("CAN Daimler")
LSTMK2CAN = GROUP:FindByName("CAN LSTMK2")


function addAssets()
    Path = "Q:\\MOOSE\\"
    FileName = "WAREHOUSE-10_Warehouse Longues.txt"
    if UTILS.CheckFileExists(Path,FileName) then
        env.info("FUCK OFF THE WAREHOUSE IS SAVED")
    else
        ----------- BLUE WAREHOUSE INVENTORY ---------------------------
        --***********FORD AF*********--
        --US
        warehouseFordAF:AddAsset(InfantryUS, 100,nil,nil,nil,1000,AI.Skill.AVERAGE)
        warehouseFordAF:AddAsset(HalfTrackUS, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(ShermanUS, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(JimmyTruckUS, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(WillyJeepUS, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(M45AAAUS, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(Artillery105US, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(Artillery155US, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(SPGM10US, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(M4A1FireflyUS, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(M8GreyhoundUS, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(TM4CommandUS, 100,nil,nil,nil,1000)
        warehouseFordAF:AddAsset(LandingCraftUS, 100, WAREHOUSE.Attribute.NAVAL_UNARMEDSHIP,nil,nil,5000)
        warehouseFordAF:AddAsset(SamuelChaseUS, 100, WAREHOUSE.Attribute.NAVAL_UNARMEDSHIP,nil,nil,5000)
        warehouseFordAF:AddAsset(LSTMK2US, 100, WAREHOUSE.Attribute.NAVAL_UNARMEDSHIP,nil,nil,5000)
        warehouseFordAF:AddAsset(A20GUS, 100)
        warehouseFordAF:AddAsset(B17GUS, 100)
        warehouseFordAF:AddAsset(C47US, 100, WAREHOUSE.Attribute.AIR_TRANSPORTPLANE)--, warehouseCherbourgPort.Attribute.AIR_TRANSPORTPLANE
        warehouseFordAF:AddAsset(P47D40US, 100)
        warehouseFordAF:AddAsset(P51D30US, 100)
        --UK
        warehouseFordAF:AddAsset(MosquitoUK, 100)
        warehouseFordAF:AddAsset(SpitfireUK, 100)
        warehouseFordAF:AddAsset(C47UK, 100, WAREHOUSE.Attribute.AIR_TRANSPORTPLANE)
        warehouseFordAF:AddAsset(InfantryUK, 100)
        warehouseFordAF:AddAsset(DaimlerUK, 100)
        warehouseFordAF:AddAsset(WillyJeepUK, 100)
        warehouseFordAF:AddAsset(M2A1HafTrackUK, 100)
        warehouseFordAF:AddAsset(BedfordTruckUK, 100)
        warehouseFordAF:AddAsset(QF37AAAUK, 100)
        warehouseFordAF:AddAsset(M137MMAAAUK, 100)
        warehouseFordAF:AddAsset(TetrachUK, 100)
        warehouseFordAF:AddAsset(ChurchillVIIUK, 100)
        warehouseFordAF:AddAsset(CentaurIVCSUK, 100)
        warehouseFordAF:AddAsset(CromwellIVUK, 100)
        warehouseFordAF:AddAsset(ArtilleryM12155UK, 100)
        warehouseFordAF:AddAsset(LSTMK2UK, 100, WAREHOUSE.Attribute.NAVAL_UNARMEDSHIP,nil,nil,5000)
        --CAN
        warehouseFordAF:AddAsset(MosquitoCAN, 100)
        warehouseFordAF:AddAsset(ShermanFireflyCAN, 100)
        warehouseFordAF:AddAsset(DaimlerCAN, 100)
        warehouseFordAF:AddAsset(LSTMK2CAN, 100, WAREHOUSE.Attribute.NAVAL_UNARMEDSHIP,nil,nil,5000)

        --***********LONGUES*********--
        warehouseLongues:AddAsset(MosquitoUK, 100)
        warehouseLongues:AddAsset(SpitfireUK, 100)
        warehouseLongues:AddAsset(C47UK, 100, WAREHOUSE.Attribute.AIR_TRANSPORTPLANE)
        warehouseLongues:AddAsset(InfantryUK, 100)
        warehouseLongues:AddAsset(DaimlerUK, 100)
        warehouseLongues:AddAsset(WillyJeepUK, 100)
        warehouseLongues:AddAsset(M2A1HafTrackUK, 100)
        warehouseLongues:AddAsset(BedfordTruckUK, 100)
        warehouseLongues:AddAsset(QF37AAAUK, 100)
        warehouseLongues:AddAsset(M137MMAAAUK, 100)
        warehouseLongues:AddAsset(TetrachUK, 100)
        warehouseLongues:AddAsset(ChurchillVIIUK, 100)
        warehouseLongues:AddAsset(CentaurIVCSUK, 100)
        warehouseLongues:AddAsset(CromwellIVUK, 100)
        warehouseLongues:AddAsset(ArtilleryM12155UK, 100)
        warehouseLongues:AddAsset(LSTMK2UK, 100, WAREHOUSE.Attribute.NAVAL_UNARMEDSHIP,nil,nil,5000)
    end
end

addAssets()