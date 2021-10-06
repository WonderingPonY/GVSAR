ClientGroup = Group.getByName("ClientGroup")

--Messages
welcomemessage = MESSAGE:New("Welcome"):ToaLlIf(enter)
-- welcomemessage:ToaLlIf(OnEventPlayerEnterUnit)

-- Birth Event
enter:OnEventPlayerEnterUnit(ClientGroup)
