local my_csar = CSAR:New(coalition.side.BLUE,"Downed Pilot","Luftrettung")
   -- options
   my_csar.immortalcrew = true -- downed pilot spawn is immortal
   my_csar.invisiblecrew = false -- downed pilot spawn is visible
   -- start the FSM
   my_csar:__Start(5)
