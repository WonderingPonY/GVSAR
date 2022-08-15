blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
redforheli = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryHelicopter():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }
MasterZone = ZONE:FindByName("MonkeyFucker")
BlueFrontZone1 = ZONE:FindByName("BlueFrontSpawnZone-1")


env.info("----------------------------BLUE FRONT ZONE 1 FUNCTION--------------------------")
function MM17ZoneSpawn()
  env.info("MM17ZoneSpawn FUNCTION STARTED")
     local MM17zone = ZONE:FindByName("MM17")
     MM17SpawnZone1 = ZONE:FindByName("MM17 Spawn Zone-1")
     MM17SpawnZone2 = ZONE:FindByName("MM17 Spawn Zone-2")
     MM17SpawnZone3 = ZONE:FindByName("MM17 Spawn Zone-3")
     MM17SpawnZone4 = ZONE:FindByName("MM17 Spawn Zone-4")
     MM17SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM17BlueFor") :FilterStart()

     if redfor:NoneInZone(MM17zone) and MM17SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("MM17BlueFor-1")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM17BlueFor-1 Spawned")

       SPAWN:New("MM17BlueFor-2")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM17BlueFor-2 Spawned")

       SPAWN:New("MM17BlueFor-3")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM17BlueFor-3 Spawned")

       SPAWN:New("MM17BlueFor-4")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM17BlueFor-4 Spawned")
     else
       if MM17SpawnUnit:AnyInZone(MasterZone) or MM17SpawnUnit:IsAlive() == true then
         env.info("RedFor in MM17 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
     end
   end
     timer.scheduleFunction(MM17ZoneSpawn, 53, timer.getTime{}+2)
     env.info("----------------------------MM17ZoneSpawn TIMER STARTED--------------------------")


function MM16ZoneSpawn()
 env.info("MM16ZoneSpawn FUNCTION STARTED")
   local MM16zone = ZONE:FindByName("MM16")
   MM16SpawnZone1 = ZONE:FindByName("MM16 Spawn Zone-1")
   MM16SpawnZone2 = ZONE:FindByName("MM16 Spawn Zone-2")
   MM16SpawnZone3 = ZONE:FindByName("MM16 Spawn Zone-3")
   MM16SpawnZone4 = ZONE:FindByName("MM16 Spawn Zone-4")
   MM16SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM16BlueFor") :FilterStart()

   if redfor:NoneInZone(MM16zone) and MM16SpawnUnit:NoneInZone(MasterZone) then
     SPAWN:New("MM16BlueFor-1")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM16BlueFor-1 Spawned")

     SPAWN:New("MM16BlueFor-2")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM16BlueFor-2 Spawned")

     SPAWN:New("MM16BlueFor-3")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM16BlueFor-3 Spawned")

     SPAWN:New("MM16BlueFor-4")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM16BlueFor-4 Spawned")
   else
     if MM16SpawnUnit:AnyInZone(MasterZone) or MM16SpawnUnit:IsAlive() == true then
       env.info("RedFor in MM16 Zone or Units in Master Zone or Units are Alive")
       return nil
     end
   end
end
 timer.scheduleFunction(MM16ZoneSpawn, 53, timer.getTime{}+2)
 env.info("----------------------------MM16ZoneSpawn TIMER STARTED--------------------------")



function MM15ZoneSpawn()
  env.info("MM15ZoneSpawn FUNCTION STARTED")
   local MM15zone = ZONE:FindByName("MM15")
   MM15SpawnZone1 = ZONE:FindByName("MM15 Spawn Zone-1")
   MM15SpawnZone2 = ZONE:FindByName("MM15 Spawn Zone-2")
   MM15SpawnZone3 = ZONE:FindByName("MM15 Spawn Zone-3")
   MM15SpawnZone4 = ZONE:FindByName("MM15 Spawn Zone-4")
   MM15SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM15BlueFor") :FilterStart()

   if redfor:NoneInZone(MM15zone) and MM15SpawnUnit:NoneInZone(MasterZone) then
     SPAWN:New("MM15BlueFor-1")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM15BlueFor-1 Spawned")

     SPAWN:New("MM15BlueFor-2")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM15BlueFor-2 Spawned")

     SPAWN:New("MM15BlueFor-3")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM15BlueFor-3 Spawned")

     SPAWN:New("MM15BlueFor-4")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM15BlueFor-4 Spawned")
   else
     if MM15SpawnUnit:AnyInZone(MasterZone) or MM15SpawnUnit:IsAlive() == true then
       env.info("RedFor in MM15 Zone or Units in Master Zone or Units are Alive")
       return nil
     end
  end
end
timer.scheduleFunction(MM15ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------MM15ZoneSpawn TIMER STARTED--------------------------")


function MM14ZoneSpawn()
  env.info("MM14ZoneSpawn FUNCTION STARTED")
   local MM14zone = ZONE:FindByName("MM14")
   MM14SpawnZone1 = ZONE:FindByName("MM14 Spawn Zone-1")
   MM14SpawnZone2 = ZONE:FindByName("MM14 Spawn Zone-2")
   MM14SpawnZone3 = ZONE:FindByName("MM14 Spawn Zone-3")
   MM14SpawnZone4 = ZONE:FindByName("MM14 Spawn Zone-4")
   MM14SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM14BlueFor") :FilterStart()

   if redfor:NoneInZone(MM14zone) and MM14SpawnUnit:NoneInZone(MasterZone) then
     SPAWN:New("MM14BlueFor-1")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM14BlueFor-1 Spawned")

     SPAWN:New("MM14BlueFor-2")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM14BlueFor-2 Spawned")

     SPAWN:New("MM14BlueFor-3")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM14BlueFor-3 Spawned")

     SPAWN:New("MM14BlueFor-4")
     :InitLimit(1,0)
     :InitRandomizeTemplate(BlueForSpawn)
     :SpawnScheduled( 5, .5 )
     env.info("MM14BlueFor-4 Spawned")
   else
     if MM14SpawnUnit:AnyInZone(MasterZone) or MM14SpawnUnit:IsAlive() == true then
       env.info("RedFor in MM14 Zone or Units in Master Zone or Units are Alive")
       return nil
     end
  end
end
timer.scheduleFunction(MM14ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------MM14ZoneSpawn TIMER STARTED--------------------------")


function MM27ZoneSpawn()
  env.info("MM27ZoneSpawn FUNCTION STARTED")
     local MM27zone = ZONE:FindByName("MM27")
     MM27SpawnZone1 = ZONE:FindByName("MM27 Spawn Zone-1")
     MM27SpawnZone2 = ZONE:FindByName("MM27 Spawn Zone-2")
     MM27SpawnZone3 = ZONE:FindByName("MM27 Spawn Zone-3")
     MM27SpawnZone4 = ZONE:FindByName("MM27 Spawn Zone-4")
     MM27SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM27BlueFor") :FilterStart()

     if redfor:NoneInZone(MM27zone) and MM27SpawnUnit:NoneInZone(MasterZone) then
       SPAWN:New("MM27BlueFor-1")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM27BlueFor-1 Spawned")

       SPAWN:New("MM27BlueFor-2")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM27BlueFor-2 Spawned")

       SPAWN:New("MM27BlueFor-3")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM27BlueFor-3 Spawned")

       SPAWN:New("MM27BlueFor-4")
       :InitLimit(1,0)
       :InitRandomizeTemplate(BlueForSpawn)
       :SpawnScheduled( 5, .5 )
       env.info("MM27BlueFor-4 Spawned")
     else
       if MM27SpawnUnit:AnyInZone(MasterZone) or MM27SpawnUnit:IsAlive() == true then
         env.info("RedFor in MM27 Zone or Units in Master Zone or Units are Alive")
         return nil
       end
    end
  end
  timer.scheduleFunction(MM27ZoneSpawn, 53, timer.getTime{}+2)
  env.info("----------------------------MM27ZoneSpawn TIMER STARTED--------------------------")


function MM26ZoneSpawn()
  env.info("MM26ZoneSpawn FUNCTION STARTED")
       local MM26zone = ZONE:FindByName("MM26")
       MM26SpawnZone1 = ZONE:FindByName("MM26 Spawn Zone-1")
       MM26SpawnZone2 = ZONE:FindByName("MM26 Spawn Zone-2")
       MM26SpawnZone3 = ZONE:FindByName("MM26 Spawn Zone-3")
       MM26SpawnZone4 = ZONE:FindByName("MM26 Spawn Zone-4")
       MM26SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM26BlueFor") :FilterStart()

       if redfor:NoneInZone(MM26zone) and MM26SpawnUnit:NoneInZone(MasterZone) then
         SPAWN:New("MM26BlueFor-1")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM26BlueFor-1 Spawned")

         SPAWN:New("MM26BlueFor-2")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM26BlueFor-2 Spawned")

         SPAWN:New("MM26BlueFor-3")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM26BlueFor-3 Spawned")

         SPAWN:New("MM26BlueFor-4")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM26BlueFor-4 Spawned")
       else
         if MM26SpawnUnit:AnyInZone(MasterZone) or MM26SpawnUnit:IsAlive() == true then
           env.info("RedFor in MM26 Zone or Units in Master Zone or Units are Alive")
           return nil
         end
      end
end
timer.scheduleFunction(MM26ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------MM26ZoneSpawn TIMER STARTED--------------------------")


function MM25ZoneSpawn()
  env.info("MM25ZoneSpawn FUNCTION STARTED")
       local MM25zone = ZONE:FindByName("MM25")
       MM25SpawnZone1 = ZONE:FindByName("MM25 Spawn Zone-1")
       MM25SpawnZone2 = ZONE:FindByName("MM25 Spawn Zone-2")
       MM25SpawnZone3 = ZONE:FindByName("MM25 Spawn Zone-3")
       MM25SpawnZone4 = ZONE:FindByName("MM25 Spawn Zone-4")
       MM25SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM25BlueFor") :FilterStart()

       if redfor:NoneInZone(MM25zone) and MM25SpawnUnit:NoneInZone(MasterZone) then
         SPAWN:New("MM25BlueFor-1")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM25BlueFor-1 Spawned")

         SPAWN:New("MM25BlueFor-2")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM25BlueFor-2 Spawned")

         SPAWN:New("MM25BlueFor-3")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM25BlueFor-3 Spawned")

         SPAWN:New("MM25BlueFor-4")
         :InitLimit(1,0)
         :InitRandomizeTemplate(BlueForSpawn)
         :SpawnScheduled( 5, .5 )
         env.info("MM25BlueFor-4 Spawned")
       else
         if MM25SpawnUnit:AnyInZone(MasterZone) or MM25SpawnUnit:IsAlive() == true then
           env.info("RedFor in MM25 Zone or Units in Master Zone or Units are Alive")
           return nil
         end
      end
end
timer.scheduleFunction(MM25ZoneSpawn, 53, timer.getTime{}+2)
env.info("----------------------------MM25ZoneSpawn TIMER STARTED--------------------------")


function MM24ZoneSpawn()
  env.info("MM24ZoneSpawn FUNCTION STARTED")
           local MM24zone = ZONE:FindByName("MM24")
           MM24SpawnZone1 = ZONE:FindByName("MM24 Spawn Zone-1")
           MM24SpawnZone2 = ZONE:FindByName("MM24 Spawn Zone-2")
           MM24SpawnZone3 = ZONE:FindByName("MM24 Spawn Zone-3")
           MM24SpawnZone4 = ZONE:FindByName("MM24 Spawn Zone-4")
           MM24SpawnUnit = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("MM24BlueFor") :FilterStart()

           if redfor:NoneInZone(MM24zone) and MM24SpawnUnit:NoneInZone(MasterZone) then
             SPAWN:New("MM24BlueFor-1")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM24BlueFor-1 Spawned")

             SPAWN:New("MM24BlueFor-2")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM24BlueFor-2 Spawned")

             SPAWN:New("MM24BlueFor-3")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM24BlueFor-3 Spawned")

             SPAWN:New("MM24BlueFor-4")
             :InitLimit(1,0)
             :InitRandomizeTemplate(BlueForSpawn)
             :SpawnScheduled( 5, .5 )
             env.info("MM24BlueFor-4 Spawned")
           else
             if MM24SpawnUnit:AnyInZone(MasterZone) or MM24SpawnUnit:IsAlive() == true then
               env.info("RedFor in MM24 Zone or Units in Master Zone or Units are Alive")
               return nil
             end
          end
    end
    timer.scheduleFunction(MM24ZoneSpawn, 53, timer.getTime{}+2)
    env.info("----------------------------MM24ZoneSpawn TIMER STARTED--------------------------")
