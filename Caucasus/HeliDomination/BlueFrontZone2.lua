blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }
MasterZone = ZONE:FindByName("MonkeyFucker")
BlueFrontZone1 = ZONE:FindByName("BlueFrontSpawnZone-2")


env.info("----------------------------BLUE FRONT ZONE 2 FUNCTION--------------------------")
function MM36ZoneSpawn()
  env.info("MM36ZoneSpawn FUNCTION STARTED")
             local MM36zone = ZONE:FindByName("MM36")
             MM36SpawnZone1 = ZONE:FindByName("MM36 Spawn Zone-1")
             MM36SpawnZone2 = ZONE:FindByName("MM36 Spawn Zone-2")
             MM36SpawnZone3 = ZONE:FindByName("MM36 Spawn Zone-3")
             MM36SpawnZone4 = ZONE:FindByName("MM36 Spawn Zone-4")
             MM36SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM36BlueFor") :FilterStart()

             if redfor:NoneInZone(MM36zone) and MM36SpawnUnit:NoneInZone(MasterZone) then
               SPAWN:New("MM36BlueFor-1")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM36BlueFor-1 Spawned")

               SPAWN:New("MM36BlueFor-2")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM36BlueFor-2 Spawned")

               SPAWN:New("MM36BlueFor-3")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM36BlueFor-3 Spawned")

               SPAWN:New("MM36BlueFor-4")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM36BlueFor-4 Spawned")
             else
               if MM36SpawnUnit:AnyInZone(MasterZone) or MM36SpawnUnit:IsAlive() == true then
                 env.info("RedFor in MM36 Zone or Units in Master Zone or Units are Alive")
                 return nil
               end
             end
 end
   timer.scheduleFunction(MM36ZoneSpawn, 53, timer.getTime{}+2)
   env.info("----------------------------MM36ZoneSpawn TIMER STARTED--------------------------")

 function MM35ZoneSpawn()
   env.info("MM35ZoneSpawn FUNCTION STARTED")
               local MM35zone = ZONE:FindByName("MM35")
               MM35SpawnZone1 = ZONE:FindByName("MM35 Spawn Zone-1")
               MM35SpawnZone2 = ZONE:FindByName("MM35 Spawn Zone-2")
               MM35SpawnZone3 = ZONE:FindByName("MM35 Spawn Zone-3")
               MM35SpawnZone4 = ZONE:FindByName("MM35 Spawn Zone-4")
               MM35SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM35BlueFor") :FilterStart()

               if redfor:NoneInZone(MM35zone) and MM35SpawnUnit:NoneInZone(MasterZone) then
                 SPAWN:New("MM35BlueFor-1")
                 :InitLimit(1,0)
                 :InitRandomizeTemplate(BlueForSpawn)
                 :SpawnScheduled( 5, .5 )
                 env.info("MM35BlueFor-1 Spawned")

                 SPAWN:New("MM35BlueFor-2")
                 :InitLimit(1,0)
                 :InitRandomizeTemplate(BlueForSpawn)
                 :SpawnScheduled( 5, .5 )
                 env.info("MM35BlueFor-2 Spawned")

                 SPAWN:New("MM35BlueFor-3")
                 :InitLimit(1,0)
                 :InitRandomizeTemplate(BlueForSpawn)
                 :SpawnScheduled( 5, .5 )
                 env.info("MM35BlueFor-3 Spawned")

                 SPAWN:New("MM35BlueFor-4")
                 :InitLimit(1,0)
                 :InitRandomizeTemplate(BlueForSpawn)
                 :SpawnScheduled( 5, .5 )
                 env.info("MM35BlueFor-4 Spawned")
               else
                 if MM35SpawnUnit:AnyInZone(MasterZone) or MM35SpawnUnit:IsAlive() == true then
                   env.info("RedFor in MM35 Zone or Units in Master Zone or Units are Alive")
                   return nil
                 end
               end
   end
     timer.scheduleFunction(MM35ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------MM35ZoneSpawn TIMER STARTED--------------------------")


function MM34ZoneSpawn()
 env.info("MM34ZoneSpawn FUNCTION STARTED")
             local MM34zone = ZONE:FindByName("MM34")
             MM34SpawnZone1 = ZONE:FindByName("MM34 Spawn Zone-1")
             MM34SpawnZone2 = ZONE:FindByName("MM34 Spawn Zone-2")
             MM34SpawnZone3 = ZONE:FindByName("MM34 Spawn Zone-3")
             MM34SpawnZone4 = ZONE:FindByName("MM34 Spawn Zone-4")
             MM34SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM34BlueFor") :FilterStart()

             if redfor:NoneInZone(MM34zone) and MM34SpawnUnit:NoneInZone(MasterZone) then
               SPAWN:New("MM34BlueFor-1")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM34BlueFor-1 Spawned")

               SPAWN:New("MM34BlueFor-2")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM34BlueFor-2 Spawned")

               SPAWN:New("MM34BlueFor-3")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM34BlueFor-3 Spawned")

               SPAWN:New("MM34BlueFor-4")
               :InitLimit(1,0)
               :InitRandomizeTemplate(BlueForSpawn)
               :SpawnScheduled( 5, .5 )
               env.info("MM34BlueFor-4 Spawned")
             else
               if MM34SpawnUnit:AnyInZone(MasterZone) or MM34SpawnUnit:IsAlive() == true then
                 env.info("RedFor in MM34 Zone or Units in Master Zone or Units are Alive")
                 return nil
               end
             end
 end
   timer.scheduleFunction(MM34ZoneSpawn, 53, timer.getTime{}+2)
   env.info("----------------------------MM34ZoneSpawn TIMER STARTED--------------------------")

function MM45ZoneSpawn()
env.info("MM45ZoneSpawn FUNCTION STARTED")
       local MM45zone = ZONE:FindByName("MM45")
       MM45SpawnZone1 = ZONE:FindByName("MM45 Spawn Zone-1")
       MM45SpawnZone2 = ZONE:FindByName("MM45 Spawn Zone-2")
       MM45SpawnZone3 = ZONE:FindByName("MM45 Spawn Zone-3")
       MM45SpawnZone4 = ZONE:FindByName("MM45 Spawn Zone-4")
       MM45SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM45BlueFor") :FilterStart()

       if redfor:NoneInZone(MM45zone) and MM45SpawnUnit:NoneInZone(MasterZone) then
         SPAWN:New("MM45BlueFor-1")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM45BlueFor-1 Spawned")

         SPAWN:New("MM45BlueFor-2")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM45BlueFor-2 Spawned")

         SPAWN:New("MM45BlueFor-3")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM45BlueFor-3 Spawned")

         SPAWN:New("MM45BlueFor-4")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM45BlueFor-4 Spawned")
       else
         if MM45SpawnUnit:AnyInZone(MasterZone) or MM45SpawnUnit:IsAlive() == true then
           env.info("RedFor in MM45 Zone or Units in Master Zone or Units are Alive")
           return nil
         end
       end
end
timer.scheduleFunction(MM45ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------MM45ZoneSpawn TIMER STARTED--------------------------")


function MM44ZoneSpawn()
env.info("MM44ZoneSpawn FUNCTION STARTED")
         local MM44zone = ZONE:FindByName("MM44")
         MM44SpawnZone1 = ZONE:FindByName("MM44 Spawn Zone-1")
         MM44SpawnZone2 = ZONE:FindByName("MM44 Spawn Zone-2")
         MM44SpawnZone3 = ZONE:FindByName("MM44 Spawn Zone-3")
         MM44SpawnZone4 = ZONE:FindByName("MM44 Spawn Zone-4")
         MM44SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM44BlueFor") :FilterStart()

         if redfor:NoneInZone(MM44zone) and MM44SpawnUnit:NoneInZone(MasterZone) then
           SPAWN:New("MM44BlueFor-1")
           :InitLimit(1,0)
           :InitRandomizeTemplate(BlueForSpawn)
           :SpawnScheduled( 5, .5 )
           env.info("MM44BlueFor-1 Spawned")

           SPAWN:New("MM44BlueFor-2")
           :InitLimit(1,0)
           :InitRandomizeTemplate(BlueForSpawn)
           :SpawnScheduled( 5, .5 )
           env.info("MM44BlueFor-2 Spawned")

           SPAWN:New("MM44BlueFor-3")
           :InitLimit(1,0)
           :InitRandomizeTemplate(BlueForSpawn)
           :SpawnScheduled( 5, .5 )
           env.info("MM44BlueFor-3 Spawned")

           SPAWN:New("MM44BlueFor-4")
           :InitLimit(1,0)
           :InitRandomizeTemplate(BlueForSpawn)
           :SpawnScheduled( 5, .5 )
           env.info("MM44BlueFor-4 Spawned")
         else
           if MM44SpawnUnit:AnyInZone(MasterZone) or MM44SpawnUnit:IsAlive() == true then
             env.info("RedFor in MM44 Zone or Units in Master Zone or Units are Alive")
             return nil
           end
         end
  end
  timer.scheduleFunction(MM44ZoneSpawn, 53, timer.getTime{}+2)
  env.info("----------------------------MM44ZoneSpawn TIMER STARTED--------------------------")

  function MM43ZoneSpawn()
  env.info("MM43ZoneSpawn FUNCTION STARTED")
           local MM43zone = ZONE:FindByName("MM43")
           MM43SpawnZone1 = ZONE:FindByName("MM43 Spawn Zone-1")
           MM43SpawnZone2 = ZONE:FindByName("MM43 Spawn Zone-2")
           MM43SpawnZone3 = ZONE:FindByName("MM43 Spawn Zone-3")
           MM43SpawnZone4 = ZONE:FindByName("MM43 Spawn Zone-4")
           MM43SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM43BlueFor") :FilterStart()

           if redfor:NoneInZone(MM43zone) and MM43SpawnUnit:NoneInZone(MasterZone) then
             SPAWN:New("MM43BlueFor-1")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM43BlueFor-1 Spawned")

             SPAWN:New("MM43BlueFor-2")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM43BlueFor-2 Spawned")

             SPAWN:New("MM43BlueFor-3")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM43BlueFor-3 Spawned")

             SPAWN:New("MM43BlueFor-4")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM43BlueFor-4 Spawned")
           else
             if MM43SpawnUnit:AnyInZone(MasterZone) or MM43SpawnUnit:IsAlive() == true then
               env.info("RedFor in MM43 Zone or Units in Master Zone or Units are Alive")
               return nil
             end
           end
    end
    timer.scheduleFunction(MM43ZoneSpawn, 53, timer.getTime{}+2)
    env.info("----------------------------MM43ZoneSpawn TIMER STARTED--------------------------")
