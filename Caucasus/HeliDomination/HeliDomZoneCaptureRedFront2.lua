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
--      , coalition.side.RED )
--
--      RU_Mission_KremlinKlacking = MISSION:New( RU_CC, "Kremlin Klacking", "Primary",
--        "Welcome to Heli-Domination. The RED grid squares across Caucasas need to be captured.\n" ..
--        "There are 40 capture zones located across Caucasas.\n" ..
--        "Move to a zone, destroy the enemy forces in said zone, " ..
--        "and occupy the zone with a platoon.\n " ..
--        "Your orders are to capture the RED grid squares while holding our own.\n" ..
--        "Use the map (F10) for a clear indication of the location of each capture zone.\n" ..
--        "Note that heavy resistance can be expected in each zone\n" ..
--        "Mission 'SKremlin Klacking' is complete when all 42 zones are taken!"
--        , coalition.side.RED )
--
--    US_Mission_SpicyNugget:Start()
--    RU_Mission_KremlinKlacking:Start()
--
--  end

 -- REDZones = {ZONE:New( "LM88" ), ZONE:New( "LM87" ),ZONE:New( "LM86" ),ZONE:New( "LM85" ),ZONE:New( "LM84" ),ZONE:New( "LM98" ),ZONE:New( "LM97" ),ZONE:New( "LM96" ),ZONE:New( "LM95" ),ZONE:New( "MM07" ),
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

LM28zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM28", coalition.side.RED )


 function LM28zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM28zoneCaptureCoalition:Smoke( SMOKECOLOR.RED )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM28zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

-- As you can see, not a rocket science.
-- Next is the Event Handler when the **Empty** state transition is triggered.
-- Now we smoke the ZoneCaptureCoalition with a green color, using `self:Smoke( SMOKECOLOR.Green )`.
--
--      --- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function LM28zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end
--
-- The next Event Handlers speak for itself.
-- When the zone is Attacked, we smoke the zone white and send some messages to each coalition.

--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function LM28zoneCaptureCoalition:OnEnterAttacked()
 LM28zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end
--
-- When the zone is Captured, we send some victory or loss messages to the correct coalition.
-- And we add some score.

--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function LM28zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM28zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

-----LM27-----

LM27zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM27" , coalition.side.RED )


 function LM27zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM27zoneCaptureCoalition:Smoke( SMOKECOLOR.RED )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM27zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM27zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM27zoneCaptureCoalition:OnEnterAttacked()
 LM27zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM27zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM27zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


---------LM26---------

LM26zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM26" , coalition.side.RED )


 function LM26zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM26zoneCaptureCoalition:Smoke( SMOKECOLOR.RED )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM26zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM26zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM26zoneCaptureCoalition:OnEnterAttacked()
 LM26zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM26zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM26zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

--------LM25-------

LM25zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM25" , coalition.side.RED )


 function LM25zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM25zoneCaptureCoalition:Smoke( SMOKECOLOR.RED )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM25zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM25zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM25zoneCaptureCoalition:OnEnterAttacked()
 LM25zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM25zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM25zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


------LM18-------

LM18zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM18", coalition.side.RED )


 function LM18zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM18zoneCaptureCoalition:Smoke( SMOKECOLOR.RED )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM18zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM18zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM18zoneCaptureCoalition:OnEnterAttacked()
 LM18zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM18zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM18zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM17-------

LM17zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM17", coalition.side.RED )


 function LM17zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM17zoneCaptureCoalition:Smoke( SMOKECOLOR.RED )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM17zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM17zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM17zoneCaptureCoalition:OnEnterAttacked()
 LM17zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM17zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM17zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

------LM16-------

LM16zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( "LM16", coalition.side.RED )


 function LM16zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.RED then
       LM16zoneCaptureCoalition:Smoke( SMOKECOLOR.RED )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of the USA", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     else
       LM16zoneCaptureCoalition:Smoke( SMOKECOLOR.Red )
       RU_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
       US_CC:MessageTypeToCoalition( string.format( "%s is under protection of Russia", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
     end
   end
 end

function LM16zoneCaptureCoalition:OnEnterEmpty()
 self:Smoke( SMOKECOLOR.Green )
 US_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 RU_CC:MessageTypeToCoalition( string.format( "%s is unprotected, and can be captured!", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
end

function LM16zoneCaptureCoalition:OnEnterAttacked()
 LM16zoneCaptureCoalition:Smoke( SMOKECOLOR.White )
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   US_CC:MessageTypeToCoalition( string.format( "%s is under attack by Russia", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   RU_CC:MessageTypeToCoalition( string.format( "%s is under attack by the USA", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We are attacking %s", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end
end

function LM16zoneCaptureCoalition:OnEnterCaptured()
 local Coalition = self:GetCoalition()
 self:E({Coalition = Coalition})
 if Coalition == coalition.side.RED then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM16zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end




-- And this call is the most important of all!
-- In the context of the mission, we need to start the zone capture monitoring process.
-- Or nothing will be monitored and the zone won't change states.
-- We start the monitoring after 5 seconds, and will repeat every 30 seconds a check.
--
LM28zoneCaptureCoalition:Start( 5, 30 )
LM27zoneCaptureCoalition:Start( 5, 30 )
LM26zoneCaptureCoalition:Start( 5, 30 )
LM25zoneCaptureCoalition:Start( 5, 30 )
LM18zoneCaptureCoalition:Start( 5, 30 )
LM17zoneCaptureCoalition:Start( 5, 30 )
LM16zoneCaptureCoalition:Start( 5, 30 )
