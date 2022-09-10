blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }
MasterZone = ZONE:FindByName("MonkeyFucker")
BlueFrontZone1 = ZONE:FindByName("BlueFrontSpawnZone-3")


env.info("----------------------------BLUE FRONT ZONE 3 FUNCTION--------------------------")
function MM55ZoneSpawn()
  env.info("MM55ZoneSpawn FUNCTION STARTED")
     local MM55zone = ZONE:FindByName("MM55")
     MM55SpawnZone1 = ZONE:FindByName("MM55 Spawn Zone-1")
     MM55SpawnZone2 = ZONE:FindByName("MM55 Spawn Zone-2")
     MM55SpawnZone3 = ZONE:FindByName("MM55 Spawn Zone-3")
     MM55SpawnZone4 = ZONE:FindByName("MM55 Spawn Zone-4")
     MM55SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM55BlueFor") :FilterStart()

     if redfor:NoneInZone(MM55zone) and MM55SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("MM55BlueFor-1")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM55BlueFor-1 Spawned")

       SPAWN:New("MM55BlueFor-2")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM55BlueFor-2 Spawned")

       SPAWN:New("MM55BlueFor-3")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM55BlueFor-3 Spawned")

       SPAWN:New("MM55BlueFor-4")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM55BlueFor-4 Spawned")
     else
       if MM55SpawnUnit:AnyInZone(MasterZone) or MM55SpawnUnit:IsAlive() == true then
         env.info("RedFor in MM55 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
end
timer.scheduleFunction(MM55ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------MM55ZoneSpawn TIMER STARTED--------------------------")


function MM54ZoneSpawn()
  env.info("MM54ZoneSpawn FUNCTION STARTED")
       local MM54zone = ZONE:FindByName("MM54")
       MM54SpawnZone1 = ZONE:FindByName("MM54 Spawn Zone-1")
       MM54SpawnZone2 = ZONE:FindByName("MM54 Spawn Zone-2")
       MM54SpawnZone3 = ZONE:FindByName("MM54 Spawn Zone-3")
       MM54SpawnZone4 = ZONE:FindByName("MM54 Spawn Zone-4")
       MM54SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM54BlueFor") :FilterStart()

       if redfor:NoneInZone(MM54zone) and MM54SpawnUnit:NoneInZone(MasterZone) then
         SPAWN:New("MM54BlueFor-1")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM54BlueFor-1 Spawned")

         SPAWN:New("MM54BlueFor-2")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM54BlueFor-2 Spawned")

         SPAWN:New("MM54BlueFor-3")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM54BlueFor-3 Spawned")

         SPAWN:New("MM54BlueFor-4")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM54BlueFor-4 Spawned")
       else
         if MM54SpawnUnit:AnyInZone(MasterZone) or MM54SpawnUnit:IsAlive() == true then
           env.info("RedFor in MM54 Zone or Units in Master Zone or Units are Alive")
           return nil
         end
       end
  end
  timer.scheduleFunction(MM54ZoneSpawn, 53, timer.getTime{}+2)
  env.info("----------------------------MM54ZoneSpawn TIMER STARTED--------------------------")


function MM53ZoneSpawn()
  env.info("MM53ZoneSpawn FUNCTION STARTED")
         local MM53zone = ZONE:FindByName("MM53")
         MM53SpawnZone1 = ZONE:FindByName("MM53 Spawn Zone-1")
         MM53SpawnZone2 = ZONE:FindByName("MM53 Spawn Zone-2")
         MM53SpawnZone3 = ZONE:FindByName("MM53 Spawn Zone-3")
         MM53SpawnZone4 = ZONE:FindByName("MM53 Spawn Zone-4")
         MM53SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM53BlueFor") :FilterStart()

         if redfor:NoneInZone(MM53zone) and MM53SpawnUnit:NoneInZone(MasterZone) then
           SPAWN:New("MM53BlueFor-1")
           :InitLimit(1,0)
           :InitRandomizeTemplate(BlueForSpawn)
           :SpawnScheduled( 5, .5 )
           env.info("MM53BlueFor-1 Spawned")

           SPAWN:New("MM53BlueFor-2")
           :InitLimit(1,0)
           :InitRandomizeTemplate(BlueForSpawn)
           :SpawnScheduled( 5, .5 )
           env.info("MM53BlueFor-2 Spawned")

           SPAWN:New("MM53BlueFor-3")
           :InitLimit(1,0)
           :InitRandomizeTemplate(BlueForSpawn)
           :SpawnScheduled( 5, .5 )
           env.info("MM53BlueFor-3 Spawned")

           SPAWN:New("MM53BlueFor-4")
           :InitLimit(1,0)
           :InitRandomizeTemplate(BlueForSpawn)
           :SpawnScheduled( 5, .5 )
           env.info("MM53BlueFor-4 Spawned")
         else
           if MM53SpawnUnit:AnyInZone(MasterZone) or MM53SpawnUnit:IsAlive() == true then
             env.info("RedFor in MM53 Zone or Units in Master Zone or Units are Alive")
             return nil
           end
         end
    end
    timer.scheduleFunction(MM53ZoneSpawn, 53, timer.getTime{}+2)
    env.info("----------------------------MM53ZoneSpawn TIMER STARTED--------------------------")

function MM65ZoneSpawn()
  env.info("MM65ZoneSpawn FUNCTION STARTED")
           local MM65zone = ZONE:FindByName("MM65")
           MM65SpawnZone1 = ZONE:FindByName("MM65 Spawn Zone-1")
           MM65SpawnZone2 = ZONE:FindByName("MM65 Spawn Zone-2")
           MM65SpawnZone3 = ZONE:FindByName("MM65 Spawn Zone-3")
           MM65SpawnZone4 = ZONE:FindByName("MM65 Spawn Zone-4")
           MM65SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM65BlueFor") :FilterStart()

           if redfor:NoneInZone(MM65zone) and MM65SpawnUnit:NoneInZone(MasterZone) then
             SPAWN:New("MM65BlueFor-1")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM65BlueFor-1 Spawned")

             SPAWN:New("MM65BlueFor-2")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM65BlueFor-2 Spawned")

             SPAWN:New("MM65BlueFor-3")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM65BlueFor-3 Spawned")

             SPAWN:New("MM65BlueFor-4")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM65BlueFor-4 Spawned")
           else
             if MM65SpawnUnit:AnyInZone(MasterZone) or MM65SpawnUnit:IsAlive() == true then
               env.info("RedFor in MM65 Zone or Units in Master Zone or Units are Alive")
               return nil
             end
           end
      end
      timer.scheduleFunction(MM65ZoneSpawn, 53, timer.getTime{}+2)
      env.info("----------------------------MM65ZoneSpawn TIMER STARTED--------------------------")


function MM64ZoneSpawn()
  env.info("MM64ZoneSpawn FUNCTION STARTED")
             local MM64zone = ZONE:FindByName("MM64")
             MM64SpawnZone1 = ZONE:FindByName("MM64 Spawn Zone-1")
             MM64SpawnZone2 = ZONE:FindByName("MM64 Spawn Zone-2")
             MM64SpawnZone3 = ZONE:FindByName("MM64 Spawn Zone-3")
             MM64SpawnZone4 = ZONE:FindByName("MM64 Spawn Zone-4")
             MM64SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM64BlueFor") :FilterStart()

             if redfor:NoneInZone(MM64zone) and MM64SpawnUnit:NoneInZone(MasterZone) then
               SPAWN:New("MM64BlueFor-1")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM64BlueFor-1 Spawned")

               SPAWN:New("MM64BlueFor-2")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM64BlueFor-2 Spawned")

               SPAWN:New("MM64BlueFor-3")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM64BlueFor-3 Spawned")

               SPAWN:New("MM64BlueFor-4")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM64BlueFor-4 Spawned")
             else
               if MM64SpawnUnit:AnyInZone(MasterZone) or MM64SpawnUnit:IsAlive() == true then
                 env.info("RedFor in MM64 Zone or Units in Master Zone or Units are Alive")
                 return nil
               end
             end
        end
        timer.scheduleFunction(MM64ZoneSpawn, 53, timer.getTime{}+2)
        env.info("----------------------------MM64ZoneSpawn TIMER STARTED--------------------------")

function MM63ZoneSpawn()
  env.info("MM63ZoneSpawn FUNCTION STARTED")
       local MM63zone = ZONE:FindByName("MM63")
       MM63SpawnZone1 = ZONE:FindByName("MM63 Spawn Zone-1")
       MM63SpawnZone2 = ZONE:FindByName("MM63 Spawn Zone-2")
       MM63SpawnZone3 = ZONE:FindByName("MM63 Spawn Zone-3")
       MM63SpawnZone4 = ZONE:FindByName("MM63 Spawn Zone-4")
       MM63SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM63BlueFor") :FilterStart()

       if redfor:NoneInZone(MM63zone) and MM63SpawnUnit:NoneInZone(MasterZone) then
         SPAWN:New("MM63BlueFor-1")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM63BlueFor-1 Spawned")

         SPAWN:New("MM63BlueFor-2")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM63BlueFor-2 Spawned")

         SPAWN:New("MM63BlueFor-3")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM63BlueFor-3 Spawned")

         SPAWN:New("MM63BlueFor-4")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM63BlueFor-4 Spawned")
       else
         if MM63SpawnUnit:AnyInZone(MasterZone) or MM63SpawnUnit:IsAlive() == true then
           env.info("RedFor in MM63 Zone or Units in Master Zone or Units are Alive")
           return nil
         end
       end
  end
  timer.scheduleFunction(MM63ZoneSpawn, 53, timer.getTime{}+2)
  env.info("----------------------------MM63ZoneSpawn TIMER STARTED--------------------------")
