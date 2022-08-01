blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }

BlueForzonetrigger1 = SCHEDULER:New(nil,
   function()
     local MM17zone = ZONE:FindByName("MM17")
     MM17SpawnZone1 = ZONE:FindByName("MM17 Spawn Zone-1")
     MM17SpawnZone2 = ZONE:FindByName("MM17 Spawn Zone-2")
     MM17SpawnZone3 = ZONE:FindByName("MM17 Spawn Zone-3")
     MM17SpawnZone4 = ZONE:FindByName("MM17 Spawn Zone-4")
     if redfor:NoneInZone(MM17zone) and blufor:NoneInZone(MM17SpawnZone1) then
     SPAWN:New("MM17BlueFor-1")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM17zone) and blufor:NoneInZone(MM17SpawnZone2) then
     SPAWN:New("MM17BlueFor-2")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM17zone) and blufor:NoneInZone(MM17SpawnZone3) then
     SPAWN:New("MM17BlueFor-3")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM17zone) and blufor:NoneInZone(MM17SpawnZone4) then
     SPAWN:New("MM17BlueFor-4")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end

     if redfor:AnyInZone(MM17zone) and blufor:NoneInZone(MM17zone) and redfor:NoneInZone(MM17SpawnZone1) then
       SPAWN:New("MM17BlueFor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM17zone) and blufor:NoneInZone(MM17zone) and redfor:NoneInZone(MM17SpawnZone2) then
       SPAWN:New("MM17BlueFor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM17zone) and blufor:NoneInZone(MM17zone) and redfor:NoneInZone(MM17SpawnZone3) then
       SPAWN:New("MM17BlueFor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM17zone) and blufor:NoneInZone(MM17zone) and redfor:NoneInZone(MM17SpawnZone4) then
       SPAWN:New("MM17BlueFor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(MM17zone) and redfor:AnyInZone(MM17zone) then
         return nil
       end

       local MM16zone = ZONE:FindByName("MM16")
       MM16SpawnZone1 = ZONE:FindByName("MM16 Spawn Zone-1")
       MM16SpawnZone2 = ZONE:FindByName("MM16 Spawn Zone-2")
       MM16SpawnZone3 = ZONE:FindByName("MM16 Spawn Zone-3")
       MM16SpawnZone4 = ZONE:FindByName("MM16 Spawn Zone-4")
       if redfor:NoneInZone(MM16zone) and blufor:NoneInZone(MM16SpawnZone1) then
       SPAWN:New("MM16Redfor-1")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM16zone) and blufor:NoneInZone(MM16SpawnZone2) then
       SPAWN:New("MM16Redfor-2")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM16zone) and blufor:NoneInZone(MM16SpawnZone3) then
       SPAWN:New("MM16Redfor-3")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM16zone) and blufor:NoneInZone(MM16SpawnZone4) then
       SPAWN:New("MM16Redfor-4")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end

       if redfor:AnyInZone(MM16zone) and blufor:NoneInZone(MM16zone) and redfor:NoneInZone(MM16SpawnZone1) then
         SPAWN:New("MM16Redfor-1")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM16zone) and blufor:NoneInZone(MM16zone) and redfor:NoneInZone(MM16SpawnZone2) then
         SPAWN:New("MM16Redfor-2")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM16zone) and blufor:NoneInZone(MM16zone) and redfor:NoneInZone(MM16SpawnZone3) then
         SPAWN:New("MM16Redfor-3")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM16zone) and blufor:NoneInZone(MM16zone) and redfor:NoneInZone(MM16SpawnZone4) then
         SPAWN:New("MM16Redfor-4")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(MM16zone) and redfor:AnyInZone(MM16zone) then
           return nil
         end

         local MM15zone = ZONE:FindByName("MM15")
         MM15SpawnZone1 = ZONE:FindByName("MM15 Spawn Zone-1")
         MM15SpawnZone2 = ZONE:FindByName("MM15 Spawn Zone-2")
         MM15SpawnZone3 = ZONE:FindByName("MM15 Spawn Zone-3")
         MM15SpawnZone4 = ZONE:FindByName("MM15 Spawn Zone-4")
         if redfor:NoneInZone(MM15zone) and blufor:NoneInZone(MM15SpawnZone1) then
         SPAWN:New("MM15Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM15zone) and blufor:NoneInZone(MM15SpawnZone2) then
         SPAWN:New("MM15Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM15zone) and blufor:NoneInZone(MM15SpawnZone3) then
         SPAWN:New("MM15Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM15zone) and blufor:NoneInZone(MM15SpawnZone4) then
         SPAWN:New("MM15Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end

         if redfor:AnyInZone(MM15zone) and blufor:NoneInZone(MM15zone) and redfor:NoneInZone(MM15SpawnZone1) then
           SPAWN:New("MM15Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM15zone) and blufor:NoneInZone(MM15zone) and redfor:NoneInZone(MM15SpawnZone2) then
           SPAWN:New("MM15Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM15zone) and blufor:NoneInZone(MM15zone) and redfor:NoneInZone(MM15SpawnZone3) then
           SPAWN:New("MM15Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM15zone) and blufor:NoneInZone(MM15zone) and redfor:NoneInZone(MM15SpawnZone4) then
           SPAWN:New("MM15Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(MM15zone) and redfor:AnyInZone(MM15zone) then
             return nil
           end

           local MM14zone = ZONE:FindByName("MM14")
           MM14SpawnZone1 = ZONE:FindByName("MM14 Spawn Zone-1")
           MM14SpawnZone2 = ZONE:FindByName("MM14 Spawn Zone-2")
           MM14SpawnZone3 = ZONE:FindByName("MM14 Spawn Zone-3")
           MM14SpawnZone4 = ZONE:FindByName("MM14 Spawn Zone-4")
           if redfor:NoneInZone(MM14zone) and blufor:NoneInZone(MM14SpawnZone1) then
           SPAWN:New("MM14Redfor-1")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM14zone) and blufor:NoneInZone(MM14SpawnZone2) then
           SPAWN:New("MM14Redfor-2")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM14zone) and blufor:NoneInZone(MM14SpawnZone3) then
           SPAWN:New("MM14Redfor-3")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM14zone) and blufor:NoneInZone(MM14SpawnZone4) then
           SPAWN:New("MM14Redfor-4")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end

           if redfor:AnyInZone(MM14zone) and blufor:NoneInZone(MM14zone) and redfor:NoneInZone(MM14SpawnZone1) then
             SPAWN:New("MM14Redfor-1")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM14zone) and blufor:NoneInZone(MM14zone) and redfor:NoneInZone(MM14SpawnZone2) then
             SPAWN:New("MM14Redfor-2")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM14zone) and blufor:NoneInZone(MM14zone) and redfor:NoneInZone(MM14SpawnZone3) then
             SPAWN:New("MM14Redfor-3")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM14zone) and blufor:NoneInZone(MM14zone) and redfor:NoneInZone(MM14SpawnZone4) then
             SPAWN:New("MM14Redfor-4")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(MM14zone) and redfor:AnyInZone(MM14zone) then
               return nil
             end

     local MM27zone = ZONE:FindByName("MM27")
     MM27SpawnZone1 = ZONE:FindByName("MM27 Spawn Zone-1")
     MM27SpawnZone2 = ZONE:FindByName("MM27 Spawn Zone-2")
     MM27SpawnZone3 = ZONE:FindByName("MM27 Spawn Zone-3")
     MM27SpawnZone4 = ZONE:FindByName("MM27 Spawn Zone-4")
     if redfor:NoneInZone(MM27zone) and blufor:NoneInZone(MM27SpawnZone1) then
     SPAWN:New("MM27BlueFor-1")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM27zone) and blufor:NoneInZone(MM27SpawnZone2) then
     SPAWN:New("MM27BlueFor-2")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM27zone) and blufor:NoneInZone(MM27SpawnZone3) then
     SPAWN:New("MM27BlueFor-3")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end
     if redfor:NoneInZone(MM27zone) and blufor:NoneInZone(MM27SpawnZone4) then
     SPAWN:New("MM27BlueFor-4")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
     end

     if redfor:AnyInZone(MM27zone) and blufor:NoneInZone(MM27zone) and redfor:NoneInZone(MM27SpawnZone1) then
       SPAWN:New("MM27BlueFor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM27zone) and blufor:NoneInZone(MM27zone) and redfor:NoneInZone(MM27SpawnZone2) then
       SPAWN:New("MM27BlueFor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM27zone) and blufor:NoneInZone(MM27zone) and redfor:NoneInZone(MM27SpawnZone3) then
       SPAWN:New("MM27BlueFor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if redfor:AnyInZone(MM27zone) and blufor:NoneInZone(MM27zone) and redfor:NoneInZone(MM27SpawnZone4) then
       SPAWN:New("MM27BlueFor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(MM27zone) and redfor:AnyInZone(MM27zone) then
         return nil
       end

       local MM26zone = ZONE:FindByName("MM26")
       MM26SpawnZone1 = ZONE:FindByName("MM26 Spawn Zone-1")
       MM26SpawnZone2 = ZONE:FindByName("MM26 Spawn Zone-2")
       MM26SpawnZone3 = ZONE:FindByName("MM26 Spawn Zone-3")
       MM26SpawnZone4 = ZONE:FindByName("MM26 Spawn Zone-4")
       if redfor:NoneInZone(MM26zone) and blufor:NoneInZone(MM26SpawnZone1) then
       SPAWN:New("MM26BlueFor-1")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM26zone) and blufor:NoneInZone(MM26SpawnZone2) then
       SPAWN:New("MM26BlueFor-2")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM26zone) and blufor:NoneInZone(MM26SpawnZone3) then
       SPAWN:New("MM26BlueFor-3")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end
       if redfor:NoneInZone(MM26zone) and blufor:NoneInZone(MM26SpawnZone4) then
       SPAWN:New("MM26BlueFor-4")
       :InitRandomizeTemplate(BlueForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
       end

       if redfor:AnyInZone(MM26zone) and blufor:NoneInZone(MM26zone) and redfor:NoneInZone(MM26SpawnZone1) then
         SPAWN:New("MM26BlueFor-1")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM26zone) and blufor:NoneInZone(MM26zone) and redfor:NoneInZone(MM26SpawnZone2) then
         SPAWN:New("MM26BlueFor-2")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM26zone) and blufor:NoneInZone(MM26zone) and redfor:NoneInZone(MM26SpawnZone3) then
         SPAWN:New("MM26BlueFor-3")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if redfor:AnyInZone(MM26zone) and blufor:NoneInZone(MM26zone) and redfor:NoneInZone(MM26SpawnZone4) then
         SPAWN:New("MM26BlueFor-4")
         :InitRandomizeTemplate(RedForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(MM26zone) and redfor:AnyInZone(MM26zone) then
           return nil
         end

         local MM25zone = ZONE:FindByName("MM25")
         MM25SpawnZone1 = ZONE:FindByName("MM25 Spawn Zone-1")
         MM25SpawnZone2 = ZONE:FindByName("MM25 Spawn Zone-2")
         MM25SpawnZone3 = ZONE:FindByName("MM25 Spawn Zone-3")
         MM25SpawnZone4 = ZONE:FindByName("MM25 Spawn Zone-4")
         if redfor:NoneInZone(MM25zone) and blufor:NoneInZone(MM25SpawnZone1) then
         SPAWN:New("MM25BlueFor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM25zone) and blufor:NoneInZone(MM25SpawnZone2) then
         SPAWN:New("MM25BlueFor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM25zone) and blufor:NoneInZone(MM25SpawnZone3) then
         SPAWN:New("MM25BlueFor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end
         if redfor:NoneInZone(MM25zone) and blufor:NoneInZone(MM25SpawnZone4) then
         SPAWN:New("MM25BlueFor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
         end

         if redfor:AnyInZone(MM25zone) and blufor:NoneInZone(MM25zone) and redfor:NoneInZone(MM25SpawnZone1) then
           SPAWN:New("MM25BlueFor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM25zone) and blufor:NoneInZone(MM25zone) and redfor:NoneInZone(MM25SpawnZone2) then
           SPAWN:New("MM25BlueFor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM25zone) and blufor:NoneInZone(MM25zone) and redfor:NoneInZone(MM25SpawnZone3) then
           SPAWN:New("MM25BlueFor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if redfor:AnyInZone(MM25zone) and blufor:NoneInZone(MM25zone) and redfor:NoneInZone(MM25SpawnZone4) then
           SPAWN:New("MM25BlueFor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(MM25zone) and redfor:AnyInZone(MM25zone) then
             return nil
           end

           local MM24zone = ZONE:FindByName("MM24")
           MM24SpawnZone1 = ZONE:FindByName("MM24 Spawn Zone-1")
           MM24SpawnZone2 = ZONE:FindByName("MM24 Spawn Zone-2")
           MM24SpawnZone3 = ZONE:FindByName("MM24 Spawn Zone-3")
           MM24SpawnZone4 = ZONE:FindByName("MM24 Spawn Zone-4")
           if redfor:NoneInZone(MM24zone) and blufor:NoneInZone(MM24SpawnZone1) then
           SPAWN:New("MM24BlueFor-1")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM24zone) and blufor:NoneInZone(MM24SpawnZone2) then
           SPAWN:New("MM24BlueFor-2")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM24zone) and blufor:NoneInZone(MM24SpawnZone3) then
           SPAWN:New("MM24BlueFor-3")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end
           if redfor:NoneInZone(MM24zone) and blufor:NoneInZone(MM24SpawnZone4) then
           SPAWN:New("MM24BlueFor-4")
           :InitRandomizeTemplate(BlueForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
           end

           if redfor:AnyInZone(MM24zone) and blufor:NoneInZone(MM24zone) and redfor:NoneInZone(MM24SpawnZone1) then
             SPAWN:New("MM24BlueFor-1")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM24zone) and blufor:NoneInZone(MM24zone) and redfor:NoneInZone(MM24SpawnZone2) then
             SPAWN:New("MM24BlueFor-2")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM24zone) and blufor:NoneInZone(MM24zone) and redfor:NoneInZone(MM24SpawnZone3) then
             SPAWN:New("MM24BlueFor-3")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if redfor:AnyInZone(MM24zone) and blufor:NoneInZone(MM24zone) and redfor:NoneInZone(MM24SpawnZone4) then
             SPAWN:New("MM24BlueFor-4")
             :InitRandomizeTemplate(RedForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(MM24zone) and redfor:AnyInZone(MM24zone) then
               return nil
             end


     end, {}, 2 )
