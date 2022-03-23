redIADS = SkynetIADS:create('Russia')

local iadsDebug = redIADS:getDebugSettings()
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

redIADS:addSAMSitesByPrefix('SAM')
redIADS:addEarlyWarningRadarsByPrefix('EW')
redIADS:addRadioMenu()
redIADS:activate()

local commandCenter = StaticObject.getByName("Command-Center")
redIADS:addCommandCenter(commandCenter)

local powerSource = StaticObject.getByName('Power-Source-EW-Anderson')
local connectionNodeEW = StaticObject.getByName('Connection-Node-Anderson')
redIADS:getEarlyWarningRadarByUnitName('EW-Anderson'):addPowerSource(powerSource):addConnectionNode(connectionNodeEW)

-- local connectionNode = Unit.getByName('SAM-S300V-Command-Post')
redIADS:getSAMSiteByGroupName('SAM-S300V'):setAutonomousBehaviour(SkynetIADSAbstractRadarElement.AUTONOMOUS_STATE_DARK)
redIADS:getSAMSiteByGroupName('SAM-S300V'):setEngagementZone(SkynetIADSAbstractRadarElement.GO_LIVE_WHEN_IN_SEARCH_RANGE):setGoLiveRangeInPercent(70)

local sa19 = redIADS:getSAMSiteByGroupName('SAM SA-19PD')
redIADS:getSAMSiteByGroupName('SAM-S300V'):addPointDefence(sa19):setHARMDetectionChance(100):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

-- local connectionNode = Unit.getByName('SAM-S300V-Command-Post')
redIADS:getSAMSiteByGroupName('SAM SA-300PMU'):setAutonomousBehaviour(SkynetIADSAbstractRadarElement.AUTONOMOUS_STATE_DARK)
redIADS:getSAMSiteByGroupName('SAM SA-300PMU'):setEngagementZone(SkynetIADSAbstractRadarElement.GO_LIVE_WHEN_IN_SEARCH_RANGE):setGoLiveRangeInPercent(70)

local sa192 = redIADS:getSAMSiteByGroupName('SAM SA-19PD-2')
redIADS:getSAMSiteByGroupName('SAM SA-300PMU'):addPointDefence(sa192):setHARMDetectionChance(100):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)
