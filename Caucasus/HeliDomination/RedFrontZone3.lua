blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }

RedForzonetrigger3 = SCHEDULER:New(nil,
   function()

     local KM98zone = ZONE:FindByName("KM98")
     KM98SpawnZone1 = ZONE:FindByName("KM98 Spawn Zone-1")
     KM98SpawnZone2 = ZONE:FindByName("KM98 Spawn Zone-2")
     KM98SpawnZone3 = ZONE:FindByName("KM98 Spawn Zone-3")
     KM98SpawnZone4 = ZONE:FindByName("KM98 Spawn Zone-4")
     if blufor:NoneInZone(KM98zone) and redfor:NoneInZone(KM98SpawnZone1) then
       SPAWN:New("KM98Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM98zone) and redfor:NoneInZone(KM98SpawnZone2) then
       SPAWN:New("KM98Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM98zone) and redfor:NoneInZone(KM98SpawnZone3) then
       SPAWN:New("KM98Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM98zone) and redfor:NoneInZone(KM98SpawnZone4) then
       SPAWN:New("KM98Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(KM98zone) and redfor:NoneInZone(KM98zone) and blufor:NoneInZone(KM98SpawnZone1) then
         SPAWN:New("KM98Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM98zone) and redfor:NoneInZone(KM98zone) and blufor:NoneInZone(KM98SpawnZone2) then
         SPAWN:New("KM98Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM98zone) and redfor:NoneInZone(KM98zone) and blufor:NoneInZone(KM98SpawnZone3) then
         SPAWN:New("KM98Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM98zone) and redfor:NoneInZone(KM98zone) and blufor:NoneInZone(KM98SpawnZone4) then
         SPAWN:New("KM98Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(KM98zone) and redfor:AnyInZone(KM98zone) then
           return nil
         end

         local KM97zone = ZONE:FindByName("KM97")
         KM97SpawnZone1 = ZONE:FindByName("KM97 Spawn Zone-1")
         KM97SpawnZone2 = ZONE:FindByName("KM97 Spawn Zone-2")
         KM97SpawnZone3 = ZONE:FindByName("KM97 Spawn Zone-3")
         KM97SpawnZone4 = ZONE:FindByName("KM97 Spawn Zone-4")
         if blufor:NoneInZone(KM97zone) and redfor:NoneInZone(KM97SpawnZone1) then
           SPAWN:New("KM97Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(KM97zone) and redfor:NoneInZone(KM97SpawnZone2) then
           SPAWN:New("KM97Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(KM97zone) and redfor:NoneInZone(KM97SpawnZone3) then
           SPAWN:New("KM97Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(KM97zone) and redfor:NoneInZone(KM97SpawnZone4) then
           SPAWN:New("KM97Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(KM97zone) and redfor:NoneInZone(KM97zone) and blufor:NoneInZone(KM97SpawnZone1) then
             SPAWN:New("KM97Redfor-1")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(KM97zone) and redfor:NoneInZone(KM97zone) and blufor:NoneInZone(KM97SpawnZone2) then
             SPAWN:New("KM97Redfor-2")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(KM97zone) and redfor:NoneInZone(KM97zone) and blufor:NoneInZone(KM97SpawnZone3) then
             SPAWN:New("KM97Redfor-3")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(KM97zone) and redfor:NoneInZone(KM97zone) and blufor:NoneInZone(KM97SpawnZone4) then
             SPAWN:New("KM97Redfor-4")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(KM97zone) and redfor:AnyInZone(KM97zone) then
               return nil
             end

             local KM96zone = ZONE:FindByName("KM96")
             KM96SpawnZone1 = ZONE:FindByName("KM96 Spawn Zone-1")
             KM96SpawnZone2 = ZONE:FindByName("KM96 Spawn Zone-2")
             KM96SpawnZone3 = ZONE:FindByName("KM96 Spawn Zone-3")
             KM96SpawnZone4 = ZONE:FindByName("KM96 Spawn Zone-4")
             if blufor:NoneInZone(KM96zone) and redfor:NoneInZone(KM96SpawnZone1) then
               SPAWN:New("KM96Redfor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(KM96zone) and redfor:NoneInZone(KM96SpawnZone2) then
               SPAWN:New("KM96Redfor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(KM96zone) and redfor:NoneInZone(KM96SpawnZone3) then
               SPAWN:New("KM96Redfor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(KM96zone) and redfor:NoneInZone(KM96SpawnZone4) then
               SPAWN:New("KM96Redfor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end

               if blufor:AnyInZone(KM96zone) and redfor:NoneInZone(KM96zone) and blufor:NoneInZone(KM96SpawnZone1) then
                 SPAWN:New("KM96Redfor-1")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(KM96zone) and redfor:NoneInZone(KM96zone) and blufor:NoneInZone(KM96SpawnZone2) then
                 SPAWN:New("KM96Redfor-2")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(KM96zone) and redfor:NoneInZone(KM96zone) and blufor:NoneInZone(KM96SpawnZone3) then
                 SPAWN:New("KM96Redfor-3")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(KM96zone) and redfor:NoneInZone(KM96zone) and blufor:NoneInZone(KM96SpawnZone4) then
                 SPAWN:New("KM96Redfor-4")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end

                 if blufor:AnyInZone(KM96zone) and redfor:AnyInZone(KM96zone) then
                   return nil
                 end

     local LM08zone = ZONE:FindByName("LM08")
     LM08SpawnZone1 = ZONE:FindByName("LM08 Spawn Zone-1")
     LM08SpawnZone2 = ZONE:FindByName("LM08 Spawn Zone-2")
     LM08SpawnZone3 = ZONE:FindByName("LM08 Spawn Zone-3")
     LM08SpawnZone4 = ZONE:FindByName("LM08 Spawn Zone-4")
     if blufor:NoneInZone(LM08zone) and redfor:NoneInZone(LM08SpawnZone1) then
       SPAWN:New("LM08Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM08zone) and redfor:NoneInZone(LM08SpawnZone2) then
       SPAWN:New("LM08Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM08zone) and redfor:NoneInZone(LM08SpawnZone3) then
       SPAWN:New("LM08Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM08zone) and redfor:NoneInZone(LM08SpawnZone4) then
       SPAWN:New("LM08Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(LM08zone) and redfor:NoneInZone(LM08zone) and blufor:NoneInZone(LM08SpawnZone1) then
         SPAWN:New("LM08Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM08zone) and redfor:NoneInZone(LM08zone) and blufor:NoneInZone(LM08SpawnZone2) then
         SPAWN:New("LM08Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM08zone) and redfor:NoneInZone(LM08zone) and blufor:NoneInZone(LM08SpawnZone3) then
         SPAWN:New("LM08Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM08zone) and redfor:NoneInZone(LM08zone) and blufor:NoneInZone(LM08SpawnZone4) then
         SPAWN:New("LM08Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(LM08zone) and redfor:AnyInZone(LM08zone) then
           return nil
         end

         local LM07zone = ZONE:FindByName("LM07")
         LM07SpawnZone1 = ZONE:FindByName("LM07 Spawn Zone-1")
         LM07SpawnZone2 = ZONE:FindByName("LM07 Spawn Zone-2")
         LM07SpawnZone3 = ZONE:FindByName("LM07 Spawn Zone-3")
         LM07SpawnZone4 = ZONE:FindByName("LM07 Spawn Zone-4")
         if blufor:NoneInZone(LM07zone) and redfor:NoneInZone(LM07SpawnZone1) then
           SPAWN:New("LM07Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM07zone) and redfor:NoneInZone(LM07SpawnZone2) then
           SPAWN:New("LM07Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM07zone) and redfor:NoneInZone(LM07SpawnZone3) then
           SPAWN:New("LM07Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM07zone) and redfor:NoneInZone(LM07SpawnZone4) then
           SPAWN:New("LM07Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(LM07zone) and redfor:NoneInZone(LM07zone) and blufor:NoneInZone(LM07SpawnZone1) then
             SPAWN:New("LM07Redfor-1")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM07zone) and redfor:NoneInZone(LM07zone) and blufor:NoneInZone(LM07SpawnZone2) then
             SPAWN:New("LM07Redfor-2")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM07zone) and redfor:NoneInZone(LM07zone) and blufor:NoneInZone(LM07SpawnZone3) then
             SPAWN:New("LM07Redfor-3")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM07zone) and redfor:NoneInZone(LM07zone) and blufor:NoneInZone(LM07SpawnZone4) then
             SPAWN:New("LM07Redfor-4")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(LM07zone) and redfor:AnyInZone(LM07zone) then
               return nil
             end

             local LM06zone = ZONE:FindByName("LM06")
             LM06SpawnZone1 = ZONE:FindByName("LM06 Spawn Zone-1")
             LM06SpawnZone2 = ZONE:FindByName("LM06 Spawn Zone-2")
             LM06SpawnZone3 = ZONE:FindByName("LM06 Spawn Zone-3")
             LM06SpawnZone4 = ZONE:FindByName("LM06 Spawn Zone-4")
             if blufor:NoneInZone(LM06zone) and redfor:NoneInZone(LM06SpawnZone1) then
               SPAWN:New("LM06Redfor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM06zone) and redfor:NoneInZone(LM06SpawnZone2) then
               SPAWN:New("LM06Redfor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM06zone) and redfor:NoneInZone(LM06SpawnZone3) then
               SPAWN:New("LM06Redfor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM06zone) and redfor:NoneInZone(LM06SpawnZone4) then
               SPAWN:New("LM06Redfor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end

               if blufor:AnyInZone(LM06zone) and redfor:NoneInZone(LM06zone) and blufor:NoneInZone(LM06SpawnZone1) then
                 SPAWN:New("LM06Redfor-1")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM06zone) and redfor:NoneInZone(LM06zone) and blufor:NoneInZone(LM06SpawnZone2) then
                 SPAWN:New("LM06Redfor-2")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM06zone) and redfor:NoneInZone(LM06zone) and blufor:NoneInZone(LM06SpawnZone3) then
                 SPAWN:New("LM06Redfor-3")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM06zone) and redfor:NoneInZone(LM06zone) and blufor:NoneInZone(LM06SpawnZone4) then
                 SPAWN:New("LM06Redfor-4")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end

                 if blufor:AnyInZone(LM06zone) and redfor:AnyInZone(LM06zone) then
                   return nil
                 end


     end, {}, 2 )
