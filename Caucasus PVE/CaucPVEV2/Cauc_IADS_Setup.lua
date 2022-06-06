do

redIADS = SkynetIADS:create('Russia')

---test

local iadsDebug = redIADS:getDebugSettings()
iadsDebug.IADSStatus = false
iadsDebug.contacts = false
iadsDebug.jammerProbability = true
iadsDebug.addedEWRadar = true
iadsDebug.addedSAMSite = true
iadsDebug.warnings = true
iadsDebug.radarWentLive = true
iadsDebug.radarWentDark = false
iadsDebug.harmDefence = true
iadsDebug.samSiteStatusEnvOutput = false
iadsDebug.earlyWarningRadarStatusEnvOutput = false
iadsDebug.commandCenterStatusEnvOutput = false



redIADS:addSAMSitesByPrefix('RED SAM')
-- yourIADS:addSAMSite('SAM-GROUP-NAME')
redIADS:addEarlyWarningRadarsByPrefix('RED EW')
redIADS:addRadioMenu()
redIADS:activate()

local commandCenter = StaticObject.getByName("Command_Center-1")
redIADS:addCommandCenter(commandCenter)

-- local powerSource = StaticObject.getByName('Power-Source-EW-Anderson')
-- local connectionNodeEW = StaticObject.getByName('Connection-Node-Anderson')
redIADS:getEarlyWarningRadarByUnitName('RED EW-Senaki')--:addPowerSource(powerSource):addConnectionNode(connectionNodeEW)

-- local connectionNode = Unit.getByName('SAM-S300V-Command-Post')
redIADS:getSAMSitesByNatoName('SA-2'):setGoLiveRangeInPercent(85)
redIADS:getSAMSitesByNatoName('SA-3'):setEngagementZone(SkynetIADSAbstractRadarElement.GO_LIVE_WHEN_IN_SEARCH_RANGE)
redIADS:getSAMSitesByNatoName('SA-5'):setGoLiveRangeInPercent(80)
redIADS:getSAMSitesByNatoName('SA-6'):setGoLiveRangeInPercent(95)
redIADS:getSAMSitesByNatoName('SA-8'):setEngagementZone(SkynetIADSAbstractRadarElement.GO_LIVE_WHEN_IN_SEARCH_RANGE)
redIADS:getSAMSitesByNatoName('SA-10'):setGoLiveRangeInPercent(80)
--redIADS:getSAMSitesByNatoName('SA-11'):setGoLiveRangeInPercent(95)
redIADS:getSAMSitesByNatoName('SA-15'):setEngagementZone(SkynetIADSAbstractRadarElement.GO_LIVE_WHEN_IN_SEARCH_RANGE)
redIADS:getSAMSitesByNatoName('SA-19'):setEngagementZone(SkynetIADSAbstractRadarElement.GO_LIVE_WHEN_IN_SEARCH_RANGE)

--Point Point Defences
--local sa15 = redIADS:getSAMSiteByGroupName('RED SAM SA-15-1')
--redIADS:getSAMSiteByGroupName('RED SAM-SA2-1'):addPointDefence(sa15):setHARMDetectionChance(100):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)


-- local connectionNode = Unit.getByName('SAM-S300V-Command-Post')
--redIADS:getSAMSiteByGroupName('SAM SA-300PMU'):setAutonomousBehaviour(SkynetIADSAbstractRadarElement.AUTONOMOUS_STATE_DARK)
--redIADS:getSAMSiteByGroupName('SAM SA-300PMU'):setEngagementZone(SkynetIADSAbstractRadarElement.GO_LIVE_WHEN_IN_SEARCH_RANGE):setGoLiveRangeInPercent(70)

--local sa192 = redIADS:getSAMSiteByGroupName('SAM SA-19PD-2')
--redIADS:getSAMSiteByGroupName('SAM SA-300PMU'):addPointDefence(sa192):setHARMDetectionChance(100):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

redIADS:setupSAMSitesAndThenActivate()

blueIADS = SkynetIADS:create('Blue Coalition')

bluecommandCenter1 = StaticObject.getByName('blue-Command-Center-1')
blueIADS:addCommandCenter(bluecommandCenter1)

--bluecommandCenter2 = StaticObject.getByName('blue-Command-Center-2')
--blueIADS:addCommandCenter(bluecommandCenter2)

blueIADS:addSAMSitesByPrefix('BLUE SAM')

blueIADS:addEarlyWarningRadarsByPrefix('BLUE EWR')

blueIADS:getSAMSitesByNatoName('Patriot'):setHARMDetectionChance(100)
blueIADS:getSAMSitesByNatoName('Patriot'):setGoLiveRangeInPercent(80)
blueIADS:getSAMSitesByNatoName('Rapier'):setGoLiveRangeInPercent(95)
blueIADS:getSAMSitesByNatoName('Roland ADS'):setGoLiveRangeInPercent(95)
blueIADS:getSAMSitesByNatoName('Hawk'):setGoLiveRangeInPercent(95)


blueIADS:setupSAMSitesAndThenActivate()

local iadsDebug = blueIADS:getDebugSettings()
iadsDebug.IADSStatus = true
iadsDebug.contacts = true
iadsDebug.jammerProbability = true
iadsDebug.addedEWRadar = true
iadsDebug.addedSAMSite = true
iadsDebug.warnings = true
iadsDebug.radarWentLive = true
iadsDebug.radarWentDark = true
iadsDebug.harmDefence = true
iadsDebug.samSiteStatusEnvOutput = true
iadsDebug.earlyWarningRadarStatusEnvOutput = true
iadsDebug.commandCenterStatusEnvOutput = true
-------------------------------------------------------------
-- EventHandler1 = EVENTHANDLER:New()
--
--
-- EventHandler1:HandleEvent( EVENTS.Birth )
--
-- --- @param Core.Event#EVENT self
-- -- @param Core.Event#EVENTDATA EventData
-- function EventHandler1:OnBirthForTemplate( EventGroup, EventFunction, EventClass, EventTemplate )
--   -- self:E("hello 1")
--   -- self:E( EventGroup:GetName() )
--   msg = MESSAGE:New("Working", EventGroup:GetName()):ToAll()
 end
