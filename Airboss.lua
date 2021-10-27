_SETTINGS:SetPlayerMenuOff()

-- S-3B Recovery Tanker spawning in air.
local tanker=RECOVERYTANKER:New("CVN-75 Harry S. Truman", "Texaco Group")
tanker:SetRadio(250)
tanker:SetAltitude(6000)
tanker:SetModex(511)
tanker:SetTACAN(1, "TEX")
tanker:__Start(1)

-- E-2D AWACS spawning on Stennis.
local awacs=RECOVERYTANKER:New("CVN-75 Harry S. Truman", "E-2D Wizard Group")
awacs:SetAWACS()
awacs:SetRadio(260)
awacs:SetAltitude(20000)
awacs:SetCallsign(CALLSIGN.AWACS.Wizard)
awacs:SetRacetrackDistances(30, 15)
awacs:SetModex(611)
awacs:SetTACAN(2, "WIZ")
awacs:__Start(1)

-- Rescue Helo with home base Lake Erie. Has to be a global object!
-- rescuehelo=RESCUEHELO:New("USS Stennis", "Rescue Helo")
-- rescuehelo:SetHomeBase(AIRBASE:FindByName("Lake Erie"))
-- rescuehelo:SetModex(42)
-- rescuehelo:__Start(1)

-- Create AIRBOSS object.
local AirbossTruman=AIRBOSS:New("CVN-75 Harry S. Truman")
AirbossTruman:SetTACAN(75,X,"TRM")
AirbossTruman:SetICLS(12)
AirbossTruman:SetLSORadio(264)
AirbossTruman:SetMarshalRadio(305)
AirbossTruman:SetRecoveryCase(1)
AirbossTruman:SetCarrierControlledArea(50)

-- Add recovery windows:
-- Case I from 9 to 10 am.
local window1=AirbossTruman:AddRecoveryWindow( "9:00", "10:00", 1, nil, true, 25)
-- Case II with +15 degrees holding offset from 15:00 for 60 min.
local window2=AirbossTruman:AddRecoveryWindow("15:00", "16:00", 2,  15, true, 23)
-- Case III with +30 degrees holding offset from 2100 to 2200.
local window3=AirbossTruman:AddRecoveryWindow("21:00", "22:00", 3,  30, true, 21)

-- Set folder of airboss sound files within miz file.
-- AirbossTruman:SetSoundfilesFolder("Airboss Soundfiles/")

-- Single carrier menu optimization.
AirbossTruman:SetMenuSingleCarrier()

-- Skipper menu.
AirbossTruman:SetMenuRecovery(30, 20, false)

-- Remove landed AI planes from flight deck.
AirbossTruman:SetDespawnOnEngineShutdown()

-- Load all saved player grades from your "Saved Games\DCS" folder (if lfs was desanitized).
AirbossTruman:Load()

-- Automatically save player results to your "Saved Games\DCS" folder each time a player get a final grade from the LSO.
AirbossTruman:SetAutoSave()

-- Enable trap sheet.
AirbossTruman:SetTrapSheet()

-- Start airboss class.
AirbossTruman:Start()


--Function called when recovery tanker is started.
function tanker:OnAfterStart(From,Event,To)

  -- Set recovery tanker.
  AirbossTruman:SetRecoveryTanker(tanker)

  -- Use tanker as radio relay unit for LSO transmissions.
  AirbossTruman:SetRadioRelayLSO(self:GetUnitName())

end

--- Function called when AWACS is started.
function awacs:OnAfterStart(From,Event,To)
  -- Set AWACS.
  AirbossTruman:SetAWACS(awacs)
end


--- Function called when rescue helo is started.
function rescuehelo:OnAfterStart(From,Event,To)
  -- Use rescue helo as radio relay for Marshal.
  AirbossTruman:SetRadioRelayMarshal(self:GetUnitName())
end

--- Function called when a player gets graded by the LSO.
function AirbossTruman:OnAfterLSOGrade(From, Event, To, playerData, grade)
  local PlayerData=playerData --Ops.Airboss#AIRBOSS.PlayerData
  local Grade=grade --Ops.Airboss#AIRBOSS.LSOgrade

  ----------------------------------------
  --- Interface your Discord bot here! ---
  ----------------------------------------

  local score=tonumber(Grade.points)
  local name=tostring(PlayerData.name)

  -- Report LSO grade to dcs.log file.
  env.info(string.format("Player %s scored %.1f", name, score))
end
