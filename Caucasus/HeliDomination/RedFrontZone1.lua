blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }
MasterZone = ZONE:FindByName("MonkeyFucker")
RedFrontZone1 = ZONE:FindByName("RedFrontSpawnZone-1")


env.info("----------------------------RED FRONT ZONE 1 FUNCTION--------------------------")
function LM38ZoneSpawn()
  env.info("LM38ZoneSpawn FUNCTION STARTED")
     local LM38zone = ZONE:FindByName("LM38")
     LM38SpawnZone1 = ZONE:FindByName("LM38 Spawn Zone-1")
     LM38SpawnZone2 = ZONE:FindByName("LM38 Spawn Zone-2")
     LM38SpawnZone3 = ZONE:FindByName("LM38 Spawn Zone-3")
     LM38SpawnZone4 = ZONE:FindByName("LM38 Spawn Zone-4")
     LM38SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM38Redfor") :FilterStart()

     if blufor:NoneInZone(LM38zone) and LM38SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("LM38Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM38Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM38Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM38Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )
     else
       if LM38SpawnUnit:AnyInZone(MasterZone) or LM38SpawnUnit:IsAlive() == true then
         env.info("BlueFor in LM38 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
   end
     timer.scheduleFunction(LM38ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------LM38ZoneSpawn TIMER STARTED--------------------------")


function LM37ZoneSpawn()
 env.info("LM37ZoneSpawn FUNCTION STARTED")
         local LM37zone = ZONE:FindByName("LM37")
         LM37SpawnZone1 = ZONE:FindByName("LM37 Spawn Zone-1")
         LM37SpawnZone2 = ZONE:FindByName("LM37 Spawn Zone-2")
         LM37SpawnZone3 = ZONE:FindByName("LM37 Spawn Zone-3")
         LM37SpawnZone4 = ZONE:FindByName("LM37 Spawn Zone-4")
         LM37SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM37Redfor") :FilterStart()

         if blufor:NoneInZone(LM37zone) and LM37SpawnUnit:NoneInZone(MasterZone) then
           SPAWN:New("LM37Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM37Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM37Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM37Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )
         else
           if LM37SpawnUnit:AnyInZone(MasterZone) or LM37SpawnUnit:IsAlive() == true then
             env.info("BlueFor in LM37 Zone or Units in Master Zone or Units are Alive")
             return nil
           end
         end
end
 timer.scheduleFunction(LM37ZoneSpawn, 53, timer.getTime{}+2)
 env.info("----------------------------LM37ZoneSpawn TIMER STARTED--------------------------")


function LM36ZoneSpawn()
env.info("LM36ZoneSpawn FUNCTION STARTED")
     local LM36zone = ZONE:FindByName("LM36")
     LM36SpawnZone1 = ZONE:FindByName("LM36 Spawn Zone-1")
     LM36SpawnZone2 = ZONE:FindByName("LM36 Spawn Zone-2")
     LM36SpawnZone3 = ZONE:FindByName("LM36 Spawn Zone-3")
     LM36SpawnZone4 = ZONE:FindByName("LM36 Spawn Zone-4")
     LM36SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM36Redfor") :FilterStart()

     if blufor:NoneInZone(LM36zone) and LM36SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("LM36Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM36Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM36Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM36Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )
     else
       if LM36SpawnUnit:AnyInZone(MasterZone) or LM36SpawnUnit:IsAlive() == true then
         env.info("BlueFor in LM36 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
end
 timer.scheduleFunction(LM36ZoneSpawn, 53, timer.getTime{}+2)
 env.info("----------------------------LM36ZoneSpawn TIMER STARTED--------------------------")


function LM35ZoneSpawn()
env.info("LM35ZoneSpawn FUNCTION STARTED")
         local LM35zone = ZONE:FindByName("LM35")
         LM35SpawnZone1 = ZONE:FindByName("LM35 Spawn Zone-1")
         LM35SpawnZone2 = ZONE:FindByName("LM35 Spawn Zone-2")
         LM35SpawnZone3 = ZONE:FindByName("LM35 Spawn Zone-3")
         LM35SpawnZone4 = ZONE:FindByName("LM35 Spawn Zone-4")
         LM35SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM35Redfor") :FilterStart()

         if blufor:NoneInZone(LM35zone) and LM35SpawnUnit:NoneInZone(MasterZone) then
           SPAWN:New("LM35Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM35Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM35Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM35Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )
         else
           if LM35SpawnUnit:AnyInZone(MasterZone) or LM35SpawnUnit:IsAlive() == true then
             env.info("BlueFor in LM35 Zone or Units in Master Zone or Units are Alive")
             return nil
           end
         end
end
 timer.scheduleFunction(LM35ZoneSpawn, 53, timer.getTime{}+2)
 env.info("----------------------------LM35ZoneSpawn TIMER STARTED--------------------------")


function LM48ZoneSpawn()
env.info("LM48ZoneSpawn FUNCTION STARTED")
     local LM48zone = ZONE:FindByName("LM48")
     LM48SpawnZone1 = ZONE:FindByName("LM48 Spawn Zone-1")
     LM48SpawnZone2 = ZONE:FindByName("LM48 Spawn Zone-2")
     LM48SpawnZone3 = ZONE:FindByName("LM48 Spawn Zone-3")
     LM48SpawnZone4 = ZONE:FindByName("LM48 Spawn Zone-4")
     LM48SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM48Redfor") :FilterStart()

     if blufor:NoneInZone(LM48zone) and LM48SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("LM48Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM48Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM48Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM48Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )
     else
       if LM48SpawnUnit:AnyInZone(MasterZone) or LM48SpawnUnit:IsAlive() == true then
         env.info("BlueFor in LM48 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
end
timer.scheduleFunction(LM48ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------LM48ZoneSpawn TIMER STARTED--------------------------")


function LM47ZoneSpawn()
env.info("LM47ZoneSpawn FUNCTION STARTED")
         local LM47zone = ZONE:FindByName("LM47")
         LM47SpawnZone1 = ZONE:FindByName("LM47 Spawn Zone-1")
         LM47SpawnZone2 = ZONE:FindByName("LM47 Spawn Zone-2")
         LM47SpawnZone3 = ZONE:FindByName("LM47 Spawn Zone-3")
         LM47SpawnZone4 = ZONE:FindByName("LM47 Spawn Zone-4")
         LM47SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM47Redfor") :FilterStart()

         if blufor:NoneInZone(LM47zone) and LM47SpawnUnit:NoneInZone(MasterZone) then
           SPAWN:New("LM47Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM47Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM47Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM47Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )
         else
           if LM47SpawnUnit:AnyInZone(MasterZone) or LM47SpawnUnit:IsAlive() == true then
             env.info("BlueFor in LM47 Zone or Units in Master Zone or Units are Alive")
             return nil
           end
         end
 end
 timer.scheduleFunction(LM47ZoneSpawn, 53, timer.getTime{}+2)
 env.info("----------------------------LM47ZoneSpawn TIMER STARTED--------------------------")


function LM46ZoneSpawn()
env.info("LM46ZoneSpawn FUNCTION STARTED")
       local LM46zone = ZONE:FindByName("LM46")
       LM46SpawnZone1 = ZONE:FindByName("LM46 Spawn Zone-1")
       LM46SpawnZone2 = ZONE:FindByName("LM46 Spawn Zone-2")
       LM46SpawnZone3 = ZONE:FindByName("LM46 Spawn Zone-3")
       LM46SpawnZone4 = ZONE:FindByName("LM46 Spawn Zone-4")
       LM46SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM46Redfor") :FilterStart()

       if blufor:NoneInZone(LM46zone) and LM46SpawnUnit:NoneInZone(MasterZone) then
         SPAWN:New("LM46Redfor-1")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 1, 0 )
         :SpawnScheduled( 5, .5 )

         SPAWN:New("LM46Redfor-2")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 1, 0 )
         :SpawnScheduled( 5, .5 )

         SPAWN:New("LM46Redfor-3")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 1, 0 )
         :SpawnScheduled( 5, .5 )

         SPAWN:New("LM46Redfor-4")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 1, 0 )
         :SpawnScheduled( 5, .5 )
       else
         if LM46SpawnUnit:AnyInZone(MasterZone) or LM46SpawnUnit:IsAlive() == true then
           env.info("BlueFor in LM46 Zone or Units in Master Zone or Units are Alive")
           return nil
         end
       end
end
timer.scheduleFunction(LM46ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------LM46ZoneSpawn TIMER STARTED--------------------------")


function LM45ZoneSpawn()
env.info("LM45ZoneSpawn FUNCTION STARTED")
       local LM45zone = ZONE:FindByName("LM45")
       LM45SpawnZone1 = ZONE:FindByName("LM45 Spawn Zone-1")
       LM45SpawnZone2 = ZONE:FindByName("LM45 Spawn Zone-2")
       LM45SpawnZone3 = ZONE:FindByName("LM45 Spawn Zone-3")
       LM45SpawnZone4 = ZONE:FindByName("LM45 Spawn Zone-4")
       LM45SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM45Redfor") :FilterStart()

       if blufor:NoneInZone(LM45zone) and LM45SpawnUnit:NoneInZone(MasterZone) then
         SPAWN:New("LM45Redfor-1")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 1, 0 )
         :SpawnScheduled( 5, .5 )

         SPAWN:New("LM45Redfor-2")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 1, 0 )
         :SpawnScheduled( 5, .5 )

         SPAWN:New("LM45Redfor-3")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 1, 0 )
         :SpawnScheduled( 5, .5 )

         SPAWN:New("LM45Redfor-4")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 1, 0 )
         :SpawnScheduled( 5, .5 )
       else
         if LM45SpawnUnit:AnyInZone(MasterZone) or LM45SpawnUnit:IsAlive() == true then
           env.info("BlueFor in LM45 Zone or Units in Master Zone or Units are Alive")
           return nil
         end
       end
end
timer.scheduleFunction(LM45ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------LM45ZoneSpawn TIMER STARTED--------------------------")
