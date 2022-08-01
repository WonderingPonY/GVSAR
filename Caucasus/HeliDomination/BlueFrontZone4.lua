blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }

BlueForzonetrigger4 = SCHEDULER:New(nil,
   function()


     local MM75zone = ZONE:FindByName("MM75")
     MM75SpawnZone1 = ZONE:FindByName("MM75 Spawn Zone-1")
     MM75SpawnZone2 = ZONE:FindByName("MM75 Spawn Zone-2")
     MM75SpawnZone3 = ZONE:FindByName("MM75 Spawn Zone-3")
     MM75SpawnZone4 = ZONE:FindByName("MM75 Spawn Zone-4")
     if redfor:NoneInZone(MM75zone) and blufor:NoneInZone(MM75SpawnZone1) then
     SPAWN:New("MM75BlueFor-1")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM75zone) and blufor:NoneInZone(MM75SpawnZone2) then
     SPAWN:New("MM75BlueFor-2")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM75zone) and blufor:NoneInZone(MM75SpawnZone3) then
     SPAWN:New("MM75BlueFor-3")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM75zone) and blufor:NoneInZone(MM75SpawnZone4) then
     SPAWN:New("MM75BlueFor-4")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end

     if redfor:AnyInZone(MM75zone) and blufor:NoneInZone(MM75zone) and redfor:NoneInZone(MM75SpawnZone1) then
       SPAWN:New("MM75BlueFor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM75zone) and blufor:NoneInZone(MM75zone) and redfor:NoneInZone(MM75SpawnZone2) then
       SPAWN:New("MM75BlueFor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM75zone) and blufor:NoneInZone(MM75zone) and redfor:NoneInZone(MM75SpawnZone3) then
       SPAWN:New("MM75BlueFor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM75zone) and blufor:NoneInZone(MM75zone) and redfor:NoneInZone(MM75SpawnZone4) then
       SPAWN:New("MM75BlueFor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(MM75zone) and redfor:AnyInZone(MM75zone) then
         return nil
       end

       local MM74zone = ZONE:FindByName("MM74")
       MM74SpawnZone1 = ZONE:FindByName("MM74 Spawn Zone-1")
       MM74SpawnZone2 = ZONE:FindByName("MM74 Spawn Zone-2")
       MM74SpawnZone3 = ZONE:FindByName("MM74 Spawn Zone-3")
       MM74SpawnZone4 = ZONE:FindByName("MM74 Spawn Zone-4")
       if redfor:NoneInZone(MM74zone) and blufor:NoneInZone(MM74SpawnZone1) then
       SPAWN:New("MM74BlueFor-1")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM74zone) and blufor:NoneInZone(MM74SpawnZone2) then
       SPAWN:New("MM74BlueFor-2")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM74zone) and blufor:NoneInZone(MM74SpawnZone3) then
       SPAWN:New("MM74BlueFor-3")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM74zone) and blufor:NoneInZone(MM74SpawnZone4) then
       SPAWN:New("MM74BlueFor-4")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end

       if redfor:AnyInZone(MM74zone) and blufor:NoneInZone(MM74zone) and redfor:NoneInZone(MM74SpawnZone1) then
         SPAWN:New("MM74BlueFor-1")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM74zone) and blufor:NoneInZone(MM74zone) and redfor:NoneInZone(MM74SpawnZone2) then
         SPAWN:New("MM74BlueFor-2")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM74zone) and blufor:NoneInZone(MM74zone) and redfor:NoneInZone(MM74SpawnZone3) then
         SPAWN:New("MM74BlueFor-3")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM74zone) and blufor:NoneInZone(MM74zone) and redfor:NoneInZone(MM74SpawnZone4) then
         SPAWN:New("MM74BlueFor-4")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(MM74zone) and redfor:AnyInZone(MM74zone) then
           return nil
         end

         local MM73zone = ZONE:FindByName("MM73")
         MM73SpawnZone1 = ZONE:FindByName("MM73 Spawn Zone-1")
         MM73SpawnZone2 = ZONE:FindByName("MM73 Spawn Zone-2")
         MM73SpawnZone3 = ZONE:FindByName("MM73 Spawn Zone-3")
         MM73SpawnZone4 = ZONE:FindByName("MM73 Spawn Zone-4")
         if redfor:NoneInZone(MM73zone) and blufor:NoneInZone(MM73SpawnZone1) then
         SPAWN:New("MM73BlueFor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM73zone) and blufor:NoneInZone(MM73SpawnZone2) then
         SPAWN:New("MM73BlueFor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM73zone) and blufor:NoneInZone(MM73SpawnZone3) then
         SPAWN:New("MM73BlueFor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM73zone) and blufor:NoneInZone(MM73SpawnZone4) then
         SPAWN:New("MM73BlueFor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end

         if redfor:AnyInZone(MM73zone) and blufor:NoneInZone(MM73zone) and redfor:NoneInZone(MM73SpawnZone1) then
           SPAWN:New("MM73BlueFor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM73zone) and blufor:NoneInZone(MM73zone) and redfor:NoneInZone(MM73SpawnZone2) then
           SPAWN:New("MM73BlueFor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM73zone) and blufor:NoneInZone(MM73zone) and redfor:NoneInZone(MM73SpawnZone3) then
           SPAWN:New("MM73BlueFor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM73zone) and blufor:NoneInZone(MM73zone) and redfor:NoneInZone(MM73SpawnZone4) then
           SPAWN:New("MM73BlueFor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(MM73zone) and redfor:AnyInZone(MM73zone) then
             return nil
           end

           local MM72zone = ZONE:FindByName("MM72")
           MM72SpawnZone1 = ZONE:FindByName("MM72 Spawn Zone-1")
           MM72SpawnZone2 = ZONE:FindByName("MM72 Spawn Zone-2")
           MM72SpawnZone3 = ZONE:FindByName("MM72 Spawn Zone-3")
           MM72SpawnZone4 = ZONE:FindByName("MM72 Spawn Zone-4")
           if redfor:NoneInZone(MM72zone) and blufor:NoneInZone(MM72SpawnZone1) then
           SPAWN:New("MM72BlueFor-1")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM72zone) and blufor:NoneInZone(MM72SpawnZone2) then
           SPAWN:New("MM72BlueFor-2")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM72zone) and blufor:NoneInZone(MM72SpawnZone3) then
           SPAWN:New("MM72BlueFor-3")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM72zone) and blufor:NoneInZone(MM72SpawnZone4) then
           SPAWN:New("MM72BlueFor-4")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end

           if redfor:AnyInZone(MM72zone) and blufor:NoneInZone(MM72zone) and redfor:NoneInZone(MM72SpawnZone1) then
             SPAWN:New("MM72BlueFor-1")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM72zone) and blufor:NoneInZone(MM72zone) and redfor:NoneInZone(MM72SpawnZone2) then
             SPAWN:New("MM72BlueFor-2")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM72zone) and blufor:NoneInZone(MM72zone) and redfor:NoneInZone(MM72SpawnZone3) then
             SPAWN:New("MM72BlueFor-3")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM72zone) and blufor:NoneInZone(MM72zone) and redfor:NoneInZone(MM72SpawnZone4) then
             SPAWN:New("MM72BlueFor-4")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(MM72zone) and redfor:AnyInZone(MM72zone) then
               return nil
             end

     local MM84zone = ZONE:FindByName("MM84")
     MM84SpawnZone1 = ZONE:FindByName("MM84 Spawn Zone-1")
     MM84SpawnZone2 = ZONE:FindByName("MM84 Spawn Zone-2")
     MM84SpawnZone3 = ZONE:FindByName("MM84 Spawn Zone-3")
     MM84SpawnZone4 = ZONE:FindByName("MM84 Spawn Zone-4")
     if redfor:NoneInZone(MM84zone) and blufor:NoneInZone(MM84SpawnZone1) then
     SPAWN:New("MM84BlueFor-1")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM84zone) and blufor:NoneInZone(MM84SpawnZone2) then
     SPAWN:New("MM84BlueFor-2")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM84zone) and blufor:NoneInZone(MM84SpawnZone3) then
     SPAWN:New("MM84BlueFor-3")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM84zone) and blufor:NoneInZone(MM84SpawnZone4) then
     SPAWN:New("MM84BlueFor-4")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end

     if redfor:AnyInZone(MM84zone) and blufor:NoneInZone(MM84zone) and redfor:NoneInZone(MM84SpawnZone1) then
       SPAWN:New("MM84BlueFor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM84zone) and blufor:NoneInZone(MM84zone) and redfor:NoneInZone(MM84SpawnZone2) then
       SPAWN:New("MM84BlueFor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM84zone) and blufor:NoneInZone(MM84zone) and redfor:NoneInZone(MM84SpawnZone3) then
       SPAWN:New("MM84BlueFor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM84zone) and blufor:NoneInZone(MM84zone) and redfor:NoneInZone(MM84SpawnZone4) then
       SPAWN:New("MM84BlueFor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(MM84zone) and redfor:AnyInZone(MM84zone) then
         return nil
       end

       local MM83zone = ZONE:FindByName("MM83")
       MM83SpawnZone1 = ZONE:FindByName("MM83 Spawn Zone-1")
       MM83SpawnZone2 = ZONE:FindByName("MM83 Spawn Zone-2")
       MM83SpawnZone3 = ZONE:FindByName("MM83 Spawn Zone-3")
       MM83SpawnZone4 = ZONE:FindByName("MM83 Spawn Zone-4")
       if redfor:NoneInZone(MM83zone) and blufor:NoneInZone(MM83SpawnZone1) then
       SPAWN:New("MM83BlueFor-1")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM83zone) and blufor:NoneInZone(MM83SpawnZone2) then
       SPAWN:New("MM83BlueFor-2")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM83zone) and blufor:NoneInZone(MM83SpawnZone3) then
       SPAWN:New("MM83BlueFor-3")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM83zone) and blufor:NoneInZone(MM83SpawnZone4) then
       SPAWN:New("MM83BlueFor-4")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end

       if redfor:AnyInZone(MM83zone) and blufor:NoneInZone(MM83zone) and redfor:NoneInZone(MM83SpawnZone1) then
         SPAWN:New("MM83BlueFor-1")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM83zone) and blufor:NoneInZone(MM83zone) and redfor:NoneInZone(MM83SpawnZone2) then
         SPAWN:New("MM83BlueFor-2")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM83zone) and blufor:NoneInZone(MM83zone) and redfor:NoneInZone(MM83SpawnZone3) then
         SPAWN:New("MM83BlueFor-3")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM83zone) and blufor:NoneInZone(MM83zone) and redfor:NoneInZone(MM83SpawnZone4) then
         SPAWN:New("MM83BlueFor-4")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(MM83zone) and redfor:AnyInZone(MM83zone) then
           return nil
         end

         local MM82zone = ZONE:FindByName("MM82")
         MM82SpawnZone1 = ZONE:FindByName("MM82 Spawn Zone-1")
         MM82SpawnZone2 = ZONE:FindByName("MM82 Spawn Zone-2")
         MM82SpawnZone3 = ZONE:FindByName("MM82 Spawn Zone-3")
         MM82SpawnZone4 = ZONE:FindByName("MM82 Spawn Zone-4")
         if redfor:NoneInZone(MM82zone) and blufor:NoneInZone(MM82SpawnZone1) then
         SPAWN:New("MM82BlueFor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM82zone) and blufor:NoneInZone(MM82SpawnZone2) then
         SPAWN:New("MM82BlueFor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM82zone) and blufor:NoneInZone(MM82SpawnZone3) then
         SPAWN:New("MM82BlueFor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM82zone) and blufor:NoneInZone(MM82SpawnZone4) then
         SPAWN:New("MM82BlueFor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end

         if redfor:AnyInZone(MM82zone) and blufor:NoneInZone(MM82zone) and redfor:NoneInZone(MM82SpawnZone1) then
           SPAWN:New("MM82BlueFor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM82zone) and blufor:NoneInZone(MM82zone) and redfor:NoneInZone(MM82SpawnZone2) then
           SPAWN:New("MM82BlueFor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM82zone) and blufor:NoneInZone(MM82zone) and redfor:NoneInZone(MM82SpawnZone3) then
           SPAWN:New("MM82BlueFor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM82zone) and blufor:NoneInZone(MM82zone) and redfor:NoneInZone(MM82SpawnZone4) then
           SPAWN:New("MM82BlueFor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(MM82zone) and redfor:AnyInZone(MM82zone) then
             return nil
           end


     end, {}, 2 )
