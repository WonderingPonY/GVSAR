blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }

BlueForzonetrigger3 = SCHEDULER:New(nil,
   function()

     local MM55zone = ZONE:FindByName("MM55")
     MM55SpawnZone1 = ZONE:FindByName("MM55 Spawn Zone-1")
     MM55SpawnZone2 = ZONE:FindByName("MM55 Spawn Zone-2")
     MM55SpawnZone3 = ZONE:FindByName("MM55 Spawn Zone-3")
     MM55SpawnZone4 = ZONE:FindByName("MM55 Spawn Zone-4")
     if redfor:NoneInZone(MM55zone) and blufor:NoneInZone(MM55SpawnZone1) then
     SPAWN:New("MM55BlueFor-1")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM55zone) and blufor:NoneInZone(MM55SpawnZone2) then
     SPAWN:New("MM55BlueFor-2")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM55zone) and blufor:NoneInZone(MM55SpawnZone3) then
     SPAWN:New("MM55BlueFor-3")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM55zone) and blufor:NoneInZone(MM55SpawnZone4) then
     SPAWN:New("MM55BlueFor-4")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end

     if redfor:AnyInZone(MM55zone) and blufor:NoneInZone(MM55zone) and redfor:NoneInZone(MM55SpawnZone1) then
       SPAWN:New("MM55BlueFor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM55zone) and blufor:NoneInZone(MM55zone) and redfor:NoneInZone(MM55SpawnZone2) then
       SPAWN:New("MM55BlueFor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM55zone) and blufor:NoneInZone(MM55zone) and redfor:NoneInZone(MM55SpawnZone3) then
       SPAWN:New("MM55BlueFor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM55zone) and blufor:NoneInZone(MM55zone) and redfor:NoneInZone(MM55SpawnZone4) then
       SPAWN:New("MM55BlueFor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(MM55zone) and redfor:AnyInZone(MM55zone) then
         return nil
       end

       local MM54zone = ZONE:FindByName("MM54")
       MM54SpawnZone1 = ZONE:FindByName("MM54 Spawn Zone-1")
       MM54SpawnZone2 = ZONE:FindByName("MM54 Spawn Zone-2")
       MM54SpawnZone3 = ZONE:FindByName("MM54 Spawn Zone-3")
       MM54SpawnZone4 = ZONE:FindByName("MM54 Spawn Zone-4")
       if redfor:NoneInZone(MM54zone) and blufor:NoneInZone(MM54SpawnZone1) then
       SPAWN:New("MM54BlueFor-1")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM54zone) and blufor:NoneInZone(MM54SpawnZone2) then
       SPAWN:New("MM54BlueFor-2")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM54zone) and blufor:NoneInZone(MM54SpawnZone3) then
       SPAWN:New("MM54BlueFor-3")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM54zone) and blufor:NoneInZone(MM54SpawnZone4) then
       SPAWN:New("MM54BlueFor-4")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end

       if redfor:AnyInZone(MM54zone) and blufor:NoneInZone(MM54zone) and redfor:NoneInZone(MM54SpawnZone1) then
         SPAWN:New("MM54BlueFor-1")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM54zone) and blufor:NoneInZone(MM54zone) and redfor:NoneInZone(MM54SpawnZone2) then
         SPAWN:New("MM54BlueFor-2")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM54zone) and blufor:NoneInZone(MM54zone) and redfor:NoneInZone(MM54SpawnZone3) then
         SPAWN:New("MM54BlueFor-3")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM54zone) and blufor:NoneInZone(MM54zone) and redfor:NoneInZone(MM54SpawnZone4) then
         SPAWN:New("MM54BlueFor-4")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(MM54zone) and redfor:AnyInZone(MM54zone) then
           return nil
         end

         local MM53zone = ZONE:FindByName("MM53")
         MM53SpawnZone1 = ZONE:FindByName("MM53 Spawn Zone-1")
         MM53SpawnZone2 = ZONE:FindByName("MM53 Spawn Zone-2")
         MM53SpawnZone3 = ZONE:FindByName("MM53 Spawn Zone-3")
         MM53SpawnZone4 = ZONE:FindByName("MM53 Spawn Zone-4")
         if redfor:NoneInZone(MM53zone) and blufor:NoneInZone(MM53SpawnZone1) then
         SPAWN:New("MM53BlueFor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM53zone) and blufor:NoneInZone(MM53SpawnZone2) then
         SPAWN:New("MM53BlueFor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM53zone) and blufor:NoneInZone(MM53SpawnZone3) then
         SPAWN:New("MM53BlueFor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM53zone) and blufor:NoneInZone(MM53SpawnZone4) then
         SPAWN:New("MM53BlueFor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end

         if redfor:AnyInZone(MM53zone) and blufor:NoneInZone(MM53zone) and redfor:NoneInZone(MM53SpawnZone1) then
           SPAWN:New("MM53BlueFor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM53zone) and blufor:NoneInZone(MM53zone) and redfor:NoneInZone(MM53SpawnZone2) then
           SPAWN:New("MM53BlueFor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM53zone) and blufor:NoneInZone(MM53zone) and redfor:NoneInZone(MM53SpawnZone3) then
           SPAWN:New("MM53BlueFor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM53zone) and blufor:NoneInZone(MM53zone) and redfor:NoneInZone(MM53SpawnZone4) then
           SPAWN:New("MM53BlueFor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(MM53zone) and redfor:AnyInZone(MM53zone) then
             return nil
           end

           local MM65zone = ZONE:FindByName("MM65")
           MM65SpawnZone1 = ZONE:FindByName("MM65 Spawn Zone-1")
           MM65SpawnZone2 = ZONE:FindByName("MM65 Spawn Zone-2")
           MM65SpawnZone3 = ZONE:FindByName("MM65 Spawn Zone-3")
           MM65SpawnZone4 = ZONE:FindByName("MM65 Spawn Zone-4")
           if redfor:NoneInZone(MM65zone) and blufor:NoneInZone(MM65SpawnZone1) then
           SPAWN:New("MM65BlueFor-1")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM65zone) and blufor:NoneInZone(MM65SpawnZone2) then
           SPAWN:New("MM65BlueFor-2")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM65zone) and blufor:NoneInZone(MM65SpawnZone3) then
           SPAWN:New("MM65BlueFor-3")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM65zone) and blufor:NoneInZone(MM65SpawnZone4) then
           SPAWN:New("MM65BlueFor-4")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end

           if redfor:AnyInZone(MM65zone) and blufor:NoneInZone(MM65zone) and redfor:NoneInZone(MM65SpawnZone1) then
             SPAWN:New("MM65BlueFor-1")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM65zone) and blufor:NoneInZone(MM65zone) and redfor:NoneInZone(MM65SpawnZone2) then
             SPAWN:New("MM65BlueFor-2")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM65zone) and blufor:NoneInZone(MM65zone) and redfor:NoneInZone(MM65SpawnZone3) then
             SPAWN:New("MM65BlueFor-3")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM65zone) and blufor:NoneInZone(MM65zone) and redfor:NoneInZone(MM65SpawnZone4) then
             SPAWN:New("MM65BlueFor-4")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(MM65zone) and redfor:AnyInZone(MM65zone) then
               return nil
             end

             local MM64zone = ZONE:FindByName("MM64")
             MM64SpawnZone1 = ZONE:FindByName("MM64 Spawn Zone-1")
             MM64SpawnZone2 = ZONE:FindByName("MM64 Spawn Zone-2")
             MM64SpawnZone3 = ZONE:FindByName("MM64 Spawn Zone-3")
             MM64SpawnZone4 = ZONE:FindByName("MM64 Spawn Zone-4")
             if redfor:NoneInZone(MM64zone) and blufor:NoneInZone(MM64SpawnZone1) then
             SPAWN:New("MM64BlueFor-1")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
             end
             if redfor:NoneInZone(MM64zone) and blufor:NoneInZone(MM64SpawnZone2) then
             SPAWN:New("MM64BlueFor-2")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
             end
             if redfor:NoneInZone(MM64zone) and blufor:NoneInZone(MM64SpawnZone3) then
             SPAWN:New("MM64BlueFor-3")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
             end
             if redfor:NoneInZone(MM64zone) and blufor:NoneInZone(MM64SpawnZone4) then
             SPAWN:New("MM64BlueFor-4")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
             end

             if redfor:AnyInZone(MM64zone) and blufor:NoneInZone(MM64zone) and redfor:NoneInZone(MM64SpawnZone1) then
               SPAWN:New("MM64BlueFor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if redfor:AnyInZone(MM64zone) and blufor:NoneInZone(MM64zone) and redfor:NoneInZone(MM64SpawnZone2) then
               SPAWN:New("MM64BlueFor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if redfor:AnyInZone(MM64zone) and blufor:NoneInZone(MM64zone) and redfor:NoneInZone(MM64SpawnZone3) then
               SPAWN:New("MM64BlueFor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if redfor:AnyInZone(MM64zone) and blufor:NoneInZone(MM64zone) and redfor:NoneInZone(MM64SpawnZone4) then
               SPAWN:New("MM64BlueFor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end

               if blufor:AnyInZone(MM64zone) and redfor:AnyInZone(MM64zone) then
                 return nil
               end

               local MM63zone = ZONE:FindByName("MM63")
               MM63SpawnZone1 = ZONE:FindByName("MM63 Spawn Zone-1")
               MM63SpawnZone2 = ZONE:FindByName("MM63 Spawn Zone-2")
               MM63SpawnZone3 = ZONE:FindByName("MM63 Spawn Zone-3")
               MM63SpawnZone4 = ZONE:FindByName("MM63 Spawn Zone-4")
               if redfor:NoneInZone(MM63zone) and blufor:NoneInZone(MM63SpawnZone1) then
               SPAWN:New("MM63BlueFor-1")
               :InitRandomizeTemplate(BlueForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
               end
               if redfor:NoneInZone(MM63zone) and blufor:NoneInZone(MM63SpawnZone2) then
               SPAWN:New("MM63BlueFor-2")
               :InitRandomizeTemplate(BlueForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
               end
               if redfor:NoneInZone(MM63zone) and blufor:NoneInZone(MM63SpawnZone3) then
               SPAWN:New("MM63BlueFor-3")
               :InitRandomizeTemplate(BlueForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
               end
               if redfor:NoneInZone(MM63zone) and blufor:NoneInZone(MM63SpawnZone4) then
               SPAWN:New("MM63BlueFor-4")
               :InitRandomizeTemplate(BlueForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
               end

               if redfor:AnyInZone(MM63zone) and blufor:NoneInZone(MM63zone) and redfor:NoneInZone(MM63SpawnZone1) then
                 SPAWN:New("MM63BlueFor-1")
                 :InitRandomizeTemplate(RedForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if redfor:AnyInZone(MM63zone) and blufor:NoneInZone(MM63zone) and redfor:NoneInZone(MM63SpawnZone2) then
                 SPAWN:New("MM63BlueFor-2")
                 :InitRandomizeTemplate(RedForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if redfor:AnyInZone(MM63zone) and blufor:NoneInZone(MM63zone) and redfor:NoneInZone(MM63SpawnZone3) then
                 SPAWN:New("MM63BlueFor-3")
                 :InitRandomizeTemplate(RedForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if redfor:AnyInZone(MM63zone) and blufor:NoneInZone(MM63zone) and redfor:NoneInZone(MM63SpawnZone4) then
                 SPAWN:New("MM63BlueFor-4")
                 :InitRandomizeTemplate(RedForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end

                 if blufor:AnyInZone(MM63zone) and redfor:AnyInZone(MM63zone) then
                   return nil
                 end



     end, {}, 2 )
