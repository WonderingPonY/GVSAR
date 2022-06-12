SEF_ONDEADEVENTHANDLER = {}
function SEF_ONDEADEVENTHANDLER:onEvent(Event)

	if Event.id == world.event.S_EVENT_DEAD then
		if Event.initiator then
			if ( Event.initiator:getCategory() == 1 or Event.initiator:getCategory() == 3 ) then 	-- UNIT or STATIC
				if ( Event.initiator:getCoalition() ~= nil ) then

					local DeadUnit 				 = Event.initiator
					local DeadUnitObjectCategory = Event.initiator:getCategory()						-- 1 UNIT / 2 WEAPON / 3 STATIC / 4 BASE / 5 SCENERY / 6 CARGO
					local DeadUnitCategory 		 = Event.initiator:getDesc().category					-- 0 AIRPLANE / 1 HELICOPTER / 2 GROUND_UNIT / 3 SHIP / 4 STRUCTURE
					local DeadUnitCoalition 	 = Event.initiator:getCoalition()
					local DeadUnitName			 = Event.initiator:getName()

					if ( DeadUnitCoalition == 1 ) then													-- RED ONLY AT THIS STAGE
						if ( DeadUnitObjectCategory == 1 ) then 										-- UNIT
							if ( DeadUnitCategory == 2 or DeadUnitCategory == 3 ) then 					-- GROUND_UNIT or SHIP
								-- if ( string.find(DeadUnitName, "Chinese LUV Tigr") ) then
								-- 	--Do nothing we don't want to include these units in the list currently
								-- else
									UnitIntermentTableLength = UnitIntermentTableLength + 1
									SeaSlugUnitInterment[UnitIntermentTableLength] = DeadUnitName
								-- end
							else
							end
						elseif ( DeadUnitObjectCategory == 3 ) then 									-- STATIC
							StaticIntermentTableLength = StaticIntermentTableLength + 1
							SeaSlugStaticInterment[StaticIntermentTableLength] = DeadUnitName
						else
						end
					else
					end
				else
				end
			end
		end
	end
end
world.addEventHandler(SEF_ONDEADEVENTHANDLER)
