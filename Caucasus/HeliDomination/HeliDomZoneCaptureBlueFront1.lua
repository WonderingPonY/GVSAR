 do

   local RU_CC = COMMANDCENTER:New( GROUP:FindByName( "RedHQ" ), "Russia HQ" )
   local US_CC = COMMANDCENTER:New( GROUP:FindByName( "BlueHQ" ), "USA HQ" )

 end
--
-- -- Next, we define the mission, and add some scoring to it.
--
--  do -- Missions
--
--    US_Mission_SpicyNugget = MISSION:New( US_CC, "Spicy Nugget", "Primary",
--      "Welcome to Heli-Domination. The red grid squares across Caucasas need to be captured.\n" ..
--      "There are 42 capture zones located across Caucasas.\n" ..
--      "Move to a zone, destroy the enemy forces in said zone, " ..
--      "and occupy the zone with a platoon.\n " ..
--      "Your orders are to take back the red grid squares while holding our own.\n" ..
--      "Use the map (F10) for a clear indication of the location of each capture zone.\n" ..
--      "Note that heavy resistance can be expected in each zone\n" ..
--      "Mission 'Spicy Nugget' is complete when all 42 zones are taken!"
--      , coalition.side.BLUE )
--
--      RU_Mission_KremlinKlacking = MISSION:New( RU_CC, "Kremlin Klacking", "Primary",
--        "Welcome to Heli-Domination. The blue grid squares across Caucasas need to be captured.\n" ..
--        "There are 40 capture zones located across Caucasas.\n" ..
--        "Move to a zone, destroy the enemy forces in said zone, " ..
--        "and occupy the zone with a platoon.\n " ..
--        "Your orders are to capture the blue grid squares while holding our own.\n" ..
--        "Use the map (F10) for a clear indication of the location of each capture zone.\n" ..
--        "Note that heavy resistance can be expected in each zone\n" ..
--        "Mission 'SKremlin Klacking' is complete when all 42 zones are taken!"
--        , coalition.side.RED )
--
--    US_Mission_SpicyNugget:Start()
--    RU_Mission_KremlinKlacking:Start()
--
--  end

 -- BlueZones = {ZONE:New( "LM88" ), ZONE:New( "LM87" ),ZONE:New( "LM86" ),ZONE:New( "LM85" ),ZONE:New( "LM84" ),ZONE:New( "LM98" ),ZONE:New( "LM97" ),ZONE:New( "LM96" ),ZONE:New( "LM95" ),ZONE:New( "MM07" ),
 -- ZONE:New( "MM06" ),ZONE:New( "MM05" ),ZONE:New( "MM04" ),ZONE:New( "MM17" ),ZONE:New( "MM16" ),ZONE:New( "MM15" ),ZONE:New( "MM14" ),ZONE:New( "MM27" ),ZONE:New( "MM26" ),ZONE:New( "MM25" ),ZONE:New( "MM24" ),
 -- ZONE:New( "MM36" ),ZONE:New( "MM35" ),ZONE:New( "MM34" ),ZONE:New( "MM45" ),ZONE:New( "MM44" ),ZONE:New( "MM43" ),ZONE:New( "MM55" ),ZONE:New( "MM54" ),ZONE:New( "MM53" ),ZONE:New( "MM65" ),ZONE:New( "MM64" ), ZONE:New( "MM63" ),
 -- ZONE:New( "MM75" ),ZONE:New( "MM74" ),ZONE:New( "MM73" ),ZONE:New( "MM72" ),ZONE:New( "MM84" ),ZONE:New( "MM83" ),ZONE:New( "MM82" )}
 --
 -- RedZones = { ZONE:New( "KM78" ), ZONE:New( "KM77" ), ZONE:New( "KM76" ), ZONE:New( "KM88" ), ZONE:New( "KM87" ), ZONE:New( "KM86" ),
 -- ZONE:New( "KM98" ), ZONE:New( "KM97" ), ZONE:New( "KM96" ), ZONE:New( "LM08" ), ZONE:New( "LM07" ), ZONE:New( "LM06" ), ZONE:New( "LM18" ), ZONE:New( "LM17" ), ZONE:New( "LM16" ), ZONE:New( "LM28" ), ZONE:New( "LM27" ), ZONE:New( "LM26" ), ZONE:New( "LM25" ),
 -- ZONE:New( "LM38" ), ZONE:New( "LM37" ), ZONE:New( "LM36" ), ZONE:New( "LM35" ), ZONE:New( "LM48" ), ZONE:New( "LM47" ), ZONE:New( "LM46" ), ZONE:New( "LM45" ), ZONE:New( "LM58" ), ZONE:New( "LM57" ), ZONE:New( "LM56" ), ZONE:New( "LM55" ), ZONE:New( "LM54" ),
 -- ZONE:New( "LM68" ), ZONE:New( "LM67" ), ZONE:New( "LM66" ), ZONE:New( "LM65" ), ZONE:New( "LM64" ),  ZONE:New( "LM77" ), ZONE:New( "LM76" ), ZONE:New( "LM75" ), ZONE:New( "LM74" ) }

-- LM88zone = ZONE_POLYGON:NewFromGroupName("LM88")
-- LM87zone = ZONE:New("LM87")
-- LM86zone = ZONE:New("LM86")
-- LM85zone = ZONE:New("LM85")
-- LM84zone = ZONE:New("LM84")
-- LM98zone = ZONE:New("LM98")
-- LM97zone = ZONE:New("LM97")
-- LM96zone = ZONE:New("LM96")
-- LM95zone = ZONE:New("LM95")
-- MM07zone = ZONE:New("MM07")
-- MM06zone = ZONE:New("MM06")
-- MM05zone = ZONE:New("MM05")
-- MM04zone = ZONE:New("MM04")

MM17zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM17", coalition.side.BLUE )


 function MM17zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM17zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM17zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

-- As you can see, not a rocket science.
-- Next is the Event Handler when the **Empty** state transition is triggered.
-- Now we smoke the ZoneCaptureCoalition with a green color, using `self:Smoke( SMOKECOLOR.Green )`.
--
--      --- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function MM17zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end
--
-- The next Event Handlers speak for itself.
-- When the zone is Attacked, we smoke the zone white and send some messages to each coalition.

--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function MM17zoneCaptureCoalition:OnEnterAttacked()
 MM17zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end
--
-- When the zone is Captured, we send some victory or loss messages to the correct coalition.
-- And we add some score.

--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function MM17zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

-----MM16zone-----

MM16zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM16" , coalition.side.BLUE )


 function MM16zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM16zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM16zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM16zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM16zoneCaptureCoalition:OnEnterAttacked()
 MM16zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM16zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


---------MM15---------

MM15zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM15" , coalition.side.BLUE )


 function MM15zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM15zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM15zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM15zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM15zoneCaptureCoalition:OnEnterAttacked()
 MM15zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM15zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM15zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

--------MM14-------

MM14zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM14" , coalition.side.BLUE )


 function MM14zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM14zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM14zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM14zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM14zoneCaptureCoalition:OnEnterAttacked()
 MM14zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM14zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM14zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


------MM27-------

MM27zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM27", coalition.side.BLUE )


 function MM27zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM27zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM27zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM27zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM27zoneCaptureCoalition:OnEnterAttacked()
 MM27zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM27zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------MM26-------

MM26zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM26", coalition.side.BLUE )


 function MM26zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM26zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM26zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM26zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM26zoneCaptureCoalition:OnEnterAttacked()
 MM26zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM26zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------MM25-------

MM25zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM25", coalition.side.BLUE )


 function MM25zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM25zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM25zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM25zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM25zoneCaptureCoalition:OnEnterAttacked()
 MM25zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM25zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------MM24-------

MM24zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM24", coalition.side.BLUE )


 function MM24zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM24zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM24zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM24zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM24zoneCaptureCoalition:OnEnterAttacked()
 MM24zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM24zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM24zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end



-- And this call is the most important of all!
-- In the context of the mission, we need to start the zone capture monitoring process.
-- Or nothing will be monitored and the zone won't change states.
-- We start the monitoring after 5 seconds, and will repeat every 30 seconds a check.
--
MM17zoneCaptureCoalition:Start( 5, 30 )
MM16zoneCaptureCoalition:Start( 5, 30 )
MM15zoneCaptureCoalition:Start( 5, 30 )
MM14zoneCaptureCoalition:Start( 5, 30 )
MM27zoneCaptureCoalition:Start( 5, 30 )
MM26zoneCaptureCoalition:Start( 5, 30 )
MM25zoneCaptureCoalition:Start( 5, 30 )
MM24zoneCaptureCoalition:Start( 5, 30 )
