blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueForSpawn = {"Blue Spawn-1","Blue Spawn-2","Blue Spawn-3","Blue Spawn-4","Blue Spawn-5","Blue Spawn-6","Blue Spawn-7","Blue Spawn-8","Blue Spawn-9","Blue Spawn-10", }
RedForSpawn = {"Red Spawn-1","Red Spawn-2","Red Spawn-3","Red Spawn-4","Red Spawn-5","Red Spawn-6","Red Spawn-7","Red Spawn-8","Red Spawn-9","Red Spawn-10", }


RedForzonetrigger4 = SCHEDULER:New(nil,
   function()
     local KM76zone = ZONE:FindByName("KM76")
     KM76SpawnZone1 = ZONE:FindByName("KM76 Spawn Zone-1")
     KM76SpawnZone2 = ZONE:FindByName("KM76 Spawn Zone-2")
     KM76SpawnZone3 = ZONE:FindByName("KM76 Spawn Zone-3")
     KM76SpawnZone4 = ZONE:FindByName("KM76 Spawn Zone-4")
     if blufor:NoneInZone(KM76zone) and redfor:NoneInZone(KM76SpawnZone1) then
       SPAWN:New("KM76Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM76zone) and redfor:NoneInZone(KM76SpawnZone2) then
       SPAWN:New("KM76Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM76zone) and redfor:NoneInZone(KM76SpawnZone3) then
       SPAWN:New("KM76Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM76zone) and redfor:NoneInZone(KM76SpawnZone4) then
       SPAWN:New("KM76Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(KM76zone) and redfor:NoneInZone(KM76zone) and blufor:NoneInZone(KM76SpawnZone1) then
         SPAWN:New("KM76Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM76zone) and redfor:NoneInZone(KM76zone) and blufor:NoneInZone(KM76SpawnZone2) then
         SPAWN:New("KM76Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM76zone) and redfor:NoneInZone(KM76zone) and blufor:NoneInZone(KM76SpawnZone3) then
         SPAWN:New("KM76Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM76zone) and redfor:NoneInZone(KM76zone) and blufor:NoneInZone(KM76SpawnZone4) then
         SPAWN:New("KM76Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(KM76zone) and redfor:AnyInZone(KM76zone) then
           return nil
         end


     local KM77zone = ZONE:FindByName("KM77")
     KM77SpawnZone1 = ZONE:FindByName("KM77 Spawn Zone-1")
     KM77SpawnZone2 = ZONE:FindByName("KM77 Spawn Zone-2")
     KM77SpawnZone3 = ZONE:FindByName("KM77 Spawn Zone-3")
     KM77SpawnZone4 = ZONE:FindByName("KM77 Spawn Zone-4")
     if blufor:NoneInZone(KM77zone) and redfor:NoneInZone(KM77SpawnZone1) then
       SPAWN:New("KM77Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM77zone) and redfor:NoneInZone(KM77SpawnZone2) then
       SPAWN:New("KM77Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM77zone) and redfor:NoneInZone(KM77SpawnZone3) then
       SPAWN:New("KM77Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM77zone) and redfor:NoneInZone(KM77SpawnZone4) then
       SPAWN:New("KM77Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(KM77zone) and redfor:NoneInZone(KM77zone) and blufor:NoneInZone(KM77SpawnZone1) then
         SPAWN:New("KM77Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM77zone) and redfor:NoneInZone(KM77zone) and blufor:NoneInZone(KM77SpawnZone2) then
         SPAWN:New("KM77Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM77zone) and redfor:NoneInZone(KM77zone) and blufor:NoneInZone(KM77SpawnZone3) then
         SPAWN:New("KM77Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM77zone) and redfor:NoneInZone(KM77zone) and blufor:NoneInZone(KM77SpawnZone4) then
         SPAWN:New("KM77Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(KM77zone) and redfor:AnyInZone(KM77zone) then
           return nil
         end

         local KM78zone = ZONE:FindByName("KM78")
         KM78SpawnZone1 = ZONE:FindByName("KM78 Spawn Zone-1")
         KM78SpawnZone2 = ZONE:FindByName("KM78 Spawn Zone-2")
         KM78SpawnZone3 = ZONE:FindByName("KM78 Spawn Zone-3")
         KM78SpawnZone4 = ZONE:FindByName("KM78 Spawn Zone-4")
         if blufor:NoneInZone(KM78zone) and redfor:NoneInZone(KM78SpawnZone1) then
           SPAWN:New("KM78Redfor-1")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(KM78zone) and redfor:NoneInZone(KM78SpawnZone2) then
           SPAWN:New("KM78Redfor-2")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(KM78zone) and redfor:NoneInZone(KM78SpawnZone3) then
           SPAWN:New("KM78Redfor-3")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end
         if blufor:NoneInZone(KM78zone) and redfor:NoneInZone(KM78SpawnZone4) then
           SPAWN:New("KM78Redfor-4")
           :InitRandomizeTemplate(RedForSpawn)
           :InitLimit( 6, 0 )
           :SpawnScheduled( 5, .5 )
         end

           if blufor:AnyInZone(KM78zone) and redfor:NoneInZone(KM78zone) and blufor:NoneInZone(KM78SpawnZone1) then
             SPAWN:New("KM78Redfor-1")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(KM78zone) and redfor:NoneInZone(KM78zone) and blufor:NoneInZone(KM78SpawnZone2) then
             SPAWN:New("KM78Redfor-2")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(KM78zone) and redfor:NoneInZone(KM78zone) and blufor:NoneInZone(KM78SpawnZone3) then
             SPAWN:New("KM78Redfor-3")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end
           if blufor:AnyInZone(KM78zone) and redfor:NoneInZone(KM78zone) and blufor:NoneInZone(KM78SpawnZone4) then
             SPAWN:New("KM78Redfor-4")
             :InitRandomizeTemplate(BlueForSpawn)
             :InitLimit( 6, 0 )
             :SpawnScheduled( 5, .5 )
           end

             if blufor:AnyInZone(KM78zone) and redfor:AnyInZone(KM78zone) then
               return nil
             end

local KM88zone = ZONE:FindByName("KM88")
KM88SpawnZone1 = ZONE:FindByName("KM88 Spawn Zone-1")
KM88SpawnZone2 = ZONE:FindByName("KM88 Spawn Zone-2")
KM88SpawnZone3 = ZONE:FindByName("KM88 Spawn Zone-3")
KM88SpawnZone4 = ZONE:FindByName("KM88 Spawn Zone-4")
if blufor:NoneInZone(KM88zone) and redfor:NoneInZone(KM88SpawnZone1) then
SPAWN:New("KM88Redfor-1")
:InitRandomizeTemplate(RedForSpawn)
:InitLimit( 6, 0 )
:SpawnScheduled( 5, .5 )
end
if blufor:NoneInZone(KM88zone) and redfor:NoneInZone(KM88SpawnZone2) then
SPAWN:New("KM88Redfor-2")
:InitRandomizeTemplate(RedForSpawn)
:InitLimit( 6, 0 )
:SpawnScheduled( 5, .5 )
end
if blufor:NoneInZone(KM88zone) and redfor:NoneInZone(KM88SpawnZone3) then
SPAWN:New("KM88Redfor-3")
:InitRandomizeTemplate(RedForSpawn)
:InitLimit( 6, 0 )
:SpawnScheduled( 5, .5 )
end
if blufor:NoneInZone(KM88zone) and redfor:NoneInZone(KM88SpawnZone4) then
SPAWN:New("KM88Redfor-4")
:InitRandomizeTemplate(RedForSpawn)
:InitLimit( 6, 0 )
:SpawnScheduled( 5, .5 )
end

if blufor:AnyInZone(KM88zone) and redfor:NoneInZone(KM88zone) and blufor:NoneInZone(KM88SpawnZone1) then
 SPAWN:New("KM88Redfor-1")
 :InitRandomizeTemplate(BlueForSpawn)
 :InitLimit( 6, 0 )
 :SpawnScheduled( 5, .5 )
end
if blufor:AnyInZone(KM88zone) and redfor:NoneInZone(KM88zone) and blufor:NoneInZone(KM88SpawnZone2) then
 SPAWN:New("KM88Redfor-2")
 :InitRandomizeTemplate(BlueForSpawn)
 :InitLimit( 6, 0 )
 :SpawnScheduled( 5, .5 )
end
if blufor:AnyInZone(KM88zone) and redfor:NoneInZone(KM88zone) and blufor:NoneInZone(KM88SpawnZone3) then
 SPAWN:New("KM88Redfor-3")
 :InitRandomizeTemplate(BlueForSpawn)
 :InitLimit( 6, 0 )
 :SpawnScheduled( 5, .5 )
end
if blufor:AnyInZone(KM88zone) and redfor:NoneInZone(KM88zone) and blufor:NoneInZone(KM88SpawnZone4) then
 SPAWN:New("KM88Redfor-4")
 :InitRandomizeTemplate(BlueForSpawn)
 :InitLimit( 6, 0 )
 :SpawnScheduled( 5, .5 )
end

 if blufor:AnyInZone(KM88zone) and redfor:AnyInZone(KM88zone) then
   return nil
 end

 local KM87zone = ZONE:FindByName("KM87")
 KM87SpawnZone1 = ZONE:FindByName("KM87 Spawn Zone-1")
 KM87SpawnZone2 = ZONE:FindByName("KM87 Spawn Zone-2")
 KM87SpawnZone3 = ZONE:FindByName("KM87 Spawn Zone-3")
 KM87SpawnZone4 = ZONE:FindByName("KM87 Spawn Zone-4")
 if blufor:NoneInZone(KM87zone) and redfor:NoneInZone(KM87SpawnZone1) then
   SPAWN:New("KM87Redfor-1")
   :InitRandomizeTemplate(RedForSpawn)
   :InitLimit( 6, 0 )
   :SpawnScheduled( 5, .5 )
 end
 if blufor:NoneInZone(KM87zone) and redfor:NoneInZone(KM87SpawnZone2) then
   SPAWN:New("KM87Redfor-2")
   :InitRandomizeTemplate(RedForSpawn)
   :InitLimit( 6, 0 )
   :SpawnScheduled( 5, .5 )
 end
 if blufor:NoneInZone(KM87zone) and redfor:NoneInZone(KM87SpawnZone3) then
   SPAWN:New("KM87Redfor-3")
   :InitRandomizeTemplate(RedForSpawn)
   :InitLimit( 6, 0 )
   :SpawnScheduled( 5, .5 )
 end
 if blufor:NoneInZone(KM87zone) and redfor:NoneInZone(KM87SpawnZone4) then
   SPAWN:New("KM87Redfor-4")
   :InitRandomizeTemplate(RedForSpawn)
   :InitLimit( 6, 0 )
   :SpawnScheduled( 5, .5 )
 end

   if blufor:AnyInZone(KM87zone) and redfor:NoneInZone(KM87zone) and blufor:NoneInZone(KM87SpawnZone1) then
     SPAWN:New("KM87Redfor-1")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
   end
   if blufor:AnyInZone(KM87zone) and redfor:NoneInZone(KM87zone) and blufor:NoneInZone(KM87SpawnZone2) then
     SPAWN:New("KM87Redfor-2")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
   end
   if blufor:AnyInZone(KM87zone) and redfor:NoneInZone(KM87zone) and blufor:NoneInZone(KM87SpawnZone3) then
     SPAWN:New("KM87Redfor-3")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
   end
   if blufor:AnyInZone(KM87zone) and redfor:NoneInZone(KM87zone) and blufor:NoneInZone(KM87SpawnZone4) then
     SPAWN:New("KM87Redfor-4")
     :InitRandomizeTemplate(BlueForSpawn)
     :InitLimit( 6, 0 )
     :SpawnScheduled( 5, .5 )
   end

     if blufor:AnyInZone(KM87zone) and redfor:AnyInZone(KM87zone) then
       return nil
     end

     local KM86zone = ZONE:FindByName("KM86")
     KM86SpawnZone1 = ZONE:FindByName("KM86 Spawn Zone-1")
     KM86SpawnZone2 = ZONE:FindByName("KM86 Spawn Zone-2")
     KM86SpawnZone3 = ZONE:FindByName("KM86 Spawn Zone-3")
     KM86SpawnZone4 = ZONE:FindByName("KM86 Spawn Zone-4")
     if blufor:NoneInZone(KM86zone) and redfor:NoneInZone(KM86SpawnZone1) then
       SPAWN:New("KM86Redfor-1")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM86zone) and redfor:NoneInZone(KM86SpawnZone2) then
       SPAWN:New("KM86Redfor-2")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM86zone) and redfor:NoneInZone(KM86SpawnZone3) then
       SPAWN:New("KM86Redfor-3")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end
     if blufor:NoneInZone(KM86zone) and redfor:NoneInZone(KM86SpawnZone4) then
       SPAWN:New("KM86Redfor-4")
       :InitRandomizeTemplate(RedForSpawn)
       :InitLimit( 6, 0 )
       :SpawnScheduled( 5, .5 )
     end

       if blufor:AnyInZone(KM86zone) and redfor:NoneInZone(KM86zone) and blufor:NoneInZone(KM86SpawnZone1) then
         SPAWN:New("KM86Redfor-1")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM86zone) and redfor:NoneInZone(KM86zone) and blufor:NoneInZone(KM86SpawnZone2) then
         SPAWN:New("KM86Redfor-2")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM86zone) and redfor:NoneInZone(KM86zone) and blufor:NoneInZone(KM86SpawnZone3) then
         SPAWN:New("KM86Redfor-3")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end
       if blufor:AnyInZone(KM86zone) and redfor:NoneInZone(KM86zone) and blufor:NoneInZone(KM86SpawnZone4) then
         SPAWN:New("KM86Redfor-4")
         :InitRandomizeTemplate(BlueForSpawn)
         :InitLimit( 6, 0 )
         :SpawnScheduled( 5, .5 )
       end

         if blufor:AnyInZone(KM86zone) and redfor:AnyInZone(KM86zone) then
           return nil
         end


     end, {}, 2 )
