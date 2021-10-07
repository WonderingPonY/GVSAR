ClientGroup = Group.getByName("ClientGroup")
-- HandleEvent(EVENTS.PlayerEnterUnit)

welcomemessage = MESSAGE:New("Welcome")
welcomemessage:ToClient()
--Messages
-- function OnPlayerEnterUnit( EventData )
--   welcomemessage = MESSAGE:New("Welcome"):ToClient()--defines the message and why it will display
-- end
