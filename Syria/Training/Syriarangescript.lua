local FWbombTgts = {"Bombing Ground Target-1", "Bombing Ground Target-2", "Bombing Ground Target-3", "Bombing Ground Target-4", "Bombing Ground Target-5", "Bombing Ground Target-6", "Bombing Ground Target-7", "Bombing Ground Target-8", "Bombing Ground Target-9", "Bombing Ground Target-10", "Bombing Ground Target-11", "Bombing Ground Target-12", "Bombing Ground Target-13" }
-- local StrafePit1 = {"SP1"}
-- local StrafePit2 = {"SP2"}
-- local StrafePit3 = {"SP3"}

FWRange = RANGE:New("Fixed-Wing A2G Training Range")
	FWRange:SetRangeZone(ZONE:New("A2G Training Area"))
	FWRange:SetScoreBombDistance(200)
	FWRange:AddBombingTargets( FWbombTgts, 30)
	--FWRange:BombtrackThreshold(50000)
	-- FWRange:AddStrafePit(StrafePit1, 2000, 1000, nil, true, 20, 305)
	-- FWRange:AddStrafePit(StrafePit2, 3000, 1000, nil, true, 20, 305)
	-- FWRange:AddStrafePit(StrafePit3, 4000, 1000, nil, true, 20, 305)
 	FWRange:SetInstructorRadio(225.000)
	FWRange:SetRangeControl(225.500)

	-- local HTbombTgts = {"HT Bomb Target-1", "HT Bomb Target-2", "HT Bomb Target-3", "HT Bomb Target-4", "HT Bomb Target-5", "HT Bomb Target-6", "HT Bomb Target-7", "HT Bomb Target-8", "HT Bomb Target-9", "HT Bomb Target-10"}
	-- -- local HTStrafePit1 = {"HTSP1"}
	-- -- local HTStrafePit2 = {"HTSP2"}
	-- -- local HTStrafePit3 = {"HTSP3"}
	-- HTRange = RANGE:New("Heli Training Range")
	-- 	HTRange:SetRangeZone(ZONE:New("Heli-Training Range"))
	-- 	HTRange:SetScoreBombDistance(200)
	-- 	HTRange:AddBombingTargets( HTbombTgts, 30)
	-- 	-- HTRange:AddStrafePit(HTStrafePit1, 2000, 1000, nil, true, 20, 305)
	-- 	-- HTRange:AddStrafePit(HTStrafePit2, 3000, 1000, nil, true, 20, 305)
	-- 	-- HTRange:AddStrafePit(HTStrafePit3, 4000, 1000, nil, true, 20, 305)
	--  	HTRange:SetInstructorRadio(127.000)
	-- 	HTRange:SetRangeControl(127.500)

		-- local NavalbombTgts = {"Naval Training Target-1", "Naval Training Target-2", "Naval Training Target-3", "Naval Training Target-4", "Naval Training Target-5", "Naval Training Target-6", "Naval Training Target-7", "Naval Training Target-8", "Naval Training Target-9"}
		-- -- local WWIIStrafePit1 = {"WWIISP1"}
		-- -- local WWIIStrafePit2 = {"WWIISP2"}
		-- -- local WWIIStrafePit3 = {"WWIISP3"}
		-- NavalbombTgts = RANGE:New("Naval Training Range")
		-- 	NavalbombTgts:SetRangeZone(ZONE:New("Naval Training Range"))
		-- 	NavalbombTgts:SetScoreBombDistance(200)
		-- 	NavalbombTgts:AddBombingTargets( NavalbombTgts, 30)
		-- 	NavalbombTgts:BombtrackThreshold(50000)
		-- 	-- NavalbombTgts:AddStrafePit(WWIIStrafePit1, 2000, 1000, nil, true, 20, 305)
		-- 	-- NavalbombTgts:AddStrafePit(WWIIStrafePit2, 3000, 1000, nil, true, 20, 305)
		-- 	-- NavalbombTgts:AddStrafePit(WWIIStrafePit3, 4000, 1000, nil, true, 20, 305)
		--  	NavalbombTgts:SetInstructorRadio(208.000)
		-- 	NavalbombTgts:SetRangeControl(208.500)

	FWRange:Start()
	-- HTRange:Start()
	-- NavalbombTgts:Start()
