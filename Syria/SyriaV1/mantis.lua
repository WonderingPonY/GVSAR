-- Set up SHORAD
local redsamset = SET_GROUP:New():FilterCoalitions("red"):FilterPrefixes({"AAAMantis","SA5Mantis","SyriaEWR"}):FilterStart()
local myredshorad = SHORAD:New("Gudata Shorad","Red Shorad",redsamset,12000,600,"red",false) -- Functional.Shorad#SHORAD
myredshorad:SetDefenseLimits(80,95)

-- Short/Mid-Range SAM sites
local myredmantis = MANTIS:New("Gudauta AAA","AAAMantis","Red EWR",nil,"red",true,"Red AWACS",false)
myredmantis:SetSAMRadius(25000)
myredmantis:SetSAMRange(85)
myredmantis:SetDetectInterval(20)
myredmantis:Start()

-- Long-range SAM site, also linked to SHORAD
local myredsa10 = MANTIS:New("Gudauta SA10","SA5Mantis","Red EWR","HQ_Red","red",true,"Red AWACS",false)
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
  local group = GROUP:FindByName("HQ_Red")
  group:Destroy()
end

local desthqtimer = TIMER:New(TerminateHQ)
desthqtimer:Start(600)

--
-- -- Short/Mid-Range SAM sites
-- local aaamantis = MANTIS:New("aaamantis","AAAMantis","SyriaEWR","HQ_Red","red",true)
-- aaamantis:SetSAMRadius(25000)
-- aaamantis:SetSAMRange(85)
-- aaamantis:SetDetectInterval(20)
-- --aaamantis:Debug(true)
-- aaamantis:Start()
-- --SA2
-- local myredsa2 = MANTIS:New("myredsa2","SA2Mantis","SyriaEWR","HQ_Red","red",true)
-- myredsa2:SetSAMRadius(25000)
-- myredsa2:SetSAMRange(85)
-- myredsa2:SetDetectInterval(20)
-- --myredsa2:Debug(true)
-- myredsa2:Start()
-- --SA3
-- local myredsa3 = MANTIS:New("myredsa3","SA3Mantis","SyriaEWR","HQ_Red","red",true)
-- myredsa3:SetSAMRadius(25000)
-- myredsa3:SetSAMRange(85)
-- myredsa3:SetDetectInterval(20)
-- --myredsa3:Debug(true)
-- myredsa3:Start()
--
-- --SA6
-- local myredsa6 = MANTIS:New("myredsa6","SA6Mantis","SyriaEWR","HQ_Red","red",true)
-- myredsa6:SetSAMRadius(25000)
-- myredsa6:SetSAMRange(85)
-- myredsa6:SetDetectInterval(20)
-- --myredsa6:Debug(true)
-- myredsa6:Start()
--
-- --SA8
-- local myredsa8 = MANTIS:New("myredsa8","SA8Mantis","SyriaEWR","HQ_Red","red",true)
-- myredsa8:SetSAMRadius(25000)
-- myredsa8:SetSAMRange(85)
-- myredsa8:SetDetectInterval(20)
-- --myredsa8:Debug(true)
-- myredsa8:Start()
--
-- --SA9
-- local myredsa9 = MANTIS:New("myredsa9","SA9Mantis","SyriaEWR","HQ_Red","red",true)
-- myredsa9:SetSAMRadius(25000)
-- myredsa9:SetSAMRange(85)
-- --myredsa9:SetDetectInterval(20)
-- myredsa9:Debug(true)
-- myredsa9:Start()
--
-- --LONG RANGE SAMS
-- --SA5
-- local myredsa5 = MANTIS:New("myredsa5","SA5Mantis","SyriaEWR","HQ_Red","red",true,nil,true)
-- myredsa5:SetSAMRadius(UTILS.NMToMeters(80000))
-- myredsa5:SetSAMRange(100)
-- myredsa5:SetDetectInterval(20)
-- myredsa5:SetAdvancedMode(true,90)
-- myredsa5:SetAutoRelocate(true,false)
-- myredsa5:SetEWRRange(80000)
-- myredsa5:StartDetection()
-- myredsa5:Debug(true)
--
-- myredsa5:Start()
--
-- --SA11
-- local myredsa11 = MANTIS:New("myredsa11","SA11Mantis","SyriaEWR","HQ_Red","red",true)
-- myredsa11:SetSAMRadius(UTILS.NMToMeters(40))
-- myredsa11:SetSAMRange(50)
-- myredsa11:SetDetectInterval(20)
-- myredsa11:SetAdvancedMode(true,90)
-- myredsa11:SetAutoRelocate(true,false)
-- --myredsa11:Debug(true)
-- myredsa11:Start()
