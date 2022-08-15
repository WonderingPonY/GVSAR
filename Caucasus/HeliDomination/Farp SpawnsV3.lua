blufor = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterStart()
bluAA = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("BLUE Farp AA") :FilterStart()
bluesupply = SET_GROUP:New():FilterCoalitions('blue'):FilterCategoryGround():FilterPrefixes("BLUE Supply") :FilterStart()
redAA = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("RED Farp AA") :FilterStart()
redsupply = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterPrefixes("RED Supply") :FilterStart()
redfor = SET_GROUP:New():FilterCoalitions('red'):FilterCategoryGround():FilterStart()
BlueFarpDefence = { "BLUE AA-1","BLUE AA-2", "BLUE AA-3", "BLUE AA-4" }
RedFarpDefence = { "RED AA-1","RED AA-2", "RED AA-3", "RED AA-4" }

--------------------------------LM95 FARP---------------------------------------

env.info("----------------------------GOT TO Blue Farp SPAWN FUNCTION--------------------------")
function LM95FARPblueSpawn()
  env.info("LM95FARPblueSpawn FUNCTION STARTED")
  local LM95zone = ZONE:FindByName("LM95")
  local FarpLM95zone = ZONE:FindByName("Blue LM95 FARP")
  local BlueLM95FARPDef = ZONE:FindByName("Blue Farp Defense-1")

  if redfor:NoneInZone(LM95zone) and bluAA:NoneInZone(BlueLM95FARPDef)then
        SPAWN:New("BLUE Farp AA-1")
        :InitRandomizeTemplate(BlueFarpDefence)
        :InitLimit( 1,0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------LM95 FARP AA SPAWN -------------------------")
      else
        return nil
  end
    if redfor:NoneInZone(LM95zone) and bluesupply:NoneInZone(FarpLM95zone)then
          SPAWN:New("BLUE Supply LM95")
          :InitLimit( 4,0 )
          :SpawnScheduled( 5, .5 )
          env.info("----------------------------LM95 FARP SUPPLY SPAWN -------------------------")
        else
          return nil
    end
      if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 Static FARP Fuel Depot-1') then
            mist.respawnGroup('LM95 Static FARP Fuel Depot-1', true)
        env.info("----------------------------LM95 Static FARP Fuel Depot-1 RESPAWN -------------------------")
        else
      end
        if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 Static FARP Fuel Depot-2') then
            mist.respawnGroup('LM95 Static FARP Fuel Depot-2', true)
        end
        env.info("----------------------------LM95 Static FARP Fuel Depot-2 RESPAWN -------------------------")
          if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 Static FARP Fuel Depot-3') then
             mist.respawnGroup('LM95 Static FARP Fuel Depot-4', true)
          end
          env.info("----------------------------LM95 Static FARP Fuel Depot-3 RESPAWN -------------------------")
            if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 Static FARP Fuel Depot-4') then
               mist.respawnGroup('LM95 Static FARP Fuel Depot-4', true)
            end
            env.info("----------------------------LM95 Static FARP Fuel Depot-4 RESPAWN -------------------------")
              if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 FARP Ammo Storage-1') then
                 mist.respawnGroup('LM95 FARP Ammo Storage-1', true)
              end
              env.info("----------------------------LM95 FARP Ammo Storage-1 RESPAWN -------------------------")
                if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 FARP Ammo Storage-2') then
                   mist.respawnGroup('LM95 FARP Ammo Storage-2', true)
                end
                env.info("----------------------------LM95 FARP Ammo Storage-2 RESPAWN -------------------------")
                  if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 FARP Ammo Storage-3') then
                     mist.respawnGroup('LM95 FARP Ammo Storage-3', true)
                  end
                  env.info("----------------------------LM95 FARP Ammo Storage-3 RESPAWN -------------------------")
                    if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 FARP Ammo Storage-4') then
                       mist.respawnGroup('LM95 FARP Ammo Storage-4', true)
                    end
                    env.info("----------------------------LM95 FARP Ammo Storage-4 RESPAWN -------------------------")
                      if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 Static FARP Command Post-1') then
                         mist.respawnGroup('LM95 Static FARP Command Post-1', true)
                      end
                      env.info("----------------------------LM95 Static FARP Command Post-1 RESPAWN -------------------------")
                        if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 Static FARP Command Post-2') then
                           mist.respawnGroup('LM95 Static FARP Command Post-2', true)
                        end
                        env.info("----------------------------LM95 Static FARP Command Post-2 RESPAWN -------------------------")
                          if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 Static FARP Tent-1') then
                             mist.respawnGroup('LM95 Static FARP Tent-1', true)
                          end
                          env.info("----------------------------LM95 Static FARP Tent-1 RESPAWN -------------------------")
                            if redfor:NoneInZone(LM95zone) and not Group.getByName('LM95 Static FARP Tent-2') then
                               mist.respawnGroup('LM95 Static FARP Tent-2', true)
                            end
                            env.info("----------------------------LM95 Static FARP Tent-2 RESPAWN -------------------------")

end
  timer.scheduleFunction(LM95FARPblueSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------LM95FARPblueSpawn TIMER STARTED--------------------------")

--------------------------------LM97 FARP---------------------------------------

function LM97FARPblueSpawn()
  env.info("LM97FARPblueSpawn FUNCTION STARTED")
  local LM97zone = ZONE:FindByName("LM97")
  local FarpLM97zone = ZONE:FindByName("Blue LM97 FARP")
  local BlueLM97FARPDef = ZONE:FindByName("Blue Farp Defense-2")

    if redfor:NoneInZone(LM97zone) and bluAA:NoneInZone(BlueLM97FARPDef)then
      SPAWN:New("BLUE Farp AA-2")
      :InitRandomizeTemplate(BlueFarpDefence)
      :InitLimit( 1, 0 )
      :SpawnScheduled( 5, .5 )
      env.info("----------------------------LM97 FARP AA SPAWN -------------------------")
    else
      return nil
    end
      if redfor:NoneInZone(LM97zone) and bluesupply:NoneInZone(FarpLM97zone)then
            SPAWN:New("BLUE Supply LM97")
            :InitLimit( 4,0 )
            :SpawnScheduled( 5, .5 )
            env.info("----------------------------LM97 FARP SUPPLY SPAWN -------------------------")
          else
            return nil
      end
        if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 Static FARP Fuel Depot-1') then
              mist.respawnGroup('LM97 Static FARP Fuel Depot-1', true)
        end
        env.info("----------------------------LM97 Static FARP Fuel Depot-1 RESPAWN -------------------------")
          if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 Static FARP Fuel Depot-2') then
              mist.respawnGroup('LM97 Static FARP Fuel Depot-2', true)
          end
          env.info("----------------------------LM97 Static FARP Fuel Depot-2 RESPAWN -------------------------")
            if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 Static FARP Fuel Depot-3') then
               mist.respawnGroup('LM97 Static FARP Fuel Depot-4', true)
            end
            env.info("----------------------------LM97 Static FARP Fuel Depot-3 RESPAWN -------------------------")
              if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 Static FARP Fuel Depot-4') then
                 mist.respawnGroup('LM97 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------LM97 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 FARP Ammo Storage-1') then
                   mist.respawnGroup('LM97 FARP Ammo Storage-1', true)
                end
                env.info("----------------------------LM97 FARP Ammo Storage-1 RESPAWN -------------------------")
                  if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 FARP Ammo Storage-2') then
                     mist.respawnGroup('LM97 FARP Ammo Storage-2', true)
                  end
                  env.info("----------------------------LM97 FARP Ammo Storage-2 RESPAWN -------------------------")
                    if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 FARP Ammo Storage-3') then
                       mist.respawnGroup('LM97 FARP Ammo Storage-3', true)
                    end
                    env.info("----------------------------LM97 FARP Ammo Storage-3 RESPAWN -------------------------")
                      if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 FARP Ammo Storage-4') then
                         mist.respawnGroup('LM97 FARP Ammo Storage-4', true)
                      end
                      env.info("----------------------------LM97 FARP Ammo Storage-4 RESPAWN -------------------------")
                        if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 Static FARP Command Post-1') then
                           mist.respawnGroup('LM97 Static FARP Command Post-1', true)
                        end
                        env.info("----------------------------LM97 Static FARP Command Post-1 RESPAWN -------------------------")
                          if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 Static FARP Command Post-2') then
                             mist.respawnGroup('LM97 Static FARP Command Post-2', true)
                          end
                          env.info("----------------------------LM97 Static FARP Command Post-2 RESPAWN -------------------------")
                            if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 Static FARP Tent-1') then
                               mist.respawnGroup('LM97 Static FARP Tent-1', true)
                            end
                            env.info("----------------------------LM97 Static FARP Tent-1 RESPAWN -------------------------")
                              if redfor:NoneInZone(LM97zone) and not Group.getByName('LM97 Static FARP Tent-2') then
                                 mist.respawnGroup('LM97 Static FARP Tent-2', true)
                              end
                              env.info("----------------------------LM97 Static FARP Tent-2 RESPAWN -------------------------")

end
  timer.scheduleFunction(LM97FARPblueSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------LM97FARPblueSpawn TIMER STARTED--------------------------")

--------------------------------MM34 FARP---------------------------------------

function MM34FARPblueSpawn()
  env.info("MM34FARPblueSpawn FUNCTION STARTED")
    local MM34zone = ZONE:FindByName("MM34")
    local FarpMM34zone = ZONE:FindByName("Blue MM34 FARP")
    local BlueMM34FARPDef = ZONE:FindByName("Blue Farp Defense-3")

      if redfor:NoneInZone(MM34zone) and bluAA:NoneInZone(BlueMM34FARPDef)then
        SPAWN:New("BLUE Farp AA-3")
        :InitRandomizeTemplate(BlueFarpDefence)
        :InitLimit( 4, 400 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------MM34 FARP AA SPAWN -------------------------")
      else
        return nil
      end
        if redfor:NoneInZone(MM34zone) and bluesupply:NoneInZone(FarpMM34zone)then
              SPAWN:New("BLUE Supply MM34")
              :InitLimit( 4,0 )
              :SpawnScheduled( 5, .5 )
              env.info("----------------------------MM34 FARP SUPPLY SPAWN -------------------------")
            else
              return nil
        end
          if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 Static FARP Fuel Depot-1') then
                mist.respawnGroup('MM34 Static FARP Fuel Depot-1', true)
          end
          env.info("----------------------------MM34 Static FARP Fuel Depot-1 RESPAWN -------------------------")
            if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 Static FARP Fuel Depot-2') then
                mist.respawnGroup('MM34 Static FARP Fuel Depot-2', true)
            end
            env.info("----------------------------MM34 Static FARP Fuel Depot-2 RESPAWN -------------------------")
              if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 Static FARP Fuel Depot-3') then
                 mist.respawnGroup('MM34 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------MM34 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 Static FARP Fuel Depot-4') then
                   mist.respawnGroup('MM34 Static FARP Fuel Depot-4', true)
                end
                env.info("----------------------------MM34 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                  if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 FARP Ammo Storage-1') then
                     mist.respawnGroup('MM34 FARP Ammo Storage-1', true)
                  end
                  env.info("----------------------------MM34 FARP Ammo Storage-1 RESPAWN -------------------------")
                    if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 FARP Ammo Storage-2') then
                       mist.respawnGroup('MM34 FARP Ammo Storage-2', true)
                    end
                    env.info("----------------------------MM34 FARP Ammo Storage-2 RESPAWN -------------------------")
                      if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 FARP Ammo Storage-3') then
                         mist.respawnGroup('MM34 FARP Ammo Storage-3', true)
                      end
                      env.info("----------------------------MM34 FARP Ammo Storage-3 RESPAWN -------------------------")
                        if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 FARP Ammo Storage-4') then
                           mist.respawnGroup('MM34 FARP Ammo Storage-4', true)
                        end
                        env.info("----------------------------MM34 FARP Ammo Storage-4 RESPAWN -------------------------")
                          if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 Static FARP Command Post-1') then
                             mist.respawnGroup('MM34 Static FARP Command Post-1', true)
                          end
                          env.info("----------------------------MM34 Static FARP Command Post-1 RESPAWN -------------------------")
                            if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 Static FARP Command Post-2') then
                               mist.respawnGroup('MM34 Static FARP Command Post-2', true)
                            end
                            env.info("----------------------------MM34 Static FARP Command Post-2 RESPAWN -------------------------")
                              if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 Static FARP Tent-1') then
                                 mist.respawnGroup('MM34 Static FARP Tent-1', true)
                              end
                              env.info("----------------------------MM34 Static FARP Tent-1 RESPAWN -------------------------")
                                if redfor:NoneInZone(MM34zone) and not Group.getByName('MM34 Static FARP Tent-2') then
                                   mist.respawnGroup('MM34 Static FARP Tent-2', true)
                                end
                                env.info("----------------------------MM34 Static FARP Tent-2 RESPAWN -------------------------")

end
  timer.scheduleFunction(MM34FARPblueSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------MM34FARPblueSpawn TIMER STARTED--------------------------")

--------------------------------MM26 FARP---------------------------------------

function MM26FARPblueSpawn()
  env.info("MM26FARPblueSpawn FUNCTION STARTED")
  local MM26zone = ZONE:FindByName("MM26")
  local FarpMM26zone = ZONE:FindByName("Blue MM26 FARP")
  local BlueMM26FARPDef = ZONE:FindByName("Blue Farp Defense-4")

    if redfor:NoneInZone(MM26zone) and bluAA:NoneInZone(BlueMM26FARPDef)then
      SPAWN:New("BLUE Farp AA-4")
      :InitRandomizeTemplate(BlueFarpDefence)
      :InitLimit( 1, 0 )
      :SpawnScheduled( 5, .5 )
      env.info("----------------------------MM26 FARP AA SPAWN -------------------------")
    else
      return nil
    end
      if redfor:NoneInZone(MM26zone) and bluesupply:NoneInZone(FarpMM26zone)then
            SPAWN:New("BLUE Supply MM26")
            :InitLimit( 4,0 )
            :SpawnScheduled( 5, .5 )
            env.info("----------------------------MM26 FARP SUPPLY SPAWN -------------------------")
        else
            return nil
      end
        if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 Static FARP Fuel Depot-1') then
              mist.respawnGroup('MM26 Static FARP Fuel Depot-1', true)
        end
        env.info("----------------------------MM26 Static FARP Fuel Depot-1 RESPAWN -------------------------")
          if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 Static FARP Fuel Depot-2') then
              mist.respawnGroup('MM26 Static FARP Fuel Depot-2', true)
          end
          env.info("----------------------------MM26 Static FARP Fuel Depot-2 RESPAWN -------------------------")
            if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 Static FARP Fuel Depot-3') then
               mist.respawnGroup('MM26 Static FARP Fuel Depot-4', true)
            end
            env.info("----------------------------MM26 Static FARP Fuel Depot-3 RESPAWN -------------------------")
              if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 Static FARP Fuel Depot-4') then
                 mist.respawnGroup('MM26 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------MM26 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 FARP Ammo Storage-1') then
                   mist.respawnGroup('MM26 FARP Ammo Storage-1', true)
                end
                env.info("----------------------------MM26 FARP Ammo Storage-1 RESPAWN -------------------------")
                  if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 FARP Ammo Storage-2') then
                     mist.respawnGroup('MM26 FARP Ammo Storage-2', true)
                  end
                  env.info("----------------------------MM26 FARP Ammo Storage-2 RESPAWN -------------------------")
                    if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 FARP Ammo Storage-3') then
                       mist.respawnGroup('MM26 FARP Ammo Storage-3', true)
                    end
                    env.info("----------------------------MM26 FARP Ammo Storage-3 RESPAWN -------------------------")
                      if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 FARP Ammo Storage-4') then
                         mist.respawnGroup('MM26 FARP Ammo Storage-4', true)
                      end
                      env.info("----------------------------MM26 FARP Ammo Storage-4 RESPAWN -------------------------")
                        if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 Static FARP Command Post-1') then
                           mist.respawnGroup('MM26 Static FARP Command Post-1', true)
                        end
                        env.info("----------------------------MM26 Static FARP Command Post-1 RESPAWN -------------------------")
                          if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 Static FARP Command Post-2') then
                             mist.respawnGroup('MM26 Static FARP Command Post-2', true)
                          end
                          env.info("----------------------------MM26 Static FARP Command Post-2 RESPAWN -------------------------")
                            if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 Static FARP Tent-1') then
                               mist.respawnGroup('MM26 Static FARP Tent-1', true)
                            end
                            env.info("----------------------------MM26 Static FARP Tent-1 RESPAWN -------------------------")
                              if redfor:NoneInZone(MM26zone) and not Group.getByName('MM26 Static FARP Tent-2') then
                                 mist.respawnGroup('MM26 Static FARP Tent-2', true)
                              end
                              env.info("----------------------------MM26 Static FARP Tent-2 RESPAWN -------------------------")
end
  timer.scheduleFunction(MM26FARPblueSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------MM26FARPblueSpawn TIMER STARTED--------------------------")

--------------------------------MM74 FARP---------------------------------------

function MM74FARPblueSpawn()
  env.info("MM74FARPblueSpawn FUNCTION STARTED")
                        local MM74zone = ZONE:FindByName("MM74")
                        local FarpMM74zone = ZONE:FindByName("Blue MM74 FARP")
                        local BlueMM74FARPDef = ZONE:FindByName("Blue Farp Defense-5")
                        if redfor:NoneInZone(MM74zone) and bluAA:NoneInZone(BlueMM74FARPDef)then
                          SPAWN:New("BLUE Farp AA-5")
                          :InitRandomizeTemplate(BlueFarpDefence)
                          :InitLimit( 1, 0 )
                          :SpawnScheduled( 5, .5 )
                          env.info("----------------------------MM74 FARP AA SPAWN -------------------------")
                        else
                          return nil
                        end
                          if redfor:NoneInZone(MM74zone) and bluesupply:NoneInZone(FarpMM74zone)then
                                SPAWN:New("BLUE Supply MM74")
                                :InitLimit( 4,0 )
                                :SpawnScheduled( 5, .5 )
                                env.info("----------------------------MM74 FARP SUPPLY SPAWN -------------------------")
                            else
                                return nil
                          end
                            if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 Static FARP Fuel Depot-1') then
                                  mist.respawnGroup('MM74 Static FARP Fuel Depot-1', true)
                            end
                            env.info("----------------------------MM74 Static FARP Fuel Depot-1 RESPAWN -------------------------")
                              if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 Static FARP Fuel Depot-2') then
                                  mist.respawnGroup('MM74 Static FARP Fuel Depot-2', true)
                              end
                              env.info("----------------------------MM74 Static FARP Fuel Depot-2 RESPAWN -------------------------")
                                if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 Static FARP Fuel Depot-3') then
                                   mist.respawnGroup('MM74 Static FARP Fuel Depot-4', true)
                                end
                                env.info("----------------------------MM74 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                                  if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 Static FARP Fuel Depot-4') then
                                     mist.respawnGroup('MM74 Static FARP Fuel Depot-4', true)
                                  end
                                  env.info("----------------------------MM74 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                                    if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 FARP Ammo Storage-1') then
                                       mist.respawnGroup('MM74 FARP Ammo Storage-1', true)
                                    end
                                    env.info("----------------------------MM74 FARP Ammo Storage-1 RESPAWN -------------------------")
                                      if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 FARP Ammo Storage-2') then
                                         mist.respawnGroup('MM74 FARP Ammo Storage-2', true)
                                      end
                                      env.info("----------------------------MM74 FARP Ammo Storage-2 RESPAWN -------------------------")
                                        if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 FARP Ammo Storage-3') then
                                           mist.respawnGroup('MM74 FARP Ammo Storage-3', true)
                                        end
                                        env.info("----------------------------MM74 FARP Ammo Storage-3 RESPAWN -------------------------")
                                          if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 FARP Ammo Storage-4') then
                                             mist.respawnGroup('MM74 FARP Ammo Storage-4', true)
                                          end
                                          env.info("----------------------------MM74 FARP Ammo Storage-4 RESPAWN -------------------------")
                                            if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 Static FARP Command Post-1') then
                                               mist.respawnGroup('MM74 Static FARP Command Post-1', true)
                                            end
                                            env.info("----------------------------MM74 Static FARP Command Post-1 RESPAWN -------------------------")
                                              if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 Static FARP Command Post-2') then
                                                 mist.respawnGroup('MM74 Static FARP Command Post-2', true)
                                              end
                                              env.info("----------------------------MM74 Static FARP Command Post-2 RESPAWN -------------------------")
                                                if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 Static FARP Tent-1') then
                                                   mist.respawnGroup('MM74 Static FARP Tent-1', true)
                                                end
                                                env.info("----------------------------MM74 Static FARP Tent-1 RESPAWN -------------------------")
                                                  if redfor:NoneInZone(MM74zone) and not Group.getByName('MM74 Static FARP Tent-2') then
                                                     mist.respawnGroup('MM74 Static FARP Tent-2', true)
                                                  end
                                                  env.info("----------------------------MM74 Static FARP Tent-2 RESPAWN -------------------------")

end
  timer.scheduleFunction(MM74FARPblueSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------MM74FARPblueSpawn TIMER STARTED--------------------------")


  --------------------------------MM82 FARP---------------------------------------

function MM82FARPblueSpawn()
  env.info("MM82FARPblueSpawn FUNCTION STARTED")
        local MM82zone = ZONE:FindByName("MM82")
        local FarpMM82zone = ZONE:FindByName("Blue MM82 FARP")
        local BlueMM82FARPDef = ZONE:FindByName("Blue Farp Defense-6")

        if redfor:NoneInZone(MM82zone) and bluAA:NoneInZone(BlueMM82FARPDef)then
          SPAWN:New("BLUE Farp AA-6")
          :InitRandomizeTemplate(BlueFarpDefence)
          :InitLimit( 1, 0 )
          :SpawnScheduled( 5, .5 )
          env.info("----------------------------MM82 FARP AA SPAWN -------------------------")
        else
          return nil
        end
          if redfor:NoneInZone(MM82zone) and bluesupply:NoneInZone(FarpMM82zone)then
                SPAWN:New("BLUE Supply MM82")
                :InitLimit( 4,0 )
                :SpawnScheduled( 5, .5 )
                env.info("----------------------------MM82 FARP SUPPLY SPAWN -------------------------")
            else
                return nil
          end
            if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 Static FARP Fuel Depot-1') then
                  mist.respawnGroup('MM82 Static FARP Fuel Depot-1', true)
            end
            env.info("----------------------------MM82 Static FARP Fuel Depot-1 RESPAWN -------------------------")
              if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 Static FARP Fuel Depot-2') then
                  mist.respawnGroup('MM82 Static FARP Fuel Depot-2', true)
              end
              env.info("----------------------------MM82 Static FARP Fuel Depot-2 RESPAWN -------------------------")
                if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 Static FARP Fuel Depot-3') then
                   mist.respawnGroup('MM82 Static FARP Fuel Depot-4', true)
                end
                env.info("----------------------------MM82 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                  if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 Static FARP Fuel Depot-4') then
                     mist.respawnGroup('MM82 Static FARP Fuel Depot-4', true)
                  end
                  env.info("----------------------------MM82 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                    if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 FARP Ammo Storage-1') then
                       mist.respawnGroup('MM82 FARP Ammo Storage-1', true)
                    end
                    env.info("----------------------------MM82 FARP Ammo Storage-1 RESPAWN -------------------------")
                      if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 FARP Ammo Storage-2') then
                         mist.respawnGroup('MM82 FARP Ammo Storage-2', true)
                      end
                      env.info("----------------------------MM82 FARP Ammo Storage-2 RESPAWN -------------------------")
                        if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 FARP Ammo Storage-3') then
                           mist.respawnGroup('MM82 FARP Ammo Storage-3', true)
                        end
                        env.info("----------------------------MM82 FARP Ammo Storage-3 RESPAWN -------------------------")
                          if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 FARP Ammo Storage-4') then
                             mist.respawnGroup('MM82 FARP Ammo Storage-4', true)
                          end
                          env.info("----------------------------MM82 FARP Ammo Storage-4 RESPAWN -------------------------")
                            if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 Static FARP Command Post-1') then
                               mist.respawnGroup('MM82 Static FARP Command Post-1', true)
                            end
                            env.info("----------------------------MM82 Static FARP Command Post-1 RESPAWN -------------------------")
                              if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 Static FARP Command Post-2') then
                                 mist.respawnGroup('MM82 Static FARP Command Post-2', true)
                              end
                              env.info("----------------------------MM82 Static FARP Command Post-2 RESPAWN -------------------------")
                                if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 Static FARP Tent-1') then
                                   mist.respawnGroup('MM82 Static FARP Tent-1', true)
                                end
                                env.info("----------------------------MM82 Static FARP Tent-1 RESPAWN -------------------------")
                                  if redfor:NoneInZone(MM82zone) and not Group.getByName('MM82 Static FARP Tent-2') then
                                     mist.respawnGroup('MM82 Static FARP Tent-2', true)
                                  end
                                  env.info("----------------------------MM82 Static FARP Tent-2 RESPAWN -------------------------")
end
  timer.scheduleFunction(MM82FARPblueSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------MM82FARPblueSpawn TIMER STARTED--------------------------")

--------------------------------LM54 FARP---------------------------------------

function LM54FARPblueSpawn()
  env.info("LM54FARPblueSpawn FUNCTION STARTED")
    local LM54zone = ZONE:FindByName("LM54")
    local FarpLM54zone = ZONE:FindByName("Blue LM54 FARP")
    local BlueLM54FARPDef = ZONE:FindByName("Blue Farp Defense-7")

    if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and bluAA:NoneInZone(BlueLM54FARPDef)then
      SPAWN:New("BLUE Farp AA-7")
      :InitRandomizeTemplate(BlueFarpDefence)
      :InitLimit( 1, 0 )
      :SpawnScheduled( 5, .5 )
      env.info("----------------------------LM54 FARP AA SPAWN -------------------------")
    else
      return nil
    end
      if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and bluesupply:NoneInZone(FarpLM54zone)then
            SPAWN:New("BLUE Supply LM54")
            :InitLimit( 4,0 )
            :SpawnScheduled( 5, .5 )
            env.info("----------------------------LM54 FARP SUPPLY SPAWN -------------------------")
        else
            return nil
      end
        if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 Static FARP Fuel Depot-1') then
              mist.respawnGroup('LM54 Static FARP Fuel Depot-1', true)
        end
        env.info("----------------------------LM54 Static FARP Fuel Depot-1 RESPAWN -------------------------")
          if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 Static FARP Fuel Depot-2') then
              mist.respawnGroup('LM54 Static FARP Fuel Depot-2', true)
          end
          env.info("----------------------------LM54 Static FARP Fuel Depot-2 RESPAWN -------------------------")
            if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 Static FARP Fuel Depot-3') then
               mist.respawnGroup('LM54 Static FARP Fuel Depot-4', true)
            end
            env.info("----------------------------LM54 Static FARP Fuel Depot-3 RESPAWN -------------------------")
              if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 Static FARP Fuel Depot-4') then
                 mist.respawnGroup('LM54 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------LM54 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 FARP Ammo Storage-1') then
                   mist.respawnGroup('LM54 FARP Ammo Storage-1', true)
                end
                env.info("----------------------------LM54 FARP Ammo Storage-1 RESPAWN -------------------------")
                  if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 FARP Ammo Storage-2') then
                     mist.respawnGroup('LM54 FARP Ammo Storage-2', true)
                  end
                  env.info("----------------------------LM54 FARP Ammo Storage-2 RESPAWN -------------------------")
                    if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 FARP Ammo Storage-3') then
                       mist.respawnGroup('LM54 FARP Ammo Storage-3', true)
                    end
                    env.info("----------------------------LM54 FARP Ammo Storage-3 RESPAWN -------------------------")
                      if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 FARP Ammo Storage-4') then
                         mist.respawnGroup('LM54 FARP Ammo Storage-4', true)
                      end
                      env.info("----------------------------LM54 FARP Ammo Storage-4 RESPAWN -------------------------")
                        if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 Static FARP Command Post-1') then
                           mist.respawnGroup('LM54 Static FARP Command Post-1', true)
                        end
                        env.info("----------------------------LM54 Static FARP Command Post-1 RESPAWN -------------------------")
                          if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 Static FARP Command Post-2') then
                             mist.respawnGroup('LM54 Static FARP Command Post-2', true)
                          end
                          env.info("----------------------------LM54 Static FARP Command Post-2 RESPAWN -------------------------")
                            if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 Static FARP Tent-1') then
                               mist.respawnGroup('LM54 Static FARP Tent-1', true)
                            end
                            env.info("----------------------------LM54 Static FARP Tent-1 RESPAWN -------------------------")
                              if redfor:NoneInZone(LM54zone) and blufor:AnyInZone(LM54zone) and not Group.getByName('LM54 Static FARP Tent-2') then
                                 mist.respawnGroup('LM54 Static FARP Tent-2', true)
                              end
                              env.info("----------------------------LM54 Static FARP Tent-2 RESPAWN -------------------------")

end
  timer.scheduleFunction(LM54FARPblueSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------LM54FARPblueSpawn TIMER STARTED--------------------------")

--------------------------------LM68 FARP---------------------------------------

function LM68FARPblueSpawn()
  env.info("LM68FARPblueSpawn FUNCTION STARTED")
              local LM68zone = ZONE:FindByName("LM68")
              local FarpLM68zone = ZONE:FindByName("Blue LM68 FARP")
              local BlueLM68FARPDef = ZONE:FindByName("Blue Farp Defense-8")
              if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and bluAA:NoneInZone(BlueLM68FARPDef)then
                SPAWN:New("BLUE Farp AA-8")
                :InitRandomizeTemplate(BlueFarpDefence)
                :InitLimit( 1, 0 )
                :SpawnScheduled( 5, .5 )
                env.info("----------------------------LM68 FARP AA SPAWN -------------------------")
              else
                return nil
              end
                if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and bluesupply:NoneInZone(FarpLM68zone)then
                      SPAWN:New("BLUE Supply LM68")
                      :InitLimit( 4,0 )
                      :SpawnScheduled( 5, .5 )
                      env.info("----------------------------LM68 FARP SUPPLY SPAWN -------------------------")
                  else
                      return nil
                end
                  if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 Static FARP Fuel Depot-1') then
                        mist.respawnGroup('LM68 Static FARP Fuel Depot-1', true)
                  end
                  env.info("----------------------------LM68 Static FARP Fuel Depot-1 RESPAWN -------------------------")
                    if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 Static FARP Fuel Depot-2') then
                        mist.respawnGroup('LM68 Static FARP Fuel Depot-2', true)
                    end
                    env.info("----------------------------LM68 Static FARP Fuel Depot-2 RESPAWN -------------------------")
                      if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 Static FARP Fuel Depot-3') then
                         mist.respawnGroup('LM68 Static FARP Fuel Depot-4', true)
                      end
                      env.info("----------------------------LM68 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                        if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 Static FARP Fuel Depot-4') then
                           mist.respawnGroup('LM68 Static FARP Fuel Depot-4', true)
                        end
                        env.info("----------------------------LM68 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                          if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 FARP Ammo Storage-1') then
                             mist.respawnGroup('LM68 FARP Ammo Storage-1', true)
                          end
                          env.info("----------------------------LM68 FARP Ammo Storage-1 RESPAWN -------------------------")
                            if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 FARP Ammo Storage-2') then
                               mist.respawnGroup('LM68 FARP Ammo Storage-2', true)
                            end
                            env.info("----------------------------LM68 FARP Ammo Storage-2 RESPAWN -------------------------")
                              if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 FARP Ammo Storage-3') then
                                 mist.respawnGroup('LM68 FARP Ammo Storage-3', true)
                              end
                              env.info("----------------------------LM68 FARP Ammo Storage-3 RESPAWN -------------------------")
                                if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 FARP Ammo Storage-4') then
                                   mist.respawnGroup('LM68 FARP Ammo Storage-4', true)
                                end
                                env.info("----------------------------LM68 FARP Ammo Storage-4 RESPAWN -------------------------")
                                  if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 Static FARP Command Post-1') then
                                     mist.respawnGroup('LM68 Static FARP Command Post-1', true)
                                  end
                                  env.info("----------------------------LM68 Static FARP Command Post-1 RESPAWN -------------------------")
                                    if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 Static FARP Command Post-2') then
                                       mist.respawnGroup('LM68 Static FARP Command Post-2', true)
                                    end
                                    env.info("----------------------------LM68 Static FARP Command Post-2 RESPAWN -------------------------")
                                      if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 Static FARP Tent-1') then
                                         mist.respawnGroup('LM68 Static FARP Tent-1', true)
                                      end
                                      env.info("----------------------------LM68 Static FARP Tent-1 RESPAWN -------------------------")
                                        if redfor:NoneInZone(LM68zone) and blufor:AnyInZone(LM68zone) and not Group.getByName('LM68 Static FARP Tent-2') then
                                           mist.respawnGroup('LM68 Static FARP Tent-2', true)
                                        end
                                        env.info("----------------------------LM68 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(LM68FARPblueSpawn, 53, timer.getTime{}+40)
env.info("----------------------------LM68FARPblueSpawn TIMER STARTED--------------------------")

--------------------------------LM26 FARP---------------------------------------

function LM26FARPblueSpawn()
  env.info("LM26FARPblueSpawn FUNCTION STARTED")
    local LM26zone = ZONE:FindByName("LM26")
    local FarpLM26zone = ZONE:FindByName("Blue LM26 FARP")
    local BlueLM26FARPDef = ZONE:FindByName("Blue Farp Defense-9")

    if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and bluAA:NoneInZone(BlueLM26FARPDef)then
      SPAWN:New("BLUE Farp AA-9")
      :InitRandomizeTemplate(BlueFarpDefence)
      :InitLimit( 1, 0 )
      :SpawnScheduled( 5, .5 )
      env.info("----------------------------LM26 FARP AA SPAWN -------------------------")
    else
      return nil
    end
      if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and bluesupply:NoneInZone(FarpLM26zone)then
            SPAWN:New("BLUE Supply LM26")
            :InitLimit( 4,0 )
            :SpawnScheduled( 5, .5 )
            env.info("----------------------------LM26 FARP SUPPLY SPAWN -------------------------")
        else
            return nil
      end
        if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Fuel Depot-1') then
              mist.respawnGroup('LM26 Static FARP Fuel Depot-1', true)
        end
        env.info("----------------------------LM26 Static FARP Fuel Depot-1 RESPAWN -------------------------")
          if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Fuel Depot-2') then
              mist.respawnGroup('LM26 Static FARP Fuel Depot-2', true)
          end
          env.info("----------------------------LM26 Static FARP Fuel Depot-2 RESPAWN -------------------------")
            if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Fuel Depot-3') then
               mist.respawnGroup('LM26 Static FARP Fuel Depot-4', true)
            end
            env.info("----------------------------LM26 Static FARP Fuel Depot-3 RESPAWN -------------------------")
              if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Fuel Depot-4') then
                 mist.respawnGroup('LM26 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------LM26 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 FARP Ammo Storage-1') then
                   mist.respawnGroup('LM26 FARP Ammo Storage-1', true)
                end
                env.info("----------------------------LM26 FARP Ammo Storage-1 RESPAWN -------------------------")
                  if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 FARP Ammo Storage-2') then
                     mist.respawnGroup('LM26 FARP Ammo Storage-2', true)
                  end
                  env.info("----------------------------LM26 FARP Ammo Storage-2 RESPAWN -------------------------")
                    if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 FARP Ammo Storage-3') then
                       mist.respawnGroup('LM26 FARP Ammo Storage-3', true)
                    end
                    env.info("----------------------------LM26 FARP Ammo Storage-3 RESPAWN -------------------------")
                      if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 FARP Ammo Storage-4') then
                         mist.respawnGroup('LM26 FARP Ammo Storage-4', true)
                      end
                      env.info("----------------------------LM26 FARP Ammo Storage-4 RESPAWN -------------------------")
                        if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Command Post-1') then
                           mist.respawnGroup('LM26 Static FARP Command Post-1', true)
                        end
                        env.info("----------------------------LM26 Static FARP Command Post-1 RESPAWN -------------------------")
                          if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Command Post-2') then
                             mist.respawnGroup('LM26 Static FARP Command Post-2', true)
                          end
                          env.info("----------------------------LM26 Static FARP Command Post-2 RESPAWN -------------------------")
                            if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Tent-1') then
                               mist.respawnGroup('LM26 Static FARP Tent-1', true)
                            end
                            env.info("----------------------------LM26 Static FARP Tent-1 RESPAWN -------------------------")
                              if redfor:NoneInZone(LM26zone) and blufor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Tent-2') then
                                 mist.respawnGroup('LM26 Static FARP Tent-2', true)
                              end
                              env.info("----------------------------LM26 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(LM26FARPblueSpawn, 53, timer.getTime{}+40)
env.info("----------------------------LM26FARPblueSpawn TIMER STARTED--------------------------")

--------------------------------LM08 FARP---------------------------------------

function LM08FARPblueSpawn()
  env.info("LM08FARPblueSpawn FUNCTION STARTED")
          local LM08zone = ZONE:FindByName("LM08")
          local FarpLM08zone = ZONE:FindByName("Blue LM08 FARP")
          local BlueLM08FARPDef = ZONE:FindByName("Blue Farp Defense-10")

          if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and bluAA:NoneInZone(BlueLM08FARPDef)then
            SPAWN:New("BLUE Farp AA-10")
            :InitRandomizeTemplate(BlueFarpDefence)
            :InitLimit( 1, 0 )
            :SpawnScheduled( 5, .5 )
            env.info("----------------------------LM08 FARP AA SPAWN -------------------------")
          else
            return nil
          end
            if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and bluesupply:NoneInZone(FarpLM08zone)then
                  SPAWN:New("BLUE Supply LM08")
                  :InitLimit( 4,0 )
                  :SpawnScheduled( 5, .5 )
                  env.info("----------------------------LM08 FARP SUPPLY SPAWN -------------------------")
              else
                  return nil
            end
              if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 Static FARP Fuel Depot-1') then
                    mist.respawnGroup('LM08 Static FARP Fuel Depot-1', true)
              end
              env.info("----------------------------LM08 Static FARP Fuel Depot-1 RESPAWN -------------------------")
                if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 Static FARP Fuel Depot-2') then
                    mist.respawnGroup('LM08 Static FARP Fuel Depot-2', true)
                end
                env.info("----------------------------LM08 Static FARP Fuel Depot-2 RESPAWN -------------------------")
                  if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 Static FARP Fuel Depot-3') then
                     mist.respawnGroup('LM08 Static FARP Fuel Depot-4', true)
                  end
                  env.info("----------------------------LM08 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                    if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 Static FARP Fuel Depot-4') then
                       mist.respawnGroup('LM08 Static FARP Fuel Depot-4', true)
                    end
                    env.info("----------------------------LM08 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                      if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 FARP Ammo Storage-1') then
                         mist.respawnGroup('LM08 FARP Ammo Storage-1', true)
                      end
                      env.info("----------------------------LM08 FARP Ammo Storage-1 RESPAWN -------------------------")
                        if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 FARP Ammo Storage-2') then
                           mist.respawnGroup('LM08 FARP Ammo Storage-2', true)
                        end
                        env.info("----------------------------LM08 FARP Ammo Storage-2 RESPAWN -------------------------")
                          if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 FARP Ammo Storage-3') then
                             mist.respawnGroup('LM08 FARP Ammo Storage-3', true)
                          end
                          env.info("----------------------------LM08 FARP Ammo Storage-3 RESPAWN -------------------------")
                            if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 FARP Ammo Storage-4') then
                               mist.respawnGroup('LM08 FARP Ammo Storage-4', true)
                            end
                            env.info("----------------------------LM08 FARP Ammo Storage-4 RESPAWN -------------------------")
                              if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 Static FARP Command Post-1') then
                                 mist.respawnGroup('LM08 Static FARP Command Post-1', true)
                              end
                              env.info("----------------------------LM08 Static FARP Command Post-1 RESPAWN -------------------------")
                                if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 Static FARP Command Post-2') then
                                   mist.respawnGroup('LM08 Static FARP Command Post-2', true)
                                end
                                env.info("----------------------------LM08 Static FARP Command Post-2 RESPAWN -------------------------")
                                  if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 Static FARP Tent-1') then
                                     mist.respawnGroup('LM08 Static FARP Tent-1', true)
                                  end
                                  env.info("----------------------------LM08 Static FARP Tent-1 RESPAWN -------------------------")
                                    if redfor:NoneInZone(LM08zone) and blufor:AnyInZone(LM08zone) and not Group.getByName('LM08 Static FARP Tent-2') then
                                       mist.respawnGroup('LM08 Static FARP Tent-2', true)
                                    end
                                    env.info("----------------------------LM08 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(LM08FARPblueSpawn, 53, timer.getTime{}+40)
env.info("----------------------------LM08FARPblueSpawn TIMER STARTED--------------------------")






env.info("----------------------------GOT TO Red Farp SPAWN FUNCTION--------------------------")

--------------------------------LM64 FARP---------------------------------------

function LM64FARPredSpawn()
  env.info("LM64FARPredSpawn FUNCTION STARTED")
  local LM64zone = ZONE:FindByName("LM64")
  local FarpLM64zone = ZONE:FindByName("Red LM64 FARP")
  local RedLM64FARPDef = ZONE:FindByName("Red Farp Defense-5")

    if blufor:NoneInZone(LM64zone) and redsupply:NoneInZone(LM64zone) then
        SPAWN:New("RED Supply LM64")
        :InitLimit( 4, 0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------LM64 FARP SUPPLY SPAWN -------------------------")
      else
        return nil
    end
      if blufor:NoneInZone(LM64zone) and redAA:NoneInZone(RedLM64FARPDef)then
        SPAWN:New("RED Farp AA-6")
        :InitRandomizeTemplate(RedFarpDefence)
        :InitLimit( 1, 0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------LM64 FARP AA SPAWN -------------------------")
      else
        return nil
      end
      if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 Static FARP Fuel Depot-1') then
            mist.respawnGroup('LM64 Static FARP Fuel Depot-1', true)
      end
      env.info("----------------------------LM64 Static FARP Fuel Depot-1 RESPAWN -------------------------")
        if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 Static FARP Fuel Depot-2') then
            mist.respawnGroup('LM64 Static FARP Fuel Depot-2', true)
        end
        env.info("----------------------------LM64 Static FARP Fuel Depot-2 RESPAWN -------------------------")
          if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 Static FARP Fuel Depot-3') then
             mist.respawnGroup('LM64 Static FARP Fuel Depot-4', true)
          end
          env.info("----------------------------LM64 Static FARP Fuel Depot-3 RESPAWN -------------------------")
            if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 Static FARP Fuel Depot-4') then
               mist.respawnGroup('LM64 Static FARP Fuel Depot-4', true)
            end
            env.info("----------------------------LM64 Static FARP Fuel Depot-4 RESPAWN -------------------------")
              if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 FARP Ammo Storage-1') then
                 mist.respawnGroup('LM64 FARP Ammo Storage-1', true)
              end
              env.info("----------------------------LM64 FARP Ammo Storage-1 RESPAWN -------------------------")
                if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 FARP Ammo Storage-2') then
                   mist.respawnGroup('LM64 FARP Ammo Storage-2', true)
                end
                env.info("----------------------------LM64 FARP Ammo Storage-2 RESPAWN -------------------------")
                  if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 FARP Ammo Storage-3') then
                     mist.respawnGroup('LM64 FARP Ammo Storage-3', true)
                  end
                  env.info("----------------------------LM64 FARP Ammo Storage-3 RESPAWN -------------------------")
                    if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 FARP Ammo Storage-4') then
                       mist.respawnGroup('LM64 FARP Ammo Storage-4', true)
                    end
                    env.info("----------------------------LM64 FARP Ammo Storage-4 RESPAWN -------------------------")
                      if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 Static FARP Command Post-1') then
                         mist.respawnGroup('LM64 Static FARP Command Post-1', true)
                      end
                      env.info("----------------------------LM64 Static FARP Command Post-1 RESPAWN -------------------------")
                        if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 Static FARP Command Post-2') then
                           mist.respawnGroup('LM64 Static FARP Command Post-2', true)
                        end
                        env.info("----------------------------LM64 Static FARP Command Post-2 RESPAWN -------------------------")
                          if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 Static FARP Tent-1') then
                             mist.respawnGroup('LM64 Static FARP Tent-1', true)
                          end
                          env.info("----------------------------LM64 Static FARP Tent-1 RESPAWN -------------------------")
                            if blufor:NoneInZone(LM64zone) and not Group.getByName('LM64 Static FARP Tent-2') then
                               mist.respawnGroup('LM64 Static FARP Tent-2', true)
                            end
                            env.info("----------------------------LM64 Static FARP Tent-2 RESPAWN -------------------------")


end
  timer.scheduleFunction(LM64FARPredSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------LM64FARPredSpawn TIMER STARTED--------------------------")

--------------------------------LM67 FARP---------------------------------------

function LM67FARPredSpawn()
  env.info("LM67FARPredSpawn FUNCTION STARTED")
  local LM67zone = ZONE:FindByName("LM67")
  local FarpLM67zone = ZONE:FindByName("Red LM67 FARP")
  local RedLM67FARPDef = ZONE:FindByName("Red Farp Defense-6")

    if blufor:NoneInZone(LM67zone) and redsupply:NoneInZone(LM67zone)  then
      SPAWN:New("RED Supply LM67")
      :InitLimit( 4, 0 )
      :SpawnScheduled( 5, .5 )
      env.info("----------------------------LM67 FARP SUPPLY SPAWN -------------------------")
    else
      return nil
    end
      if blufor:NoneInZone(LM67zone) and redAA:NoneInZone(RedLM67FARPDef)then
        SPAWN:New("RED Farp AA-7")
        :InitRandomizeTemplate(RedFarpDefence)
        :InitLimit( 1, 0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------LM67 FARP SUPPLY SPAWN -------------------------")
      else
        return nil
      end
        if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 Static FARP Fuel Depot-1') then
              mist.respawnGroup('LM67 Static FARP Fuel Depot-1', true)
        end
        env.info("----------------------------LM67 Static FARP Fuel Depot-1 RESPAWN -------------------------")
          if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 Static FARP Fuel Depot-2') then
              mist.respawnGroup('LM67 Static FARP Fuel Depot-2', true)
          end
          env.info("----------------------------LM67 Static FARP Fuel Depot-2 RESPAWN -------------------------")
            if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 Static FARP Fuel Depot-3') then
               mist.respawnGroup('LM67 Static FARP Fuel Depot-4', true)
            end
            env.info("----------------------------LM67 Static FARP Fuel Depot-3 RESPAWN -------------------------")
              if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 Static FARP Fuel Depot-4') then
                 mist.respawnGroup('LM67 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------LM67 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 FARP Ammo Storage-1') then
                   mist.respawnGroup('LM67 FARP Ammo Storage-1', true)
                end
                env.info("----------------------------LM67 FARP Ammo Storage-1 RESPAWN -------------------------")
                  if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 FARP Ammo Storage-2') then
                     mist.respawnGroup('LM67 FARP Ammo Storage-2', true)
                  end
                  env.info("----------------------------LM67 FARP Ammo Storage-2 RESPAWN -------------------------")
                    if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 FARP Ammo Storage-3') then
                       mist.respawnGroup('LM67 FARP Ammo Storage-3', true)
                    end
                    env.info("----------------------------LM67 FARP Ammo Storage-3 RESPAWN -------------------------")
                      if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 FARP Ammo Storage-4') then
                         mist.respawnGroup('LM67 FARP Ammo Storage-4', true)
                      end
                      env.info("----------------------------LM67 FARP Ammo Storage-4 RESPAWN -------------------------")
                        if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 Static FARP Command Post-1') then
                           mist.respawnGroup('LM67 Static FARP Command Post-1', true)
                        end
                        env.info("----------------------------LM67 Static FARP Command Post-1 RESPAWN -------------------------")
                          if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 Static FARP Command Post-2') then
                             mist.respawnGroup('LM67 Static FARP Command Post-2', true)
                          end
                          env.info("----------------------------LM67 Static FARP Command Post-2 RESPAWN -------------------------")
                            if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 Static FARP Tent-1') then
                               mist.respawnGroup('LM67 Static FARP Tent-1', true)
                            end
                            env.info("----------------------------LM67 Static FARP Tent-1 RESPAWN -------------------------")
                              if blufor:NoneInZone(LM67zone) and not Group.getByName('LM67 Static FARP Tent-2') then
                                 mist.respawnGroup('LM67 Static FARP Tent-2', true)
                              end
                              env.info("----------------------------LM67 Static FARP Tent-2 RESPAWN -------------------------")

end
  timer.scheduleFunction(LM67FARPredSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------LM67FARPredSpawn TIMER STARTED--------------------------")

--------------------------------KM76 FARP---------------------------------------

function KM76FARPredSpawn()
  env.info("KM76FARPredSpawn FUNCTION STARTED")

    local KM76zone = ZONE:FindByName("KM76")
    local FarpKM76zone = ZONE:FindByName("Red KM76 FARP")
    local RedKM76FARPDef = ZONE:FindByName("Red Farp Defense-1")

        if blufor:NoneInZone(KM76zone) and redsupply:NoneInZone(KM76zone)  then
          SPAWN:New("RED Supply KM76")
          :InitLimit( 4, 0 )
          :SpawnScheduled( 5, .5 )
          env.info("----------------------------KM76 FARP SUPPLY SPAWN -------------------------")
        else
          return nil
        end
          if blufor:NoneInZone(KM76zone) and redAA:NoneInZone(RedKM76FARPDef)then
            SPAWN:New("RED Farp AA-1")
            :InitRandomizeTemplate(RedFarpDefence)
            :InitLimit( 1, 0 )
            :SpawnScheduled( 5, .5 )
            env.info("----------------------------KM76 FARP SUPPLY SPAWN -------------------------")
          else
            return nil
          end
            if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 Static FARP Fuel Depot-1') then
                  mist.respawnGroup('KM76 Static FARP Fuel Depot-1', true)
            end
            env.info("----------------------------KM76 Static FARP Fuel Depot-1 RESPAWN -------------------------")
              if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 Static FARP Fuel Depot-2') then
                  mist.respawnGroup('KM76 Static FARP Fuel Depot-2', true)
              end
              env.info("----------------------------KM76 Static FARP Fuel Depot-2 RESPAWN -------------------------")
                if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 Static FARP Fuel Depot-3') then
                   mist.respawnGroup('KM76 Static FARP Fuel Depot-4', true)
                end
                env.info("----------------------------KM76 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                  if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 Static FARP Fuel Depot-4') then
                     mist.respawnGroup('KM76 Static FARP Fuel Depot-4', true)
                  end
                  env.info("----------------------------KM76 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                    if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 FARP Ammo Storage-1') then
                       mist.respawnGroup('KM76 FARP Ammo Storage-1', true)
                    end
                    env.info("----------------------------KM76 FARP Ammo Storage-1 RESPAWN -------------------------")
                      if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 FARP Ammo Storage-2') then
                         mist.respawnGroup('KM76 FARP Ammo Storage-2', true)
                      end
                      env.info("----------------------------KM76 FARP Ammo Storage-2 RESPAWN -------------------------")
                        if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 FARP Ammo Storage-3') then
                           mist.respawnGroup('KM76 FARP Ammo Storage-3', true)
                        end
                        env.info("----------------------------KM76 FARP Ammo Storage-3 RESPAWN -------------------------")
                          if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 FARP Ammo Storage-4') then
                             mist.respawnGroup('KM76 FARP Ammo Storage-4', true)
                          end
                          env.info("----------------------------KM76 FARP Ammo Storage-4 RESPAWN -------------------------")
                            if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 Static FARP Command Post-1') then
                               mist.respawnGroup('KM76 Static FARP Command Post-1', true)
                            end
                            env.info("----------------------------KM76 Static FARP Command Post-1 RESPAWN -------------------------")
                              if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 Static FARP Command Post-2') then
                                 mist.respawnGroup('KM76 Static FARP Command Post-2', true)
                              end
                              env.info("----------------------------KM76 Static FARP Command Post-2 RESPAWN -------------------------")
                                if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 Static FARP Tent-1') then
                                   mist.respawnGroup('KM76 Static FARP Tent-1', true)
                                end
                                env.info("----------------------------KM76 Static FARP Tent-1 RESPAWN -------------------------")
                                  if blufor:NoneInZone(KM76zone) and not Group.getByName('KM76 Static FARP Tent-2') then
                                     mist.respawnGroup('KM76 Static FARP Tent-2', true)
                                  end
                                  env.info("----------------------------KM76 Static FARP Tent-2 RESPAWN -------------------------")

end
  timer.scheduleFunction(KM76FARPredSpawn, 53, timer.getTime{}+40)
  env.info("----------------------------KM76FARPredSpawn TIMER STARTED--------------------------")

--------------------------------KM88 FARP---------------------------------------

function KM88FARPredSpawn()
  env.info("KM88FARPredSpawn FUNCTION STARTED")

    local KM88zone = ZONE:FindByName("KM88")
    local FarpKM88zone = ZONE:FindByName("Red KM88 FARP")
    local RedKM88FARPDef = ZONE:FindByName("Red Farp Defense-2")

      if blufor:NoneInZone(KM88zone) and redsupply:NoneInZone(KM88zone)  then
        SPAWN:New("RED Supply KM88")
        :InitLimit( 4, 0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------KM88 FARP SUPPLY SPAWN -------------------------")
      else
        return nil
      end
        if blufor:NoneInZone(KM88zone) and redAA:NoneInZone(RedKM88FARPDef)then
          SPAWN:New("RED Farp AA-2")
          :InitRandomizeTemplate(RedFarpDefence)
          :InitLimit( 1, 0 )
          :SpawnScheduled( 5, .5 )
          env.info("----------------------------KM88 FARP SUPPLY SPAWN -------------------------")
        else
          return nil
        end
          if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 Static FARP Fuel Depot-1') then
                mist.respawnGroup('KM88 Static FARP Fuel Depot-1', true)
          end
          env.info("----------------------------KM88 Static FARP Fuel Depot-1 RESPAWN -------------------------")
            if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 Static FARP Fuel Depot-2') then
                mist.respawnGroup('KM88 Static FARP Fuel Depot-2', true)
            end
            env.info("----------------------------KM88 Static FARP Fuel Depot-2 RESPAWN -------------------------")
              if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 Static FARP Fuel Depot-3') then
                 mist.respawnGroup('KM88 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------KM88 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 Static FARP Fuel Depot-4') then
                   mist.respawnGroup('KM88 Static FARP Fuel Depot-4', true)
                end
                env.info("----------------------------KM88 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                  if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 FARP Ammo Storage-1') then
                     mist.respawnGroup('KM88 FARP Ammo Storage-1', true)
                  end
                  env.info("----------------------------KM88 FARP Ammo Storage-1 RESPAWN -------------------------")
                    if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 FARP Ammo Storage-2') then
                       mist.respawnGroup('KM88 FARP Ammo Storage-2', true)
                    end
                    env.info("----------------------------KM88 FARP Ammo Storage-2 RESPAWN -------------------------")
                      if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 FARP Ammo Storage-3') then
                         mist.respawnGroup('KM88 FARP Ammo Storage-3', true)
                      end
                      env.info("----------------------------KM88 FARP Ammo Storage-3 RESPAWN -------------------------")
                        if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 FARP Ammo Storage-4') then
                           mist.respawnGroup('KM88 FARP Ammo Storage-4', true)
                        end
                        env.info("----------------------------KM88 FARP Ammo Storage-4 RESPAWN -------------------------")
                          if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 Static FARP Command Post-1') then
                             mist.respawnGroup('KM88 Static FARP Command Post-1', true)
                          end
                          env.info("----------------------------KM88 Static FARP Command Post-1 RESPAWN -------------------------")
                            if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 Static FARP Command Post-2') then
                               mist.respawnGroup('KM88 Static FARP Command Post-2', true)
                            end
                            env.info("----------------------------KM88 Static FARP Command Post-2 RESPAWN -------------------------")
                              if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 Static FARP Tent-1') then
                                 mist.respawnGroup('KM88 Static FARP Tent-1', true)
                              end
                              env.info("----------------------------KM88 Static FARP Tent-1 RESPAWN -------------------------")
                                if blufor:NoneInZone(KM88zone) and not Group.getByName('KM88 Static FARP Tent-2') then
                                   mist.respawnGroup('KM88 Static FARP Tent-2', true)
                                end
                                env.info("----------------------------KM88 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(KM88FARPredSpawn, 53, timer.getTime{}+40)
env.info("----------------------------KM88FARPredSpawn TIMER STARTED--------------------------")

--------------------------------LM26 FARP---------------------------------------


function LM26FARPredSpawn()
  env.info("LM26FARPredSpawn FUNCTION STARTED")
    local LM26zone = ZONE:FindByName("LM26")
    local FarpLM26zone = ZONE:FindByName("Red LM26 FARP")
    local RedLM26FARPDef = ZONE:FindByName("Red Farp Defense-3")

    if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and redsupply:NoneInZone(LM26zone)  then
      SPAWN:New("RED Supply LM26")
      :InitLimit( 4, 0 )
      :SpawnScheduled( 5, .5 )
      env.info("----------------------------LM26 FARP SUPPLY SPAWN -------------------------")
    else
      return nil
    end
      if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and redAA:NoneInZone(RedLM26FARPDef)then
        SPAWN:New("RED Farp AA-3")
        :InitRandomizeTemplate(RedFarpDefence)
        :InitLimit( 1, 0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------LM26 FARP SUPPLY SPAWN -------------------------")
      else
        return nil
      end
        if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Fuel Depot-5') then
              mist.respawnGroup('LM26 Static FARP Fuel Depot-5', true)
        end
        env.info("----------------------------LM26 Static FARP Fuel Depot-5 RESPAWN -------------------------")
          if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Fuel Depot-6') then
              mist.respawnGroup('LM26 Static FARP Fuel Depot-6', true)
          end
          env.info("----------------------------LM26 Static FARP Fuel Depot-6 RESPAWN -------------------------")
            if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Fuel Depot-7') then
               mist.respawnGroup('LM26 Static FARP Fuel Depot-7', true)
            end
            env.info("----------------------------LM26 Static FARP Fuel Depot-7 RESPAWN -------------------------")
              if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Fuel Depot-8') then
                 mist.respawnGroup('LM26 Static FARP Fuel Depot-8', true)
              end
              env.info("----------------------------LM26 Static FARP Fuel Depot-8 RESPAWN -------------------------")
                if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 FARP Ammo Storage-5') then
                   mist.respawnGroup('LM26 FARP Ammo Storage-5', true)
                end
                env.info("----------------------------LM26 FARP Ammo Storage-5 RESPAWN -------------------------")
                  if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 FARP Ammo Storage-6') then
                     mist.respawnGroup('LM26 FARP Ammo Storage-6', true)
                  end
                  env.info("----------------------------LM26 FARP Ammo Storage-6 RESPAWN -------------------------")
                    if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 FARP Ammo Storage-7') then
                       mist.respawnGroup('LM26 FARP Ammo Storage-7', true)
                    end
                    env.info("----------------------------LM26 FARP Ammo Storage-7 RESPAWN -------------------------")
                      if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 FARP Ammo Storage-8') then
                         mist.respawnGroup('LM26 FARP Ammo Storage-8', true)
                      end
                      env.info("----------------------------LM26 FARP Ammo Storage-8 RESPAWN -------------------------")
                        if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Command Post-3') then
                           mist.respawnGroup('LM26 Static FARP Command Post-3', true)
                        end
                        env.info("----------------------------LM26 Static FARP Command Post-3 RESPAWN -------------------------")
                          if blufor:NoneInZone(LM26zone) and  redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Command Post-4') then
                             mist.respawnGroup('LM26 Static FARP Command Post-4', true)
                          end
                          env.info("----------------------------LM26 Static FARP Command Post-4 RESPAWN -------------------------")
                            if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Tent-3') then
                               mist.respawnGroup('LM26 Static FARP Tent-3', true)
                            end
                            env.info("----------------------------LM26 Static FARP Tent-3 RESPAWN -------------------------")
                              if blufor:NoneInZone(LM26zone) and redfor:AnyInZone(LM26zone) and not Group.getByName('LM26 Static FARP Tent-4') then
                                 mist.respawnGroup('LM26 Static FARP Tent-4', true)
                              end
                              env.info("----------------------------LM26 Static FARP Tent-4 RESPAWN -------------------------")

end
timer.scheduleFunction(LM26FARPredSpawn, 53, timer.getTime{}+40)
env.info("----------------------------LM26FARPredSpawn TIMER STARTED--------------------------")

--------------------------------LM38 FARP---------------------------------------

function LM38FARPredSpawn()
  env.info("LM38FARPredSpawn FUNCTION STARTED")
      local LM38zone = ZONE:FindByName("LM38")
      local FarpLM38zone = ZONE:FindByName("Red LM38 FARP")
      local RedLM38FARPDef = ZONE:FindByName("Red Farp Defense-4")

      if blufor:NoneInZone(LM38zone) and redsupply:NoneInZone(LM38zone)  then
        SPAWN:New("RED Supply LM38")
        :InitLimit( 4, 0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------LM38 FARP SUPPLY SPAWN -------------------------")
      else
        return nil
      end
        if blufor:NoneInZone(LM38zone) and redAA:NoneInZone(RedLM38FARPDef)then
          SPAWN:New("RED Farp AA-4")
          :InitRandomizeTemplate(RedFarpDefence)
          :InitLimit( 1, 0 )
          :SpawnScheduled( 5, .5 )
          env.info("----------------------------LM38 FARP SUPPLY SPAWN -------------------------")
        else
          return nil
        end
          if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 Static FARP Fuel Depot-1') then
                mist.respawnGroup('LM38 Static FARP Fuel Depot-1', true)
          end
          env.info("----------------------------LM38 Static FARP Fuel Depot-1 RESPAWN -------------------------")
            if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 Static FARP Fuel Depot-2') then
                mist.respawnGroup('LM38 Static FARP Fuel Depot-2', true)
            end
            env.info("----------------------------LM38 Static FARP Fuel Depot-2 RESPAWN -------------------------")
              if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 Static FARP Fuel Depot-3') then
                 mist.respawnGroup('LM38 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------LM38 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 Static FARP Fuel Depot-4') then
                   mist.respawnGroup('LM38 Static FARP Fuel Depot-4', true)
                end
                env.info("----------------------------LM38 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                  if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 FARP Ammo Storage-1') then
                     mist.respawnGroup('LM38 FARP Ammo Storage-1', true)
                  end
                  env.info("----------------------------LM38 FARP Ammo Storage-1 RESPAWN -------------------------")
                    if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 FARP Ammo Storage-2') then
                       mist.respawnGroup('LM38 FARP Ammo Storage-2', true)
                    end
                    env.info("----------------------------LM38 FARP Ammo Storage-2 RESPAWN -------------------------")
                      if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 FARP Ammo Storage-3') then
                         mist.respawnGroup('LM38 FARP Ammo Storage-3', true)
                      end
                      env.info("----------------------------LM38 FARP Ammo Storage-3 RESPAWN -------------------------")
                        if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 FARP Ammo Storage-4') then
                           mist.respawnGroup('LM38 FARP Ammo Storage-4', true)
                        end
                        env.info("----------------------------LM38 FARP Ammo Storage-4 RESPAWN -------------------------")
                          if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 Static FARP Command Post-1') then
                             mist.respawnGroup('LM38 Static FARP Command Post-1', true)
                          end
                          env.info("----------------------------LM38 Static FARP Command Post-1 RESPAWN -------------------------")
                            if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 Static FARP Command Post-2') then
                               mist.respawnGroup('LM38 Static FARP Command Post-2', true)
                            end
                            env.info("----------------------------LM38 Static FARP Command Post-2 RESPAWN -------------------------")
                              if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 Static FARP Tent-1') then
                                 mist.respawnGroup('LM38 Static FARP Tent-1', true)
                              end
                              env.info("----------------------------LM38 Static FARP Tent-1 RESPAWN -------------------------")
                                if blufor:NoneInZone(LM38zone) and not Group.getByName('LM38 Static FARP Tent-2') then
                                   mist.respawnGroup('LM38 Static FARP Tent-2', true)
                                end
                                env.info("----------------------------LM38 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(LM38FARPredSpawn, 53, timer.getTime{}+40)
env.info("----------------------------LM38FARPredSpawn TIMER STARTED--------------------------")


--------------------------------MM05 FARP---------------------------------------

function MM05FARPredSpawn()
  env.info("MM05FARPredSpawn FUNCTION STARTED")
        local MM05zone = ZONE:FindByName("MM05")
        local FarpMM05zone = ZONE:FindByName("Red MM05 FARP")
        local RedMM05FARPDef = ZONE:FindByName("Red Farp Defense-7")

        if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and redsupply:NoneInZone(MM05zone)  then
          SPAWN:New("RED Supply MM05")
          :InitLimit( 4, 0 )
          :SpawnScheduled( 5, .5 )
          env.info("----------------------------MM05 FARP SUPPLY SPAWN -------------------------")
        else
          return nil
        end
          if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and redAA:NoneInZone(RedMM05FARPDef)then
            SPAWN:New("RED Farp AA-8")
            :InitRandomizeTemplate(RedFarpDefence)
            :InitLimit( 1, 0 )
            :SpawnScheduled( 5, .5 )
            env.info("----------------------------MM05 FARP SUPPLY SPAWN -------------------------")
          else
            return nil
          end
            if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 Static FARP Fuel Depot-1') then
                  mist.respawnGroup('MM05 Static FARP Fuel Depot-1', true)
            end
            env.info("----------------------------MM05 Static FARP Fuel Depot-1 RESPAWN -------------------------")
              if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 Static FARP Fuel Depot-2') then
                  mist.respawnGroup('MM05 Static FARP Fuel Depot-2', true)
              end
              env.info("----------------------------MM05 Static FARP Fuel Depot-2 RESPAWN -------------------------")
                if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 Static FARP Fuel Depot-3') then
                   mist.respawnGroup('MM05 Static FARP Fuel Depot-3', true)
                end
                env.info("----------------------------MM05 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                  if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 Static FARP Fuel Depot-4') then
                     mist.respawnGroup('MM05 Static FARP Fuel Depot-4', true)
                  end
                  env.info("----------------------------MM05 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                    if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 FARP Ammo Storage-1') then
                       mist.respawnGroup('MM05 FARP Ammo Storage-1', true)
                    end
                    env.info("----------------------------MM05 FARP Ammo Storage-1 RESPAWN -------------------------")
                      if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 FARP Ammo Storage-2') then
                         mist.respawnGroup('MM05 FARP Ammo Storage-2', true)
                      end
                      env.info("----------------------------MM05 FARP Ammo Storage-2 RESPAWN -------------------------")
                        if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 FARP Ammo Storage-3') then
                           mist.respawnGroup('MM05 FARP Ammo Storage-3', true)
                        end
                        env.info("----------------------------MM05 FARP Ammo Storage-3 RESPAWN -------------------------")
                          if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 FARP Ammo Storage-4') then
                             mist.respawnGroup('MM05 FARP Ammo Storage-4', true)
                          end
                          env.info("----------------------------MM05 FARP Ammo Storage-4 RESPAWN -------------------------")
                            if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 Static FARP Command Post-1') then
                               mist.respawnGroup('MM05 Static FARP Command Post-1', true)
                            end
                            env.info("----------------------------MM05 Static FARP Command Post-1 RESPAWN -------------------------")
                              if blufor:NoneInZone(MM05zone) and  redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 Static FARP Command Post-2') then
                                 mist.respawnGroup('MM05 Static FARP Command Post-2', true)
                              end
                              env.info("----------------------------MM05 Static FARP Command Post-2 RESPAWN -------------------------")
                                if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 Static FARP Tent-1') then
                                   mist.respawnGroup('MM05 Static FARP Tent-1', true)
                                end
                                env.info("----------------------------MM05 Static FARP Tent-1 RESPAWN -------------------------")
                                  if blufor:NoneInZone(MM05zone) and redfor:AnyInZone(MM05zone) and not Group.getByName('MM05 Static FARP Tent-2') then
                                     mist.respawnGroup('MM05 Static FARP Tent-2', true)
                                  end
                                  env.info("----------------------------MM05 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(MM05FARPredSpawn, 53, timer.getTime{}+40)
env.info("----------------------------MM05FARPredSpawn TIMER STARTED--------------------------")

--------------------------------MM17 FARP---------------------------------------

function MM17FARPredSpawn()
  env.info("MM17FARPredSpawn FUNCTION STARTED")
    local MM17zone = ZONE:FindByName("MM17")
    local FarpMM17zone = ZONE:FindByName("Red MM17 FARP")
    local RedMM17FARPDef = ZONE:FindByName("Red Farp Defense-8")

    if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and redsupply:NoneInZone(MM17zone)  then
      SPAWN:New("RED Supply MM17")
      :InitLimit( 4, 0 )
      :SpawnScheduled( 5, .5 )
      env.info("----------------------------MM17 FARP SUPPLY SPAWN -------------------------")
    else
      return nil
    end
      if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and redAA:NoneInZone(RedMM17FARPDef)then
        SPAWN:New("RED Farp AA-8")
        :InitRandomizeTemplate(RedFarpDefence)
        :InitLimit( 1, 0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------MM17 FARP SUPPLY SPAWN -------------------------")
      else
        return nil
      end
        if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 Static FARP Fuel Depot-1') then
              mist.respawnGroup('MM17 Static FARP Fuel Depot-1', true)
        end
        env.info("----------------------------MM17 Static FARP Fuel Depot-1 RESPAWN -------------------------")
          if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 Static FARP Fuel Depot-2') then
              mist.respawnGroup('MM17 Static FARP Fuel Depot-2', true)
          end
          env.info("----------------------------MM17 Static FARP Fuel Depot-2 RESPAWN -------------------------")
            if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 Static FARP Fuel Depot-3') then
               mist.respawnGroup('MM17 Static FARP Fuel Depot-3', true)
            end
            env.info("----------------------------MM17 Static FARP Fuel Depot-3 RESPAWN -------------------------")
              if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 Static FARP Fuel Depot-4') then
                 mist.respawnGroup('MM17 Static FARP Fuel Depot-4', true)
              end
              env.info("----------------------------MM17 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 FARP Ammo Storage-1') then
                   mist.respawnGroup('MM17 FARP Ammo Storage-1', true)
                end
                env.info("----------------------------MM17 FARP Ammo Storage-1 RESPAWN -------------------------")
                  if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 FARP Ammo Storage-2') then
                     mist.respawnGroup('MM17 FARP Ammo Storage-2', true)
                  end
                  env.info("----------------------------MM17 FARP Ammo Storage-2 RESPAWN -------------------------")
                    if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 FARP Ammo Storage-3') then
                       mist.respawnGroup('MM17 FARP Ammo Storage-3', true)
                    end
                    env.info("----------------------------MM17 FARP Ammo Storage-3 RESPAWN -------------------------")
                      if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 FARP Ammo Storage-4') then
                         mist.respawnGroup('MM17 FARP Ammo Storage-4', true)
                      end
                      env.info("----------------------------MM17 FARP Ammo Storage-4 RESPAWN -------------------------")
                        if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 Static FARP Command Post-1') then
                           mist.respawnGroup('MM17 Static FARP Command Post-1', true)
                        end
                        env.info("----------------------------MM17 Static FARP Command Post-1 RESPAWN -------------------------")
                          if blufor:NoneInZone(MM17zone) and  redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 Static FARP Command Post-2') then
                             mist.respawnGroup('MM17 Static FARP Command Post-2', true)
                          end
                          env.info("----------------------------MM17 Static FARP Command Post-2 RESPAWN -------------------------")
                            if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 Static FARP Tent-1') then
                               mist.respawnGroup('MM17 Static FARP Tent-1', true)
                            end
                            env.info("----------------------------MM17 Static FARP Tent-1 RESPAWN -------------------------")
                              if blufor:NoneInZone(MM17zone) and redfor:AnyInZone(MM17zone) and not Group.getByName('MM17 Static FARP Tent-2') then
                                 mist.respawnGroup('MM17 Static FARP Tent-2', true)
                              end
                              env.info("----------------------------MM17 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(MM17FARPredSpawn, 53, timer.getTime{}+40)
env.info("----------------------------MM17FARPredSpawn TIMER STARTED--------------------------")

--------------------------------MM45 FARP---------------------------------------

function MM45FARPredSpawn()
  env.info("MM45FARPredSpawn FUNCTION STARTED")
    local MM45zone = ZONE:FindByName("MM45")
    local FarpMM45zone = ZONE:FindByName("Red MM45 FARP")
    local RedMM45FARPDef = ZONE:FindByName("Red Farp Defense-9")

      if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and redsupply:NoneInZone(MM45zone)  then
        SPAWN:New("RED Supply MM45")
        :InitLimit( 4, 0 )
        :SpawnScheduled( 5, .5 )
        env.info("----------------------------MM45 FARP SUPPLY SPAWN -------------------------")
      else
        return nil
      end
        if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and redAA:NoneInZone(RedMM45FARPDef)then
          SPAWN:New("RED Farp AA-10")
          :InitRandomizeTemplate(RedFarpDefence)
          :InitLimit( 1, 0 )
          :SpawnScheduled( 5, .5 )
          env.info("----------------------------MM45 FARP SUPPLY SPAWN -------------------------")
        else
          return nil
        end
          if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 Static FARP Fuel Depot-1') then
                mist.respawnGroup('MM45 Static FARP Fuel Depot-1', true)
          end
          env.info("----------------------------MM45 Static FARP Fuel Depot-1 RESPAWN -------------------------")
            if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 Static FARP Fuel Depot-2') then
                mist.respawnGroup('MM45 Static FARP Fuel Depot-2', true)
            end
            env.info("----------------------------MM45 Static FARP Fuel Depot-2 RESPAWN -------------------------")
              if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 Static FARP Fuel Depot-3') then
                 mist.respawnGroup('MM45 Static FARP Fuel Depot-3', true)
              end
              env.info("----------------------------MM45 Static FARP Fuel Depot-3 RESPAWN -------------------------")
                if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 Static FARP Fuel Depot-4') then
                   mist.respawnGroup('MM45 Static FARP Fuel Depot-4', true)
                end
                env.info("----------------------------MM45 Static FARP Fuel Depot-4 RESPAWN -------------------------")
                  if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 FARP Ammo Storage-1') then
                     mist.respawnGroup('MM45 FARP Ammo Storage-1', true)
                  end
                  env.info("----------------------------MM45 FARP Ammo Storage-1 RESPAWN -------------------------")
                    if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 FARP Ammo Storage-2') then
                       mist.respawnGroup('MM45 FARP Ammo Storage-2', true)
                    end
                    env.info("----------------------------MM45 FARP Ammo Storage-2 RESPAWN -------------------------")
                      if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 FARP Ammo Storage-3') then
                         mist.respawnGroup('MM45 FARP Ammo Storage-3', true)
                      end
                      env.info("----------------------------MM45 FARP Ammo Storage-3 RESPAWN -------------------------")
                        if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 FARP Ammo Storage-4') then
                           mist.respawnGroup('MM45 FARP Ammo Storage-4', true)
                        end
                        env.info("----------------------------MM45 FARP Ammo Storage-4 RESPAWN -------------------------")
                          if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 Static FARP Command Post-1') then
                             mist.respawnGroup('MM45 Static FARP Command Post-1', true)
                          end
                          env.info("----------------------------MM45 Static FARP Command Post-1 RESPAWN -------------------------")
                            if blufor:NoneInZone(MM45zone) and  redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 Static FARP Command Post-2') then
                               mist.respawnGroup('MM45 Static FARP Command Post-2', true)
                            end
                            env.info("----------------------------MM45 Static FARP Command Post-2 RESPAWN -------------------------")
                              if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 Static FARP Tent-1') then
                                 mist.respawnGroup('MM45 Static FARP Tent-1', true)
                              end
                              env.info("----------------------------MM45 Static FARP Tent-1 RESPAWN -------------------------")
                                if blufor:NoneInZone(MM45zone) and redfor:AnyInZone(MM45zone) and not Group.getByName('MM45 Static FARP Tent-2') then
                                   mist.respawnGroup('MM45 Static FARP Tent-2', true)
                                end
                                env.info("----------------------------MM45 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(MM45FARPredSpawn, 53, timer.getTime{}+40)
env.info("----------------------------MM45FARPredSpawn TIMER STARTED--------------------------")

--------------------------------MM43 FARP---------------------------------------

function MM43FARPredSpawn()
  env.info("MM43FARPredSpawn FUNCTION STARTED")
  local MM43zone = ZONE:FindByName("MM43")
  local FarpMM43zone = ZONE:FindByName("Red MM43 FARP")
  local RedMM43FARPDef = ZONE:FindByName("Red Farp Defense-10")

  if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and redsupply:NoneInZone(MM43zone)  then
    SPAWN:New("RED Supply MM43")
    :InitLimit( 4, 0 )
    :SpawnScheduled( 5, .5 )
    env.info("----------------------------MM43 FARP SUPPLY SPAWN -------------------------")
  else
    return nil
  end
    if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and redAA:NoneInZone(RedMM43FARPDef)then
      SPAWN:New("RED Farp AA-11")
      :InitRandomizeTemplate(RedFarpDefence)
      :InitLimit( 1, 0 )
      :SpawnScheduled( 5, .5 )
      env.info("----------------------------MM43 FARP SUPPLY SPAWN -------------------------")
    else
      return nil
    end
      if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 Static FARP Fuel Depot-1') then
            mist.respawnGroup('MM43 Static FARP Fuel Depot-1', true)
      end
      env.info("----------------------------MM43 Static FARP Fuel Depot-1 RESPAWN -------------------------")
        if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 Static FARP Fuel Depot-2') then
            mist.respawnGroup('MM43 Static FARP Fuel Depot-2', true)
        end
        env.info("----------------------------MM43 Static FARP Fuel Depot-2 RESPAWN -------------------------")
          if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 Static FARP Fuel Depot-3') then
             mist.respawnGroup('MM43 Static FARP Fuel Depot-3', true)
          end
          env.info("----------------------------MM43 Static FARP Fuel Depot-3 RESPAWN -------------------------")
            if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 Static FARP Fuel Depot-4') then
               mist.respawnGroup('MM43 Static FARP Fuel Depot-4', true)
            end
            env.info("----------------------------MM43 Static FARP Fuel Depot-4 RESPAWN -------------------------")
              if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 FARP Ammo Storage-1') then
                 mist.respawnGroup('MM43 FARP Ammo Storage-1', true)
              end
              env.info("----------------------------MM43 FARP Ammo Storage-1 RESPAWN -------------------------")
                if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 FARP Ammo Storage-2') then
                   mist.respawnGroup('MM43 FARP Ammo Storage-2', true)
                end
                env.info("----------------------------MM43 FARP Ammo Storage-2 RESPAWN -------------------------")
                  if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 FARP Ammo Storage-3') then
                     mist.respawnGroup('MM43 FARP Ammo Storage-3', true)
                  end
                  env.info("----------------------------MM43 FARP Ammo Storage-3 RESPAWN -------------------------")
                    if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 FARP Ammo Storage-4') then
                       mist.respawnGroup('MM43 FARP Ammo Storage-4', true)
                    end
                    env.info("----------------------------MM43 FARP Ammo Storage-4 RESPAWN -------------------------")
                      if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 Static FARP Command Post-1') then
                         mist.respawnGroup('MM43 Static FARP Command Post-1', true)
                      end
                      env.info("----------------------------MM43 Static FARP Command Post-1 RESPAWN -------------------------")
                        if blufor:NoneInZone(MM43zone) and  redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 Static FARP Command Post-2') then
                           mist.respawnGroup('MM43 Static FARP Command Post-2', true)
                        end
                        env.info("----------------------------MM43 Static FARP Command Post-2 RESPAWN -------------------------")
                          if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 Static FARP Tent-1') then
                             mist.respawnGroup('MM43 Static FARP Tent-1', true)
                          end
                          env.info("----------------------------MM43 Static FARP Tent-1 RESPAWN -------------------------")
                            if blufor:NoneInZone(MM43zone) and redfor:AnyInZone(MM43zone) and not Group.getByName('MM43 Static FARP Tent-2') then
                               mist.respawnGroup('MM43 Static FARP Tent-2', true)
                            end
                            env.info("----------------------------MM43 Static FARP Tent-2 RESPAWN -------------------------")

end
timer.scheduleFunction(MM43FARPredSpawn, 53, timer.getTime{}+40)
env.info("----------------------------MM43FARPredSpawn TIMER STARTED--------------------------")
