local bombTgts = {"Bomb Target-1", "Bomb Target-2", "Bomb Target-3", "Bomb Target-4", "Bomb Target-5", "Bomb Target-6", "Bomb Target-7", "Bomb Target-8", "Bomb Target-9", "Bomb Target-10"}
local StrafePit1 = {"SP1"}
local StrafePit2 = {"SP2"}
local StrafePit3 = {"SP3"}

FWRange = RANGE:New("Fixed-Wing Training Range")
	FWRange:SetRangeZone(ZONE:New("Training Range"))
	FWRange:SetScoreBombDistance(200)
	FWRange:AddBombingTargets( bombTgts, 30)
	FWRange:AddStrafePit(StrafePit1, 2000, 1000, nil, true, 20, 305)
	FWRange:AddStrafePit(StrafePit2, 3000, 1000, nil, true, 20, 305)
	FWRange:AddStrafePit(StrafePit3, 4000, 1000, nil, true, 20, 305)
 	FWRange:SetInstructorRadio(126.000)
	FWRange:SetRangeControl(126.500)

	local HTbombTgts = {"HT Bomb Target-1", "HT Bomb Target-2", "HT Bomb Target-3", "HT Bomb Target-4", "HT Bomb Target-5", "HT Bomb Target-6", "HT Bomb Target-7", "HT Bomb Target-8", "HT Bomb Target-9", "HT Bomb Target-10"}
	local HTStrafePit1 = {"HTSP1"}
	local HTStrafePit2 = {"HTSP2"}
	local HTStrafePit3 = {"HTSP3"}
	HTRange = RANGE:New("Heli Training Range")
		HTRange:SetRangeZone(ZONE:New("Heli-Training Range"))
		HTRange:SetScoreBombDistance(200)
		HTRange:AddBombingTargets( HTbombTgts, 30)
		HTRange:AddStrafePit(HTStrafePit1, 2000, 1000, nil, true, 20, 305)
		HTRange:AddStrafePit(HTStrafePit2, 3000, 1000, nil, true, 20, 305)
		HTRange:AddStrafePit(HTStrafePit3, 4000, 1000, nil, true, 20, 305)
	 	HTRange:SetInstructorRadio(127.000)
		HTRange:SetRangeControl(127.500)

		local WWIIbombTgts = {"WWII Bomb Target-1", "WWII Bomb Target-2", "WWII Bomb Target-3", "WWII Bomb Target-4", "WWII Bomb Target-5", "WWII Bomb Target-6", "WWII Bomb Target-7", "WWII Bomb Target-8", "WWII Bomb Target-9", "WWII Bomb Target-10"}
		local WWIIStrafePit1 = {"WWIISP1"}
		local WWIIStrafePit2 = {"WWIISP2"}
		local WWIIStrafePit3 = {"WWIISP3"}
		WWIIRange = RANGE:New("WWII Training Range")
			WWIIRange:SetRangeZone(ZONE:New("WWII Training Range"))
			WWIIRange:SetScoreBombDistance(200)
			WWIIRange:AddBombingTargets( WWIIbombTgts, 30)
			WWIIRange:AddStrafePit(WWIIStrafePit1, 2000, 1000, nil, true, 20, 305)
			WWIIRange:AddStrafePit(WWIIStrafePit2, 3000, 1000, nil, true, 20, 305)
			WWIIRange:AddStrafePit(WWIIStrafePit3, 4000, 1000, nil, true, 20, 305)
		 	WWIIRange:SetInstructorRadio(30.000)
			WWIIRange:SetRangeControl(35.000)

	FWRange:Start()
	HTRange:Start()
	WWIIRange:Start()
