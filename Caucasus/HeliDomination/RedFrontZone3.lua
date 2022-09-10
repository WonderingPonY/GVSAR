blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }
MasterZone = ZONE:FindByName("MonkeyFucker")
RedFrontZone2 = ZONE:FindByName("RedFrontSpawnZone-3")


env.info("----------------------------RED FRONT ZONE 3 FUNCTION--------------------------")
function KM98ZoneSpawn()
  env.info("KM98ZoneSpawn FUNCTION STARTED")
     local KM98zone = ZONE:FindByName("KM98")
     KM98SpawnZone1 = ZONE:FindByName("KM98 Spawn Zone-1")
     KM98SpawnZone2 = ZONE:FindByName("KM98 Spawn Zone-2")
     KM98SpawnZone3 = ZONE:FindByName("KM98 Spawn Zone-3")
     KM98SpawnZone4 = ZONE:FindByName("KM98 Spawn Zone-4")
     KM98SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("KM98Redfor") :FilterStart()

     if blufor:NoneInZone(KM98zone) and KM98SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("KM98Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("KM98Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("KM98Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("KM98Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )
     else
       if KM98SpawnUnit:AnyInZone(MasterZone) or KM98SpawnUnit:IsAlive() == true then
         env.info("BlueFor in KM98 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
end
     timer.scheduleFunction(KM98ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------KM98ZoneSpawn TIMER STARTED--------------------------")


function KM97ZoneSpawn()
 env.info("KM97ZoneSpawn FUNCTION STARTED")
     local KM97zone = ZONE:FindByName("KM97")
     KM97SpawnZone1 = ZONE:FindByName("KM97 Spawn Zone-1")
     KM97SpawnZone2 = ZONE:FindByName("KM97 Spawn Zone-2")
     KM97SpawnZone3 = ZONE:FindByName("KM97 Spawn Zone-3")
     KM97SpawnZone4 = ZONE:FindByName("KM97 Spawn Zone-4")
     KM97SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("KM97Redfor") :FilterStart()

     if blufor:NoneInZone(KM97zone) and KM97SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("KM97Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("KM97Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("KM97Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("KM97Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )
     else
       if KM97SpawnUnit:AnyInZone(MasterZone) or KM97SpawnUnit:IsAlive() == true then
         env.info("BlueFor in KM97 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
end
     timer.scheduleFunction(KM97ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------KM97ZoneSpawn TIMER STARTED--------------------------")


function KM96ZoneSpawn()
env.info("KM96ZoneSpawn FUNCTION STARTED")
         local KM96zone = ZONE:FindByName("KM96")
         KM96SpawnZone1 = ZONE:FindByName("KM96 Spawn Zone-1")
         KM96SpawnZone2 = ZONE:FindByName("KM96 Spawn Zone-2")
         KM96SpawnZone3 = ZONE:FindByName("KM96 Spawn Zone-3")
         KM96SpawnZone4 = ZONE:FindByName("KM96 Spawn Zone-4")
         KM96SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("KM96Redfor") :FilterStart()

         if blufor:NoneInZone(KM96zone) and KM96SpawnUnit:NoneInZone(MasterZone) then
           SPAWN:New("KM96Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("KM96Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("KM96Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("KM96Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )
         else
           if KM96SpawnUnit:AnyInZone(MasterZone) or KM96SpawnUnit:IsAlive() == true then
             env.info("BlueFor in KM96 Zone or Units in Master Zone or Units are Alive")
             return nil
           end
         end
    end
         timer.scheduleFunction(KM96ZoneSpawn, 53, timer.getTime{}+2)
         env.info("----------------------------KM96ZoneSpawn TIMER STARTED--------------------------")

function LM08ZoneSpawn()
env.info("LM08ZoneSpawn FUNCTION STARTED")
     local LM08zone = ZONE:FindByName("LM08")
     LM08SpawnZone1 = ZONE:FindByName("LM08 Spawn Zone-1")
     LM08SpawnZone2 = ZONE:FindByName("LM08 Spawn Zone-2")
     LM08SpawnZone3 = ZONE:FindByName("LM08 Spawn Zone-3")
     LM08SpawnZone4 = ZONE:FindByName("LM08 Spawn Zone-4")
     LM08SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM08Redfor") :FilterStart()

     if blufor:NoneInZone(LM08zone) and LM08SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("LM08Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM08Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM08Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )

       SPAWN:New("LM08Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 1, 0 )
       :SpawnScheduled( 5, .5 )
     else
       if LM08SpawnUnit:AnyInZone(MasterZone) or LM08SpawnUnit:IsAlive() == true then
         env.info("BlueFor in LM08 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
end
     timer.scheduleFunction(LM08ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------LM08ZoneSpawn TIMER STARTED--------------------------")


function LM07ZoneSpawn()
env.info("LM07ZoneSpawn FUNCTION STARTED")
         local LM07zone = ZONE:FindByName("LM07")
         LM07SpawnZone1 = ZONE:FindByName("LM07 Spawn Zone-1")
         LM07SpawnZone2 = ZONE:FindByName("LM07 Spawn Zone-2")
         LM07SpawnZone3 = ZONE:FindByName("LM07 Spawn Zone-3")
         LM07SpawnZone4 = ZONE:FindByName("LM07 Spawn Zone-4")
         LM07SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM07Redfor") :FilterStart()

         if blufor:NoneInZone(LM07zone) and LM07SpawnUnit:NoneInZone(MasterZone) then
           SPAWN:New("LM07Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM07Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM07Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )

           SPAWN:New("LM07Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 1, 0 )
           :SpawnScheduled( 5, .5 )
         else
           if LM07SpawnUnit:AnyInZone(MasterZone) or LM07SpawnUnit:IsAlive() == true then
             env.info("BlueFor in LM07 Zone or Units in Master Zone or Units are Alive")
             return nil
           end
         end
    end
         timer.scheduleFunction(LM07ZoneSpawn, 53, timer.getTime{}+2)
         env.info("----------------------------LM07ZoneSpawn TIMER STARTED--------------------------")


function LM06ZoneSpawn()
env.info("LM06ZoneSpawn FUNCTION STARTED")
             local LM06zone = ZONE:FindByName("LM06")
             LM06SpawnZone1 = ZONE:FindByName("LM06 Spawn Zone-1")
             LM06SpawnZone2 = ZONE:FindByName("LM06 Spawn Zone-2")
             LM06SpawnZone3 = ZONE:FindByName("LM06 Spawn Zone-3")
             LM06SpawnZone4 = ZONE:FindByName("LM06 Spawn Zone-4")
             LM06SpawnUnit = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("LM06Redfor") :FilterStart()

             if blufor:NoneInZone(LM06zone) and LM06SpawnUnit:NoneInZone(MasterZone) then
               SPAWN:New("LM06Redfor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 1, 0 )
               :SpawnScheduled( 5, .5 )

               SPAWN:New("LM06Redfor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 1, 0 )
               :SpawnScheduled( 5, .5 )

               SPAWN:New("LM06Redfor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 1, 0 )
               :SpawnScheduled( 5, .5 )

               SPAWN:New("LM06Redfor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 1, 0 )
               :SpawnScheduled( 5, .5 )
             else
               if LM06SpawnUnit:AnyInZone(MasterZone) or LM06SpawnUnit:IsAlive() == true then
                 env.info("BlueFor in LM06 Zone or Units in Master Zone or Units are Alive")
                 return nil
               end
             end
        end
             timer.scheduleFunction(LM06ZoneSpawn, 53, timer.getTime{}+2)
             env.info("----------------------------LM06ZoneSpawn TIMER STARTED--------------------------")
