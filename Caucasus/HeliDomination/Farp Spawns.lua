blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
bluAA = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("BLUE Farp AA") :FilterStart()
redAA = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("RED Farp AA") :FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueFarpDefence = { "BLUE AA-1","BLUE AA-2", "BLUE AA-3", "BLUE AA-4" }
RedFarpDefence = { "RED AA-1","RED AA-2", "RED AA-3", "RED AA-4" }

BlueFarptrigger = SCHEDULER:New(nil,
function()
  local LM95zone = ZONE:FindByName("LM95")
  local FarpLM95zone = ZONE:FindByName("Blue LM95 FARP")
  local BlueLM95FARPDef = ZONE:FindByName("Blue Farp Defense-1")

  if redfor:NoneInZone(LM95zone) and not Group.getByName('Static FARP Fuel Depot-1') then
          mist.respawnGroup('Static FARP Fuel Depot-1', true)
  end
  if redfor:NoneInZone(LM95zone) and not Group.getByName('Static FARP Ammo Storage-1') then
          mist.respawnGroup('Static FARP Ammo Storage-1', true)
  end
  if redfor:NoneInZone(LM95zone) and not Group.getByName('BLUE Supply LM95') then
           mist.respawnGroup('BLUE Supply LM95', true)
  end
  if redfor:NoneInZone(LM95zone) and blufor:NoneInZone(BlueLM95FARPDef)then
        SPAWN:New("BLUE Farp AA-1")
        :InitRandomizeTemplate(BlueFarpDefence)
        :InitLimit( 4, 400 )
        :SpawnScheduled( 5, .5 )
      else
        return nil
  end

  local LM97zone = ZONE:FindByName("LM97")
  local FarpLM97zone = ZONE:FindByName("Blue LM97 FARP")
  local BlueLM97FARPDef = ZONE:FindByName("Blue Farp Defense-2")

      if redfor:NoneInZone(LM97zone) and not Group.getByName('Static FARP Fuel Depot-2') then
      mist.respawnGroup('Static FARP Fuel Depot-2', true)
      end
      if redfor:NoneInZone(LM97zone) and not Group.getByName('Static FARP Ammo Storage-2') then
      mist.respawnGroup('Static FARP Ammo Storage-2', true)
      end

       if redfor:NoneInZone(LM97zone) and not Group.getByName('BLUE Supply LM97') then
               mist.respawnGroup('BLUE Supply LM97', true)
       end
          if redfor:NoneInZone(LM97zone) and blufor:NoneInZone(BlueLM97FARPDef)then
            SPAWN:New("BLUE Farp AA-2")
            :InitRandomizeTemplate(BlueFarpDefence)
            :InitLimit( 4, 400 )
            :SpawnScheduled( 5, .5 )
          else
            return nil
          end

    local MM34zone = ZONE:FindByName("MM34")
    local FarpMM34zone = ZONE:FindByName("Blue MM34 FARP")
    local BlueMM34FARPDef = ZONE:FindByName("Blue Farp Defense-3")

          if redfor:NoneInZone(MM34zone) and not Group.getByName('Static FARP Fuel Depot-3') then
          mist.respawnGroup('Static FARP Fuel Depot-3', true)
          end
          if redfor:NoneInZone(MM34zone) and not Group.getByName('Static FARP Ammo Storage-3') then
          mist.respawnGroup('Static FARP Ammo Storage-3', true)
          end

           if redfor:NoneInZone(MM34zone) and not Group.getByName('BLUE Supply MM34') then
                   mist.respawnGroup('BLUE Supply MM34', true)
           end
              if redfor:NoneInZone(MM34zone) and blufor:NoneInZone(BlueMM34FARPDef)then
                SPAWN:New("BLUE Farp AA-3")
                :InitRandomizeTemplate(BlueFarpDefence)
                :InitLimit( 4, 400 )
                :SpawnScheduled( 5, .5 )
              else
                return nil
              end

              local MM26zone = ZONE:FindByName("MM26")
              local FarpMM26zone = ZONE:FindByName("Blue MM26 FARP")
              local BlueMM26FARPDef = ZONE:FindByName("Blue Farp Defense-4")

                    if redfor:NoneInZone(MM26zone) and not Group.getByName('Static FARP Fuel Depot-4') then
                    mist.respawnGroup('Static FARP Fuel Depot-4', true)
                    end
                    if redfor:NoneInZone(MM26zone) and not Group.getByName('Static FARP Ammo Storage-4') then
                    mist.respawnGroup('Static FARP Ammo Storage-4', true)
                    end

                     if redfor:NoneInZone(MM26zone) and not Group.getByName('BLUE Supply MM26') then
                             mist.respawnGroup('BLUE Supply MM26', true)
                     end
                        if redfor:NoneInZone(MM26zone) and blufor:NoneInZone(BlueMM26FARPDef)then
                          SPAWN:New("BLUE Farp AA-4")
                          :InitRandomizeTemplate(BlueFarpDefence)
                          :InitLimit( 4, 400 )
                          :SpawnScheduled( 5, .5 )
                        else
                          return nil
                        end

                        local MM74zone = ZONE:FindByName("MM74")
                        local FarpMM74zone = ZONE:FindByName("Blue MM74 FARP")
                        local BlueMM74FARPDef = ZONE:FindByName("Blue Farp Defense-5")

                              if redfor:NoneInZone(MM74zone) and not Group.getByName('Static FARP Fuel Depot-5') then
                              mist.respawnGroup('Static FARP Fuel Depot-5', true)
                              end
                              if redfor:NoneInZone(MM74zone) and not Group.getByName('Static FARP Ammo Storage-5') then
                              mist.respawnGroup('Static FARP Ammo Storage-5', true)
                              end

                               if redfor:NoneInZone(MM74zone) and not Group.getByName('BLUE Supply MM74') then
                                       mist.respawnGroup('BLUE Supply MM74', true)
                               end
                                  if redfor:NoneInZone(MM74zone) and blufor:NoneInZone(BlueMM74FARPDef)then
                                    SPAWN:New("BLUE Farp AA-5")
                                    :InitRandomizeTemplate(BlueFarpDefence)
                                    :InitLimit( 4, 400 )
                                    :SpawnScheduled( 5, .5 )
                                  else
                                    return nil
                                  end

                                  local MM82zone = ZONE:FindByName("MM82")
                                  local FarpMM82zone = ZONE:FindByName("Blue MM82 FARP")
                                  local BlueMM82FARPDef = ZONE:FindByName("Blue Farp Defense-6")

                                        if redfor:NoneInZone(MM82zone) and not Group.getByName('Static FARP Fuel Depot-6') then
                                        mist.respawnGroup('Static FARP Fuel Depot-6', true)
                                        end
                                        if redfor:NoneInZone(MM82zone) and not Group.getByName('Static FARP Ammo Storage-6') then
                                        mist.respawnGroup('Static FARP Ammo Storage-6', true)
                                        end

                                         if redfor:NoneInZone(MM82zone) and not Group.getByName('BLUE Supply MM82') then
                                                 mist.respawnGroup('BLUE Supply MM82', true)
                                         end
                                            if redfor:NoneInZone(MM82zone) and blufor:NoneInZone(BlueMM82FARPDef)then
                                              SPAWN:New("BLUE Farp AA-6")
                                              :InitRandomizeTemplate(BlueFarpDefence)
                                              :InitLimit( 4, 400 )
                                              :SpawnScheduled( 5, .5 )
                                            else
                                              return nil
                                            end
    local LM54zone = ZONE:FindByName("LM54")
    local FarpLM54zone = ZONE:FindByName("Blue LM54 FARP")
    local BlueLM54FARPDef = ZONE:FindByName("Blue Farp Defense-7")

            if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone)  then
            SPAWN:New("BLUE Supply LM54")
            :InitLimit( 4, 400 )
            :SpawnScheduled( 5, .5 )
          else
            return nil
            end
            if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and  not Group.getByName('Static FARP Fuel Depot-7') then
            mist.respawnGroup('Static FARP Fuel Depot-7', true)
            end
          if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('Static FARP Ammo Storage-7') then
          mist.respawnGroup('Static FARP Ammo Storage-7', true)
          end
           if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('BLUE Supply LM54') then
                   mist.respawnGroup('BLUE Supply LM54', true)
           end
              if redfor:NoneInZone(LM54zone) and bluAA:NoneInZone(BlueLM54FARPDef)then
                SPAWN:New("BLUE Farp AA-7")
                :InitRandomizeTemplate(BlueFarpDefence)
                :InitLimit( 4, 400 )
                :SpawnScheduled( 5, .5 )
              else
                return nil
              end
              local LM68zone = ZONE:FindByName("LM68")
              local FarpLM68zone = ZONE:FindByName("Blue LM68 FARP")
              local BlueLM68FARPDef = ZONE:FindByName("Blue Farp Defense-8")

                      if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone)  then
                      SPAWN:New("BLUE Supply LM68")
                      :InitLimit( 4, 400 )
                      :SpawnScheduled( 5, .5 )
                    else
                      return nil
                      end
                      if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and  not Group.getByName('Static FARP Fuel Depot-8') then
                      mist.respawnGroup('Static FARP Fuel Depot-8', true)
                      end
                    if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('Static FARP Ammo Storage-8') then
                    mist.respawnGroup('Static FARP Ammo Storage-8', true)
                    end
                     if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('BLUE Supply LM68') then
                             mist.respawnGroup('BLUE Supply LM68', true)
                     end
                        if redfor:NoneInZone(LM68zone) and bluAA:NoneInZone(BlueLM68FARPDef)then
                          SPAWN:New("BLUE Farp AA-8")
                          :InitRandomizeTemplate(BlueFarpDefence)
                          :InitLimit( 4, 400 )
                          :SpawnScheduled( 5, .5 )
                        else
                          return nil
                        end

                        local LM26zone = ZONE:FindByName("LM26")
                        local FarpLM26zone = ZONE:FindByName("Blue LM26 FARP")
                        local BlueLM26FARPDef = ZONE:FindByName("Blue Farp Defense-9")

                                if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone)  then
                                SPAWN:New("BLUE Supply LM26zone")
                                :InitLimit( 4, 400 )
                                :SpawnScheduled( 5, .5 )
                              else
                                return nil
                                end
                                if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and  not Group.getByName('Static FARP Fuel Depot-9') then
                                mist.respawnGroup('Static FARP Fuel Depot-9', true)
                                end
                              if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('Static FARP Ammo Storage-9') then
                              mist.respawnGroup('Static FARP Ammo Storage-9', true)
                              end
                               if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('BLUE Supply LM26') then
                                       mist.respawnGroup('BLUE Supply LM26', true)
                               end
                                  if redfor:NoneInZone(LM26zone) and bluAA:NoneInZone(BlueLM26FARPDef)then
                                    SPAWN:New("BLUE Farp AA-9")
                                    :InitRandomizeTemplate(BlueFarpDefence)
                                    :InitLimit( 4, 400 )
                                    :SpawnScheduled( 5, .5 )
                                  else
                                    return nil
                                  end

                                  local LM08zone = ZONE:FindByName("LM08")
                                  local FarpLM08zone = ZONE:FindByName("Blue LM26 FARP")
                                  local BlueLM08FARPDef = ZONE:FindByName("Blue Farp Defense-10")

                                          if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone)  then
                                          SPAWN:New("BLUE Supply LM08")
                                          :InitLimit( 4, 400 )
                                          :SpawnScheduled( 5, .5 )
                                        else
                                          return nil
                                          end
                                          if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and  not Group.getByName('Static FARP Fuel Depot-10') then
                                          mist.respawnGroup('Static FARP Fuel Depot-10', true)
                                          end
                                        if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('Static FARP Ammo Storage-10') then
                                        mist.respawnGroup('Static FARP Ammo Storage-10', true)
                                        end
                                         if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('BLUE Supply LM08') then
                                                 mist.respawnGroup('BLUE Supply LM08', true)
                                         end
                                            if redfor:NoneInZone(LM08zone) and bluAA:NoneInZone(BlueLM08FARPDef)then
                                              SPAWN:New("BLUE Farp AA-10")
                                              :InitRandomizeTemplate(BlueFarpDefence)
                                              :InitLimit( 4, 400 )
                                              :SpawnScheduled( 5, .5 )
                                            else
                                              return nil
                                            end
end, {}, 4, 60 )

RedFarptrigger = SCHEDULER:New(nil,
function()

  local KM76zone = ZONE:FindByName("KM76")
  local FarpKM76zone = ZONE:FindByName("Red KM76 FARP")
  local RedKM76FARPDef = ZONE:FindByName("Red Farp Defense-1")

          if blufor:NoneInZone(KM76zone) and redfor:AnyInZone(KM76zone)  then
          SPAWN:New("RED Supply KM76")
          :InitLimit( 4, 400 )
          :SpawnScheduled( 5, .5 )
        else
          return nil
          end
          if blufor:NoneInZone(KM76zone) and redfor:AnyInZone(KM76zone) and  not Group.getByName('Static FARP Fuel Depot-11') then
          mist.respawnGroup('Static FARP Fuel Depot-11', true)
          end
        if blufor:NoneInZone(KM76zone) and redfor:AnyInZone(KM76zone) and not Group.getByName('Static FARP Ammo Storage-11') then
        mist.respawnGroup('Static FARP Ammo Storage-11', true)
        end
         if blufor:NoneInZone(KM76zone) and redfor:AnyInZone(KM76zone) and not Group.getByName('RED Supply KM76') then
                 mist.respawnGroup('RED Supply KM76', true)
         end
            if blufor:NoneInZone(KM76zone) and redAA:NoneInZone(RedKM76FARPDef)then
              SPAWN:New("RED Farp AA-1")
              :InitRandomizeTemplate(RedFarpDefence)
              :InitLimit( 4, 400 )
              :SpawnScheduled( 5, .5 )
            else
              return nil
            end

            local KM88zone = ZONE:FindByName("KM88")
            local FarpKM88zone = ZONE:FindByName("Red KM88 FARP")
            local RedKM88FARPDef = ZONE:FindByName("Red Farp Defense-2")

                    if blufor:NoneInZone(KM88zone) and redfor:AnyInZone(KM88zone)  then
                    SPAWN:New("RED Supply KM76")
                    :InitLimit( 4, 400 )
                    :SpawnScheduled( 5, .5 )
                  else
                    return nil
                    end
                    if blufor:NoneInZone(KM88zone) and redfor:AnyInZone(KM88zone) and  not Group.getByName('Static FARP Fuel Depot-12') then
                    mist.respawnGroup('Static FARP Fuel Depot-12', true)
                    end
                  if blufor:NoneInZone(KM88zone) and redfor:AnyInZone(KM88zone) and not Group.getByName('Static FARP Ammo Storage-12') then
                  mist.respawnGroup('Static FARP Ammo Storage-12', true)
                  end
                   if blufor:NoneInZone(KM88zone) and redfor:AnyInZone(KM88zone) and not Group.getByName('RED Supply KM88') then
                           mist.respawnGroup('RED Supply KM88', true)
                   end
                      if blufor:NoneInZone(KM88zone) and redAA:NoneInZone(RedKM88FARPDef)then
                        SPAWN:New("RED Farp AA-2")
                        :InitRandomizeTemplate(RedFarpDefence)
                        :InitLimit( 4, 400 )
                        :SpawnScheduled( 5, .5 )
                      else
                        return nil
                      end

                      local LM26zone = ZONE:FindByName("LM26")
                      local FarpLM26zone = ZONE:FindByName("Red LM26 FARP")
                      local RedLM26FARPDef = ZONE:FindByName("Red Farp Defense-3")

                              if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone)  then
                              SPAWN:New("RED Supply LM16")
                              :InitLimit( 4, 400 )
                              :SpawnScheduled( 5, .5 )
                            else
                              return nil
                              end
                              if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and  not Group.getByName('Static FARP Fuel Depot-13') then
                              mist.respawnGroup('Static FARP Fuel Depot-13', true)
                              end
                            if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('Static FARP Ammo Storage-13') then
                            mist.respawnGroup('Static FARP Ammo Storage-13', true)
                            end
                             if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('RED Supply LM26') then
                                     mist.respawnGroup('RED Supply LM26', true)
                             end
                                if blufor:NoneInZone(LM26zone) and redAA:NoneInZone(RedLM26FARPDef)then
                                  SPAWN:New("RED Farp AA-3")
                                  :InitRandomizeTemplate(RedFarpDefence)
                                  :InitLimit( 4, 400 )
                                  :SpawnScheduled( 5, .5 )
                                else
                                  return nil
                                end

                                local LM38zone = ZONE:FindByName("LM38")
                                local FarpLM38zone = ZONE:FindByName("Red LM38 FARP")
                                local RedLM38FARPDef = ZONE:FindByName("Red Farp Defense-4")

                                        if blufor:NoneInZone(LM38zone) and redfor:AnyInZone(LM38zone)  then
                                        SPAWN:New("RED Supply LM38")
                                        :InitLimit( 4, 400 )
                                        :SpawnScheduled( 5, .5 )
                                      else
                                        return nil
                                        end
                                        if blufor:NoneInZone(LM38zone) and redfor:AnyInZone(LM38zone) and  not Group.getByName('Static FARP Fuel Depot-14') then
                                        mist.respawnGroup('Static FARP Fuel Depot-14', true)
                                        end
                                      if blufor:NoneInZone(LM38zone) and redfor:AnyInZone(LM38zone) and not Group.getByName('Static FARP Ammo Storage-14') then
                                      mist.respawnGroup('Static FARP Ammo Storage-14', true)
                                      end
                                       if blufor:NoneInZone(LM38zone) and redfor:AnyInZone(LM38zone) and not Group.getByName('RED Supply LM38') then
                                               mist.respawnGroup('RED Supply LM38', true)
                                       end
                                          if blufor:NoneInZone(LM38zone) and redAA:NoneInZone(RedLM38FARPDef)then
                                            SPAWN:New("RED Farp AA-4")
                                            :InitRandomizeTemplate(RedFarpDefence)
                                            :InitLimit( 4, 400 )
                                            :SpawnScheduled( 5, .5 )
                                          else
                                            return nil
                                          end

                                          local LM64zone = ZONE:FindByName("LM64")
                                          local FarpLM64zone = ZONE:FindByName("Red LM64 FARP")
                                          local RedLM64FARPDef = ZONE:FindByName("Red Farp Defense-5")

                                                  if blufor:NoneInZone(LM64zone) and redfor:AnyInZone(LM64zone)  then
                                                  SPAWN:New("RED Supply LM64")
                                                  :InitLimit( 4, 400 )
                                                  :SpawnScheduled( 5, .5 )
                                                else
                                                  return nil
                                                  end
                                                  if blufor:NoneInZone(LM64zone) and redfor:AnyInZone(LM64zone) and  not Group.getByName('Static FARP Fuel Depot-16') then
                                                  mist.respawnGroup('Static FARP Fuel Depot-16', true)
                                                  end
                                                if blufor:NoneInZone(LM64zone) and redfor:AnyInZone(LM64zone) and not Group.getByName('Static FARP Ammo Storage-16') then
                                                mist.respawnGroup('Static FARP Ammo Storage-16', true)
                                                end
                                                 if blufor:NoneInZone(LM64zone) and redfor:AnyInZone(LM64zone) and not Group.getByName('RED Supply LM64') then
                                                         mist.respawnGroup('RED Supply LM64', true)
                                                 end
                                                    if blufor:NoneInZone(LM64zone) and redAA:NoneInZone(RedLM64FARPDef)then
                                                      SPAWN:New("RED Farp AA-6")
                                                      :InitRandomizeTemplate(RedFarpDefence)
                                                      :InitLimit( 4, 400 )
                                                      :SpawnScheduled( 5, .5 )
                                                    else
                                                      return nil
                                                    end

                                                    local LM67zone = ZONE:FindByName("LM67")
                                                    local FarpLM67zone = ZONE:FindByName("Red LM67 FARP")
                                                    local RedLM67FARPDef = ZONE:FindByName("Red Farp Defense-6")

                                                            if blufor:NoneInZone(LM67zone) and redfor:AnyInZone(LM67zone)  then
                                                            SPAWN:New("RED Supply LM67")
                                                            :InitLimit( 4, 400 )
                                                            :SpawnScheduled( 5, .5 )
                                                          else
                                                            return nil
                                                            end
                                                            if blufor:NoneInZone(LM67zone) and redfor:AnyInZone(LM67zone) and  not Group.getByName('Static FARP Fuel Depot-17') then
                                                            mist.respawnGroup('Static FARP Fuel Depot-17', true)
                                                            end
                                                          if blufor:NoneInZone(LM67zone) and redfor:AnyInZone(LM67zone) and not Group.getByName('Static FARP Ammo Storage-17') then
                                                          mist.respawnGroup('Static FARP Ammo Storage-17', true)
                                                          end
                                                           if blufor:NoneInZone(LM67zone) and redfor:AnyInZone(LM67zone) and not Group.getByName('RED Supply LM67') then
                                                                   mist.respawnGroup('RED Supply LM67', true)
                                                           end
                                                              if blufor:NoneInZone(LM67zone) and redAA:NoneInZone(RedLM67FARPDef)then
                                                                SPAWN:New("RED Farp AA-7")
                                                                :InitRandomizeTemplate(RedFarpDefence)
                                                                :InitLimit( 4, 400 )
                                                                :SpawnScheduled( 5, .5 )
                                                              else
                                                                return nil
                                                              end

end, {}, 4, 60 )
