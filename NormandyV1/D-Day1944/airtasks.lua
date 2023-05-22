-- weaponType is a number associated with a correspond weapons flags
-- AI.Task.WeaponExpend

-- "QUARTER" = "Quarter"
-- "TWO"     = "Two"
-- "ONE"     = "One"
-- "FOUR"    = "Four"
-- "HALF"    = "Half"
-- "ALL"     = "All"


vec2 = {x = -34362 , y = -10743}
weaptype = 536870912
atkq = 2
attkql = FOUR
grpatk = true
alt = 3000
altenable = true

Bombing = { 
    id = 'Bombing', 
    params = { 
      point = vec2,
      weaponType = BuiltInCannon,
      expend = atkq,
      attackQty = attkql,
      attackQtyLimit = attkql,
      direction = 360, 
      groupAttack = grpatk, 
      altitude = alt,
      altitudeEnabled = altenable
    } 
   }