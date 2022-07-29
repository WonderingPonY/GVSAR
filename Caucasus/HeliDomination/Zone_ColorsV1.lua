blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()

zonecolortrigger = SCHEDULER:New(nil,
   function()


      --if KM87triggered ~= true then
        local myzone = ZONE:FindByName("KM76")
        if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
          local BlueKM76 = {}
              BlueKM76.pos = mist.getGroupPoints('KM76')
              BlueKM76.markType = 'quad'
              BlueKM76.markForCoa = 'all'
              BlueKM76.color = {0, 0, 254, 255}
              BlueKM76.fillColor = {1, 1, 254, 50}
              BlueKM76.lineType = 4
              mist.marker.add(BlueKM76)
          BASE:E(myzone.ZoneName.. "  BluFor Controlled ")
          --MESSAGE:New(myzone.ZoneName.." under attack" ,5):ToAll()
          --MESSAGE:New("zone under attack" ,5):ToAll()
        else--KM87triggered = true
          if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
            local RedKM76 = {}
                RedKM76.pos = mist.getGroupPoints('KM76')
                RedKM76.markType = 'quad'
                RedKM76.markForCoa = 'all'
                RedKM76.color = {255, 0, 0, 255}
                RedKM76.fillColor = {254, 0, 0, 50}
                RedKM76.lineType = 4
                mist.marker.add(RedKM76)
            BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
          else
            if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
              local ContKM76 = {}
                  ContKM76.pos = mist.getGroupPoints('KM76')
                  ContKM76.markType = 'quad'
                  ContKM76.markForCoa = 'all'
                  ContKM76.color = {0, 0, 0, 255}
                  ContKM76.fillColor = {0, 0, 0, 50}
                  ContKM76.lineType = 4
                  mist.marker.add(ContKM76)
              BASE:E(myzone.ZoneName.. "  Contested ")
            --MESSAGE:New(myzone.ZoneName.." under attack" ,5):ToAll()
            --MESSAGE:New("zone under attack" ,5):ToAll()
            --KM87triggered = true
          end
        end
      end

      -- if zone2triggered ~= true then
      --   local myzone = ZONE:FindByName("zone2")
      --   if blufor:AnyInZone(myzone) then
      --     BASE:E(myzone.ZoneName.. "  Infiltrated ")
      --     MESSAGE:New(myzone.ZoneName.." under attack" ,5):ToAll()
      --     MESSAGE:New("zone under attack" ,5):ToAll()
      --     zone2triggered = true
      --   end
      -- end

  end, {}, 1, 5)
