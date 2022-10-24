blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterPrefixes("1v1 Area 1"):FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()



env.info("----------------------------Area1BFMGUNS3 Spawns--------------------------")
function Area1BFMGUNS3()
  env.info("Area1BFMGUNS3 FUNCTION STARTED")
      Testzone1 = ZONE:FindByName("Test zone 1")
      TestUnit = UNIT:FindByName("Aerial-4-3")
   if UNIT:FindByName("Aerial-4-3"):IsNotInZone(Testzone1) and UNIT:FindByName("Aerial-4-3"):IsAlive() then
     TestUnitVec3 = TestUnit:GetVec3()
     trigger.action.explosion(UNIT:FindByName("Aerial-4-3"):GetVec3() , 500 )
     env.info("UNIT DIES")
   else
     return nil
   end
end
     timer.scheduleFunction(Area1BFMGUNS3, 53, timer.getTime{}+2)
     env.info("----------------------------Area1BFMGUNS3 TIMER STARTED--------------------------")
     -- KM76Hind2 = GROUP:New("KM76 Hind-2")
     -- KM76Hind3 = GROUP:New("KM76 Hind-3")
     -- KM76Hind4 = GROUP:New("KM76 Hind-4")
     -- KM76Shark1 = GROUP:New("KM76 Shark-1")
     -- KM76Shark2 = GROUP:New("KM76 Shark-2")
     -- KM76Shark3 = GROUP:New("KM76 Shark-3")
     -- KM76Shark4 = GROUP:New("KM76 Shark-4")
     -- KM76Hip1 = GROUP:New("KM76 Hip-1")
     -- KM76Hip2 = GROUP:New("KM76 Hip-2")
     -- KM76Hip3 = GROUP:New("KM76 Hip-3")
     -- KM76Hip4 = GROUP:New("KM76 Hip-4")
