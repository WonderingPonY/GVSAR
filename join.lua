ClientGroup = Group.getByName("ClientGroup")

--Messages
welcomemessage = MESSAGE:New("Welcome"):ToClient()--defines the message and why it will display
welcomemessage:ToAllIf(OnEventPlayerEnterUnit)--sends the message
