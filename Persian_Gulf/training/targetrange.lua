CM03Range = RANGE:New("CM03")
  CM03Range:AddStrafePit("CM03strafetarget", 3000, 300, 180, 0, 20, 610)
  CM03Range:SetInstructorRadio(305,"Tom")
  CM03Range:SetRangeControl(256,"Allen")
  CM03Range:AddBombingTargets("BombTarget1")

CM03Range:Start()
CM03Range:SetAutosaveOn(true)
