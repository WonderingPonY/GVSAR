-- Set up SHORAD
local redsamset = SET_GROUP:New():FilterCoalitions("red"):FilterPrefixes({"AAAMantis","SA11Mantis","SA6Mantis","SA2Mantis","SA3Mantis","SyriaEWR"}):FilterStart()
local myredshorad = SHORAD:New("Syria Shorad","Red Shorad",redsamset,12000,600,"red",false) -- Functional.Shorad#SHORAD
myredshorad:SetDefenseLimits(80,95)

-- Short/Mid-Range SAM sites
local myredmantis = MANTIS:New("SA6Mantis","SA11Mantis","AAAMantis","Red EWR",nil,"red",true,"Red AWACS",false)
myredmantis:SetSAMRadius(25000)
myredmantis:SetSAMRange(85)
myredmantis:SetDetectInterval(20)
myredmantis:Start()

-- Long-range SAM site, also linked to SHORAD
local myredsa10 = MANTIS:New("SA3Mantis","SA2Mantis","Red EWR","HQ_Red","red",true,"Red AWACS",false)
myredsa10:SetSAMRadius(UTILS.NMToMeters(40))
myredsa10:SetSAMRange(90)
myredsa10:SetDetectInterval(20)
myredsa10:AddShorad(myredshorad,720)
myredsa10:SetAdvancedMode(true,90)
myredsa10:SetAutoRelocate(true,false)
--myredsa10:Debug(true)
myredsa10:Start()

-- Using some "OnAfter..." events to shape the mission
function myredsa10:OnAfterShoradActivated(From, Event, To, Name, Radius, Ontime)
  -- show some info
  local m = MESSAGE:New(string.format("Mantis switched on Shorad for %s | Radius %d | OnTime %d", Name, Radius, Ontime),10,"Info"):ToAll()
end

function myredsa10:OnAfterAdvStateChange(From, Event, To, Oldstate, Newstate, Interval)
    -- show some info
  local state = { [1] = "GREEN", [2] = "AMBER", [3] = "RED" }
  local oldstate = state[Oldstate+1]
  local newstate = state[Newstate+1]
  local m = MESSAGE:New(string.format("Mantis switched Advanced from from %s to %s interval %dsec", oldstate, newstate, Interval),10,"Info"):ToAll()
end

function myredsa10:OnAfterRedState(From, Event, To, Group)
   -- show some info
  local SamName = Group:GetName()
  local m = MESSAGE:New(string.format("Mantis switched %s to RED state!", SamName),10,"Info"):ToAll()
end

function myredsa10:OnAfterGreenState(From, Event, To, Group)
   -- show some info
  local SamName = Group:GetName()
  local m = MESSAGE:New(string.format("Mantis switched %s to GREEN state!", SamName),10,"Info"):ToAll()
end

-- Destroy HQ after 5 mins
function TerminateHQ()
  local group = GROUP:FindByName("Red HQ")
  group:Destroy()
end

local desthqtimer = TIMER:New(TerminateHQ)
desthqtimer:Start(600)
