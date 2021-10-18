mytanker = nil
tankergroup = nil
TankerAuftrag = nil
MPRS = nil
tankerMPRSGroup = nil
TankerMPRS = nil

function menucalltanker()

  if not mytanker then
    -- new MARKEROPS_BASE object
    mytanker = MARKEROPS_BASE:New("MPRS",{"RTB"}) -- Core.MarkerOps_Base#MARKEROPS_BASE
    -- start FlightGroup
    tankergroup = FLIGHTGROUP:New("Tanker 135MPRS")
    tankergroup:SetHomebase(AIRBASE:FindByName("Beirut-Rafic Hariri"))
    tankergroup:SetDefaultRadio(245,"AM",false)
    tankergroup:SetDespawnAfterLanding()
    tankergroup:SwitchTACAN(45, "TKR", 1, "Y")
    tankergroup:SetDefaultCallsign(CALLSIGN.Tanker.Texaco,1)
    -- Mission
    local InitialHold = ZONE:New("Initial Hold"):GetCoordinate()
    TankerAuftrag = AUFTRAG:NewTANKER(InitialHold,22000,UTILS.KnotsToAltKIAS(220,18000),90,20,0)
    TankerAuftrag:SetMissionRange(500)
    tankergroup:AddMission(TankerAuftrag)
  else
    local status = tankergroup:GetState()
    local m = MESSAGE:New(string.format("Tanker %s ops in status: %s", mytanker.Tag, status),10,"Info",true):ToAll()
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
    TankerAuftrag:Cancel()

    -- check if we need to RTB
    if MustRTB then
      tankergroup:RTB(AIRBASE:FindByName("Beirut-Rafic Hariri"))
    else
      -- no, fly to coordinate of marker
      local auftrag = AUFTRAG:NewTANKER(Coord,18000,UTILS.KnotsToAltKIAS(220,18000),90,20,0)
      auftrag:SetMissionRange(500)
      tankergroup:AddMission(auftrag)
      TankerAuftrag = auftrag
    end
  end

  -- Event functions
  function mytanker:OnAfterMarkAdded(From,Event,To,Text,Keywords,Coord)
    local m = MESSAGE:New(string.format("Tanker %s Mark Added.", self.Tag),10,"Info",true):ToAll()
    Handler(Keywords,Coord)
  end

  function mytanker:OnAfterMarkChanged(From,Event,To,Text,Keywords,Coord)
    local m = MESSAGE:New(string.format("Tanker %s Mark Changed.", self.Tag),10,"Info",true):ToAll()
    Handler(Keywords,Coord)
  end

  function mytanker:OnAfterMarkDeleted(From,Event,To)
    local m = MESSAGE:New(string.format("Tanker %s Mark Deleted.", self.Tag),10,"Info",true):ToAll()
  end
end

MenuTop = MENU_COALITION:New( coalition.side.BLUE,"Call Tanker")
MenuTanker = MENU_COALITION_COMMAND:New(coalition.side.BLUE,"Tanker MPRS",MenuTop,menucalltanker)
