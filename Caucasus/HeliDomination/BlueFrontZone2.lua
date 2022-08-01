blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }

BlueForzonetrigger2 = SCHEDULER:New(nil,
   function()


             local MM36zone = ZONE:FindByName("MM36")
             MM36SpawnZone1 = ZONE:FindByName("MM36 Spawn Zone-1")
             MM36SpawnZone2 = ZONE:FindByName("MM36 Spawn Zone-2")
             MM36SpawnZone3 = ZONE:FindByName("MM36 Spawn Zone-3")
             MM36SpawnZone4 = ZONE:FindByName("MM36 Spawn Zone-4")
             if redfor:NoneInZone(MM36zone) and blufor:NoneInZone(MM36SpawnZone1) then
             SPAWN:New("MM36BlueFor-1")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
             end
             if redfor:NoneInZone(MM36zone) and blufor:NoneInZone(MM36SpawnZone2) then
             SPAWN:New("MM36BlueFor-2")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
             end
             if redfor:NoneInZone(MM36zone) and blufor:NoneInZone(MM36SpawnZone3) then
             SPAWN:New("MM36BlueFor-3")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
             end
             if redfor:NoneInZone(MM36zone) and blufor:NoneInZone(MM36SpawnZone4) then
             SPAWN:New("MM36BlueFor-4")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
             end

             if redfor:AnyInZone(MM36zone) and blufor:NoneInZone(MM36zone) and redfor:NoneInZone(MM36SpawnZone1) then
               SPAWN:New("MM36BlueFor-1")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if redfor:AnyInZone(MM36zone) and blufor:NoneInZone(MM36zone) and redfor:NoneInZone(MM36SpawnZone2) then
               SPAWN:New("MM36BlueFor-2")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if redfor:AnyInZone(MM36zone) and blufor:NoneInZone(MM36zone) and redfor:NoneInZone(MM36SpawnZone3) then
               SPAWN:New("MM36BlueFor-3")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end
             if redfor:AnyInZone(MM36zone) and blufor:NoneInZone(MM36zone) and redfor:NoneInZone(MM36SpawnZone4) then
               SPAWN:New("MM36BlueFor-4")
               :InitRandomizeTemplate(RedForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
             end

               if blufor:AnyInZone(MM36zone) and redfor:AnyInZone(MM36zone) then
                 return nil
               end

               local MM35zone = ZONE:FindByName("MM35")
               MM35SpawnZone1 = ZONE:FindByName("MM35 Spawn Zone-1")
               MM35SpawnZone2 = ZONE:FindByName("MM35 Spawn Zone-2")
               MM35SpawnZone3 = ZONE:FindByName("MM35 Spawn Zone-3")
               MM35SpawnZone4 = ZONE:FindByName("MM35 Spawn Zone-4")
               if redfor:NoneInZone(MM35zone) and blufor:NoneInZone(MM35SpawnZone1) then
               SPAWN:New("MM35BlueFor-1")
               :InitRandomizeTemplate(BlueForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
               end
               if redfor:NoneInZone(MM35zone) and blufor:NoneInZone(MM35SpawnZone2) then
               SPAWN:New("MM35BlueFor-2")
               :InitRandomizeTemplate(BlueForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
               end
               if redfor:NoneInZone(MM35zone) and blufor:NoneInZone(MM35SpawnZone3) then
               SPAWN:New("MM35BlueFor-3")
               :InitRandomizeTemplate(BlueForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
               end
               if redfor:NoneInZone(MM35zone) and blufor:NoneInZone(MM35SpawnZone4) then
               SPAWN:New("MM35BlueFor-4")
               :InitRandomizeTemplate(BlueForSpawn)
               :InitLimit( 6, 0 )
               :SpawnScheduled( 5, .5 )
               end

               if redfor:AnyInZone(MM35zone) and blufor:NoneInZone(MM35zone) and redfor:NoneInZone(MM35SpawnZone1) then
                 SPAWN:New("MM35BlueFor-1")
                 :InitRandomizeTemplate(RedForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if redfor:AnyInZone(MM35zone) and blufor:NoneInZone(MM35zone) and redfor:NoneInZone(MM35SpawnZone2) then
                 SPAWN:New("MM35BlueFor-2")
                 :InitRandomizeTemplate(RedForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if redfor:AnyInZone(MM35zone) and blufor:NoneInZone(MM35zone) and redfor:NoneInZone(MM35SpawnZone3) then
                 SPAWN:New("MM35BlueFor-3")
                 :InitRandomizeTemplate(RedForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end
               if redfor:AnyInZone(MM35zone) and blufor:NoneInZone(MM35zone) and redfor:NoneInZone(MM35SpawnZone4) then
                 SPAWN:New("MM35BlueFor-4")
                 :InitRandomizeTemplate(RedForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
               end

                 if blufor:AnyInZone(MM35zone) and redfor:AnyInZone(MM35zone) then
                   return nil
                 end

                 local MM34zone = ZONE:FindByName("MM34")
                 MM34SpawnZone1 = ZONE:FindByName("MM34 Spawn Zone-1")
                 MM34SpawnZone2 = ZONE:FindByName("MM34 Spawn Zone-2")
                 MM34SpawnZone3 = ZONE:FindByName("MM34 Spawn Zone-3")
                 MM34SpawnZone4 = ZONE:FindByName("MM34 Spawn Zone-4")
                 if redfor:NoneInZone(MM34zone) and blufor:NoneInZone(MM34SpawnZone1) then
                 SPAWN:New("MM34BlueFor-1")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
                 end
                 if redfor:NoneInZone(MM34zone) and blufor:NoneInZone(MM34SpawnZone2) then
                 SPAWN:New("MM34BlueFor-2")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
                 end
                 if redfor:NoneInZone(MM34zone) and blufor:NoneInZone(MM34SpawnZone3) then
                 SPAWN:New("MM34BlueFor-3")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
                 end
                 if redfor:NoneInZone(MM34zone) and blufor:NoneInZone(MM34SpawnZone4) then
                 SPAWN:New("MM34BlueFor-4")
                 :InitRandomizeTemplate(BlueForSpawn)
                 :InitLimit( 6, 0 )
                 :SpawnScheduled( 5, .5 )
                 end

                 if redfor:AnyInZone(MM34zone) and blufor:NoneInZone(MM34zone) and redfor:NoneInZone(MM34SpawnZone1) then
                   SPAWN:New("MM34BlueFor-1")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if redfor:AnyInZone(MM34zone) and blufor:NoneInZone(MM34zone) and redfor:NoneInZone(MM34SpawnZone2) then
                   SPAWN:New("MM34BlueFor-2")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if redfor:AnyInZone(MM34zone) and blufor:NoneInZone(MM34zone) and redfor:NoneInZone(MM34SpawnZone3) then
                   SPAWN:New("MM34BlueFor-3")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end
                 if redfor:AnyInZone(MM34zone) and blufor:NoneInZone(MM34zone) and redfor:NoneInZone(MM34SpawnZone4) then
                   SPAWN:New("MM34BlueFor-4")
                   :InitRandomizeTemplate(RedForSpawn)
                   :InitLimit( 6, 0 )
                   :SpawnScheduled( 5, .5 )
                 end

                   if blufor:AnyInZone(MM34zone) and redfor:AnyInZone(MM34zone) then
                     return nil
                   end

       local MM45zone = ZONE:FindByName("MM45")
       MM45SpawnZone1 = ZONE:FindByName("MM45 Spawn Zone-1")
       MM45SpawnZone2 = ZONE:FindByName("MM45 Spawn Zone-2")
       MM45SpawnZone3 = ZONE:FindByName("MM45 Spawn Zone-3")
       MM45SpawnZone4 = ZONE:FindByName("MM45 Spawn Zone-4")
       if redfor:NoneInZone(MM45zone) and blufor:NoneInZone(MM45SpawnZone1) then
       SPAWN:New("MM45BlueFor-1")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM45zone) and blufor:NoneInZone(MM45SpawnZone2) then
       SPAWN:New("MM45BlueFor-2")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM45zone) and blufor:NoneInZone(MM45SpawnZone3) then
       SPAWN:New("MM45BlueFor-3")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM45zone) and blufor:NoneInZone(MM45SpawnZone4) then
       SPAWN:New("MM45BlueFor-4")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end

       if redfor:AnyInZone(MM45zone) and blufor:NoneInZone(MM45zone) and redfor:NoneInZone(MM45SpawnZone1) then
         SPAWN:New("MM45BlueFor-1")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM45zone) and blufor:NoneInZone(MM45zone) and redfor:NoneInZone(MM45SpawnZone2) then
         SPAWN:New("MM45BlueFor-2")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM45zone) and blufor:NoneInZone(MM45zone) and redfor:NoneInZone(MM45SpawnZone3) then
         SPAWN:New("MM45BlueFor-3")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM45zone) and blufor:NoneInZone(MM45zone) and redfor:NoneInZone(MM45SpawnZone4) then
         SPAWN:New("MM45BlueFor-4")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(MM45zone) and redfor:AnyInZone(MM45zone) then
           return nil
         end

         local MM44zone = ZONE:FindByName("MM44")
         MM44SpawnZone1 = ZONE:FindByName("MM44 Spawn Zone-1")
         MM44SpawnZone2 = ZONE:FindByName("MM44 Spawn Zone-2")
         MM44SpawnZone3 = ZONE:FindByName("MM44 Spawn Zone-3")
         MM44SpawnZone4 = ZONE:FindByName("MM44 Spawn Zone-4")
         if redfor:NoneInZone(MM44zone) and blufor:NoneInZone(MM44SpawnZone1) then
         SPAWN:New("MM44BlueFor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM44zone) and blufor:NoneInZone(MM44SpawnZone2) then
         SPAWN:New("MM44BlueFor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM44zone) and blufor:NoneInZone(MM44SpawnZone3) then
         SPAWN:New("MM44BlueFor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM44zone) and blufor:NoneInZone(MM44SpawnZone4) then
         SPAWN:New("MM44BlueFor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end

         if redfor:AnyInZone(MM44zone) and blufor:NoneInZone(MM44zone) and redfor:NoneInZone(MM44SpawnZone1) then
           SPAWN:New("MM44BlueFor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM44zone) and blufor:NoneInZone(MM44zone) and redfor:NoneInZone(MM44SpawnZone2) then
           SPAWN:New("MM44BlueFor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM44zone) and blufor:NoneInZone(MM44zone) and redfor:NoneInZone(MM44SpawnZone3) then
           SPAWN:New("MM44BlueFor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM44zone) and blufor:NoneInZone(MM44zone) and redfor:NoneInZone(MM44SpawnZone4) then
           SPAWN:New("MM44BlueFor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(MM44zone) and redfor:AnyInZone(MM44zone) then
             return nil
           end

           local MM43zone = ZONE:FindByName("MM43")
           MM43SpawnZone1 = ZONE:FindByName("MM43 Spawn Zone-1")
           MM43SpawnZone2 = ZONE:FindByName("MM43 Spawn Zone-2")
           MM43SpawnZone3 = ZONE:FindByName("MM43 Spawn Zone-3")
           MM43SpawnZone4 = ZONE:FindByName("MM43 Spawn Zone-4")
           if redfor:NoneInZone(MM43zone) and blufor:NoneInZone(MM43SpawnZone1) then
           SPAWN:New("MM43BlueFor-1")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM43zone) and blufor:NoneInZone(MM43SpawnZone2) then
           SPAWN:New("MM43BlueFor-2")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM43zone) and blufor:NoneInZone(MM43SpawnZone3) then
           SPAWN:New("MM43BlueFor-3")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM43zone) and blufor:NoneInZone(MM43SpawnZone4) then
           SPAWN:New("MM43BlueFor-4")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end

           if redfor:AnyInZone(MM43zone) and blufor:NoneInZone(MM43zone) and redfor:NoneInZone(MM43SpawnZone1) then
             SPAWN:New("MM43BlueFor-1")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM43zone) and blufor:NoneInZone(MM43zone) and redfor:NoneInZone(MM43SpawnZone2) then
             SPAWN:New("MM43BlueFor-2")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM43zone) and blufor:NoneInZone(MM43zone) and redfor:NoneInZone(MM43SpawnZone3) then
             SPAWN:New("MM43BlueFor-3")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM43zone) and blufor:NoneInZone(MM43zone) and redfor:NoneInZone(MM43SpawnZone4) then
             SPAWN:New("MM43BlueFor-4")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(MM43zone) and redfor:AnyInZone(MM43zone) then
               return nil
             end

     end, {}, 2 )
