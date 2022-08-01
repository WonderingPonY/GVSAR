blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }

RedForzonetrigger1 = SCHEDULER:New(nil,
   function()

     local LM38zone = ZONE:FindByName("LM38")
     LM38SpawnZone1 = ZONE:FindByName("LM38 Spawn Zone-1")
     LM38SpawnZone2 = ZONE:FindByName("LM38 Spawn Zone-2")
     LM38SpawnZone3 = ZONE:FindByName("LM38 Spawn Zone-3")
     LM38SpawnZone4 = ZONE:FindByName("LM38 Spawn Zone-4")
     if blufor:NoneInZone(LM38zone) and redfor:NoneInZone(LM38SpawnZone1) then
       SPAWN:New("LM38Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM38zone) and redfor:NoneInZone(LM38SpawnZone2) then
       SPAWN:New("LM38Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM38zone) and redfor:NoneInZone(LM38SpawnZone3) then
       SPAWN:New("LM38Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM38zone) and redfor:NoneInZone(LM38SpawnZone4) then
       SPAWN:New("LM38Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(LM38zone) and redfor:NoneInZone(LM38zone) and blufor:NoneInZone(LM38SpawnZone1) then
         SPAWN:New("LM38Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM38zone) and redfor:NoneInZone(LM38zone) and blufor:NoneInZone(LM38SpawnZone2) then
         SPAWN:New("LM38Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM38zone) and redfor:NoneInZone(LM38zone) and blufor:NoneInZone(LM38SpawnZone3) then
         SPAWN:New("LM38Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM38zone) and redfor:NoneInZone(LM38zone) and blufor:NoneInZone(LM38SpawnZone4) then
         SPAWN:New("LM38Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(LM38zone) and redfor:AnyInZone(LM38zone) then
           return nil
         end

         local LM37zone = ZONE:FindByName("LM37")
         LM37SpawnZone1 = ZONE:FindByName("LM37 Spawn Zone-1")
         LM37SpawnZone2 = ZONE:FindByName("LM37 Spawn Zone-2")
         LM37SpawnZone3 = ZONE:FindByName("LM37 Spawn Zone-3")
         LM37SpawnZone4 = ZONE:FindByName("LM37 Spawn Zone-4")
         if blufor:NoneInZone(LM37zone) and redfor:NoneInZone(LM37SpawnZone1) then
           SPAWN:New("LM37Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM37zone) and redfor:NoneInZone(LM37SpawnZone2) then
           SPAWN:New("LM37Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM37zone) and redfor:NoneInZone(LM37SpawnZone3) then
           SPAWN:New("LM37Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM37zone) and redfor:NoneInZone(LM37SpawnZone4) then
           SPAWN:New("LM37Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(LM37zone) and redfor:NoneInZone(LM37zone) and blufor:NoneInZone(LM37SpawnZone1) then
             SPAWN:New("LM37Redfor-1")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM37zone) and redfor:NoneInZone(LM37zone) and blufor:NoneInZone(LM37SpawnZone2) then
             SPAWN:New("LM37Redfor-2")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM37zone) and redfor:NoneInZone(LM37zone) and blufor:NoneInZone(LM37SpawnZone3) then
             SPAWN:New("LM37Redfor-3")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM37zone) and redfor:NoneInZone(LM37zone) and blufor:NoneInZone(LM37SpawnZone4) then
             SPAWN:New("LM37Redfor-4")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(LM37zone) and redfor:AnyInZone(LM37zone) then
               return nil
             end

             local LM36zone = ZONE:FindByName("LM36")
             LM36SpawnZone1 = ZONE:FindByName("LM36 Spawn Zone-1")
             LM36SpawnZone2 = ZONE:FindByName("LM36 Spawn Zone-2")
             LM36SpawnZone3 = ZONE:FindByName("LM36 Spawn Zone-3")
             LM36SpawnZone4 = ZONE:FindByName("LM36 Spawn Zone-4")
             if blufor:NoneInZone(LM36zone) and redfor:NoneInZone(LM36SpawnZone1) then
               SPAWN:New("LM36Redfor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM36zone) and redfor:NoneInZone(LM36SpawnZone2) then
               SPAWN:New("LM36Redfor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM36zone) and redfor:NoneInZone(LM36SpawnZone3) then
               SPAWN:New("LM36Redfor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM36zone) and redfor:NoneInZone(LM36SpawnZone4) then
               SPAWN:New("LM36Redfor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end

               if blufor:AnyInZone(LM36zone) and redfor:NoneInZone(LM36zone) and blufor:NoneInZone(LM36SpawnZone1) then
                 SPAWN:New("LM36Redfor-1")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM36zone) and redfor:NoneInZone(LM36zone) and blufor:NoneInZone(LM36SpawnZone2) then
                 SPAWN:New("LM36Redfor-2")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM36zone) and redfor:NoneInZone(LM36zone) and blufor:NoneInZone(LM36SpawnZone3) then
                 SPAWN:New("LM36Redfor-3")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM36zone) and redfor:NoneInZone(LM36zone) and blufor:NoneInZone(LM36SpawnZone4) then
                 SPAWN:New("LM36Redfor-4")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end

                 if blufor:AnyInZone(LM36zone) and redfor:AnyInZone(LM36zone) then
                   return nil
                 end

                 local LM35zone = ZONE:FindByName("LM35")
                 LM35SpawnZone1 = ZONE:FindByName("LM35 Spawn Zone-1")
                 LM35SpawnZone2 = ZONE:FindByName("LM35 Spawn Zone-2")
                 LM35SpawnZone3 = ZONE:FindByName("LM35 Spawn Zone-3")
                 LM35SpawnZone4 = ZONE:FindByName("LM35 Spawn Zone-4")
                 if blufor:NoneInZone(LM35zone) and redfor:NoneInZone(LM35SpawnZone1) then
                   SPAWN:New("LM35Redfor-1")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM35zone) and redfor:NoneInZone(LM35SpawnZone2) then
                   SPAWN:New("LM35Redfor-2")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM35zone) and redfor:NoneInZone(LM35SpawnZone3) then
                   SPAWN:New("LM35Redfor-3")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM35zone) and redfor:NoneInZone(LM35SpawnZone4) then
                   SPAWN:New("LM35Redfor-4")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end

                   if blufor:AnyInZone(LM35zone) and redfor:NoneInZone(LM35zone) and blufor:NoneInZone(LM35SpawnZone1) then
                     SPAWN:New("LM35Redfor-1")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM35zone) and redfor:NoneInZone(LM35zone) and blufor:NoneInZone(LM35SpawnZone2) then
                     SPAWN:New("LM35Redfor-2")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM35zone) and redfor:NoneInZone(LM35zone) and blufor:NoneInZone(LM35SpawnZone3) then
                     SPAWN:New("LM35Redfor-3")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM35zone) and redfor:NoneInZone(LM35zone) and blufor:NoneInZone(LM35SpawnZone4) then
                     SPAWN:New("LM35Redfor-4")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end

                     if blufor:AnyInZone(LM35zone) and redfor:AnyInZone(LM35zone) then
                       return nil
                     end

     local LM48zone = ZONE:FindByName("LM48")
     LM48SpawnZone1 = ZONE:FindByName("LM48 Spawn Zone-1")
     LM48SpawnZone2 = ZONE:FindByName("LM48 Spawn Zone-2")
     LM48SpawnZone3 = ZONE:FindByName("LM48 Spawn Zone-3")
     LM48SpawnZone4 = ZONE:FindByName("LM48 Spawn Zone-4")
     if blufor:NoneInZone(LM48zone) and redfor:NoneInZone(LM48SpawnZone1) then
       SPAWN:New("LM48Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM48zone) and redfor:NoneInZone(LM48SpawnZone2) then
       SPAWN:New("LM48Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM48zone) and redfor:NoneInZone(LM48SpawnZone3) then
       SPAWN:New("LM48Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(LM48zone) and redfor:NoneInZone(LM48SpawnZone4) then
       SPAWN:New("LM48Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(LM48zone) and redfor:NoneInZone(LM48zone) and blufor:NoneInZone(LM48SpawnZone1) then
         SPAWN:New("LM48Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM48zone) and redfor:NoneInZone(LM48zone) and blufor:NoneInZone(LM48SpawnZone2) then
         SPAWN:New("LM48Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM48zone) and redfor:NoneInZone(LM48zone) and blufor:NoneInZone(LM48SpawnZone3) then
         SPAWN:New("LM48Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(LM48zone) and redfor:NoneInZone(LM48zone) and blufor:NoneInZone(LM48SpawnZone4) then
         SPAWN:New("LM48Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(LM48zone) and redfor:AnyInZone(LM48zone) then
           return nil
         end

         local LM47zone = ZONE:FindByName("LM47")
         LM47SpawnZone1 = ZONE:FindByName("LM47 Spawn Zone-1")
         LM47SpawnZone2 = ZONE:FindByName("LM47 Spawn Zone-2")
         LM47SpawnZone3 = ZONE:FindByName("LM47 Spawn Zone-3")
         LM47SpawnZone4 = ZONE:FindByName("LM47 Spawn Zone-4")
         if blufor:NoneInZone(LM47zone) and redfor:NoneInZone(LM47SpawnZone1) then
           SPAWN:New("LM47Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM47zone) and redfor:NoneInZone(LM47SpawnZone2) then
           SPAWN:New("LM47Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM47zone) and redfor:NoneInZone(LM47SpawnZone3) then
           SPAWN:New("LM47Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(LM47zone) and redfor:NoneInZone(LM47SpawnZone4) then
           SPAWN:New("LM47Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(LM47zone) and redfor:NoneInZone(LM47zone) and blufor:NoneInZone(LM47SpawnZone1) then
             SPAWN:New("LM47Redfor-1")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM47zone) and redfor:NoneInZone(LM47zone) and blufor:NoneInZone(LM47SpawnZone2) then
             SPAWN:New("LM47Redfor-2")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM47zone) and redfor:NoneInZone(LM47zone) and blufor:NoneInZone(LM47SpawnZone3) then
             SPAWN:New("LM47Redfor-3")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(LM47zone) and redfor:NoneInZone(LM47zone) and blufor:NoneInZone(LM47SpawnZone4) then
             SPAWN:New("LM47Redfor-4")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(LM47zone) and redfor:AnyInZone(LM47zone) then
               return nil
             end

             local LM46zone = ZONE:FindByName("LM46")
             LM46SpawnZone1 = ZONE:FindByName("LM46 Spawn Zone-1")
             LM46SpawnZone2 = ZONE:FindByName("LM46 Spawn Zone-2")
             LM46SpawnZone3 = ZONE:FindByName("LM46 Spawn Zone-3")
             LM46SpawnZone4 = ZONE:FindByName("LM46 Spawn Zone-4")
             if blufor:NoneInZone(LM46zone) and redfor:NoneInZone(LM46SpawnZone1) then
               SPAWN:New("LM46Redfor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM46zone) and redfor:NoneInZone(LM46SpawnZone2) then
               SPAWN:New("LM46Redfor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM46zone) and redfor:NoneInZone(LM46SpawnZone3) then
               SPAWN:New("LM46Redfor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if blufor:NoneInZone(LM46zone) and redfor:NoneInZone(LM46SpawnZone4) then
               SPAWN:New("LM46Redfor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end

               if blufor:AnyInZone(LM46zone) and redfor:NoneInZone(LM46zone) and blufor:NoneInZone(LM46SpawnZone1) then
                 SPAWN:New("LM46Redfor-1")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM46zone) and redfor:NoneInZone(LM46zone) and blufor:NoneInZone(LM46SpawnZone2) then
                 SPAWN:New("LM46Redfor-2")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM46zone) and redfor:NoneInZone(LM46zone) and blufor:NoneInZone(LM46SpawnZone3) then
                 SPAWN:New("LM46Redfor-3")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if blufor:AnyInZone(LM46zone) and redfor:NoneInZone(LM46zone) and blufor:NoneInZone(LM46SpawnZone4) then
                 SPAWN:New("LM46Redfor-4")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end

                 if blufor:AnyInZone(LM46zone) and redfor:AnyInZone(LM46zone) then
                   return nil
                 end

                 local LM45zone = ZONE:FindByName("LM45")
                 LM45SpawnZone1 = ZONE:FindByName("LM45 Spawn Zone-1")
                 LM45SpawnZone2 = ZONE:FindByName("LM45 Spawn Zone-2")
                 LM45SpawnZone3 = ZONE:FindByName("LM45 Spawn Zone-3")
                 LM45SpawnZone4 = ZONE:FindByName("LM45 Spawn Zone-4")
                 if blufor:NoneInZone(LM45zone) and redfor:NoneInZone(LM45SpawnZone1) then
                   SPAWN:New("LM45Redfor-1")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM45zone) and redfor:NoneInZone(LM45SpawnZone2) then
                   SPAWN:New("LM45Redfor-2")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM45zone) and redfor:NoneInZone(LM45SpawnZone3) then
                   SPAWN:New("LM45Redfor-3")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if blufor:NoneInZone(LM45zone) and redfor:NoneInZone(LM45SpawnZone4) then
                   SPAWN:New("LM45Redfor-4")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end

                   if blufor:AnyInZone(LM45zone) and redfor:NoneInZone(LM45zone) and blufor:NoneInZone(LM45SpawnZone1) then
                     SPAWN:New("LM45Redfor-1")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM45zone) and redfor:NoneInZone(LM45zone) and blufor:NoneInZone(LM45SpawnZone2) then
                     SPAWN:New("LM45Redfor-2")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM45zone) and redfor:NoneInZone(LM45zone) and blufor:NoneInZone(LM45SpawnZone3) then
                     SPAWN:New("LM45Redfor-3")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end
                   if blufor:AnyInZone(LM45zone) and redfor:NoneInZone(LM45zone) and blufor:NoneInZone(LM45SpawnZone4) then
                     SPAWN:New("LM45Redfor-4")
                     :InitRandomizeTemplate(BlueForSpawn)
                     :InitLimit( 6, 0 )
                     :SpawnScheduled( 5, .5 )
                   end

                     if blufor:AnyInZone(LM45zone) and redfor:AnyInZone(LM45zone) then
                       return nil
                     end

     end, {}, 2 )
