blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()

zonecolortrigger = SCHEDULER:New(nil,
   function()

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
        --  BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

        else
          if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
            local RedKM76 = {}
                RedKM76.pos = mist.getGroupPoints('KM76')
                RedKM76.markType = 'quad'
                RedKM76.markForCoa = 'all'
                RedKM76.color = {255, 0, 0, 255}
                RedKM76.fillColor = {254, 0, 0, 50}
                RedKM76.lineType = 4
                mist.marker.add(RedKM76)
          --  BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
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
            --  BASE:E(myzone.ZoneName.. "  Contested ")

          end
        end
      end

      local myzone = ZONE:FindByName("KM77")
      if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
        local BlueKM77 = {}
            BlueKM77.pos = mist.getGroupPoints('KM77')
            BlueKM77.markType = 'quad'
            BlueKM77.markForCoa = 'all'
            BlueKM77.color = {0, 0, 254, 255}
            BlueKM77.fillColor = {1, 1, 254, 50}
            BlueKM77.lineType = 4
            mist.marker.add(BlueKM77)
        --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

      else
        if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
          local RedKM77 = {}
              RedKM77.pos = mist.getGroupPoints('KM77')
              RedKM77.markType = 'quad'
              RedKM77.markForCoa = 'all'
              RedKM77.color = {255, 0, 0, 255}
              RedKM77.fillColor = {254, 0, 0, 50}
              RedKM77.lineType = 4
              mist.marker.add(RedKM77)
          --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
        else
          if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
            local ContKM77 = {}
                ContKM77.pos = mist.getGroupPoints('KM77')
                ContKM77.markType = 'quad'
                ContKM77.markForCoa = 'all'
                ContKM77.color = {0, 0, 0, 255}
                ContKM77.fillColor = {0, 0, 0, 50}
                ContKM77.lineType = 4
                mist.marker.add(ContKM77)
            --BASE:E(myzone.ZoneName.. "  Contested ")

        end
      end
    end

    local myzone = ZONE:FindByName("KM78")
    if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
      local BlueKM76 = {}
          BlueKM76.pos = mist.getGroupPoints('KM78')
          BlueKM76.markType = 'quad'
          BlueKM76.markForCoa = 'all'
          BlueKM76.color = {0, 0, 254, 255}
          BlueKM76.fillColor = {1, 1, 254, 50}
          BlueKM76.lineType = 4
          mist.marker.add(BlueKM76)
      --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

    else
      if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
        local RedKM76 = {}
            RedKM76.pos = mist.getGroupPoints('KM78')
            RedKM76.markType = 'quad'
            RedKM76.markForCoa = 'all'
            RedKM76.color = {255, 0, 0, 255}
            RedKM76.fillColor = {254, 0, 0, 50}
            RedKM76.lineType = 4
            mist.marker.add(RedKM76)
        --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
      else
        if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
          local ContKM76 = {}
              ContKM76.pos = mist.getGroupPoints('KM78')
              ContKM76.markType = 'quad'
              ContKM76.markForCoa = 'all'
              ContKM76.color = {0, 0, 0, 255}
              ContKM76.fillColor = {0, 0, 0, 50}
              ContKM76.lineType = 4
              mist.marker.add(ContKM76)
          --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end

  local myzone = ZONE:FindByName("KM88")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueKM76 = {}
        BlueKM76.pos = mist.getGroupPoints('KM88')
        BlueKM76.markType = 'quad'
        BlueKM76.markForCoa = 'all'
        BlueKM76.color = {0, 0, 254, 255}
        BlueKM76.fillColor = {1, 1, 254, 50}
        BlueKM76.lineType = 4
        mist.marker.add(BlueKM76)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedKM76 = {}
          RedKM76.pos = mist.getGroupPoints('KM88')
          RedKM76.markType = 'quad'
          RedKM76.markForCoa = 'all'
          RedKM76.color = {255, 0, 0, 255}
          RedKM76.fillColor = {254, 0, 0, 50}
          RedKM76.lineType = 4
          mist.marker.add(RedKM76)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContKM76 = {}
            ContKM76.pos = mist.getGroupPoints('KM88')
            ContKM76.markType = 'quad'
            ContKM76.markForCoa = 'all'
            ContKM76.color = {0, 0, 0, 255}
            ContKM76.fillColor = {0, 0, 0, 50}
            ContKM76.lineType = 4
            mist.marker.add(ContKM76)
        --BASE:E(myzone.ZoneName.. "  Contested ")

    end
  end
end

local myzone = ZONE:FindByName("KM87")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('KM87')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('KM87')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('KM87')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("KM86")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('KM86')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('KM86')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('KM86')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("KM86")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('KM86')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('KM86')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('KM86')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("KM98")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('KM98')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('KM98')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('KM98')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("KM97")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('KM97')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('KM97')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('KM97')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("KM96")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('KM96')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('KM96')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('KM96')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM08")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM08')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM08')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM08')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM07")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM07')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM07')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM07')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM06")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM06')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM06')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM06')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM18")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM18')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM18')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM18')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM17")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM17')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM17')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM17')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM16")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM16')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM16')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM16')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM28")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM28')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM28')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM28')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM27")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM27')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM27')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM27')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM26")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM26')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM26')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM26')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM25")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM25')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM25')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM25')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM38")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM38')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM38')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM38')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM37")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM37')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM37')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM37')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM36")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM36')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM36')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM36')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM35")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM35')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM35')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM35')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM48")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM48')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM48')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM48')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM47")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM47')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM47')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM47')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM46")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM46')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM46')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM46')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM45")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM45')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM45')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM45')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM58")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM58')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM58')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM58')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM57")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM57')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM57')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM57')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM56")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM56')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM56')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM56')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM55")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM55')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM55')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM55')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM54")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM54')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM54')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM54')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM68")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM68')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM68')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM68')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM67")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM67')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM67')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM67')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM66")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM66')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM66')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM66')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM65")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM65')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM65')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM65')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM64")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM64')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM64')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM64')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM78")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM78')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM78')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM78')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM77")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM77')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM77')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM77')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM76")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM76')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM76')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM76')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM75")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM75')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM75')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM75')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM74")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM74')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM74')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM74')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM88")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM88')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM88')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM88')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM87")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM87')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM87')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM87')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM86")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM86')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM86')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM86')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM85")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM85')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM85')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM85')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM84")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM84')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM84')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM84')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM98")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM98')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM98')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM98')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM97")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM97')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM97')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM97')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM96")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM96')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM96')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM96')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("LM95")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('LM95')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('LM95')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('LM95')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM07")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM07')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM07')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM07')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM06")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM06')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM06')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM06')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM05")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM05')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM05')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM05')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM04")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM04')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM04')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM04')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM17")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM17')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM17')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM17')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM16")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM16')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM16')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM16')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM15")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM15')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM15')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM15')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM14")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM14')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM14')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM14')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM27")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM27')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM27')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM27')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM26")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM26')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM26')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM26')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM25")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM25')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM25')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM25')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM24")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM24')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM24')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM24')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM36")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM36')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM36')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM36')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM35")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM35')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM35')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM35')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM34")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM34')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM34')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM34')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM45")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM45')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM45')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM45')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM44")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM44')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM44')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM44')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM43")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM43')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM43')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM43')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM55")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM55')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM55')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM55')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM54")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM54')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM54')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM54')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM53")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM53')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM53')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM53')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM65")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM65')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM65')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM65')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM64")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM64')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM64')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM64')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM63")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM63')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM63')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM63')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM75")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM75')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM75')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM75')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM74")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM74')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM74')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM74')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM73")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM73')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM73')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM73')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM72")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM72')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM72')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM72')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM84")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM84')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM84')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM84')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM83")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM83')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM83')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM83')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end

local myzone = ZONE:FindByName("MM82")
if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
  local BlueKM76 = {}
      BlueKM76.pos = mist.getGroupPoints('MM82')
      BlueKM76.markType = 'quad'
      BlueKM76.markForCoa = 'all'
      BlueKM76.color = {0, 0, 254, 255}
      BlueKM76.fillColor = {1, 1, 254, 50}
      BlueKM76.lineType = 4
      mist.marker.add(BlueKM76)
  --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

else
  if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
    local RedKM76 = {}
        RedKM76.pos = mist.getGroupPoints('MM82')
        RedKM76.markType = 'quad'
        RedKM76.markForCoa = 'all'
        RedKM76.color = {255, 0, 0, 255}
        RedKM76.fillColor = {254, 0, 0, 50}
        RedKM76.lineType = 4
        mist.marker.add(RedKM76)
    --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
  else
    if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
      local ContKM76 = {}
          ContKM76.pos = mist.getGroupPoints('MM82')
          ContKM76.markType = 'quad'
          ContKM76.markForCoa = 'all'
          ContKM76.color = {0, 0, 0, 255}
          ContKM76.fillColor = {0, 0, 0, 50}
          ContKM76.lineType = 4
          mist.marker.add(ContKM76)
      --BASE:E(myzone.ZoneName.. "  Contested ")

  end
end
end



  end, {}, 1, 5)
