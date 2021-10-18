KC135a10 = nil
tankergroup135a10 = nil
TankerAuftrag135a10 = nil

function menucalltanker()

  if not KC135a10 then
    -- new MARKEROPS_BASE object
    KC135a10 = MARKEROPS_BASE:New("Tanker 135A10",{"RTB"}) -- Core.MarkerOps_Base#MARKEROPS_BASE
    -- start FlightGroup
    tankergroup135a10 = FLIGHTGROUP:New("Tanker 135A10")
    tankergroup135a10:SetHomebase(AIRBASE:FindByName("Beirut-Rafic Hariri"))
    tankergroup135a10:SetDefaultRadio(225,"AM",false)
    tankergroup135a10:SetDespawnAfterLanding()
    tankergroup135a10:SwitchTACAN(45, "AAA", 5, "Y")
    tankergroup135a10:SetDefaultCallsign(CALLSIGN.Tanker.Texaco,1)
    -- Mission
    local InitialHold = ZONE:New("Initial Hold"):GetCoordinate()
    TankerAuftrag135a10 = AUFTRAG:NewTANKER(InitialHold,10000,UTILS.KnotsToAltKIAS(180,10000),90,20,0)
    TankerAuftrag135a10:SetMissionRange(500)
    tankergroup135a10:AddMission(TankerAuftrag135a10)
  else
    local status = tankergroup135a10:GetState()
    local m = MESSAGE:New(string.format("Tanker %s ops in status: %s", KC135a10.Tag, status),10,"Info",true):ToAll()
  end

  -- Handler function
  local function Handler(Keywords,Coord)

    local MustRTB = false
    for _,_word in pairs (Keywords) do
      if string.lower(_word) == "rtb" then
        MustRTB = true
      end
    end

    -- cancel current Auftrag
    TankerAuftrag135a10:Cancel()

    -- check if we need to RTB
    if MustRTB then
      tankergroup135a10:RTB(AIRBASE:FindByName("Beirut-Rafic Hariri"))
    else
      -- no, fly to coordinate of marker
      local auftrag = AUFTRAG:NewTANKER(Coord,10000,UTILS.KnotsToAltKIAS(180,18000),90,20,0)
      auftrag:SetMissionRange(500)
      tankergroup135a10:AddMission(auftrag)
      TankerAuftrag135a10 = auftrag
    end
  end

  -- Event functions
  function KC135a10:OnAfterMarkAdded(From,Event,To,Text,Keywords,Coord)
    local m = MESSAGE:New(string.format("Tanker %s Mark Added.", self.Tag),10,"Info",true):ToAll()
    Handler(Keywords,Coord)
  end

  function KC135a10:OnAfterMarkChanged(From,Event,To,Text,Keywords,Coord)
    local m = MESSAGE:New(string.format("Tanker %s Mark Changed.", self.Tag),10,"Info",true):ToAll()
    Handler(Keywords,Coord)
  end

  function KC135a10:OnAfterMarkDeleted(From,Event,To)
    local m = MESSAGE:New(string.format("Tanker %s Mark Deleted.", self.Tag),10,"Info",true):ToAll()
  end
end

MenuTop = MENU_COALITION:New( coalition.side.BLUE,"Call Tanker")
MenuTanker = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Tanker KC-135 A-10C",MenuTop,menucalltanker)
