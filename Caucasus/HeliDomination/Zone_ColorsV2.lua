blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()

function KM76zonecolor()
  env.info("KM76zonecolor FUNCTION STARTED")
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
  end
      timer.scheduleFunction(KM76zonecolor, 53, timer.getTime{}+40)
      env.info("----------------------------KM76zonecolor TIMER STARTED--------------------------")

function KM77zonecolor()
  env.info("KM77zonecolor FUNCTION STARTED")
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
end
      timer.scheduleFunction(KM77zonecolor, 53, timer.getTime{}+41)
      env.info("----------------------------KM77zonecolor TIMER STARTED--------------------------")

function KM78zonecolor()
  env.info("KM78zonecolor FUNCTION STARTED")
    local myzone = ZONE:FindByName("KM78")
    if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
      local BlueKM78 = {}
          BlueKM78.pos = mist.getGroupPoints('KM78')
          BlueKM78.markType = 'quad'
          BlueKM78.markForCoa = 'all'
          BlueKM78.color = {0, 0, 254, 255}
          BlueKM78.fillColor = {1, 1, 254, 50}
          BlueKM78.lineType = 4
          mist.marker.add(BlueKM78)
      --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

    else
      if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
        local RedKM78 = {}
            RedKM78.pos = mist.getGroupPoints('KM78')
            RedKM78.markType = 'quad'
            RedKM78.markForCoa = 'all'
            RedKM78.color = {255, 0, 0, 255}
            RedKM78.fillColor = {254, 0, 0, 50}
            RedKM78.lineType = 4
            mist.marker.add(RedKM78)
        --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
      else
        if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
          local ContKM78 = {}
              ContKM78.pos = mist.getGroupPoints('KM78')
              ContKM78.markType = 'quad'
              ContKM78.markForCoa = 'all'
              ContKM78.color = {0, 0, 0, 255}
              ContKM78.fillColor = {0, 0, 0, 50}
              ContKM78.lineType = 4
              mist.marker.add(ContKM78)
          --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(KM78zonecolor, 53, timer.getTime{}+42)
      env.info("----------------------------KM78zonecolor TIMER STARTED--------------------------")


function KM88zonecolor()
  env.info("KM88zonecolor FUNCTION STARTED")
  local myzone = ZONE:FindByName("KM88")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
        local BlueKM88 = {}
        BlueKM88.pos = mist.getGroupPoints('KM88')
        BlueKM88.markType = 'quad'
        BlueKM88.markForCoa = 'all'
        BlueKM88.color = {0, 0, 254, 255}
        BlueKM88.fillColor = {1, 1, 254, 50}
        BlueKM88.lineType = 4
        mist.marker.add(BlueKM88)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
      if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
          local RedKM88 = {}
          RedKM88.pos = mist.getGroupPoints('KM88')
          RedKM88.markType = 'quad'
          RedKM88.markForCoa = 'all'
          RedKM88.color = {255, 0, 0, 255}
          RedKM88.fillColor = {254, 0, 0, 50}
          RedKM88.lineType = 4
          mist.marker.add(RedKM88)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
          if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
            local ContKM88 = {}
            ContKM88.pos = mist.getGroupPoints('KM88')
            ContKM88.markType = 'quad'
            ContKM88.markForCoa = 'all'
            ContKM88.color = {0, 0, 0, 255}
            ContKM88.fillColor = {0, 0, 0, 50}
            ContKM88.lineType = 4
            mist.marker.add(ContKM88)
        --BASE:E(myzone.ZoneName.. "  Contested ")

          end
        end
      end
end
      timer.scheduleFunction(KM88zonecolor, 53, timer.getTime{}+43)
      env.info("----------------------------KM88zonecolor TIMER STARTED--------------------------")

function KM87zonecolor()
  env.info("KM87zonecolor FUNCTION STARTED")
    local myzone = ZONE:FindByName("KM87")
    if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
          local BlueKM87 = {}
          BlueKM87.pos = mist.getGroupPoints('KM87')
          BlueKM87.markType = 'quad'
          BlueKM87.markForCoa = 'all'
          BlueKM87.color = {0, 0, 254, 255}
          BlueKM87.fillColor = {1, 1, 254, 50}
          BlueKM87.lineType = 4
          mist.marker.add(BlueKM87)
      --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

    else
      if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
            local RedKM87 = {}
            RedKM87.pos = mist.getGroupPoints('KM87')
            RedKM87.markType = 'quad'
            RedKM87.markForCoa = 'all'
            RedKM87.color = {255, 0, 0, 255}
            RedKM87.fillColor = {254, 0, 0, 50}
            RedKM87.lineType = 4
            mist.marker.add(RedKM87)
        --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
      else
        if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
              local ContKM87 = {}
              ContKM87.pos = mist.getGroupPoints('KM87')
              ContKM87.markType = 'quad'
              ContKM87.markForCoa = 'all'
              ContKM87.color = {0, 0, 0, 255}
              ContKM87.fillColor = {0, 0, 0, 50}
              ContKM87.lineType = 4
              mist.marker.add(ContKM87)
          --BASE:E(myzone.ZoneName.. "  Contested ")

        end
      end
    end
end
      timer.scheduleFunction(KM87zonecolor, 53, timer.getTime{}+44)
      env.info("----------------------------KM87zonecolor TIMER STARTED--------------------------")


function KM86zonecolor()
  env.info("KM86zonecolor FUNCTION STARTED")
  local myzone = ZONE:FindByName("KM86")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueKM86 = {}
        BlueKM86.pos = mist.getGroupPoints('KM86')
        BlueKM86.markType = 'quad'
        BlueKM86.markForCoa = 'all'
        BlueKM86.color = {0, 0, 254, 255}
        BlueKM86.fillColor = {1, 1, 254, 50}
        BlueKM86.lineType = 4
        mist.marker.add(BlueKM86)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedKM86 = {}
          RedKM86.pos = mist.getGroupPoints('KM86')
          RedKM86.markType = 'quad'
          RedKM86.markForCoa = 'all'
          RedKM86.color = {255, 0, 0, 255}
          RedKM86.fillColor = {254, 0, 0, 50}
          RedKM86.lineType = 4
          mist.marker.add(RedKM86)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContKM86 = {}
            ContKM86.pos = mist.getGroupPoints('KM86')
            ContKM86.markType = 'quad'
            ContKM86.markForCoa = 'all'
            ContKM86.color = {0, 0, 0, 255}
            ContKM86.fillColor = {0, 0, 0, 50}
            ContKM86.lineType = 4
            mist.marker.add(ContKM86)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(KM86zonecolor, 53, timer.getTime{}+45)
      env.info("----------------------------KM86zonecolor TIMER STARTED--------------------------")


function KM98zonecolor()
  env.info("KM98zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("KM98")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueKM98 = {}
        BlueKM98.pos = mist.getGroupPoints('KM98')
        BlueKM98.markType = 'quad'
        BlueKM98.markForCoa = 'all'
        BlueKM98.color = {0, 0, 254, 255}
        BlueKM98.fillColor = {1, 1, 254, 50}
        BlueKM98.lineType = 4
        mist.marker.add(BlueKM98)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedKM98 = {}
          RedKM98.pos = mist.getGroupPoints('KM98')
          RedKM98.markType = 'quad'
          RedKM98.markForCoa = 'all'
          RedKM98.color = {255, 0, 0, 255}
          RedKM98.fillColor = {254, 0, 0, 50}
          RedKM98.lineType = 4
          mist.marker.add(RedKM98)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContKM98 = {}
            ContKM98.pos = mist.getGroupPoints('KM98')
            ContKM98.markType = 'quad'
            ContKM98.markForCoa = 'all'
            ContKM98.color = {0, 0, 0, 255}
            ContKM98.fillColor = {0, 0, 0, 50}
            ContKM98.lineType = 4
            mist.marker.add(ContKM98)
        --BASE:E(myzone.ZoneName.. "  Contested ")

        end
      end
    end
end
      timer.scheduleFunction(KM98zonecolor, 53, timer.getTime{}+46)
      env.info("----------------------------KM98zonecolor TIMER STARTED--------------------------")


function KM97zonecolor()
  env.info("KM97zonecolor FUNCTION STARTED")
  local myzone = ZONE:FindByName("KM97")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueKM97 = {}
        BlueKM97.pos = mist.getGroupPoints('KM97')
        BlueKM97.markType = 'quad'
        BlueKM97.markForCoa = 'all'
        BlueKM97.color = {0, 0, 254, 255}
        BlueKM97.fillColor = {1, 1, 254, 50}
        BlueKM97.lineType = 4
        mist.marker.add(BlueKM97)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedKM97 = {}
          RedKM97.pos = mist.getGroupPoints('KM97')
          RedKM97.markType = 'quad'
          RedKM97.markForCoa = 'all'
          RedKM97.color = {255, 0, 0, 255}
          RedKM97.fillColor = {254, 0, 0, 50}
          RedKM97.lineType = 4
          mist.marker.add(RedKM97)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContKM97 = {}
            ContKM97.pos = mist.getGroupPoints('KM97')
            ContKM97.markType = 'quad'
            ContKM97.markForCoa = 'all'
            ContKM97.color = {0, 0, 0, 255}
            ContKM97.fillColor = {0, 0, 0, 50}
            ContKM97.lineType = 4
            mist.marker.add(ContKM97)
        --BASE:E(myzone.ZoneName.. "  Contested ")

        end
      end
    end
  end
        timer.scheduleFunction(KM97zonecolor, 53, timer.getTime{}+47)
        env.info("----------------------------KM97zonecolor TIMER STARTED--------------------------")


function KM96zonecolor()
  env.info("KM96zonecolor FUNCTION STARTED")
  local myzone = ZONE:FindByName("KM96")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueKM96 = {}
        BlueKM96.pos = mist.getGroupPoints('KM96')
        BlueKM96.markType = 'quad'
        BlueKM96.markForCoa = 'all'
        BlueKM96.color = {0, 0, 254, 255}
        BlueKM96.fillColor = {1, 1, 254, 50}
        BlueKM96.lineType = 4
        mist.marker.add(BlueKM96)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedKM96 = {}
          RedKM96.pos = mist.getGroupPoints('KM96')
          RedKM96.markType = 'quad'
          RedKM96.markForCoa = 'all'
          RedKM96.color = {255, 0, 0, 255}
          RedKM96.fillColor = {254, 0, 0, 50}
          RedKM96.lineType = 4
          mist.marker.add(RedKM96)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContKM96 = {}
            ContKM96.pos = mist.getGroupPoints('KM96')
            ContKM96.markType = 'quad'
            ContKM96.markForCoa = 'all'
            ContKM96.color = {0, 0, 0, 255}
            ContKM96.fillColor = {0, 0, 0, 50}
            ContKM96.lineType = 4
            mist.marker.add(ContKM96)
        --BASE:E(myzone.ZoneName.. "  Contested ")

        end
      end
    end
  end
        timer.scheduleFunction(KM96zonecolor, 53, timer.getTime{}+48)
        env.info("----------------------------KM96zonecolor TIMER STARTED--------------------------")


function LM08zonecolor()
  env.info("LM08zonecolor FUNCTION STARTED")
  local myzone = ZONE:FindByName("LM08")
    if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
      local BlueLM08 = {}
          BlueLM08.pos = mist.getGroupPoints('LM08')
          BlueLM08.markType = 'quad'
          BlueLM08.markForCoa = 'all'
          BlueLM08.color = {0, 0, 254, 255}
          BlueLM08.fillColor = {1, 1, 254, 50}
          BlueLM08.lineType = 4
          mist.marker.add(BlueLM08)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

    else
      if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
        local RedLM08 = {}
            RedLM08.pos = mist.getGroupPoints('LM08')
            RedLM08.markType = 'quad'
            RedLM08.markForCoa = 'all'
            RedLM08.color = {255, 0, 0, 255}
            RedLM08.fillColor = {254, 0, 0, 50}
            RedLM08.lineType = 4
            mist.marker.add(RedLM08)
        --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
      else
        if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
          local ContLM08 = {}
              ContLM08.pos = mist.getGroupPoints('LM08')
              ContLM08.markType = 'quad'
              ContLM08.markForCoa = 'all'
              ContLM08.color = {0, 0, 0, 255}
              ContLM08.fillColor = {0, 0, 0, 50}
              ContLM08.lineType = 4
              mist.marker.add(ContLM08)
          --BASE:E(myzone.ZoneName.. "  Contested ")

          end
        end
      end
    end
          timer.scheduleFunction(LM08zonecolor, 53, timer.getTime{}+49)
          env.info("----------------------------LM08zonecolor TIMER STARTED--------------------------")


function LM07zonecolor()
  env.info("LM07zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM07")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM07 = {}
        BlueLM07.pos = mist.getGroupPoints('LM07')
        BlueLM07.markType = 'quad'
        BlueLM07.markForCoa = 'all'
        BlueLM07.color = {0, 0, 254, 255}
        BlueLM07.fillColor = {1, 1, 254, 50}
        BlueLM07.lineType = 4
        mist.marker.add(BlueLM07)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM07 = {}
          RedLM07.pos = mist.getGroupPoints('LM07')
          RedLM07.markType = 'quad'
          RedLM07.markForCoa = 'all'
          RedLM07.color = {255, 0, 0, 255}
          RedLM07.fillColor = {254, 0, 0, 50}
          RedLM07.lineType = 4
          mist.marker.add(RedLM07)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM07 = {}
            ContLM07.pos = mist.getGroupPoints('LM07')
            ContLM07.markType = 'quad'
            ContLM07.markForCoa = 'all'
            ContLM07.color = {0, 0, 0, 255}
            ContLM07.fillColor = {0, 0, 0, 50}
            ContLM07.lineType = 4
            mist.marker.add(ContLM07)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM07zonecolor, 53, timer.getTime{}+50)
      env.info("----------------------------LM07zonecolor TIMER STARTED--------------------------")


function LM06zonecolor()
  env.info("LM06zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM06")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM06 = {}
        BlueLM06.pos = mist.getGroupPoints('LM06')
        BlueLM06.markType = 'quad'
        BlueLM06.markForCoa = 'all'
        BlueLM06.color = {0, 0, 254, 255}
        BlueLM06.fillColor = {1, 1, 254, 50}
        BlueLM06.lineType = 4
        mist.marker.add(BlueLM06)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM06 = {}
          RedLM06.pos = mist.getGroupPoints('LM06')
          RedLM06.markType = 'quad'
          RedLM06.markForCoa = 'all'
          RedLM06.color = {255, 0, 0, 255}
          RedLM06.fillColor = {254, 0, 0, 50}
          RedLM06.lineType = 4
          mist.marker.add(RedLM06)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM06 = {}
            ContLM06.pos = mist.getGroupPoints('LM06')
            ContLM06.markType = 'quad'
            ContLM06.markForCoa = 'all'
            ContLM06.color = {0, 0, 0, 255}
            ContLM06.fillColor = {0, 0, 0, 50}
            ContLM06.lineType = 4
            mist.marker.add(ContLM06)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM06zonecolor, 53, timer.getTime{}+51)
      env.info("----------------------------LM06zonecolor TIMER STARTED--------------------------")



function LM18zonecolor()
  env.info("LM18zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM18")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM18 = {}
        BlueLM18.pos = mist.getGroupPoints('LM18')
        BlueLM18.markType = 'quad'
        BlueLM18.markForCoa = 'all'
        BlueLM18.color = {0, 0, 254, 255}
        BlueLM18.fillColor = {1, 1, 254, 50}
        BlueLM18.lineType = 4
        mist.marker.add(BlueLM18)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM18 = {}
          RedLM18.pos = mist.getGroupPoints('LM18')
          RedLM18.markType = 'quad'
          RedLM18.markForCoa = 'all'
          RedLM18.color = {255, 0, 0, 255}
          RedLM18.fillColor = {254, 0, 0, 50}
          RedLM18.lineType = 4
          mist.marker.add(RedLM18)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM18 = {}
            ContLM18.pos = mist.getGroupPoints('LM18')
            ContLM18.markType = 'quad'
            ContLM18.markForCoa = 'all'
            ContLM18.color = {0, 0, 0, 255}
            ContLM18.fillColor = {0, 0, 0, 50}
            ContLM18.lineType = 4
            mist.marker.add(ContLM18)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM18zonecolor, 53, timer.getTime{}+52)
      env.info("----------------------------LM18zonecolor TIMER STARTED--------------------------")



function LM17zonecolor()
  env.info("LM17zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM17")
    if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
      local BlueLM17 = {}
          BlueLM17.pos = mist.getGroupPoints('LM17')
          BlueLM17.markType = 'quad'
          BlueLM17.markForCoa = 'all'
          BlueLM17.color = {0, 0, 254, 255}
          BlueLM17.fillColor = {1, 1, 254, 50}
          BlueLM17.lineType = 4
          mist.marker.add(BlueLM17)
      --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

    else
      if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
        local RedLM17 = {}
            RedLM17.pos = mist.getGroupPoints('LM17')
            RedLM17.markType = 'quad'
            RedLM17.markForCoa = 'all'
            RedLM17.color = {255, 0, 0, 255}
            RedLM17.fillColor = {254, 0, 0, 50}
            RedLM17.lineType = 4
            mist.marker.add(RedLM17)
        --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
      else
        if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
          local ContLM17 = {}
              ContLM17.pos = mist.getGroupPoints('LM17')
              ContLM17.markType = 'quad'
              ContLM17.markForCoa = 'all'
              ContLM17.color = {0, 0, 0, 255}
              ContLM17.fillColor = {0, 0, 0, 50}
              ContLM17.lineType = 4
              mist.marker.add(ContLM17)
          --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM17zonecolor, 53, timer.getTime{}+53)
      env.info("----------------------------LM17zonecolor TIMER STARTED--------------------------")


function LM16zonecolor()
  env.info("LM16zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM16")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM16 = {}
        BlueLM16.pos = mist.getGroupPoints('LM16')
        BlueLM16.markType = 'quad'
        BlueLM16.markForCoa = 'all'
        BlueLM16.color = {0, 0, 254, 255}
        BlueLM16.fillColor = {1, 1, 254, 50}
        BlueLM16.lineType = 4
        mist.marker.add(BlueLM16)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM16 = {}
          RedLM16.pos = mist.getGroupPoints('LM16')
          RedLM16.markType = 'quad'
          RedLM16.markForCoa = 'all'
          RedLM16.color = {255, 0, 0, 255}
          RedLM16.fillColor = {254, 0, 0, 50}
          RedLM16.lineType = 4
          mist.marker.add(RedLM16)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM16 = {}
            ContLM16.pos = mist.getGroupPoints('LM16')
            ContLM16.markType = 'quad'
            ContLM16.markForCoa = 'all'
            ContLM16.color = {0, 0, 0, 255}
            ContLM16.fillColor = {0, 0, 0, 50}
            ContLM16.lineType = 4
            mist.marker.add(ContLM16)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM16zonecolor, 53, timer.getTime{}+54)
      env.info("----------------------------LM16zonecolor TIMER STARTED--------------------------")


function LM28zonecolor()
  env.info("LM28zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM28")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM28 = {}
        BlueLM28.pos = mist.getGroupPoints('LM28')
        BlueLM28.markType = 'quad'
        BlueLM28.markForCoa = 'all'
        BlueLM28.color = {0, 0, 254, 255}
        BlueLM28.fillColor = {1, 1, 254, 50}
        BlueLM28.lineType = 4
        mist.marker.add(BlueLM28)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM28 = {}
          RedLM28.pos = mist.getGroupPoints('LM28')
          RedLM28.markType = 'quad'
          RedLM28.markForCoa = 'all'
          RedLM28.color = {255, 0, 0, 255}
          RedLM28.fillColor = {254, 0, 0, 50}
          RedLM28.lineType = 4
          mist.marker.add(RedLM28)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM28 = {}
            ContLM28.pos = mist.getGroupPoints('LM28')
            ContLM28.markType = 'quad'
            ContLM28.markForCoa = 'all'
            ContLM28.color = {0, 0, 0, 255}
            ContLM28.fillColor = {0, 0, 0, 50}
            ContLM28.lineType = 4
            mist.marker.add(ContLM28)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM28zonecolor, 53, timer.getTime{}+55)
      env.info("----------------------------LM28zonecolor TIMER STARTED--------------------------")


function LM27zonecolor()
  env.info("LM27zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM27")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM27 = {}
        BlueLM27.pos = mist.getGroupPoints('LM27')
        BlueLM27.markType = 'quad'
        BlueLM27.markForCoa = 'all'
        BlueLM27.color = {0, 0, 254, 255}
        BlueLM27.fillColor = {1, 1, 254, 50}
        BlueLM27.lineType = 4
        mist.marker.add(BlueLM27)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM27 = {}
          RedLM27.pos = mist.getGroupPoints('LM27')
          RedLM27.markType = 'quad'
          RedLM27.markForCoa = 'all'
          RedLM27.color = {255, 0, 0, 255}
          RedLM27.fillColor = {254, 0, 0, 50}
          RedLM27.lineType = 4
          mist.marker.add(RedLM27)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM27 = {}
            ContLM27.pos = mist.getGroupPoints('LM27')
            ContLM27.markType = 'quad'
            ContLM27.markForCoa = 'all'
            ContLM27.color = {0, 0, 0, 255}
            ContLM27.fillColor = {0, 0, 0, 50}
            ContLM27.lineType = 4
            mist.marker.add(ContLM27)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM27zonecolor, 53, timer.getTime{}+56)
      env.info("----------------------------LM27zonecolor TIMER STARTED--------------------------")


function LM26zonecolor()
  env.info("LM26zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM26")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM26 = {}
        BlueLM26.pos = mist.getGroupPoints('LM26')
        BlueLM26.markType = 'quad'
        BlueLM26.markForCoa = 'all'
        BlueLM26.color = {0, 0, 254, 255}
        BlueLM26.fillColor = {1, 1, 254, 50}
        BlueLM26.lineType = 4
        mist.marker.add(BlueLM26)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM26 = {}
          RedLM26.pos = mist.getGroupPoints('LM26')
          RedLM26.markType = 'quad'
          RedLM26.markForCoa = 'all'
          RedLM26.color = {255, 0, 0, 255}
          RedLM26.fillColor = {254, 0, 0, 50}
          RedLM26.lineType = 4
          mist.marker.add(RedLM26)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM26 = {}
            ContLM26.pos = mist.getGroupPoints('LM26')
            ContLM26.markType = 'quad'
            ContLM26.markForCoa = 'all'
            ContLM26.color = {0, 0, 0, 255}
            ContLM26.fillColor = {0, 0, 0, 50}
            ContLM26.lineType = 4
            mist.marker.add(ContLM26)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM26zonecolor, 53, timer.getTime{}+57)
      env.info("----------------------------LM26zonecolor TIMER STARTED--------------------------")


function LM25zonecolor()
  env.info("LM25zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM25")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM25 = {}
        BlueLM25.pos = mist.getGroupPoints('LM25')
        BlueLM25.markType = 'quad'
        BlueLM25.markForCoa = 'all'
        BlueLM25.color = {0, 0, 254, 255}
        BlueLM25.fillColor = {1, 1, 254, 50}
        BlueLM25.lineType = 4
        mist.marker.add(BlueLM25)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM25 = {}
          RedLM25.pos = mist.getGroupPoints('LM25')
          RedLM25.markType = 'quad'
          RedLM25.markForCoa = 'all'
          RedLM25.color = {255, 0, 0, 255}
          RedLM25.fillColor = {254, 0, 0, 50}
          RedLM25.lineType = 4
          mist.marker.add(RedLM25)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM25 = {}
            ContLM25.pos = mist.getGroupPoints('LM25')
            ContLM25.markType = 'quad'
            ContLM25.markForCoa = 'all'
            ContLM25.color = {0, 0, 0, 255}
            ContLM25.fillColor = {0, 0, 0, 50}
            ContLM25.lineType = 4
            mist.marker.add(ContLM25)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM25zonecolor, 53, timer.getTime{}+58)
      env.info("----------------------------LM25zonecolor TIMER STARTED--------------------------")

function LM38zonecolor()
  env.info("LM38zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM38")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM38 = {}
        BlueLM38.pos = mist.getGroupPoints('LM38')
        BlueLM38.markType = 'quad'
        BlueLM38.markForCoa = 'all'
        BlueLM38.color = {0, 0, 254, 255}
        BlueLM38.fillColor = {1, 1, 254, 50}
        BlueLM38.lineType = 4
        mist.marker.add(BlueLM38)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM38 = {}
          RedLM38.pos = mist.getGroupPoints('LM38')
          RedLM38.markType = 'quad'
          RedLM38.markForCoa = 'all'
          RedLM38.color = {255, 0, 0, 255}
          RedLM38.fillColor = {254, 0, 0, 50}
          RedLM38.lineType = 4
          mist.marker.add(RedLM38)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM38 = {}
            ContLM38.pos = mist.getGroupPoints('LM38')
            ContLM38.markType = 'quad'
            ContLM38.markForCoa = 'all'
            ContLM38.color = {0, 0, 0, 255}
            ContLM38.fillColor = {0, 0, 0, 50}
            ContLM38.lineType = 4
            mist.marker.add(ContLM38)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM38zonecolor, 53, timer.getTime{}+59)
      env.info("----------------------------LM38zonecolor TIMER STARTED--------------------------")


function LM37zonecolor()
  env.info("LM37zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM37")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM37 = {}
        BlueLM37.pos = mist.getGroupPoints('LM37')
        BlueLM37.markType = 'quad'
        BlueLM37.markForCoa = 'all'
        BlueLM37.color = {0, 0, 254, 255}
        BlueLM37.fillColor = {1, 1, 254, 50}
        BlueLM37.lineType = 4
        mist.marker.add(BlueLM37)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM37 = {}
          RedLM37.pos = mist.getGroupPoints('LM37')
          RedLM37.markType = 'quad'
          RedLM37.markForCoa = 'all'
          RedLM37.color = {255, 0, 0, 255}
          RedLM37.fillColor = {254, 0, 0, 50}
          RedLM37.lineType = 4
          mist.marker.add(RedLM37)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM37 = {}
            ContLM37.pos = mist.getGroupPoints('LM37')
            ContLM37.markType = 'quad'
            ContLM37.markForCoa = 'all'
            ContLM37.color = {0, 0, 0, 255}
            ContLM37.fillColor = {0, 0, 0, 50}
            ContLM37.lineType = 4
            mist.marker.add(ContLM37)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM37zonecolor, 53, timer.getTime{}+60)
      env.info("----------------------------LM37zonecolor TIMER STARTED--------------------------")


function LM36zonecolor()
  env.info("LM36zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM36")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM36 = {}
        BlueLM36.pos = mist.getGroupPoints('LM36')
        BlueLM36.markType = 'quad'
        BlueLM36.markForCoa = 'all'
        BlueLM36.color = {0, 0, 254, 255}
        BlueLM36.fillColor = {1, 1, 254, 50}
        BlueLM36.lineType = 4
        mist.marker.add(BlueLM36)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM36 = {}
          RedLM36.pos = mist.getGroupPoints('LM36')
          RedLM36.markType = 'quad'
          RedLM36.markForCoa = 'all'
          RedLM36.color = {255, 0, 0, 255}
          RedLM36.fillColor = {254, 0, 0, 50}
          RedLM36.lineType = 4
          mist.marker.add(RedLM36)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM36 = {}
            ContLM36.pos = mist.getGroupPoints('LM36')
            ContLM36.markType = 'quad'
            ContLM36.markForCoa = 'all'
            ContLM36.color = {0, 0, 0, 255}
            ContLM36.fillColor = {0, 0, 0, 50}
            ContLM36.lineType = 4
            mist.marker.add(ContLM36)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM36zonecolor, 53, timer.getTime{}+61)
      env.info("----------------------------LM36zonecolor TIMER STARTED--------------------------")


function LM35zonecolor()
  env.info("LM35zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM35")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM35 = {}
        BlueLM35.pos = mist.getGroupPoints('LM35')
        BlueLM35.markType = 'quad'
        BlueLM35.markForCoa = 'all'
        BlueLM35.color = {0, 0, 254, 255}
        BlueLM35.fillColor = {1, 1, 254, 50}
        BlueLM35.lineType = 4
        mist.marker.add(BlueLM35)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM35 = {}
          RedLM35.pos = mist.getGroupPoints('LM35')
          RedLM35.markType = 'quad'
          RedLM35.markForCoa = 'all'
          RedLM35.color = {255, 0, 0, 255}
          RedLM35.fillColor = {254, 0, 0, 50}
          RedLM35.lineType = 4
          mist.marker.add(RedLM35)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM35 = {}
            ContLM35.pos = mist.getGroupPoints('LM35')
            ContLM35.markType = 'quad'
            ContLM35.markForCoa = 'all'
            ContLM35.color = {0, 0, 0, 255}
            ContLM35.fillColor = {0, 0, 0, 50}
            ContLM35.lineType = 4
            mist.marker.add(ContLM35)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM35zonecolor, 53, timer.getTime{}+62)
      env.info("----------------------------LM35zonecolor TIMER STARTED--------------------------")


function LM48zonecolor()
  env.info("LM48zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM48")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM48 = {}
        BlueLM48.pos = mist.getGroupPoints('LM48')
        BlueLM48.markType = 'quad'
        BlueLM48.markForCoa = 'all'
        BlueLM48.color = {0, 0, 254, 255}
        BlueLM48.fillColor = {1, 1, 254, 50}
        BlueLM48.lineType = 4
        mist.marker.add(BlueLM48)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM48 = {}
          RedLM48.pos = mist.getGroupPoints('LM48')
          RedLM48.markType = 'quad'
          RedLM48.markForCoa = 'all'
          RedLM48.color = {255, 0, 0, 255}
          RedLM48.fillColor = {254, 0, 0, 50}
          RedLM48.lineType = 4
          mist.marker.add(RedLM48)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM48 = {}
            ContLM48.pos = mist.getGroupPoints('LM48')
            ContLM48.markType = 'quad'
            ContLM48.markForCoa = 'all'
            ContLM48.color = {0, 0, 0, 255}
            ContLM48.fillColor = {0, 0, 0, 50}
            ContLM48.lineType = 4
            mist.marker.add(ContLM48)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM48zonecolor, 53, timer.getTime{}+63)
      env.info("----------------------------LM48zonecolor TIMER STARTED--------------------------")

function LM47zonecolor()
  env.info("LM47zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM47")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM47 = {}
        BlueLM47.pos = mist.getGroupPoints('LM47')
        BlueLM47.markType = 'quad'
        BlueLM47.markForCoa = 'all'
        BlueLM47.color = {0, 0, 254, 255}
        BlueLM47.fillColor = {1, 1, 254, 50}
        BlueLM47.lineType = 4
        mist.marker.add(BlueLM47)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM47 = {}
          RedLM47.pos = mist.getGroupPoints('LM47')
          RedLM47.markType = 'quad'
          RedLM47.markForCoa = 'all'
          RedLM47.color = {255, 0, 0, 255}
          RedLM47.fillColor = {254, 0, 0, 50}
          RedLM47.lineType = 4
          mist.marker.add(RedLM47)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM47 = {}
            ContLM47.pos = mist.getGroupPoints('LM47')
            ContLM47.markType = 'quad'
            ContLM47.markForCoa = 'all'
            ContLM47.color = {0, 0, 0, 255}
            ContLM47.fillColor = {0, 0, 0, 50}
            ContLM47.lineType = 4
            mist.marker.add(ContLM47)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM47zonecolor, 53, timer.getTime{}+64)
      env.info("----------------------------LM47zonecolor TIMER STARTED--------------------------")


function LM46zonecolor()
  env.info("LM46zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM46")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM46 = {}
        BlueLM46.pos = mist.getGroupPoints('LM46')
        BlueLM46.markType = 'quad'
        BlueLM46.markForCoa = 'all'
        BlueLM46.color = {0, 0, 254, 255}
        BlueLM46.fillColor = {1, 1, 254, 50}
        BlueLM46.lineType = 4
        mist.marker.add(BlueLM46)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM46 = {}
          RedLM46.pos = mist.getGroupPoints('LM46')
          RedLM46.markType = 'quad'
          RedLM46.markForCoa = 'all'
          RedLM46.color = {255, 0, 0, 255}
          RedLM46.fillColor = {254, 0, 0, 50}
          RedLM46.lineType = 4
          mist.marker.add(RedLM46)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM46 = {}
            ContLM46.pos = mist.getGroupPoints('LM46')
            ContLM46.markType = 'quad'
            ContLM46.markForCoa = 'all'
            ContLM46.color = {0, 0, 0, 255}
            ContLM46.fillColor = {0, 0, 0, 50}
            ContLM46.lineType = 4
            mist.marker.add(ContLM46)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM46zonecolor, 53, timer.getTime{}+65)
      env.info("----------------------------LM46zonecolor TIMER STARTED--------------------------")


function LM45zonecolor()
  env.info("LM45zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM45")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM45 = {}
        BlueLM45.pos = mist.getGroupPoints('LM45')
        BlueLM45.markType = 'quad'
        BlueLM45.markForCoa = 'all'
        BlueLM45.color = {0, 0, 254, 255}
        BlueLM45.fillColor = {1, 1, 254, 50}
        BlueLM45.lineType = 4
        mist.marker.add(BlueLM45)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM45 = {}
          RedLM45.pos = mist.getGroupPoints('LM45')
          RedLM45.markType = 'quad'
          RedLM45.markForCoa = 'all'
          RedLM45.color = {255, 0, 0, 255}
          RedLM45.fillColor = {254, 0, 0, 50}
          RedLM45.lineType = 4
          mist.marker.add(RedLM45)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM45 = {}
            ContLM45.pos = mist.getGroupPoints('LM45')
            ContLM45.markType = 'quad'
            ContLM45.markForCoa = 'all'
            ContLM45.color = {0, 0, 0, 255}
            ContLM45.fillColor = {0, 0, 0, 50}
            ContLM45.lineType = 4
            mist.marker.add(ContLM45)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM45zonecolor, 53, timer.getTime{}+66)
      env.info("----------------------------LM45zonecolor TIMER STARTED--------------------------")



function LM58zonecolor()
  env.info("LM58zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM58")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM58 = {}
        BlueLM58.pos = mist.getGroupPoints('LM58')
        BlueLM58.markType = 'quad'
        BlueLM58.markForCoa = 'all'
        BlueLM58.color = {0, 0, 254, 255}
        BlueLM58.fillColor = {1, 1, 254, 50}
        BlueLM58.lineType = 4
        mist.marker.add(BlueLM58)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM58 = {}
          RedLM58.pos = mist.getGroupPoints('LM58')
          RedLM58.markType = 'quad'
          RedLM58.markForCoa = 'all'
          RedLM58.color = {255, 0, 0, 255}
          RedLM58.fillColor = {254, 0, 0, 50}
          RedLM58.lineType = 4
          mist.marker.add(RedLM58)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM58 = {}
            ContLM58.pos = mist.getGroupPoints('LM58')
            ContLM58.markType = 'quad'
            ContLM58.markForCoa = 'all'
            ContLM58.color = {0, 0, 0, 255}
            ContLM58.fillColor = {0, 0, 0, 50}
            ContLM58.lineType = 4
            mist.marker.add(ContLM58)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM58zonecolor, 53, timer.getTime{}+67)
      env.info("----------------------------LM58zonecolor TIMER STARTED--------------------------")


function LM57zonecolor()
  env.info("LM57zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM57")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM57 = {}
        BlueLM57.pos = mist.getGroupPoints('LM57')
        BlueLM57.markType = 'quad'
        BlueLM57.markForCoa = 'all'
        BlueLM57.color = {0, 0, 254, 255}
        BlueLM57.fillColor = {1, 1, 254, 50}
        BlueLM57.lineType = 4
        mist.marker.add(BlueLM57)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM57 = {}
          RedLM57.pos = mist.getGroupPoints('LM57')
          RedLM57.markType = 'quad'
          RedLM57.markForCoa = 'all'
          RedLM57.color = {255, 0, 0, 255}
          RedLM57.fillColor = {254, 0, 0, 50}
          RedLM57.lineType = 4
          mist.marker.add(RedLM57)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM57 = {}
            ContLM57.pos = mist.getGroupPoints('LM57')
            ContLM57.markType = 'quad'
            ContLM57.markForCoa = 'all'
            ContLM57.color = {0, 0, 0, 255}
            ContLM57.fillColor = {0, 0, 0, 50}
            ContLM57.lineType = 4
            mist.marker.add(ContLM57)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM57zonecolor, 53, timer.getTime{}+68)
      env.info("----------------------------LM57zonecolor TIMER STARTED--------------------------")


function LM56zonecolor()
  env.info("LM56zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM56")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM56 = {}
        BlueLM56.pos = mist.getGroupPoints('LM56')
        BlueLM56.markType = 'quad'
        BlueLM56.markForCoa = 'all'
        BlueLM56.color = {0, 0, 254, 255}
        BlueLM56.fillColor = {1, 1, 254, 50}
        BlueLM56.lineType = 4
        mist.marker.add(BlueLM56)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM56 = {}
          RedLM56.pos = mist.getGroupPoints('LM56')
          RedLM56.markType = 'quad'
          RedLM56.markForCoa = 'all'
          RedLM56.color = {255, 0, 0, 255}
          RedLM56.fillColor = {254, 0, 0, 50}
          RedLM56.lineType = 4
          mist.marker.add(RedLM56)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM56 = {}
            ContLM56.pos = mist.getGroupPoints('LM56')
            ContLM56.markType = 'quad'
            ContLM56.markForCoa = 'all'
            ContLM56.color = {0, 0, 0, 255}
            ContLM56.fillColor = {0, 0, 0, 50}
            ContLM56.lineType = 4
            mist.marker.add(ContLM56)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM56zonecolor, 53, timer.getTime{}+69)
      env.info("----------------------------LM56zonecolor TIMER STARTED--------------------------")

function LM55zonecolor()
  env.info("LM55zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM55")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM55 = {}
        BlueLM55.pos = mist.getGroupPoints('LM55')
        BlueLM55.markType = 'quad'
        BlueLM55.markForCoa = 'all'
        BlueLM55.color = {0, 0, 254, 255}
        BlueLM55.fillColor = {1, 1, 254, 50}
        BlueLM55.lineType = 4
        mist.marker.add(BlueLM55)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM55 = {}
          RedLM55.pos = mist.getGroupPoints('LM55')
          RedLM55.markType = 'quad'
          RedLM55.markForCoa = 'all'
          RedLM55.color = {255, 0, 0, 255}
          RedLM55.fillColor = {254, 0, 0, 50}
          RedLM55.lineType = 4
          mist.marker.add(RedLM55)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM55 = {}
            ContLM55.pos = mist.getGroupPoints('LM55')
            ContLM55.markType = 'quad'
            ContLM55.markForCoa = 'all'
            ContLM55.color = {0, 0, 0, 255}
            ContLM55.fillColor = {0, 0, 0, 50}
            ContLM55.lineType = 4
            mist.marker.add(ContLM55)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM55zonecolor, 53, timer.getTime{}+70)
      env.info("----------------------------LM55zonecolor TIMER STARTED--------------------------")


function LM54zonecolor()
  env.info("LM54zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM54")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM54 = {}
        BlueLM54.pos = mist.getGroupPoints('LM54')
        BlueLM54.markType = 'quad'
        BlueLM54.markForCoa = 'all'
        BlueLM54.color = {0, 0, 254, 255}
        BlueLM54.fillColor = {1, 1, 254, 50}
        BlueLM54.lineType = 4
        mist.marker.add(BlueLM54)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM54 = {}
          RedLM54.pos = mist.getGroupPoints('LM54')
          RedLM54.markType = 'quad'
          RedLM54.markForCoa = 'all'
          RedLM54.color = {255, 0, 0, 255}
          RedLM54.fillColor = {254, 0, 0, 50}
          RedLM54.lineType = 4
          mist.marker.add(RedLM54)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM54 = {}
            ContLM54.pos = mist.getGroupPoints('LM54')
            ContLM54.markType = 'quad'
            ContLM54.markForCoa = 'all'
            ContLM54.color = {0, 0, 0, 255}
            ContLM54.fillColor = {0, 0, 0, 50}
            ContLM54.lineType = 4
            mist.marker.add(ContLM54)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM54zonecolor, 53, timer.getTime{}+71)
      env.info("----------------------------LM54zonecolor TIMER STARTED--------------------------")


function LM68zonecolor()
  env.info("LM68zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM68")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM68 = {}
        BlueLM68.pos = mist.getGroupPoints('LM68')
        BlueLM68.markType = 'quad'
        BlueLM68.markForCoa = 'all'
        BlueLM68.color = {0, 0, 254, 255}
        BlueLM68.fillColor = {1, 1, 254, 50}
        BlueLM68.lineType = 4
        mist.marker.add(BlueLM68)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM68 = {}
          RedLM68.pos = mist.getGroupPoints('LM68')
          RedLM68.markType = 'quad'
          RedLM68.markForCoa = 'all'
          RedLM68.color = {255, 0, 0, 255}
          RedLM68.fillColor = {254, 0, 0, 50}
          RedLM68.lineType = 4
          mist.marker.add(RedLM68)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM68 = {}
            ContLM68.pos = mist.getGroupPoints('LM68')
            ContLM68.markType = 'quad'
            ContLM68.markForCoa = 'all'
            ContLM68.color = {0, 0, 0, 255}
            ContLM68.fillColor = {0, 0, 0, 50}
            ContLM68.lineType = 4
            mist.marker.add(ContLM68)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM68zonecolor, 53, timer.getTime{}+72)
      env.info("----------------------------LM68zonecolor TIMER STARTED--------------------------")


function LM67zonecolor()
  env.info("LM67zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM67")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM67 = {}
        BlueLM67.pos = mist.getGroupPoints('LM67')
        BlueLM67.markType = 'quad'
        BlueLM67.markForCoa = 'all'
        BlueLM67.color = {0, 0, 254, 255}
        BlueLM67.fillColor = {1, 1, 254, 50}
        BlueLM67.lineType = 4
        mist.marker.add(BlueLM67)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM67 = {}
          RedLM67.pos = mist.getGroupPoints('LM67')
          RedLM67.markType = 'quad'
          RedLM67.markForCoa = 'all'
          RedLM67.color = {255, 0, 0, 255}
          RedLM67.fillColor = {254, 0, 0, 50}
          RedLM67.lineType = 4
          mist.marker.add(RedLM67)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM67 = {}
            ContLM67.pos = mist.getGroupPoints('LM67')
            ContLM67.markType = 'quad'
            ContLM67.markForCoa = 'all'
            ContLM67.color = {0, 0, 0, 255}
            ContLM67.fillColor = {0, 0, 0, 50}
            ContLM67.lineType = 4
            mist.marker.add(ContLM67)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM67zonecolor, 53, timer.getTime{}+73)
      env.info("----------------------------LM67zonecolor TIMER STARTED--------------------------")


function LM66zonecolor()
  env.info("LM66zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM66")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM66 = {}
        BlueLM66.pos = mist.getGroupPoints('LM66')
        BlueLM66.markType = 'quad'
        BlueLM66.markForCoa = 'all'
        BlueLM66.color = {0, 0, 254, 255}
        BlueLM66.fillColor = {1, 1, 254, 50}
        BlueLM66.lineType = 4
        mist.marker.add(BlueLM66)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM66 = {}
          RedLM66.pos = mist.getGroupPoints('LM66')
          RedLM66.markType = 'quad'
          RedLM66.markForCoa = 'all'
          RedLM66.color = {255, 0, 0, 255}
          RedLM66.fillColor = {254, 0, 0, 50}
          RedLM66.lineType = 4
          mist.marker.add(RedLM66)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM66 = {}
            ContLM66.pos = mist.getGroupPoints('LM66')
            ContLM66.markType = 'quad'
            ContLM66.markForCoa = 'all'
            ContLM66.color = {0, 0, 0, 255}
            ContLM66.fillColor = {0, 0, 0, 50}
            ContLM66.lineType = 4
            mist.marker.add(ContLM66)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM66zonecolor, 53, timer.getTime{}+74)
      env.info("----------------------------LM66zonecolor TIMER STARTED--------------------------")


function LM65zonecolor()
  env.info("LM65zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM65")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM65 = {}
        BlueLM65.pos = mist.getGroupPoints('LM65')
        BlueLM65.markType = 'quad'
        BlueLM65.markForCoa = 'all'
        BlueLM65.color = {0, 0, 254, 255}
        BlueLM65.fillColor = {1, 1, 254, 50}
        BlueLM65.lineType = 4
        mist.marker.add(BlueLM65)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM65 = {}
          RedLM65.pos = mist.getGroupPoints('LM65')
          RedLM65.markType = 'quad'
          RedLM65.markForCoa = 'all'
          RedLM65.color = {255, 0, 0, 255}
          RedLM65.fillColor = {254, 0, 0, 50}
          RedLM65.lineType = 4
          mist.marker.add(RedLM65)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM65 = {}
            ContLM65.pos = mist.getGroupPoints('LM65')
            ContLM65.markType = 'quad'
            ContLM65.markForCoa = 'all'
            ContLM65.color = {0, 0, 0, 255}
            ContLM65.fillColor = {0, 0, 0, 50}
            ContLM65.lineType = 4
            mist.marker.add(ContLM65)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM65zonecolor, 53, timer.getTime{}+75)
      env.info("----------------------------LM65zonecolor TIMER STARTED--------------------------")


function LM64zonecolor()
  env.info("LM64zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM64")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM64 = {}
        BlueLM64.pos = mist.getGroupPoints('LM64')
        BlueLM64.markType = 'quad'
        BlueLM64.markForCoa = 'all'
        BlueLM64.color = {0, 0, 254, 255}
        BlueLM64.fillColor = {1, 1, 254, 50}
        BlueLM64.lineType = 4
        mist.marker.add(BlueLM64)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM64 = {}
          RedLM64.pos = mist.getGroupPoints('LM64')
          RedLM64.markType = 'quad'
          RedLM64.markForCoa = 'all'
          RedLM64.color = {255, 0, 0, 255}
          RedLM64.fillColor = {254, 0, 0, 50}
          RedLM64.lineType = 4
          mist.marker.add(RedLM64)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM64 = {}
            ContLM64.pos = mist.getGroupPoints('LM64')
            ContLM64.markType = 'quad'
            ContLM64.markForCoa = 'all'
            ContLM64.color = {0, 0, 0, 255}
            ContLM64.fillColor = {0, 0, 0, 50}
            ContLM64.lineType = 4
            mist.marker.add(ContLM64)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM64zonecolor, 53, timer.getTime{}+76)
      env.info("----------------------------LM64zonecolor TIMER STARTED--------------------------")


function LM78zonecolor()
  env.info("LM78zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM78")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM78 = {}
        BlueLM78.pos = mist.getGroupPoints('LM78')
        BlueLM78.markType = 'quad'
        BlueLM78.markForCoa = 'all'
        BlueLM78.color = {0, 0, 254, 255}
        BlueLM78.fillColor = {1, 1, 254, 50}
        BlueLM78.lineType = 4
        mist.marker.add(BlueLM78)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM78 = {}
          RedLM78.pos = mist.getGroupPoints('LM78')
          RedLM78.markType = 'quad'
          RedLM78.markForCoa = 'all'
          RedLM78.color = {255, 0, 0, 255}
          RedLM78.fillColor = {254, 0, 0, 50}
          RedLM78.lineType = 4
          mist.marker.add(RedLM78)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM78 = {}
            ContLM78.pos = mist.getGroupPoints('LM78')
            ContLM78.markType = 'quad'
            ContLM78.markForCoa = 'all'
            ContLM78.color = {0, 0, 0, 255}
            ContLM78.fillColor = {0, 0, 0, 50}
            ContLM78.lineType = 4
            mist.marker.add(ContLM78)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM78zonecolor, 53, timer.getTime{}+77)
      env.info("----------------------------LM78zonecolor TIMER STARTED--------------------------")


function LM77zonecolor()
  env.info("LM77zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM77")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM77 = {}
        BlueLM77.pos = mist.getGroupPoints('LM77')
        BlueLM77.markType = 'quad'
        BlueLM77.markForCoa = 'all'
        BlueLM77.color = {0, 0, 254, 255}
        BlueLM77.fillColor = {1, 1, 254, 50}
        BlueLM77.lineType = 4
        mist.marker.add(BlueLM77)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM77 = {}
          RedLM77.pos = mist.getGroupPoints('LM77')
          RedLM77.markType = 'quad'
          RedLM77.markForCoa = 'all'
          RedLM77.color = {255, 0, 0, 255}
          RedLM77.fillColor = {254, 0, 0, 50}
          RedLM77.lineType = 4
          mist.marker.add(RedLM77)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM77 = {}
            ContLM77.pos = mist.getGroupPoints('LM77')
            ContLM77.markType = 'quad'
            ContLM77.markForCoa = 'all'
            ContLM77.color = {0, 0, 0, 255}
            ContLM77.fillColor = {0, 0, 0, 50}
            ContLM77.lineType = 4
            mist.marker.add(ContLM77)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM77zonecolor, 53, timer.getTime{}+78)
      env.info("----------------------------LM77zonecolor TIMER STARTED--------------------------")


function LM76zonecolor()
  env.info("LM76zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM76")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM76 = {}
        BlueLM76.pos = mist.getGroupPoints('LM76')
        BlueLM76.markType = 'quad'
        BlueLM76.markForCoa = 'all'
        BlueLM76.color = {0, 0, 254, 255}
        BlueLM76.fillColor = {1, 1, 254, 50}
        BlueLM76.lineType = 4
        mist.marker.add(BlueLM76)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM76 = {}
          RedLM76.pos = mist.getGroupPoints('LM76')
          RedLM76.markType = 'quad'
          RedLM76.markForCoa = 'all'
          RedLM76.color = {255, 0, 0, 255}
          RedLM76.fillColor = {254, 0, 0, 50}
          RedLM76.lineType = 4
          mist.marker.add(RedLM76)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM76 = {}
            ContLM76.pos = mist.getGroupPoints('LM76')
            ContLM76.markType = 'quad'
            ContLM76.markForCoa = 'all'
            ContLM76.color = {0, 0, 0, 255}
            ContLM76.fillColor = {0, 0, 0, 50}
            ContLM76.lineType = 4
            mist.marker.add(ContLM76)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM76zonecolor, 53, timer.getTime{}+79)
      env.info("----------------------------LM76zonecolor TIMER STARTED--------------------------")


function LM75zonecolor()
  env.info("LM75zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM75")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM75 = {}
        BlueLM75.pos = mist.getGroupPoints('LM75')
        BlueLM75.markType = 'quad'
        BlueLM75.markForCoa = 'all'
        BlueLM75.color = {0, 0, 254, 255}
        BlueLM75.fillColor = {1, 1, 254, 50}
        BlueLM75.lineType = 4
        mist.marker.add(BlueLM75)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM75 = {}
          RedLM75.pos = mist.getGroupPoints('LM75')
          RedLM75.markType = 'quad'
          RedLM75.markForCoa = 'all'
          RedLM75.color = {255, 0, 0, 255}
          RedLM75.fillColor = {254, 0, 0, 50}
          RedLM75.lineType = 4
          mist.marker.add(RedLM75)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM75 = {}
            ContLM75.pos = mist.getGroupPoints('LM75')
            ContLM75.markType = 'quad'
            ContLM75.markForCoa = 'all'
            ContLM75.color = {0, 0, 0, 255}
            ContLM75.fillColor = {0, 0, 0, 50}
            ContLM75.lineType = 4
            mist.marker.add(ContLM75)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM75zonecolor, 53, timer.getTime{}+80)
      env.info("----------------------------LM75zonecolor TIMER STARTED--------------------------")


function LM74zonecolor()
  env.info("LM74zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM74")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM74 = {}
        BlueLM74.pos = mist.getGroupPoints('LM74')
        BlueLM74.markType = 'quad'
        BlueLM74.markForCoa = 'all'
        BlueLM74.color = {0, 0, 254, 255}
        BlueLM74.fillColor = {1, 1, 254, 50}
        BlueLM74.lineType = 4
        mist.marker.add(BlueLM74)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM74 = {}
          RedLM74.pos = mist.getGroupPoints('LM74')
          RedLM74.markType = 'quad'
          RedLM74.markForCoa = 'all'
          RedLM74.color = {255, 0, 0, 255}
          RedLM74.fillColor = {254, 0, 0, 50}
          RedLM74.lineType = 4
          mist.marker.add(RedLM74)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM74 = {}
            ContLM74.pos = mist.getGroupPoints('LM74')
            ContLM74.markType = 'quad'
            ContLM74.markForCoa = 'all'
            ContLM74.color = {0, 0, 0, 255}
            ContLM74.fillColor = {0, 0, 0, 50}
            ContLM74.lineType = 4
            mist.marker.add(ContLM74)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM74zonecolor, 53, timer.getTime{}+81)
      env.info("----------------------------LM74zonecolor TIMER STARTED--------------------------")


function LM88zonecolor()
  env.info("LM88zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM88")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM88 = {}
        BlueLM88.pos = mist.getGroupPoints('LM88')
        BlueLM88.markType = 'quad'
        BlueLM88.markForCoa = 'all'
        BlueLM88.color = {0, 0, 254, 255}
        BlueLM88.fillColor = {1, 1, 254, 50}
        BlueLM88.lineType = 4
        mist.marker.add(BlueLM88)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM88 = {}
          RedLM88.pos = mist.getGroupPoints('LM88')
          RedLM88.markType = 'quad'
          RedLM88.markForCoa = 'all'
          RedLM88.color = {255, 0, 0, 255}
          RedLM88.fillColor = {254, 0, 0, 50}
          RedLM88.lineType = 4
          mist.marker.add(RedLM88)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM88 = {}
            ContLM88.pos = mist.getGroupPoints('LM88')
            ContLM88.markType = 'quad'
            ContLM88.markForCoa = 'all'
            ContLM88.color = {0, 0, 0, 255}
            ContLM88.fillColor = {0, 0, 0, 50}
            ContLM88.lineType = 4
            mist.marker.add(ContLM88)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM88zonecolor, 53, timer.getTime{}+82)
      env.info("----------------------------LM88zonecolor TIMER STARTED--------------------------")


function LM87zonecolor()
  env.info("LM87zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM87")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM87 = {}
        BlueLM87.pos = mist.getGroupPoints('LM87')
        BlueLM87.markType = 'quad'
        BlueLM87.markForCoa = 'all'
        BlueLM87.color = {0, 0, 254, 255}
        BlueLM87.fillColor = {1, 1, 254, 50}
        BlueLM87.lineType = 4
        mist.marker.add(BlueLM87)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM87 = {}
          RedLM87.pos = mist.getGroupPoints('LM87')
          RedLM87.markType = 'quad'
          RedLM87.markForCoa = 'all'
          RedLM87.color = {255, 0, 0, 255}
          RedLM87.fillColor = {254, 0, 0, 50}
          RedLM87.lineType = 4
          mist.marker.add(RedLM87)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM87 = {}
            ContLM87.pos = mist.getGroupPoints('LM87')
            ContLM87.markType = 'quad'
            ContLM87.markForCoa = 'all'
            ContLM87.color = {0, 0, 0, 255}
            ContLM87.fillColor = {0, 0, 0, 50}
            ContLM87.lineType = 4
            mist.marker.add(ContLM87)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM87zonecolor, 53, timer.getTime{}+83)
      env.info("----------------------------LM87zonecolor TIMER STARTED--------------------------")


function LM86zonecolor()
  env.info("LM86zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM86")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM86 = {}
        BlueLM86.pos = mist.getGroupPoints('LM86')
        BlueLM86.markType = 'quad'
        BlueLM86.markForCoa = 'all'
        BlueLM86.color = {0, 0, 254, 255}
        BlueLM86.fillColor = {1, 1, 254, 50}
        BlueLM86.lineType = 4
        mist.marker.add(BlueLM86)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM86 = {}
          RedLM86.pos = mist.getGroupPoints('LM86')
          RedLM86.markType = 'quad'
          RedLM86.markForCoa = 'all'
          RedLM86.color = {255, 0, 0, 255}
          RedLM86.fillColor = {254, 0, 0, 50}
          RedLM86.lineType = 4
          mist.marker.add(RedLM86)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM86 = {}
            ContLM86.pos = mist.getGroupPoints('LM86')
            ContLM86.markType = 'quad'
            ContLM86.markForCoa = 'all'
            ContLM86.color = {0, 0, 0, 255}
            ContLM86.fillColor = {0, 0, 0, 50}
            ContLM86.lineType = 4
            mist.marker.add(ContLM86)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM86zonecolor, 53, timer.getTime{}+84)
      env.info("----------------------------LM86zonecolor TIMER STARTED--------------------------")


function LM85zonecolor()
  env.info("LM85zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM85")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM85 = {}
        BlueLM85.pos = mist.getGroupPoints('LM85')
        BlueLM85.markType = 'quad'
        BlueLM85.markForCoa = 'all'
        BlueLM85.color = {0, 0, 254, 255}
        BlueLM85.fillColor = {1, 1, 254, 50}
        BlueLM85.lineType = 4
        mist.marker.add(BlueLM85)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM85 = {}
          RedLM85.pos = mist.getGroupPoints('LM85')
          RedLM85.markType = 'quad'
          RedLM85.markForCoa = 'all'
          RedLM85.color = {255, 0, 0, 255}
          RedLM85.fillColor = {254, 0, 0, 50}
          RedLM85.lineType = 4
          mist.marker.add(RedLM85)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM85 = {}
            ContLM85.pos = mist.getGroupPoints('LM85')
            ContLM85.markType = 'quad'
            ContLM85.markForCoa = 'all'
            ContLM85.color = {0, 0, 0, 255}
            ContLM85.fillColor = {0, 0, 0, 50}
            ContLM85.lineType = 4
            mist.marker.add(ContLM85)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM85zonecolor, 53, timer.getTime{}+85)
      env.info("----------------------------LM85zonecolor TIMER STARTED--------------------------")


function LM84zonecolor()
  env.info("LM84zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM84")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM84 = {}
        BlueLM84.pos = mist.getGroupPoints('LM84')
        BlueLM84.markType = 'quad'
        BlueLM84.markForCoa = 'all'
        BlueLM84.color = {0, 0, 254, 255}
        BlueLM84.fillColor = {1, 1, 254, 50}
        BlueLM84.lineType = 4
        mist.marker.add(BlueLM84)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM84 = {}
          RedLM84.pos = mist.getGroupPoints('LM84')
          RedLM84.markType = 'quad'
          RedLM84.markForCoa = 'all'
          RedLM84.color = {255, 0, 0, 255}
          RedLM84.fillColor = {254, 0, 0, 50}
          RedLM84.lineType = 4
          mist.marker.add(RedLM84)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM84 = {}
            ContLM84.pos = mist.getGroupPoints('LM84')
            ContLM84.markType = 'quad'
            ContLM84.markForCoa = 'all'
            ContLM84.color = {0, 0, 0, 255}
            ContLM84.fillColor = {0, 0, 0, 50}
            ContLM84.lineType = 4
            mist.marker.add(ContLM84)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM84zonecolor, 53, timer.getTime{}+86)
      env.info("----------------------------LM84zonecolor TIMER STARTED--------------------------")


function LM98zonecolor()
  env.info("LM98zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM98")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM98 = {}
        BlueLM98.pos = mist.getGroupPoints('LM98')
        BlueLM98.markType = 'quad'
        BlueLM98.markForCoa = 'all'
        BlueLM98.color = {0, 0, 254, 255}
        BlueLM98.fillColor = {1, 1, 254, 50}
        BlueLM98.lineType = 4
        mist.marker.add(BlueLM98)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM98 = {}
          RedLM98.pos = mist.getGroupPoints('LM98')
          RedLM98.markType = 'quad'
          RedLM98.markForCoa = 'all'
          RedLM98.color = {255, 0, 0, 255}
          RedLM98.fillColor = {254, 0, 0, 50}
          RedLM98.lineType = 4
          mist.marker.add(RedLM98)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM98 = {}
            ContLM98.pos = mist.getGroupPoints('LM98')
            ContLM98.markType = 'quad'
            ContLM98.markForCoa = 'all'
            ContLM98.color = {0, 0, 0, 255}
            ContLM98.fillColor = {0, 0, 0, 50}
            ContLM98.lineType = 4
            mist.marker.add(ContLM98)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM98zonecolor, 53, timer.getTime{}+87)
      env.info("----------------------------LM98zonecolor TIMER STARTED--------------------------")


function LM97zonecolor()
  env.info("LM97zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM97")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM97 = {}
        BlueLM97.pos = mist.getGroupPoints('LM97')
        BlueLM97.markType = 'quad'
        BlueLM97.markForCoa = 'all'
        BlueLM97.color = {0, 0, 254, 255}
        BlueLM97.fillColor = {1, 1, 254, 50}
        BlueLM97.lineType = 4
        mist.marker.add(BlueLM97)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM97 = {}
          RedLM97.pos = mist.getGroupPoints('LM97')
          RedLM97.markType = 'quad'
          RedLM97.markForCoa = 'all'
          RedLM97.color = {255, 0, 0, 255}
          RedLM97.fillColor = {254, 0, 0, 50}
          RedLM97.lineType = 4
          mist.marker.add(RedLM97)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM97 = {}
            ContLM97.pos = mist.getGroupPoints('LM97')
            ContLM97.markType = 'quad'
            ContLM97.markForCoa = 'all'
            ContLM97.color = {0, 0, 0, 255}
            ContLM97.fillColor = {0, 0, 0, 50}
            ContLM97.lineType = 4
            mist.marker.add(ContLM97)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM97zonecolor, 53, timer.getTime{}+88)
      env.info("----------------------------LM97zonecolor TIMER STARTED--------------------------")


function LM96zonecolor()
  env.info("LM96zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM96")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM96 = {}
        BlueLM96.pos = mist.getGroupPoints('LM96')
        BlueLM96.markType = 'quad'
        BlueLM96.markForCoa = 'all'
        BlueLM96.color = {0, 0, 254, 255}
        BlueLM96.fillColor = {1, 1, 254, 50}
        BlueLM96.lineType = 4
        mist.marker.add(BlueLM96)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM96 = {}
          RedLM96.pos = mist.getGroupPoints('LM96')
          RedLM96.markType = 'quad'
          RedLM96.markForCoa = 'all'
          RedLM96.color = {255, 0, 0, 255}
          RedLM96.fillColor = {254, 0, 0, 50}
          RedLM96.lineType = 4
          mist.marker.add(RedLM96)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM96 = {}
            ContLM96.pos = mist.getGroupPoints('LM96')
            ContLM96.markType = 'quad'
            ContLM96.markForCoa = 'all'
            ContLM96.color = {0, 0, 0, 255}
            ContLM96.fillColor = {0, 0, 0, 50}
            ContLM96.lineType = 4
            mist.marker.add(ContLM96)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM96zonecolor, 53, timer.getTime{}+89)
      env.info("----------------------------LM96zonecolor TIMER STARTED--------------------------")


function LM95zonecolor()
  env.info("LM95zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("LM95")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueLM95 = {}
        BlueLM95.pos = mist.getGroupPoints('LM95')
        BlueLM95.markType = 'quad'
        BlueLM95.markForCoa = 'all'
        BlueLM95.color = {0, 0, 254, 255}
        BlueLM95.fillColor = {1, 1, 254, 50}
        BlueLM95.lineType = 4
        mist.marker.add(BlueLM95)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedLM95 = {}
          RedLM95.pos = mist.getGroupPoints('LM95')
          RedLM95.markType = 'quad'
          RedLM95.markForCoa = 'all'
          RedLM95.color = {255, 0, 0, 255}
          RedLM95.fillColor = {254, 0, 0, 50}
          RedLM95.lineType = 4
          mist.marker.add(RedLM95)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContLM95 = {}
            ContLM95.pos = mist.getGroupPoints('LM95')
            ContLM95.markType = 'quad'
            ContLM95.markForCoa = 'all'
            ContLM95.color = {0, 0, 0, 255}
            ContLM95.fillColor = {0, 0, 0, 50}
            ContLM95.lineType = 4
            mist.marker.add(ContLM95)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(LM95zonecolor, 53, timer.getTime{}+90)
      env.info("----------------------------LM95zonecolor TIMER STARTED--------------------------")


function MM07zonecolor()
  env.info("MM07zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM07")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM07 = {}
        BlueMM07.pos = mist.getGroupPoints('MM07')
        BlueMM07.markType = 'quad'
        BlueMM07.markForCoa = 'all'
        BlueMM07.color = {0, 0, 254, 255}
        BlueMM07.fillColor = {1, 1, 254, 50}
        BlueMM07.lineType = 4
        mist.marker.add(BlueMM07)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM07 = {}
          RedMM07.pos = mist.getGroupPoints('MM07')
          RedMM07.markType = 'quad'
          RedMM07.markForCoa = 'all'
          RedMM07.color = {255, 0, 0, 255}
          RedMM07.fillColor = {254, 0, 0, 50}
          RedMM07.lineType = 4
          mist.marker.add(RedMM07)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM07 = {}
            ContMM07.pos = mist.getGroupPoints('MM07')
            ContMM07.markType = 'quad'
            ContMM07.markForCoa = 'all'
            ContMM07.color = {0, 0, 0, 255}
            ContMM07.fillColor = {0, 0, 0, 50}
            ContMM07.lineType = 4
            mist.marker.add(ContMM07)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM07zonecolor, 53, timer.getTime{}+90)
      env.info("----------------------------MM07zonecolor TIMER STARTED--------------------------")


function MM06zonecolor()
  env.info("MM06zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM06")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM06 = {}
        BlueMM06.pos = mist.getGroupPoints('MM06')
        BlueMM06.markType = 'quad'
        BlueMM06.markForCoa = 'all'
        BlueMM06.color = {0, 0, 254, 255}
        BlueMM06.fillColor = {1, 1, 254, 50}
        BlueMM06.lineType = 4
        mist.marker.add(BlueMM06)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM06 = {}
          RedMM06.pos = mist.getGroupPoints('MM06')
          RedMM06.markType = 'quad'
          RedMM06.markForCoa = 'all'
          RedMM06.color = {255, 0, 0, 255}
          RedMM06.fillColor = {254, 0, 0, 50}
          RedMM06.lineType = 4
          mist.marker.add(RedMM06)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM06 = {}
            ContMM06.pos = mist.getGroupPoints('MM06')
            ContMM06.markType = 'quad'
            ContMM06.markForCoa = 'all'
            ContMM06.color = {0, 0, 0, 255}
            ContMM06.fillColor = {0, 0, 0, 50}
            ContMM06.lineType = 4
            mist.marker.add(ContMM06)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM06zonecolor, 53, timer.getTime{}+91)
      env.info("----------------------------MM06zonecolor TIMER STARTED--------------------------")

function MM05zonecolor()
  env.info("MM05zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM05")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM05 = {}
        BlueMM05.pos = mist.getGroupPoints('MM05')
        BlueMM05.markType = 'quad'
        BlueMM05.markForCoa = 'all'
        BlueMM05.color = {0, 0, 254, 255}
        BlueMM05.fillColor = {1, 1, 254, 50}
        BlueMM05.lineType = 4
        mist.marker.add(BlueMM05)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM05 = {}
          RedMM05.pos = mist.getGroupPoints('MM05')
          RedMM05.markType = 'quad'
          RedMM05.markForCoa = 'all'
          RedMM05.color = {255, 0, 0, 255}
          RedMM05.fillColor = {254, 0, 0, 50}
          RedMM05.lineType = 4
          mist.marker.add(RedMM05)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM05 = {}
            ContMM05.pos = mist.getGroupPoints('MM05')
            ContMM05.markType = 'quad'
            ContMM05.markForCoa = 'all'
            ContMM05.color = {0, 0, 0, 255}
            ContMM05.fillColor = {0, 0, 0, 50}
            ContMM05.lineType = 4
            mist.marker.add(ContMM05)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM05zonecolor, 53, timer.getTime{}+92)
      env.info("----------------------------MM05zonecolor TIMER STARTED--------------------------")


function MM04zonecolor()
  env.info("MM04zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM04")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM04 = {}
        BlueMM04.pos = mist.getGroupPoints('MM04')
        BlueMM04.markType = 'quad'
        BlueMM04.markForCoa = 'all'
        BlueMM04.color = {0, 0, 254, 255}
        BlueMM04.fillColor = {1, 1, 254, 50}
        BlueMM04.lineType = 4
        mist.marker.add(BlueMM04)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM04 = {}
          RedMM04.pos = mist.getGroupPoints('MM04')
          RedMM04.markType = 'quad'
          RedMM04.markForCoa = 'all'
          RedMM04.color = {255, 0, 0, 255}
          RedMM04.fillColor = {254, 0, 0, 50}
          RedMM04.lineType = 4
          mist.marker.add(RedMM04)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM04 = {}
            ContMM04.pos = mist.getGroupPoints('MM04')
            ContMM04.markType = 'quad'
            ContMM04.markForCoa = 'all'
            ContMM04.color = {0, 0, 0, 255}
            ContMM04.fillColor = {0, 0, 0, 50}
            ContMM04.lineType = 4
            mist.marker.add(ContMM04)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM04zonecolor, 53, timer.getTime{}+93)
      env.info("----------------------------MM04zonecolor TIMER STARTED--------------------------")


function MM17zonecolor()
  env.info("MM17zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM17")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM17 = {}
        BlueMM17.pos = mist.getGroupPoints('MM17')
        BlueMM17.markType = 'quad'
        BlueMM17.markForCoa = 'all'
        BlueMM17.color = {0, 0, 254, 255}
        BlueMM17.fillColor = {1, 1, 254, 50}
        BlueMM17.lineType = 4
        mist.marker.add(BlueMM17)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM17 = {}
          RedMM17.pos = mist.getGroupPoints('MM17')
          RedMM17.markType = 'quad'
          RedMM17.markForCoa = 'all'
          RedMM17.color = {255, 0, 0, 255}
          RedMM17.fillColor = {254, 0, 0, 50}
          RedMM17.lineType = 4
          mist.marker.add(RedMM17)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM17 = {}
            ContMM17.pos = mist.getGroupPoints('MM17')
            ContMM17.markType = 'quad'
            ContMM17.markForCoa = 'all'
            ContMM17.color = {0, 0, 0, 255}
            ContMM17.fillColor = {0, 0, 0, 50}
            ContMM17.lineType = 4
            mist.marker.add(ContMM17)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM17zonecolor, 53, timer.getTime{}+94)
      env.info("----------------------------MM17zonecolor TIMER STARTED--------------------------")

function MM16zonecolor()
  env.info("MM16zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM16")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM16 = {}
        BlueMM16.pos = mist.getGroupPoints('MM16')
        BlueMM16.markType = 'quad'
        BlueMM16.markForCoa = 'all'
        BlueMM16.color = {0, 0, 254, 255}
        BlueMM16.fillColor = {1, 1, 254, 50}
        BlueMM16.lineType = 4
        mist.marker.add(BlueMM16)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM16 = {}
          RedMM16.pos = mist.getGroupPoints('MM16')
          RedMM16.markType = 'quad'
          RedMM16.markForCoa = 'all'
          RedMM16.color = {255, 0, 0, 255}
          RedMM16.fillColor = {254, 0, 0, 50}
          RedMM16.lineType = 4
          mist.marker.add(RedMM16)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM16 = {}
            ContMM16.pos = mist.getGroupPoints('MM16')
            ContMM16.markType = 'quad'
            ContMM16.markForCoa = 'all'
            ContMM16.color = {0, 0, 0, 255}
            ContMM16.fillColor = {0, 0, 0, 50}
            ContMM16.lineType = 4
            mist.marker.add(ContMM16)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM16zonecolor, 53, timer.getTime{}+95)
      env.info("----------------------------MM16zonecolor TIMER STARTED--------------------------")



function MM15zonecolor()
  env.info("MM15zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM15")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM15 = {}
        BlueMM15.pos = mist.getGroupPoints('MM15')
        BlueMM15.markType = 'quad'
        BlueMM15.markForCoa = 'all'
        BlueMM15.color = {0, 0, 254, 255}
        BlueMM15.fillColor = {1, 1, 254, 50}
        BlueMM15.lineType = 4
        mist.marker.add(BlueMM15)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM15 = {}
          RedMM15.pos = mist.getGroupPoints('MM15')
          RedMM15.markType = 'quad'
          RedMM15.markForCoa = 'all'
          RedMM15.color = {255, 0, 0, 255}
          RedMM15.fillColor = {254, 0, 0, 50}
          RedMM15.lineType = 4
          mist.marker.add(RedMM15)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM15 = {}
            ContMM15.pos = mist.getGroupPoints('MM15')
            ContMM15.markType = 'quad'
            ContMM15.markForCoa = 'all'
            ContMM15.color = {0, 0, 0, 255}
            ContMM15.fillColor = {0, 0, 0, 50}
            ContMM15.lineType = 4
            mist.marker.add(ContMM15)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM15zonecolor, 53, timer.getTime{}+96)
      env.info("----------------------------MM15zonecolor TIMER STARTED--------------------------")


function MM14zonecolor()
  env.info("MM14zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM14")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM14 = {}
        BlueMM14.pos = mist.getGroupPoints('MM14')
        BlueMM14.markType = 'quad'
        BlueMM14.markForCoa = 'all'
        BlueMM14.color = {0, 0, 254, 255}
        BlueMM14.fillColor = {1, 1, 254, 50}
        BlueMM14.lineType = 4
        mist.marker.add(BlueMM14)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM14 = {}
          RedMM14.pos = mist.getGroupPoints('MM14')
          RedMM14.markType = 'quad'
          RedMM14.markForCoa = 'all'
          RedMM14.color = {255, 0, 0, 255}
          RedMM14.fillColor = {254, 0, 0, 50}
          RedMM14.lineType = 4
          mist.marker.add(RedMM14)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM14 = {}
            ContMM14.pos = mist.getGroupPoints('MM14')
            ContMM14.markType = 'quad'
            ContMM14.markForCoa = 'all'
            ContMM14.color = {0, 0, 0, 255}
            ContMM14.fillColor = {0, 0, 0, 50}
            ContMM14.lineType = 4
            mist.marker.add(ContMM14)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM14zonecolor, 53, timer.getTime{}+97)
      env.info("----------------------------MM14zonecolor TIMER STARTED--------------------------")

function MM27zonecolor()
  env.info("MM27zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM27")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM27 = {}
        BlueMM27.pos = mist.getGroupPoints('MM27')
        BlueMM27.markType = 'quad'
        BlueMM27.markForCoa = 'all'
        BlueMM27.color = {0, 0, 254, 255}
        BlueMM27.fillColor = {1, 1, 254, 50}
        BlueMM27.lineType = 4
        mist.marker.add(BlueMM27)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM27 = {}
          RedMM27.pos = mist.getGroupPoints('MM27')
          RedMM27.markType = 'quad'
          RedMM27.markForCoa = 'all'
          RedMM27.color = {255, 0, 0, 255}
          RedMM27.fillColor = {254, 0, 0, 50}
          RedMM27.lineType = 4
          mist.marker.add(RedMM27)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM27 = {}
            ContMM27.pos = mist.getGroupPoints('MM27')
            ContMM27.markType = 'quad'
            ContMM27.markForCoa = 'all'
            ContMM27.color = {0, 0, 0, 255}
            ContMM27.fillColor = {0, 0, 0, 50}
            ContMM27.lineType = 4
            mist.marker.add(ContMM27)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM27zonecolor, 53, timer.getTime{}+98)
      env.info("----------------------------MM27zonecolor TIMER STARTED--------------------------")

function MM26zonecolor()
  env.info("MM26zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM26")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM26 = {}
        BlueMM26.pos = mist.getGroupPoints('MM26')
        BlueMM26.markType = 'quad'
        BlueMM26.markForCoa = 'all'
        BlueMM26.color = {0, 0, 254, 255}
        BlueMM26.fillColor = {1, 1, 254, 50}
        BlueMM26.lineType = 4
        mist.marker.add(BlueMM26)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM26 = {}
          RedMM26.pos = mist.getGroupPoints('MM26')
          RedMM26.markType = 'quad'
          RedMM26.markForCoa = 'all'
          RedMM26.color = {255, 0, 0, 255}
          RedMM26.fillColor = {254, 0, 0, 50}
          RedMM26.lineType = 4
          mist.marker.add(RedMM26)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM26 = {}
            ContMM26.pos = mist.getGroupPoints('MM26')
            ContMM26.markType = 'quad'
            ContMM26.markForCoa = 'all'
            ContMM26.color = {0, 0, 0, 255}
            ContMM26.fillColor = {0, 0, 0, 50}
            ContMM26.lineType = 4
            mist.marker.add(ContMM26)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM26zonecolor, 53, timer.getTime{}+99)
      env.info("----------------------------MM26zonecolor TIMER STARTED--------------------------")


function MM25zonecolor()
  env.info("MM25zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM25")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM25 = {}
        BlueMM25.pos = mist.getGroupPoints('MM25')
        BlueMM25.markType = 'quad'
        BlueMM25.markForCoa = 'all'
        BlueMM25.color = {0, 0, 254, 255}
        BlueMM25.fillColor = {1, 1, 254, 50}
        BlueMM25.lineType = 4
        mist.marker.add(BlueMM25)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM25 = {}
          RedMM25.pos = mist.getGroupPoints('MM25')
          RedMM25.markType = 'quad'
          RedMM25.markForCoa = 'all'
          RedMM25.color = {255, 0, 0, 255}
          RedMM25.fillColor = {254, 0, 0, 50}
          RedMM25.lineType = 4
          mist.marker.add(RedMM25)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM25 = {}
            ContMM25.pos = mist.getGroupPoints('MM25')
            ContMM25.markType = 'quad'
            ContMM25.markForCoa = 'all'
            ContMM25.color = {0, 0, 0, 255}
            ContMM25.fillColor = {0, 0, 0, 50}
            ContMM25.lineType = 4
            mist.marker.add(ContMM25)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM25zonecolor, 53, timer.getTime{}+100)
      env.info("----------------------------MM25zonecolor TIMER STARTED--------------------------")



function MM24zonecolor()
  env.info("MM24zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM24")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM24 = {}
        BlueMM24.pos = mist.getGroupPoints('MM24')
        BlueMM24.markType = 'quad'
        BlueMM24.markForCoa = 'all'
        BlueMM24.color = {0, 0, 254, 255}
        BlueMM24.fillColor = {1, 1, 254, 50}
        BlueMM24.lineType = 4
        mist.marker.add(BlueMM24)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM24 = {}
          RedMM24.pos = mist.getGroupPoints('MM24')
          RedMM24.markType = 'quad'
          RedMM24.markForCoa = 'all'
          RedMM24.color = {255, 0, 0, 255}
          RedMM24.fillColor = {254, 0, 0, 50}
          RedMM24.lineType = 4
          mist.marker.add(RedMM24)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM24 = {}
            ContMM24.pos = mist.getGroupPoints('MM24')
            ContMM24.markType = 'quad'
            ContMM24.markForCoa = 'all'
            ContMM24.color = {0, 0, 0, 255}
            ContMM24.fillColor = {0, 0, 0, 50}
            ContMM24.lineType = 4
            mist.marker.add(ContMM24)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM24zonecolor, 53, timer.getTime{}+101)
      env.info("----------------------------MM24zonecolor TIMER STARTED--------------------------")


function MM36zonecolor()
  env.info("MM36zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM36")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM36 = {}
        BlueMM36.pos = mist.getGroupPoints('MM36')
        BlueMM36.markType = 'quad'
        BlueMM36.markForCoa = 'all'
        BlueMM36.color = {0, 0, 254, 255}
        BlueMM36.fillColor = {1, 1, 254, 50}
        BlueMM36.lineType = 4
        mist.marker.add(BlueMM36)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM36 = {}
          RedMM36.pos = mist.getGroupPoints('MM36')
          RedMM36.markType = 'quad'
          RedMM36.markForCoa = 'all'
          RedMM36.color = {255, 0, 0, 255}
          RedMM36.fillColor = {254, 0, 0, 50}
          RedMM36.lineType = 4
          mist.marker.add(RedMM36)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM36 = {}
            ContMM36.pos = mist.getGroupPoints('MM36')
            ContMM36.markType = 'quad'
            ContMM36.markForCoa = 'all'
            ContMM36.color = {0, 0, 0, 255}
            ContMM36.fillColor = {0, 0, 0, 50}
            ContMM36.lineType = 4
            mist.marker.add(ContMM36)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM36zonecolor, 53, timer.getTime{}+102)
      env.info("----------------------------MM36zonecolor TIMER STARTED--------------------------")


function MM35zonecolor()
  env.info("MM35zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM35")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM35 = {}
        BlueMM35.pos = mist.getGroupPoints('MM35')
        BlueMM35.markType = 'quad'
        BlueMM35.markForCoa = 'all'
        BlueMM35.color = {0, 0, 254, 255}
        BlueMM35.fillColor = {1, 1, 254, 50}
        BlueMM35.lineType = 4
        mist.marker.add(BlueMM35)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM35 = {}
          RedMM35.pos = mist.getGroupPoints('MM35')
          RedMM35.markType = 'quad'
          RedMM35.markForCoa = 'all'
          RedMM35.color = {255, 0, 0, 255}
          RedMM35.fillColor = {254, 0, 0, 50}
          RedMM35.lineType = 4
          mist.marker.add(RedMM35)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM35 = {}
            ContMM35.pos = mist.getGroupPoints('MM35')
            ContMM35.markType = 'quad'
            ContMM35.markForCoa = 'all'
            ContMM35.color = {0, 0, 0, 255}
            ContMM35.fillColor = {0, 0, 0, 50}
            ContMM35.lineType = 4
            mist.marker.add(ContMM35)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM35zonecolor, 53, timer.getTime{}+103)
      env.info("----------------------------MM35zonecolor TIMER STARTED--------------------------")



function MM34zonecolor()
  env.info("MM34zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM34")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM34 = {}
        BlueMM34.pos = mist.getGroupPoints('MM34')
        BlueMM34.markType = 'quad'
        BlueMM34.markForCoa = 'all'
        BlueMM34.color = {0, 0, 254, 255}
        BlueMM34.fillColor = {1, 1, 254, 50}
        BlueMM34.lineType = 4
        mist.marker.add(BlueMM34)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM34 = {}
          RedMM34.pos = mist.getGroupPoints('MM34')
          RedMM34.markType = 'quad'
          RedMM34.markForCoa = 'all'
          RedMM34.color = {255, 0, 0, 255}
          RedMM34.fillColor = {254, 0, 0, 50}
          RedMM34.lineType = 4
          mist.marker.add(RedMM34)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM34 = {}
            ContMM34.pos = mist.getGroupPoints('MM34')
            ContMM34.markType = 'quad'
            ContMM34.markForCoa = 'all'
            ContMM34.color = {0, 0, 0, 255}
            ContMM34.fillColor = {0, 0, 0, 50}
            ContMM34.lineType = 4
            mist.marker.add(ContMM34)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM34zonecolor, 53, timer.getTime{}+104)
      env.info("----------------------------MM34zonecolor TIMER STARTED--------------------------")


function MM45zonecolor()
  env.info("MM45zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM45")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM45 = {}
        BlueMM45.pos = mist.getGroupPoints('MM45')
        BlueMM45.markType = 'quad'
        BlueMM45.markForCoa = 'all'
        BlueMM45.color = {0, 0, 254, 255}
        BlueMM45.fillColor = {1, 1, 254, 50}
        BlueMM45.lineType = 4
        mist.marker.add(BlueMM45)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM45 = {}
          RedMM45.pos = mist.getGroupPoints('MM45')
          RedMM45.markType = 'quad'
          RedMM45.markForCoa = 'all'
          RedMM45.color = {255, 0, 0, 255}
          RedMM45.fillColor = {254, 0, 0, 50}
          RedMM45.lineType = 4
          mist.marker.add(RedMM45)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM45 = {}
            ContMM45.pos = mist.getGroupPoints('MM45')
            ContMM45.markType = 'quad'
            ContMM45.markForCoa = 'all'
            ContMM45.color = {0, 0, 0, 255}
            ContMM45.fillColor = {0, 0, 0, 50}
            ContMM45.lineType = 4
            mist.marker.add(ContMM45)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM45zonecolor, 53, timer.getTime{}+105)
      env.info("----------------------------MM45zonecolor TIMER STARTED--------------------------")


function MM44zonecolor()
  env.info("MM44zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM44")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM44 = {}
        BlueMM44.pos = mist.getGroupPoints('MM44')
        BlueMM44.markType = 'quad'
        BlueMM44.markForCoa = 'all'
        BlueMM44.color = {0, 0, 254, 255}
        BlueMM44.fillColor = {1, 1, 254, 50}
        BlueMM44.lineType = 4
        mist.marker.add(BlueMM44)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM44 = {}
          RedMM44.pos = mist.getGroupPoints('MM44')
          RedMM44.markType = 'quad'
          RedMM44.markForCoa = 'all'
          RedMM44.color = {255, 0, 0, 255}
          RedMM44.fillColor = {254, 0, 0, 50}
          RedMM44.lineType = 4
          mist.marker.add(RedMM44)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM44 = {}
            ContMM44.pos = mist.getGroupPoints('MM44')
            ContMM44.markType = 'quad'
            ContMM44.markForCoa = 'all'
            ContMM44.color = {0, 0, 0, 255}
            ContMM44.fillColor = {0, 0, 0, 50}
            ContMM44.lineType = 4
            mist.marker.add(ContMM44)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM44zonecolor, 53, timer.getTime{}+106)
      env.info("----------------------------MM44zonecolor TIMER STARTED--------------------------")


function MM43zonecolor()
  env.info("MM43zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM43")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM43 = {}
        BlueMM43.pos = mist.getGroupPoints('MM43')
        BlueMM43.markType = 'quad'
        BlueMM43.markForCoa = 'all'
        BlueMM43.color = {0, 0, 254, 255}
        BlueMM43.fillColor = {1, 1, 254, 50}
        BlueMM43.lineType = 4
        mist.marker.add(BlueMM43)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM43 = {}
          RedMM43.pos = mist.getGroupPoints('MM43')
          RedMM43.markType = 'quad'
          RedMM43.markForCoa = 'all'
          RedMM43.color = {255, 0, 0, 255}
          RedMM43.fillColor = {254, 0, 0, 50}
          RedMM43.lineType = 4
          mist.marker.add(RedMM43)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM43 = {}
            ContMM43.pos = mist.getGroupPoints('MM43')
            ContMM43.markType = 'quad'
            ContMM43.markForCoa = 'all'
            ContMM43.color = {0, 0, 0, 255}
            ContMM43.fillColor = {0, 0, 0, 50}
            ContMM43.lineType = 4
            mist.marker.add(ContMM43)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM43zonecolor, 53, timer.getTime{}+107)
      env.info("----------------------------MM43zonecolor TIMER STARTED--------------------------")


function MM55zonecolor()
  env.info("MM55zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM55")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM55 = {}
        BlueMM55.pos = mist.getGroupPoints('MM55')
        BlueMM55.markType = 'quad'
        BlueMM55.markForCoa = 'all'
        BlueMM55.color = {0, 0, 254, 255}
        BlueMM55.fillColor = {1, 1, 254, 50}
        BlueMM55.lineType = 4
        mist.marker.add(BlueMM55)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM55 = {}
          RedMM55.pos = mist.getGroupPoints('MM55')
          RedMM55.markType = 'quad'
          RedMM55.markForCoa = 'all'
          RedMM55.color = {255, 0, 0, 255}
          RedMM55.fillColor = {254, 0, 0, 50}
          RedMM55.lineType = 4
          mist.marker.add(RedMM55)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM55 = {}
            ContMM55.pos = mist.getGroupPoints('MM55')
            ContMM55.markType = 'quad'
            ContMM55.markForCoa = 'all'
            ContMM55.color = {0, 0, 0, 255}
            ContMM55.fillColor = {0, 0, 0, 50}
            ContMM55.lineType = 4
            mist.marker.add(ContMM55)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM55zonecolor, 53, timer.getTime{}+108)
      env.info("----------------------------MM55zonecolor TIMER STARTED--------------------------")


function MM54zonecolor()
  env.info("MM54zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM54")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM54 = {}
        BlueMM54.pos = mist.getGroupPoints('MM54')
        BlueMM54.markType = 'quad'
        BlueMM54.markForCoa = 'all'
        BlueMM54.color = {0, 0, 254, 255}
        BlueMM54.fillColor = {1, 1, 254, 50}
        BlueMM54.lineType = 4
        mist.marker.add(BlueMM54)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM54 = {}
          RedMM54.pos = mist.getGroupPoints('MM54')
          RedMM54.markType = 'quad'
          RedMM54.markForCoa = 'all'
          RedMM54.color = {255, 0, 0, 255}
          RedMM54.fillColor = {254, 0, 0, 50}
          RedMM54.lineType = 4
          mist.marker.add(RedMM54)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM54 = {}
            ContMM54.pos = mist.getGroupPoints('MM54')
            ContMM54.markType = 'quad'
            ContMM54.markForCoa = 'all'
            ContMM54.color = {0, 0, 0, 255}
            ContMM54.fillColor = {0, 0, 0, 50}
            ContMM54.lineType = 4
            mist.marker.add(ContMM54)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM54zonecolor, 53, timer.getTime{}+109)
      env.info("----------------------------MM54zonecolor TIMER STARTED--------------------------")


function MM53zonecolor()
  env.info("MM53zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM53")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM53 = {}
        BlueMM53.pos = mist.getGroupPoints('MM53')
        BlueMM53.markType = 'quad'
        BlueMM53.markForCoa = 'all'
        BlueMM53.color = {0, 0, 254, 255}
        BlueMM53.fillColor = {1, 1, 254, 50}
        BlueMM53.lineType = 4
        mist.marker.add(BlueMM53)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM53 = {}
          RedMM53.pos = mist.getGroupPoints('MM53')
          RedMM53.markType = 'quad'
          RedMM53.markForCoa = 'all'
          RedMM53.color = {255, 0, 0, 255}
          RedMM53.fillColor = {254, 0, 0, 50}
          RedMM53.lineType = 4
          mist.marker.add(RedMM53)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM53 = {}
            ContMM53.pos = mist.getGroupPoints('MM53')
            ContMM53.markType = 'quad'
            ContMM53.markForCoa = 'all'
            ContMM53.color = {0, 0, 0, 255}
            ContMM53.fillColor = {0, 0, 0, 50}
            ContMM53.lineType = 4
            mist.marker.add(ContMM53)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM53zonecolor, 53, timer.getTime{}+110)
      env.info("----------------------------MM53zonecolor TIMER STARTED--------------------------")

function MM65zonecolor()
  env.info("MM65zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM65")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM65 = {}
        BlueMM65.pos = mist.getGroupPoints('MM65')
        BlueMM65.markType = 'quad'
        BlueMM65.markForCoa = 'all'
        BlueMM65.color = {0, 0, 254, 255}
        BlueMM65.fillColor = {1, 1, 254, 50}
        BlueMM65.lineType = 4
        mist.marker.add(BlueMM65)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM65 = {}
          RedMM65.pos = mist.getGroupPoints('MM65')
          RedMM65.markType = 'quad'
          RedMM65.markForCoa = 'all'
          RedMM65.color = {255, 0, 0, 255}
          RedMM65.fillColor = {254, 0, 0, 50}
          RedMM65.lineType = 4
          mist.marker.add(RedMM65)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM65 = {}
            ContMM65.pos = mist.getGroupPoints('MM65')
            ContMM65.markType = 'quad'
            ContMM65.markForCoa = 'all'
            ContMM65.color = {0, 0, 0, 255}
            ContMM65.fillColor = {0, 0, 0, 50}
            ContMM65.lineType = 4
            mist.marker.add(ContMM65)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM65zonecolor, 53, timer.getTime{}+111)
      env.info("----------------------------MM65zonecolor TIMER STARTED--------------------------")


function MM64zonecolor()
  env.info("MM64zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM64")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM64 = {}
        BlueMM64.pos = mist.getGroupPoints('MM64')
        BlueMM64.markType = 'quad'
        BlueMM64.markForCoa = 'all'
        BlueMM64.color = {0, 0, 254, 255}
        BlueMM64.fillColor = {1, 1, 254, 50}
        BlueMM64.lineType = 4
        mist.marker.add(BlueMM64)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM64 = {}
          RedMM64.pos = mist.getGroupPoints('MM64')
          RedMM64.markType = 'quad'
          RedMM64.markForCoa = 'all'
          RedMM64.color = {255, 0, 0, 255}
          RedMM64.fillColor = {254, 0, 0, 50}
          RedMM64.lineType = 4
          mist.marker.add(RedMM64)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM64 = {}
            ContMM64.pos = mist.getGroupPoints('MM64')
            ContMM64.markType = 'quad'
            ContMM64.markForCoa = 'all'
            ContMM64.color = {0, 0, 0, 255}
            ContMM64.fillColor = {0, 0, 0, 50}
            ContMM64.lineType = 4
            mist.marker.add(ContMM64)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM64zonecolor, 53, timer.getTime{}+112)
      env.info("----------------------------MM64zonecolor TIMER STARTED--------------------------")

function MM63zonecolor()
  env.info("MM63zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM63")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM63 = {}
        BlueMM63.pos = mist.getGroupPoints('MM63')
        BlueMM63.markType = 'quad'
        BlueMM63.markForCoa = 'all'
        BlueMM63.color = {0, 0, 254, 255}
        BlueMM63.fillColor = {1, 1, 254, 50}
        BlueMM63.lineType = 4
        mist.marker.add(BlueMM63)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM63 = {}
          RedMM63.pos = mist.getGroupPoints('MM63')
          RedMM63.markType = 'quad'
          RedMM63.markForCoa = 'all'
          RedMM63.color = {255, 0, 0, 255}
          RedMM63.fillColor = {254, 0, 0, 50}
          RedMM63.lineType = 4
          mist.marker.add(RedMM63)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM63 = {}
            ContMM63.pos = mist.getGroupPoints('MM63')
            ContMM63.markType = 'quad'
            ContMM63.markForCoa = 'all'
            ContMM63.color = {0, 0, 0, 255}
            ContMM63.fillColor = {0, 0, 0, 50}
            ContMM63.lineType = 4
            mist.marker.add(ContMM63)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM63zonecolor, 53, timer.getTime{}+112)
      env.info("----------------------------MM63zonecolor TIMER STARTED--------------------------")

function MM75zonecolor()
  env.info("MM75zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM75")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM75 = {}
        BlueMM75.pos = mist.getGroupPoints('MM75')
        BlueMM75.markType = 'quad'
        BlueMM75.markForCoa = 'all'
        BlueMM75.color = {0, 0, 254, 255}
        BlueMM75.fillColor = {1, 1, 254, 50}
        BlueMM75.lineType = 4
        mist.marker.add(BlueMM75)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM75 = {}
          RedMM75.pos = mist.getGroupPoints('MM75')
          RedMM75.markType = 'quad'
          RedMM75.markForCoa = 'all'
          RedMM75.color = {255, 0, 0, 255}
          RedMM75.fillColor = {254, 0, 0, 50}
          RedMM75.lineType = 4
          mist.marker.add(RedMM75)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM75 = {}
            ContMM75.pos = mist.getGroupPoints('MM75')
            ContMM75.markType = 'quad'
            ContMM75.markForCoa = 'all'
            ContMM75.color = {0, 0, 0, 255}
            ContMM75.fillColor = {0, 0, 0, 50}
            ContMM75.lineType = 4
            mist.marker.add(ContMM75)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM75zonecolor, 53, timer.getTime{}+113)
      env.info("----------------------------MM75zonecolor TIMER STARTED--------------------------")

function MM74zonecolor()
  env.info("MM74zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM74")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM74 = {}
        BlueMM74.pos = mist.getGroupPoints('MM74')
        BlueMM74.markType = 'quad'
        BlueMM74.markForCoa = 'all'
        BlueMM74.color = {0, 0, 254, 255}
        BlueMM74.fillColor = {1, 1, 254, 50}
        BlueMM74.lineType = 4
        mist.marker.add(BlueMM74)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM74 = {}
          RedMM74.pos = mist.getGroupPoints('MM74')
          RedMM74.markType = 'quad'
          RedMM74.markForCoa = 'all'
          RedMM74.color = {255, 0, 0, 255}
          RedMM74.fillColor = {254, 0, 0, 50}
          RedMM74.lineType = 4
          mist.marker.add(RedMM74)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM74 = {}
            ContMM74.pos = mist.getGroupPoints('MM74')
            ContMM74.markType = 'quad'
            ContMM74.markForCoa = 'all'
            ContMM74.color = {0, 0, 0, 255}
            ContMM74.fillColor = {0, 0, 0, 50}
            ContMM74.lineType = 4
            mist.marker.add(ContMM74)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM74zonecolor, 53, timer.getTime{}+114)
      env.info("----------------------------MM74zonecolor TIMER STARTED--------------------------")

function MM73zonecolor()
  env.info("MM73zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM73")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM73 = {}
        BlueMM73.pos = mist.getGroupPoints('MM73')
        BlueMM73.markType = 'quad'
        BlueMM73.markForCoa = 'all'
        BlueMM73.color = {0, 0, 254, 255}
        BlueMM73.fillColor = {1, 1, 254, 50}
        BlueMM73.lineType = 4
        mist.marker.add(BlueMM73)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM73 = {}
          RedMM73.pos = mist.getGroupPoints('MM73')
          RedMM73.markType = 'quad'
          RedMM73.markForCoa = 'all'
          RedMM73.color = {255, 0, 0, 255}
          RedMM73.fillColor = {254, 0, 0, 50}
          RedMM73.lineType = 4
          mist.marker.add(RedMM73)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM73 = {}
            ContMM73.pos = mist.getGroupPoints('MM73')
            ContMM73.markType = 'quad'
            ContMM73.markForCoa = 'all'
            ContMM73.color = {0, 0, 0, 255}
            ContMM73.fillColor = {0, 0, 0, 50}
            ContMM73.lineType = 4
            mist.marker.add(ContMM73)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM73zonecolor, 53, timer.getTime{}+115)
      env.info("----------------------------MM73zonecolor TIMER STARTED--------------------------")


function MM72zonecolor()
  env.info("MM72zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM72")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM72 = {}
        BlueMM72.pos = mist.getGroupPoints('MM72')
        BlueMM72.markType = 'quad'
        BlueMM72.markForCoa = 'all'
        BlueMM72.color = {0, 0, 254, 255}
        BlueMM72.fillColor = {1, 1, 254, 50}
        BlueMM72.lineType = 4
        mist.marker.add(BlueMM72)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM72 = {}
          RedMM72.pos = mist.getGroupPoints('MM72')
          RedMM72.markType = 'quad'
          RedMM72.markForCoa = 'all'
          RedMM72.color = {255, 0, 0, 255}
          RedMM72.fillColor = {254, 0, 0, 50}
          RedMM72.lineType = 4
          mist.marker.add(RedMM72)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM72 = {}
            ContMM72.pos = mist.getGroupPoints('MM72')
            ContMM72.markType = 'quad'
            ContMM72.markForCoa = 'all'
            ContMM72.color = {0, 0, 0, 255}
            ContMM72.fillColor = {0, 0, 0, 50}
            ContMM72.lineType = 4
            mist.marker.add(ContMM72)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM72zonecolor, 53, timer.getTime{}+116)
      env.info("----------------------------MM72zonecolor TIMER STARTED--------------------------")


function MM84zonecolor()
  env.info("MM84zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM84")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM84 = {}
        BlueMM84.pos = mist.getGroupPoints('MM84')
        BlueMM84.markType = 'quad'
        BlueMM84.markForCoa = 'all'
        BlueMM84.color = {0, 0, 254, 255}
        BlueMM84.fillColor = {1, 1, 254, 50}
        BlueMM84.lineType = 4
        mist.marker.add(BlueMM84)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM84 = {}
          RedMM84.pos = mist.getGroupPoints('MM84')
          RedMM84.markType = 'quad'
          RedMM84.markForCoa = 'all'
          RedMM84.color = {255, 0, 0, 255}
          RedMM84.fillColor = {254, 0, 0, 50}
          RedMM84.lineType = 4
          mist.marker.add(RedMM84)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM84 = {}
            ContMM84.pos = mist.getGroupPoints('MM84')
            ContMM84.markType = 'quad'
            ContMM84.markForCoa = 'all'
            ContMM84.color = {0, 0, 0, 255}
            ContMM84.fillColor = {0, 0, 0, 50}
            ContMM84.lineType = 4
            mist.marker.add(ContMM84)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM84zonecolor, 53, timer.getTime{}+117)
      env.info("----------------------------MM84zonecolor TIMER STARTED--------------------------")

function MM83zonecolor()
  env.info("MM83zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM83")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM83 = {}
        BlueMM83.pos = mist.getGroupPoints('MM83')
        BlueMM83.markType = 'quad'
        BlueMM83.markForCoa = 'all'
        BlueMM83.color = {0, 0, 254, 255}
        BlueMM83.fillColor = {1, 1, 254, 50}
        BlueMM83.lineType = 4
        mist.marker.add(BlueMM83)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM83 = {}
          RedMM83.pos = mist.getGroupPoints('MM83')
          RedMM83.markType = 'quad'
          RedMM83.markForCoa = 'all'
          RedMM83.color = {255, 0, 0, 255}
          RedMM83.fillColor = {254, 0, 0, 50}
          RedMM83.lineType = 4
          mist.marker.add(RedMM83)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM83 = {}
            ContMM83.pos = mist.getGroupPoints('MM83')
            ContMM83.markType = 'quad'
            ContMM83.markForCoa = 'all'
            ContMM83.color = {0, 0, 0, 255}
            ContMM83.fillColor = {0, 0, 0, 50}
            ContMM83.lineType = 4
            mist.marker.add(ContMM83)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM83zonecolor, 53, timer.getTime{}+118)
      env.info("----------------------------MM83zonecolor TIMER STARTED--------------------------")

function MM82zonecolor()
  env.info("MM82zonecolor FUNCTION STARTED")
local myzone = ZONE:FindByName("MM82")
  if blufor:AnyInZone(myzone) and redfor:NoneInZone(myzone) then
    local BlueMM82 = {}
        BlueMM82.pos = mist.getGroupPoints('MM82')
        BlueMM82.markType = 'quad'
        BlueMM82.markForCoa = 'all'
        BlueMM82.color = {0, 0, 254, 255}
        BlueMM82.fillColor = {1, 1, 254, 50}
        BlueMM82.lineType = 4
        mist.marker.add(BlueMM82)
    --BASE:E(myzone.ZoneName.. "  BluFor Controlled ")

  else
    if blufor:NoneInZone(myzone) and redfor:AnyInZone(myzone) then
      local RedMM82 = {}
          RedMM82.pos = mist.getGroupPoints('MM82')
          RedMM82.markType = 'quad'
          RedMM82.markForCoa = 'all'
          RedMM82.color = {255, 0, 0, 255}
          RedMM82.fillColor = {254, 0, 0, 50}
          RedMM82.lineType = 4
          mist.marker.add(RedMM82)
      --BASE:E(myzone.ZoneName.. "  RedFor Controlled ")
    else
      if blufor:AnyInZone(myzone) and redfor:AnyInZone(myzone) then
        local ContMM82 = {}
            ContMM82.pos = mist.getGroupPoints('MM82')
            ContMM82.markType = 'quad'
            ContMM82.markForCoa = 'all'
            ContMM82.color = {0, 0, 0, 255}
            ContMM82.fillColor = {0, 0, 0, 50}
            ContMM82.lineType = 4
            mist.marker.add(ContMM82)
        --BASE:E(myzone.ZoneName.. "  Contested ")

      end
    end
  end
end
      timer.scheduleFunction(MM82zonecolor, 53, timer.getTime{}+118)
      env.info("----------------------------MM82zonecolor TIMER STARTED--------------------------")
