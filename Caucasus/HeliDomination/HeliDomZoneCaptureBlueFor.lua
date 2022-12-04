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

LM88zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM88", coalition.side.BLUE )


 function LM88zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM88zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM88zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

-- As you can see, not a rocket science.
-- Next is the Event Handler when the **Empty** state transition is triggered.
-- Now we smoke the ZoneCaptureCoalition with a green color, using `self:Smoke( SMOKECOLOR.Green )`.
--
--      --- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function LM88zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end
--
-- The next Event Handlers speak for itself.
-- When the zone is Attacked, we smoke the zone white and send some messages to each coalition.

--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function LM88zoneCaptureCoalition:OnEnterAttacked()
 LM88zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end
--
-- When the zone is Captured, we send some victory or loss messages to the correct coalition.
-- And we add some score.

--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function LM88zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM88zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

-----LM87zone-----

LM87zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM87" , coalition.side.BLUE )


 function LM87zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM87zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM87zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM87zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM87zoneCaptureCoalition:OnEnterAttacked()
 LM87zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM87zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM87zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


---------LM86---------

LM86zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM86" , coalition.side.BLUE )


 function LM86zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM86zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM86zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM86zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM86zoneCaptureCoalition:OnEnterAttacked()
 LM86zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM86zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM86zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

--------LM85-------

LM85zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM85" , coalition.side.BLUE )


 function LM85zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM85zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM85zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM85zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM85zoneCaptureCoalition:OnEnterAttacked()
 LM85zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM85zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM85zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


------LM84-------

LM84zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM84", coalition.side.BLUE )


 function LM84zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM84zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM84zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM84zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM84zoneCaptureCoalition:OnEnterAttacked()
 LM84zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM84zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM84zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM98-------

LM98zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM98", coalition.side.BLUE )


 function LM98zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM98zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM98zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM98zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM98zoneCaptureCoalition:OnEnterAttacked()
 LM98zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM98zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM98zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM97-------

LM97zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM97", coalition.side.BLUE )


 function LM97zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM97zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM97zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM97zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM97zoneCaptureCoalition:OnEnterAttacked()
 LM97zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM97zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM97zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM96-------

LM96zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM96", coalition.side.BLUE )


 function LM96zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM96zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM96zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM96zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM96zoneCaptureCoalition:OnEnterAttacked()
 LM96zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM96zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM96zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM95-------

LM95zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM95", coalition.side.BLUE )


 function LM95zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       LM95zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM95zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM95zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM95zoneCaptureCoalition:OnEnterAttacked()
 LM95zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM95zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM95zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


------MM08-------

MM08zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM08", coalition.side.BLUE )


 function MM08zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM08zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM08zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM08zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM08zoneCaptureCoalition:OnEnterAttacked()
 MM08zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM08zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM08zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


------MM07-------

MM07zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM07", coalition.side.BLUE )


 function MM07zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM07zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM07zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM07zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM07zoneCaptureCoalition:OnEnterAttacked()
 MM07zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM07zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM07zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------MM06-------

MM06zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM06", coalition.side.BLUE )


 function MM06zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM06zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM06zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM06zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM06zoneCaptureCoalition:OnEnterAttacked()
 MM06zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM06zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM06zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------MM05-------

MM05zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM05", coalition.side.BLUE )


 function MM05zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM05zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM05zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM05zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM05zoneCaptureCoalition:OnEnterAttacked()
 MM05zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM05zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM05zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------MM04-------

MM04zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "MM04", coalition.side.BLUE )


 function MM04zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
       MM04zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       MM04zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function MM04zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function MM04zoneCaptureCoalition:OnEnterAttacked()
 MM04zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function MM04zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", MM04zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


------LM78-------

LM78zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM78", coalition.side.RED )


 function LM78zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM78zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM78zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM78zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM78zoneCaptureCoalition:OnEnterAttacked()
 LM78zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM78zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM77-------

LM77zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM77", coalition.side.RED )


 function LM77zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM77zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM77zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM77zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM77zoneCaptureCoalition:OnEnterAttacked()
 LM77zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM77zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM76-------

LM76zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM76", coalition.side.RED )


 function LM76zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM76zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM76zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM76zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM76zoneCaptureCoalition:OnEnterAttacked()
 LM76zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM76zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM75-------

LM75zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM75", coalition.side.RED )


 function LM75zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM75zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM75zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM75zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM75zoneCaptureCoalition:OnEnterAttacked()
 LM75zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM75zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM74-------

LM74zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM74", coalition.side.RED )


 function LM74zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM74zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM74zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM74zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM74zoneCaptureCoalition:OnEnterAttacked()
 LM74zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM74zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM68-------

LM68zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM68", coalition.side.RED )


 function LM68zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM68zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM68zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM68zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM68zoneCaptureCoalition:OnEnterAttacked()
 LM68zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM68zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM68zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM67-------

LM67zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM67", coalition.side.RED )


 function LM67zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM67zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM67zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM67zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM67zoneCaptureCoalition:OnEnterAttacked()
 LM67zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM67zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM67zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM66-------

LM66zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM66", coalition.side.RED )


 function LM66zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM66zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM66zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM66zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM66zoneCaptureCoalition:OnEnterAttacked()
 LM66zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM66zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM66zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM65-------

LM65zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM65", coalition.side.RED )


 function LM65zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM65zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM65zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM65zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM65zoneCaptureCoalition:OnEnterAttacked()
 LM65zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM65zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM65zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM64-------

LM64zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM64", coalition.side.RED )


 function LM64zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM64zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM64zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM64zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM64zoneCaptureCoalition:OnEnterAttacked()
 LM64zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM64zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM64zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM58-------

LM58zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM58", coalition.side.RED )


 function LM58zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM58zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM58zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM58zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM58zoneCaptureCoalition:OnEnterAttacked()
 LM58zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM58zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM58zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM57-------

LM57zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM57", coalition.side.RED )


 function LM57zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM57zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM57zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM57zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM57zoneCaptureCoalition:OnEnterAttacked()
 LM57zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM57zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM57zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM56-------

LM56zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM56", coalition.side.RED )


 function LM56zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM56zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM56zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM56zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM56zoneCaptureCoalition:OnEnterAttacked()
 LM56zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM56zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM56zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM55-------

LM55zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM55", coalition.side.RED )


 function LM55zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM55zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM55zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM55zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM55zoneCaptureCoalition:OnEnterAttacked()
 LM55zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM55zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM55zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM54-------

LM54zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM54", coalition.side.RED )


 function LM54zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM54zoneCaptureCoalition:Smoke( SMOKECOLOR.Blue )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM54zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM54zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM54zoneCaptureCoalition:OnEnterAttacked()
 LM54zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM54zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM54zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


-- And this call is the most important of all!
-- In the context of the mission, we need to start the zone capture monitoring process.
-- Or nothing will be monitored and the zone won't change states.
-- We start the monitoring after 5 seconds, and will repeat every 30 seconds a check.
--
LM88zoneCaptureCoalition:Start( 5, 30 )
LM87zoneCaptureCoalition:Start( 5, 30 )
LM86zoneCaptureCoalition:Start( 5, 30 )
LM85zoneCaptureCoalition:Start( 5, 30 )
LM84zoneCaptureCoalition:Start( 5, 30 )
LM98zoneCaptureCoalition:Start( 5, 30 )
LM97zoneCaptureCoalition:Start( 5, 30 )
LM96zoneCaptureCoalition:Start( 5, 30 )
LM95zoneCaptureCoalition:Start( 5, 30 )
MM08zoneCaptureCoalition:Start( 5, 30 )
MM07zoneCaptureCoalition:Start( 5, 30 )
MM06zoneCaptureCoalition:Start( 5, 30 )
MM05zoneCaptureCoalition:Start( 5, 30 )
MM04zoneCaptureCoalition:Start( 5, 30 )
LM78zoneCaptureCoalition:Start( 5, 30 )
LM77zoneCaptureCoalition:Start( 5, 30 )
LM76zoneCaptureCoalition:Start( 5, 30 )
LM75zoneCaptureCoalition:Start( 5, 30 )
LM74zoneCaptureCoalition:Start( 5, 30 )
LM68zoneCaptureCoalition:Start( 5, 30 )
LM67zoneCaptureCoalition:Start( 5, 30 )
LM66zoneCaptureCoalition:Start( 5, 30 )
LM65zoneCaptureCoalition:Start( 5, 30 )
LM64zoneCaptureCoalition:Start( 5, 30 )
LM58zoneCaptureCoalition:Start( 5, 30 )
LM57zoneCaptureCoalition:Start( 5, 30 )
LM56zoneCaptureCoalition:Start( 5, 30 )
LM55zoneCaptureCoalition:Start( 5, 30 )
LM54zoneCaptureCoalition:Start( 5, 30 )
