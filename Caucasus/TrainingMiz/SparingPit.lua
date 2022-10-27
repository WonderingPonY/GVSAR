Mig = SET_GROUP:New():FilterCoalitions('red'):FilterPrefixes("Mig"):FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()

AIZone1 = ZONE:FindByName("AI-1")

env.info("----------------------------Mig BFM Area 1 Spawns--------------------------")
function AIMigBFM()
  env.info("AIMigBFM FUNCTION STARTED")

      if Mig:IsNotInZone(AIZone1) then
       trigger.action.deactivateGroup( Mig )
       env.info("UNIT DIES")
      else
        return nil
      end
end


AIMigBFM()

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
