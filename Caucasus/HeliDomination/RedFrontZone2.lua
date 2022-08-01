blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }

RedForzonetrigger2 = SCHEDULER:New(nil,
   function()

     local LM18zone = ZONE:FindByName("LM18")
     LM18SpawnZone1 = ZONE:FindByName("LM18 Spawn Zone-1")
     LM18SpawnZone2 = ZONE:FindByName("LM18 Spawn Zone-2")
     LM18SpawnZone3 = ZONE:FindByName("LM18 Spawn Zone-3")
     LM18SpawnZone4 = ZONE:FindByName("LM18 Spawn Zone-4")
     if blufor:NoneInZone(LM18zone) and redfor:NoneInZone(LM18SpawnZone1) then
       SPAWN:New("LM18Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM18zone) and redfor:NoneInZone(LM18SpawnZone2) then
       SPAWN:New("LM18Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM18zone) and redfor:NoneInZone(LM18SpawnZone3) then
       SPAWN:New("LM18Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM18zone) and redfor:NoneInZone(LM18SpawnZone4) then
       SPAWN:New("LM18Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(LM18zone) and redfor:NoneInZone(LM18zone) and blufor:NoneInZone(LM18SpawnZone1) then
         SPAWN:New("LM18Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM18zone) and redfor:NoneInZone(LM18zone) and blufor:NoneInZone(LM18SpawnZone2) then
         SPAWN:New("LM18Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM18zone) and redfor:NoneInZone(LM18zone) and blufor:NoneInZone(LM18SpawnZone3) then
         SPAWN:New("LM18Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM18zone) and redfor:NoneInZone(LM18zone) and blufor:NoneInZone(LM18SpawnZone4) then
         SPAWN:New("LM18Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(LM18zone) and redfor:AnyInZone(LM18zone) then
           return nil
         end

         local LM17zone = ZONE:FindByName("LM17")
         LM17SpawnZone1 = ZONE:FindByName("LM17 Spawn Zone-1")
         LM17SpawnZone2 = ZONE:FindByName("LM17 Spawn Zone-2")
         LM17SpawnZone3 = ZONE:FindByName("LM17 Spawn Zone-3")
         LM17SpawnZone4 = ZONE:FindByName("LM17 Spawn Zone-4")
         if blufor:NoneInZone(LM17zone) and redfor:NoneInZone(LM17SpawnZone1) then
           SPAWN:New("LM17Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM17zone) and redfor:NoneInZone(LM17SpawnZone2) then
           SPAWN:New("LM17Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM17zone) and redfor:NoneInZone(LM17SpawnZone3) then
           SPAWN:New("LM17Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM17zone) and redfor:NoneInZone(LM17SpawnZone4) then
           SPAWN:New("LM17Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(LM17zone) and redfor:NoneInZone(LM17zone) and blufor:NoneInZone(LM17SpawnZone1) then
             SPAWN:New("LM17Redfor-1")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM17zone) and redfor:NoneInZone(LM17zone) and blufor:NoneInZone(LM17SpawnZone2) then
             SPAWN:New("LM17Redfor-2")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM17zone) and redfor:NoneInZone(LM17zone) and blufor:NoneInZone(LM17SpawnZone3) then
             SPAWN:New("LM17Redfor-3")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM17zone) and redfor:NoneInZone(LM17zone) and blufor:NoneInZone(LM17SpawnZone4) then
             SPAWN:New("LM17Redfor-4")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(LM17zone) and redfor:AnyInZone(LM17zone) then
               return nil
             end

             local LM16zone = ZONE:FindByName("LM16")
             LM16SpawnZone1 = ZONE:FindByName("LM16 Spawn Zone-1")
             LM16SpawnZone2 = ZONE:FindByName("LM16 Spawn Zone-2")
             LM16SpawnZone3 = ZONE:FindByName("LM16 Spawn Zone-3")
             LM16SpawnZone4 = ZONE:FindByName("LM16 Spawn Zone-4")
             if blufor:NoneInZone(LM16zone) and redfor:NoneInZone(LM16SpawnZone1) then
               SPAWN:New("LM16Redfor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM16zone) and redfor:NoneInZone(LM16SpawnZone2) then
               SPAWN:New("LM16Redfor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM16zone) and redfor:NoneInZone(LM16SpawnZone3) then
               SPAWN:New("LM16Redfor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM16zone) and redfor:NoneInZone(LM16SpawnZone4) then
               SPAWN:New("LM16Redfor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end

               if blufor:AnyInZone(LM16zone) and redfor:NoneInZone(LM16zone) and blufor:NoneInZone(LM16SpawnZone1) then
                 SPAWN:New("LM16Redfor-1")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM16zone) and redfor:NoneInZone(LM16zone) and blufor:NoneInZone(LM16SpawnZone2) then
                 SPAWN:New("LM16Redfor-2")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM16zone) and redfor:NoneInZone(LM16zone) and blufor:NoneInZone(LM16SpawnZone3) then
                 SPAWN:New("LM16Redfor-3")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM16zone) and redfor:NoneInZone(LM16zone) and blufor:NoneInZone(LM16SpawnZone4) then
                 SPAWN:New("LM16Redfor-4")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end

                 if blufor:AnyInZone(LM16zone) and redfor:AnyInZone(LM16zone) then
                   return nil
                 end

                 local LM28zone = ZONE:FindByName("LM28")
                 LM28SpawnZone1 = ZONE:FindByName("LM28 Spawn Zone-1")
                 LM28SpawnZone2 = ZONE:FindByName("LM28 Spawn Zone-2")
                 LM28SpawnZone3 = ZONE:FindByName("LM28 Spawn Zone-3")
                 LM28SpawnZone4 = ZONE:FindByName("LM28 Spawn Zone-4")
                 if blufor:NoneInZone(LM28zone) and redfor:NoneInZone(LM28SpawnZone1) then
                   SPAWN:New("LM28Redfor-1")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM28zone) and redfor:NoneInZone(LM28SpawnZone2) then
                   SPAWN:New("LM28Redfor-2")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM28zone) and redfor:NoneInZone(LM28SpawnZone3) then
                   SPAWN:New("LM28Redfor-3")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM28zone) and redfor:NoneInZone(LM28SpawnZone4) then
                   SPAWN:New("LM28Redfor-4")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end

                   if blufor:AnyInZone(LM28zone) and redfor:NoneInZone(LM28zone) and blufor:NoneInZone(LM28SpawnZone1) then
                     SPAWN:New("LM28Redfor-1")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM28zone) and redfor:NoneInZone(LM28zone) and blufor:NoneInZone(LM28SpawnZone2) then
                     SPAWN:New("LM28Redfor-2")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM28zone) and redfor:NoneInZone(LM28zone) and blufor:NoneInZone(LM28SpawnZone3) then
                     SPAWN:New("LM28Redfor-3")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM28zone) and redfor:NoneInZone(LM28zone) and blufor:NoneInZone(LM28SpawnZone4) then
                     SPAWN:New("LM28Redfor-4")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end

                     if blufor:AnyInZone(LM28zone) and redfor:AnyInZone(LM28zone) then
                       return nil
                     end

                     local LM27zone = ZONE:FindByName("LM27")
                     LM27SpawnZone1 = ZONE:FindByName("LM27 Spawn Zone-1")
                     LM27SpawnZone2 = ZONE:FindByName("LM27 Spawn Zone-2")
                     LM27SpawnZone3 = ZONE:FindByName("LM27 Spawn Zone-3")
                     LM27SpawnZone4 = ZONE:FindByName("LM27 Spawn Zone-4")
                     if blufor:NoneInZone(LM27zone) and redfor:NoneInZone(LM27SpawnZone1) then
                       SPAWN:New("LM27Redfor-1")
                       :InitRandomizeTemplate(RedForSpawn)
                       :InitLimit( 6, 0 )
                       :SpawnScheduled( 5, .5 )
                     end
                     if blufor:NoneInZone(LM27zone) and redfor:NoneInZone(LM27SpawnZone2) then
                       SPAWN:New("LM27Redfor-2")
                       :InitRandomizeTemplate(RedForSpawn)
                       :InitLimit( 6, 0 )
                       :SpawnScheduled( 5, .5 )
                     end
                     if blufor:NoneInZone(LM27zone) and redfor:NoneInZone(LM27SpawnZone3) then
                       SPAWN:New("LM27Redfor-3")
                       :InitRandomizeTemplate(RedForSpawn)
                       :InitLimit( 6, 0 )
                       :SpawnScheduled( 5, .5 )
                     end
                     if blufor:NoneInZone(LM27zone) and redfor:NoneInZone(LM27SpawnZone4) then
                       SPAWN:New("LM27Redfor-4")
                       :InitRandomizeTemplate(RedForSpawn)
                       :InitLimit( 6, 0 )
                       :SpawnScheduled( 5, .5 )
                     end

                       if blufor:AnyInZone(LM27zone) and redfor:NoneInZone(LM27zone) and blufor:NoneInZone(LM27SpawnZone1) then
                         SPAWN:New("LM27Redfor-1")
                         :InitRandomizeTemplate(BlueForSpawn)
                         :InitLimit( 6, 0 )
                         :SpawnScheduled( 5, .5 )
                       end
                       if blufor:AnyInZone(LM27zone) and redfor:NoneInZone(LM27zone) and blufor:NoneInZone(LM27SpawnZone2) then
                         SPAWN:New("LM27Redfor-2")
                         :InitRandomizeTemplate(BlueForSpawn)
                         :InitLimit( 6, 0 )
                         :SpawnScheduled( 5, .5 )
                       end
                       if blufor:AnyInZone(LM27zone) and redfor:NoneInZone(LM27zone) and blufor:NoneInZone(LM27SpawnZone3) then
                         SPAWN:New("LM27Redfor-3")
                         :InitRandomizeTemplate(BlueForSpawn)
                         :InitLimit( 6, 0 )
                         :SpawnScheduled( 5, .5 )
                       end
                       if blufor:AnyInZone(LM27zone) and redfor:NoneInZone(LM27zone) and blufor:NoneInZone(LM27SpawnZone4) then
                         SPAWN:New("LM27Redfor-4")
                         :InitRandomizeTemplate(BlueForSpawn)
                         :InitLimit( 6, 0 )
                         :SpawnScheduled( 5, .5 )
                       end

                         if blufor:AnyInZone(LM27zone) and redfor:AnyInZone(LM27zone) then
                           return nil
                         end

                         local LM26zone = ZONE:FindByName("LM26")
                         LM26SpawnZone1 = ZONE:FindByName("LM26 Spawn Zone-1")
                         LM26SpawnZone2 = ZONE:FindByName("LM26 Spawn Zone-2")
                         LM26SpawnZone3 = ZONE:FindByName("LM26 Spawn Zone-3")
                         LM26SpawnZone4 = ZONE:FindByName("LM26 Spawn Zone-4")
                         if blufor:NoneInZone(LM26zone) and redfor:NoneInZone(LM26SpawnZone1) then
                           SPAWN:New("LM26Redfor-1")
                           :InitRandomizeTemplate(RedForSpawn)
                           :InitLimit( 6, 0 )
                           :SpawnScheduled( 5, .5 )
                         end
                         if blufor:NoneInZone(LM26zone) and redfor:NoneInZone(LM26SpawnZone2) then
                           SPAWN:New("LM26Redfor-2")
                           :InitRandomizeTemplate(RedForSpawn)
                           :InitLimit( 6, 0 )
                           :SpawnScheduled( 5, .5 )
                         end
                         if blufor:NoneInZone(LM26zone) and redfor:NoneInZone(LM26SpawnZone3) then
                           SPAWN:New("LM26Redfor-3")
                           :InitRandomizeTemplate(RedForSpawn)
                           :InitLimit( 6, 0 )
                           :SpawnScheduled( 5, .5 )
                         end
                         if blufor:NoneInZone(LM26zone) and redfor:NoneInZone(LM26SpawnZone4) then
                           SPAWN:New("LM26Redfor-4")
                           :InitRandomizeTemplate(RedForSpawn)
                           :InitLimit( 6, 0 )
                           :SpawnScheduled( 5, .5 )
                         end

                           if blufor:AnyInZone(LM26zone) and redfor:NoneInZone(LM26zone) and blufor:NoneInZone(LM26SpawnZone1) then
                             SPAWN:New("LM26Redfor-1")
                             :InitRandomizeTemplate(BlueForSpawn)
                             :InitLimit( 6, 0 )
                             :SpawnScheduled( 5, .5 )
                           end
                           if blufor:AnyInZone(LM26zone) and redfor:NoneInZone(LM26zone) and blufor:NoneInZone(LM26SpawnZone2) then
                             SPAWN:New("LM26Redfor-2")
                             :InitRandomizeTemplate(BlueForSpawn)
                             :InitLimit( 6, 0 )
                             :SpawnScheduled( 5, .5 )
                           end
                           if blufor:AnyInZone(LM26zone) and redfor:NoneInZone(LM26zone) and blufor:NoneInZone(LM26SpawnZone3) then
                             SPAWN:New("LM26Redfor-3")
                             :InitRandomizeTemplate(BlueForSpawn)
                             :InitLimit( 6, 0 )
                             :SpawnScheduled( 5, .5 )
                           end
                           if blufor:AnyInZone(LM26zone) and redfor:NoneInZone(LM26zone) and blufor:NoneInZone(LM26SpawnZone4) then
                             SPAWN:New("LM26Redfor-4")
                             :InitRandomizeTemplate(BlueForSpawn)
                             :InitLimit( 6, 0 )
                             :SpawnScheduled( 5, .5 )
                           end

                             if blufor:AnyInZone(LM26zone) and redfor:AnyInZone(LM26zone) then
                               return nil
                             end

                             local LM25zone = ZONE:FindByName("LM25")
                             LM25SpawnZone1 = ZONE:FindByName("LM25 Spawn Zone-1")
                             LM25SpawnZone2 = ZONE:FindByName("LM25 Spawn Zone-2")
                             LM25SpawnZone3 = ZONE:FindByName("LM25 Spawn Zone-3")
                             LM25SpawnZone4 = ZONE:FindByName("LM25 Spawn Zone-4")
                             if blufor:NoneInZone(LM25zone) and redfor:NoneInZone(LM25SpawnZone1) then
                               SPAWN:New("LM25Redfor-1")
                               :InitRandomizeTemplate(RedForSpawn)
                               :InitLimit( 6, 0 )
                               :SpawnScheduled( 5, .5 )
                             end
                             if blufor:NoneInZone(LM25zone) and redfor:NoneInZone(LM25SpawnZone2) then
                               SPAWN:New("LM25Redfor-2")
                               :InitRandomizeTemplate(RedForSpawn)
                               :InitLimit( 6, 0 )
                               :SpawnScheduled( 5, .5 )
                             end
                             if blufor:NoneInZone(LM25zone) and redfor:NoneInZone(LM25SpawnZone3) then
                               SPAWN:New("LM25Redfor-3")
                               :InitRandomizeTemplate(RedForSpawn)
                               :InitLimit( 6, 0 )
                               :SpawnScheduled( 5, .5 )
                             end
                             if blufor:NoneInZone(LM25zone) and redfor:NoneInZone(LM25SpawnZone4) then
                               SPAWN:New("LM25Redfor-4")
                               :InitRandomizeTemplate(RedForSpawn)
                               :InitLimit( 6, 0 )
                               :SpawnScheduled( 5, .5 )
                             end

                               if blufor:AnyInZone(LM25zone) and redfor:NoneInZone(LM25zone) and blufor:NoneInZone(LM25SpawnZone1) then
                                 SPAWN:New("LM25Redfor-1")
                                 :InitRandomizeTemplate(BlueForSpawn)
                                 :InitLimit( 6, 0 )
                                 :SpawnScheduled( 5, .5 )
                               end
                               if blufor:AnyInZone(LM25zone) and redfor:NoneInZone(LM25zone) and blufor:NoneInZone(LM25SpawnZone2) then
                                 SPAWN:New("LM25Redfor-2")
                                 :InitRandomizeTemplate(BlueForSpawn)
                                 :InitLimit( 6, 0 )
                                 :SpawnScheduled( 5, .5 )
                               end
                               if blufor:AnyInZone(LM25zone) and redfor:NoneInZone(LM25zone) and blufor:NoneInZone(LM25SpawnZone3) then
                                 SPAWN:New("LM25Redfor-3")
                                 :InitRandomizeTemplate(BlueForSpawn)
                                 :InitLimit( 6, 0 )
                                 :SpawnScheduled( 5, .5 )
                               end
                               if blufor:AnyInZone(LM25zone) and redfor:NoneInZone(LM25zone) and blufor:NoneInZone(LM25SpawnZone4) then
                                 SPAWN:New("LM25Redfor-4")
                                 :InitRandomizeTemplate(BlueForSpawn)
                                 :InitLimit( 6, 0 )
                                 :SpawnScheduled( 5, .5 )
                               end

                                 if blufor:AnyInZone(LM25zone) and redfor:AnyInZone(LM25zone) then
                                   return nil
                                 end


     end, {}, 2 )
