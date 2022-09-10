blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }
MasterZone = ZONE:FindByName("MonkeyFucker")
RedFrontZone2 = ZONE:FindByName("RedFrontSpawnZone-2")


env.info("----------------------------RED FRONT ZONE 2 FUNCTION--------------------------")
function LM18ZoneSpawn()
  env.info("LM18ZoneSpawn FUNCTION STARTED")
     local LM18zone = ZONE:FindByName("LM18")
     LM18SpawnZone1 = ZONE:FindByName("LM18 Spawn Zone-1")
     LM18SpawnZone2 = ZONE:FindByName("LM18 Spawn Zone-2")
     LM18SpawnZone3 = ZONE:FindByName("LM18 Spawn Zone-3")
     LM18SpawnZone4 = ZONE:FindByName("LM18 Spawn Zone-4")
     LM18SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM18Redfor") :FilterStart()

     if blufor:NoneInZone(LM18zone) and LM18SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("LM18Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM18Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM18Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM18Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )
     else
       if LM18SpawnUnit:AnyInZone(MasterZone) or LM18SpawnUnit:IsAlive() == true then
         env.info("BlueFor in LM18 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
end
     timer.scheduleFunction(LM18ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------LM18ZoneSpawn TIMER STARTED--------------------------")


function LM17ZoneSpawn()
     env.info("LM17ZoneSpawn FUNCTION STARTED")
         local LM17zone = ZONE:FindByName("LM17")
         LM17SpawnZone1 = ZONE:FindByName("LM17 Spawn Zone-1")
         LM17SpawnZone2 = ZONE:FindByName("LM17 Spawn Zone-2")
         LM17SpawnZone3 = ZONE:FindByName("LM17 Spawn Zone-3")
         LM17SpawnZone4 = ZONE:FindByName("LM17 Spawn Zone-4")
         LM17SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM17Redfor") :FilterStart()

         if blufor:NoneInZone(LM17zone) and LM17SpawnUnit:NoneInZone(MasterZone) then
           SPAWN:New("LM17Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM17Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM17Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM17Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )
         else
           if LM17SpawnUnit:AnyInZone(MasterZone) or LM17SpawnUnit:IsAlive() == true then
             env.info("BlueFor in LM17 Zone or Units in Master Zone or Units are Alive")
             return nil
           end
         end
end
 timer.scheduleFunction(LM17ZoneSpawn, 53, timer.getTime{}+2)
 env.info("----------------------------LM17ZoneSpawn TIMER STARTED--------------------------")


function LM16ZoneSpawn()
  env.info("LM16ZoneSpawn FUNCTION STARTED")
             local LM16zone = ZONE:FindByName("LM16")
             LM16SpawnZone1 = ZONE:FindByName("LM16 Spawn Zone-1")
             LM16SpawnZone2 = ZONE:FindByName("LM16 Spawn Zone-2")
             LM16SpawnZone3 = ZONE:FindByName("LM16 Spawn Zone-3")
             LM16SpawnZone4 = ZONE:FindByName("LM16 Spawn Zone-4")
             LM16SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM16Redfor") :FilterStart()

             if blufor:NoneInZone(LM16zone) and LM16SpawnUnit:NoneInZone(MasterZone) then
               SPAWN:New("LM16Redfor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 1, 0 )
               :SpawnScheduled( 5, .5 )

               SPAWN:New("LM16Redfor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 1, 0 )
               :SpawnScheduled( 5, .5 )

               SPAWN:New("LM16Redfor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 1, 0 )
               :SpawnScheduled( 5, .5 )

               SPAWN:New("LM16Redfor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 1, 0 )
               :SpawnScheduled( 5, .5 )
             else
               if LM16SpawnUnit:AnyInZone(MasterZone) or LM16SpawnUnit:IsAlive() == true then
                 env.info("BlueFor in LM16 Zone or Units in Master Zone or Units are Alive")
                 return nil
               end
             end
    end
     timer.scheduleFunction(LM16ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------LM16ZoneSpawn TIMER STARTED--------------------------")


function LM28ZoneSpawn()
   env.info("LM28ZoneSpawn FUNCTION STARTED")
                 local LM28zone = ZONE:FindByName("LM28")
                 LM28SpawnZone1 = ZONE:FindByName("LM28 Spawn Zone-1")
                 LM28SpawnZone2 = ZONE:FindByName("LM28 Spawn Zone-2")
                 LM28SpawnZone3 = ZONE:FindByName("LM28 Spawn Zone-3")
                 LM28SpawnZone4 = ZONE:FindByName("LM28 Spawn Zone-4")
                 LM28SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM28Redfor") :FilterStart()

                 if blufor:NoneInZone(LM28zone) and LM28SpawnUnit:NoneInZone(MasterZone) then
                   SPAWN:New("LM28Redfor-1")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 1, 0 )
                   :SpawnScheduled( 5, .5 )

                   SPAWN:New("LM28Redfor-2")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 1, 0 )
                   :SpawnScheduled( 5, .5 )

                   SPAWN:New("LM28Redfor-3")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 1, 0 )
                   :SpawnScheduled( 5, .5 )

                   SPAWN:New("LM28Redfor-4")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 1, 0 )
                   :SpawnScheduled( 5, .5 )
                 else
                   if LM28SpawnUnit:AnyInZone(MasterZone) or LM28SpawnUnit:IsAlive() == true then
                     env.info("BlueFor in LM28 Zone or Units in Master Zone or Units are Alive")
                     return nil
                   end
                 end
end
 timer.scheduleFunction(LM28ZoneSpawn, 53, timer.getTime{}+2)
 env.info("----------------------------LM28ZoneSpawn TIMER STARTED--------------------------")


function LM27ZoneSpawn()
  env.info("LM27ZoneSpawn FUNCTION STARTED")
                     local LM27zone = ZONE:FindByName("LM27")
                     LM27SpawnZone1 = ZONE:FindByName("LM27 Spawn Zone-1")
                     LM27SpawnZone2 = ZONE:FindByName("LM27 Spawn Zone-2")
                     LM27SpawnZone3 = ZONE:FindByName("LM27 Spawn Zone-3")
                     LM27SpawnZone4 = ZONE:FindByName("LM27 Spawn Zone-4")
                     LM27SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM27Redfor") :FilterStart()

                     if blufor:NoneInZone(LM27zone) and LM27SpawnUnit:NoneInZone(MasterZone) then
                       SPAWN:New("LM27Redfor-1")
                       :InitRandomizeTemplate(RedForSpawn)
                       :InitLimit( 1, 0 )
                       :SpawnScheduled( 5, .5 )

                       SPAWN:New("LM27Redfor-2")
                       :InitRandomizeTemplate(RedForSpawn)
                       :InitLimit( 1, 0 )
                       :SpawnScheduled( 5, .5 )

                       SPAWN:New("LM27Redfor-3")
                       :InitRandomizeTemplate(RedForSpawn)
                       :InitLimit( 1, 0 )
                       :SpawnScheduled( 5, .5 )

                       SPAWN:New("LM27Redfor-4")
                       :InitRandomizeTemplate(RedForSpawn)
                       :InitLimit( 1, 0 )
                       :SpawnScheduled( 5, .5 )
                     else
                       if LM27SpawnUnit:AnyInZone(MasterZone) or LM27SpawnUnit:IsAlive() == true then
                         env.info("BlueFor in LM27 Zone or Units in Master Zone or Units are Alive")
                         return nil
                       end
                     end
    end
     timer.scheduleFunction(LM27ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------LM27ZoneSpawn TIMER STARTED--------------------------")


function LM26ZoneSpawn()
 env.info("LM26ZoneSpawn FUNCTION STARTED")
           local LM26zone = ZONE:FindByName("LM26")
           LM26SpawnZone1 = ZONE:FindByName("LM26 Spawn Zone-1")
           LM26SpawnZone2 = ZONE:FindByName("LM26 Spawn Zone-2")
           LM26SpawnZone3 = ZONE:FindByName("LM26 Spawn Zone-3")
           LM26SpawnZone4 = ZONE:FindByName("LM26 Spawn Zone-4")
           LM26SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM26Redfor") :FilterStart()

           if blufor:NoneInZone(LM26zone) and LM26SpawnUnit:NoneInZone(MasterZone) then
             SPAWN:New("LM26Redfor-1")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 1, 0 )
             :SpawnScheduled( 5, .5 )

             SPAWN:New("LM26Redfor-2")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 1, 0 )
             :SpawnScheduled( 5, .5 )

             SPAWN:New("LM26Redfor-3")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 1, 0 )
             :SpawnScheduled( 5, .5 )

             SPAWN:New("LM26Redfor-4")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 1, 0 )
             :SpawnScheduled( 5, .5 )
           else
             if LM26SpawnUnit:AnyInZone(MasterZone) or LM26SpawnUnit:IsAlive() == true then
               env.info("BlueFor in LM26 Zone or Units in Master Zone or Units are Alive")
               return nil
             end
           end
end
timer.scheduleFunction(LM26ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------LM26ZoneSpawn TIMER STARTED--------------------------")

function LM25ZoneSpawn()
 env.info("LM25ZoneSpawn FUNCTION STARTED")
           local LM25zone = ZONE:FindByName("LM25")
           LM25SpawnZone1 = ZONE:FindByName("LM25 Spawn Zone-1")
           LM25SpawnZone2 = ZONE:FindByName("LM25 Spawn Zone-2")
           LM25SpawnZone3 = ZONE:FindByName("LM25 Spawn Zone-3")
           LM25SpawnZone4 = ZONE:FindByName("LM25 Spawn Zone-4")
           LM25SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM25Redfor") :FilterStart()

           if blufor:NoneInZone(LM25zone) and LM25SpawnUnit:NoneInZone(MasterZone) then
             SPAWN:New("LM25Redfor-1")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 1, 0 )
             :SpawnScheduled( 5, .5 )

             SPAWN:New("LM25Redfor-2")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 1, 0 )
             :SpawnScheduled( 5, .5 )

             SPAWN:New("LM25Redfor-3")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 1, 0 )
             :SpawnScheduled( 5, .5 )

             SPAWN:New("LM25Redfor-4")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 1, 0 )
             :SpawnScheduled( 5, .5 )
           else
             if LM25SpawnUnit:AnyInZone(MasterZone) or LM25SpawnUnit:IsAlive() == true then
               env.info("BlueFor in LM25 Zone or Units in Master Zone or Units are Alive")
               return nil
             end
           end
end
timer.scheduleFunction(LM25ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------LM25ZoneSpawn TIMER STARTED--------------------------")
