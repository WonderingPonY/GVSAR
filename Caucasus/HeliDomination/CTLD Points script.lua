

function blue_ctld:OnAfterCratesDropped(From, Event, To, Group, Unit, Cargotable)
     local points = 3
     if Unit then
       local PlayerName = Unit:GetPlayerName()
       --local PlayerID = Group.getID()
      -- my_scoring:_AddPlayerFromUnit( Unit )
      -- my_scoring:AddGoalScore(Unit, "CTLD", string.format("Pilot %s has been awarded %d points for transporting cargo crates!", PlayerName, points), points)
       dcsbot.addUserPoints( PlayerName, 3)
       env.info("----------------------------Crate Dropped function--------------------------")
     end
 end

 function red_ctld:OnAfterCratesDropped(From, Event, To, Group, Unit, Cargotable)
      local points = 3
      if Unit then
        local PlayerName = Unit:GetPlayerName()
      --  my_scoring:_AddPlayerFromUnit( Unit )
      --my_scoring:AddGoalScore(Unit, "CTLD", string.format("Pilot %s has been awarded %d points for transporting cargo crates!", PlayerName, points), points)
        dcsbot.addUserPoints( PlayerName, 3)
      end
  end

  function blue_ctld:OnAfterCratesBuild(From, Event, To, Group, Unit, Cargotable)
       local points = 3
       if Unit then
         local PlayerName = Unit:GetPlayerName()
         -- my_scoring:_AddPlayerFromUnit( Unit )
         -- my_scoring:AddGoalScore(Unit, "CTLD", string.format("Pilot %s has been awarded %d points for transporting cargo crates!", PlayerName, points), points)
         dcsbot.addUserPoints( PlayerName, 3)
       end
   end

   function red_ctld:OnAfterCratesBuild(From, Event, To, Group, Unit, Cargotable)
        local points = 3
        if Unit then
          local PlayerName = Unit:GetPlayerName()
          -- my_scoring:_AddPlayerFromUnit( Unit )
          -- my_scoring:AddGoalScore(Unit, "CTLD", string.format("Pilot %s has been awarded %d points for transporting cargo crates!", PlayerName, points), points)
          dcsbot.addUserPoints( PlayerName, 3)
        end
    end

function blue_ctld:OnAfterTroopsDeployed(From, Event, To, Group, Unit, Troops)
   local points = 3
   if Unit then
   local PlayerName = Unit:GetPlayerName()
   -- my_scoring:_AddPlayerFromUnit( Unit )
   -- my_scoring:AddGoalScore(Unit, "CTLD", string.format("Pilot %s has been awarded %d points for the construction of Units!", PlayerName, points), points)
   dcsbot.addUserPoints( PlayerName, 3)
   end
  end

  function red_ctld:OnAfterTroopsDeployed(From, Event, To, Group, Unit, Troops)
     local points = 3
     if Unit then
     local PlayerName = Unit:GetPlayerName()
     -- my_scoring:_AddPlayerFromUnit( Unit )
     -- my_scoring:AddGoalScore(Unit, "CTLD", string.format("Pilot %s has been awarded %d points for the construction of Units!", PlayerName, points), points)
     dcsbot.addUserPoints( PlayerName, 3)
     end
    end
