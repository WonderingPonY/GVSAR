KC135 = nil
tankergroup135 = nil
TankerAuftrag135 = nil

function menucalltanker()

  if not KC135 then
    -- new MARKEROPS_BASE object
    KC135 = MARKEROPS_BASE:New("KC-135",{"RTB"}) -- Core.MarkerOps_Base#MARKEROPS_BASE
    -- start FlightGroup
    tankergroup135 = FLIGHTGROUP:New("Tanker 135")
    tankergroup135:SetHomebase(AIRBASE:FindByName("Beirut-Rafic Hariri"))
    tankergroup135:SetDefaultRadio(245,"AM",false)
    tankergroup135:SetDespawnAfterLanding()
    tankergroup135:SwitchTACAN(45, "TKR", 1, "Y")
    tankergroup135:SetDefaultCallsign(CALLSIGN.Tanker.Texaco,1)
    -- Mission
    local InitialHold = ZONE:New("Initial Hold"):GetCoordinate()
    TankerAuftrag135 = AUFTRAG:NewTANKER(InitialHold,22000,UTILS.KnotsToAltKIAS(220,18000),90,20,0)
    TankerAuftrag135:SetMissionRange(500)
    tankergroup135:AddMission(TankerAuftrag135)
  else
    local status = tankergroup135:GetState()
    local m = MESSAGE:New(string.format("Tanker %s ops in status: %s", KC135.Tag, status),10,"Info",true):ToAll()
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
    TankerAuftrag135:Cancel()

    -- check if we need to RTB
    if MustRTB then
      tankergroup135:RTB(AIRBASE:FindByName("Beirut-Rafic Hariri"))
    else
      -- no, fly to coordinate of marker
      local auftrag = AUFTRAG:NewTANKER(Coord,18000,UTILS.KnotsToAltKIAS(220,18000),90,20,0)
      auftrag:SetMissionRange(500)
      tankergroup135:AddMission(auftrag)
      TankerAuftrag135 = auftrag
    end
  end

  -- Event functions
  function KC135:OnAfterMarkAdded(From,Event,To,Text,Keywords,Coord)
    local m = MESSAGE:New(string.format("Tanker %s Mark Added.", self.Tag),10,"Info",true):ToAll()
    Handler(Keywords,Coord)
  end

  function KC135:OnAfterMarkChanged(From,Event,To,Text,Keywords,Coord)
    local m = MESSAGE:New(string.format("Tanker %s Mark Changed.", self.Tag),10,"Info",true):ToAll()
    Handler(Keywords,Coord)
  end

  function KC135:OnAfterMarkDeleted(From,Event,To)
    local m = MESSAGE:New(string.format("Tanker %s Mark Deleted.", self.Tag),10,"Info",true):ToAll()
  end
end

MenuTop = MENU_COALITION:New( coalition.side.BLUE,"Call Tanker")
MenuTanker = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Tanker KC-135",MenuTop,menucalltanker)
