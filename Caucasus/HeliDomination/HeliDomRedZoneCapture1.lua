 do

   RU_CC = COMMANDCENTER:New( GROUP:FindByName( "RedHQ" ), "Russia HQ" )
   US_CC = COMMANDCENTER:New( GROUP:FindByName( "BlueHQ" ), "USA HQ" )

 end

 -- BlueZones = {ZONE:New( "LM88" ), ZONE:New( "LM87" ),ZONE:New( "LM86" ),ZONE:New( "LM85" ),ZONE:New( "LM84" ),ZONE:New( "LM98" ),ZONE:New( "LM97" ),ZONE:New( "LM96" ),ZONE:New( "LM95" ),ZONE:New( "MM07" ),
 -- ZONE:New( "MM06" ),ZONE:New( "MM05" ),ZONE:New( "MM04" ),ZONE:New( "MM17" ),ZONE:New( "MM16" ),ZONE:New( "MM15" ),ZONE:New( "MM14" ),ZONE:New( "MM27" ),ZONE:New( "MM26" ),ZONE:New( "MM25" ),ZONE:New( "MM24" ),
 -- ZONE:New( "MM36" ),ZONE:New( "MM35" ),ZONE:New( "MM34" ),ZONE:New( "MM45" ),ZONE:New( "MM44" ),ZONE:New( "MM43" ),ZONE:New( "MM55" ),ZONE:New( "MM54" ),ZONE:New( "MM53" ),ZONE:New( "MM65" ),ZONE:New( "MM64" ), ZONE:New( "MM63" ),
 -- ZONE:New( "MM75" ),ZONE:New( "MM74" ),ZONE:New( "MM73" ),ZONE:New( "MM72" ),ZONE:New( "MM84" ),ZONE:New( "MM83" ),ZONE:New( "MM82" )}
 --
 -- RedZones = { ZONE:New( "KM78" ), ZONE:New( "KM77" ), ZONE:New( "KM76" ), ZONE:New( "KM88" ), ZONE:New( "KM87" ), ZONE:New( "KM86" ),
 -- ZONE:New( "KM98" ), ZONE:New( "KM97" ), ZONE:New( "KM96" ), ZONE:New( "LM08" ), ZONE:New( "LM07" ), ZONE:New( "LM06" ), ZONE:New( "LM18" ), ZONE:New( "LM17" ), ZONE:New( "LM16" ), ZONE:New( "LM28" ), ZONE:New( "LM27" ), ZONE:New( "LM26" ), ZONE:New( "LM25" ),
 -- ZONE:New( "LM38" ), ZONE:New( "LM37" ), ZONE:New( "LM36" ), ZONE:New( "LM35" ), ZONE:New( "LM48" ), ZONE:New( "LM47" ), ZONE:New( "LM46" ), ZONE:New( "LM45" ), ZONE:New( "LM58" ), ZONE:New( "LM57" ), ZONE:New( "LM56" ), ZONE:New( "LM55" ), ZONE:New( "LM54" ),
 -- ZONE:New( "LM68" ), ZONE:New( "LM67" ), ZONE:New( "LM66" ), ZONE:New( "LM65" ), ZONE:New( "LM64" ),  ZONE:New( "LM77" ), ZONE:New( "LM76" ), ZONE:New( "LM75" ), ZONE:New( "LM74" ) }

LM78zone = ZONE_POLYGON:FindByName("LM78")

 LM78zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( LM78zone, coalition.side.RED )


 function LM78zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM78zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


LM77zone = ZONE:New("LM77")

 LM77zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( KM77zone, coalition.side.RED )


 function LM77zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM77zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

LM76zone = ZONE:New("LM76")

 LM76zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( LM76zone, coalition.side.RED )


 function LM76zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM76zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

LM75zone = ZONE:New("LM78")

 LM75zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( LM75zone, coalition.side.RED )


 function LM75zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM75zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end

LM74zone = ZONE:New("LM78")

 LM74zoneCaptureCoalition = ZONE_CAPTURE_COALITION:New( LM74zone, coalition.side.RED )


 function LM74zoneCaptureCoalition:OnEnterGuarded( From, Event, To )
   if From ~= To then
     local Coalition = self:GetCoalition()
     self:E( { Coalition = Coalition } )
     if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
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
 if Coalition == coalition.side.BLUE then
   RU_CC:MessageTypeToCoalition( string.format( "%s is captured by the USA, we lost it!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   US_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 else
   US_CC:MessageTypeToCoalition( string.format( "%s is captured by Russia, we lost it!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
   RU_CC:MessageTypeToCoalition( string.format( "We captured %s, Excellent job!", LM74zoneCaptureCoalition:GetZoneName() ), MESSAGE.Type.Information )
 end

 self:__Guard( 30 )
end


LM78zoneCaptureCoalition:Start( 5, 30 )
LM77zoneCaptureCoalition:Start( 5, 30 )
LM76zoneCaptureCoalition:Start( 5, 30 )
LM75zoneCaptureCoalition:Start( 5, 30 )
LM74zoneCaptureCoalition:Start( 5, 30 )
