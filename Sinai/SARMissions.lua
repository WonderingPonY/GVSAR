-- HurtPatient = ZONE:FindByName("HurtPatient")
-- HurtPatient:GetVec2()
--
-- JRCCCAIRO1 = SET_GROUP:New():FilterCoalitions("blue"):FilterPrefixes( {"JRCC"} ):FilterStart()
-- -- JRCCCAIRO2 = GROUP:FindByName( "JRCC Cairo-2" )
-- -- JRCCCAIRO3 = GROUP:FindByName( "JRCC Cairo-3" )
-- -- JRCCCAIRO4 = GROUP:FindByName( "JRCC Cairo-4" )
--
-- CAIROMISSIONS1 = MENU_GROUP:New( JRCCCAIRO1, "SAR MISSIONS" )
-- -- CAIROMISSIONS2 = MENU_GROUP:New( JRCCCAIRO2, "SAR MISSIONS" )
-- -- CAIROMISSIONS3 = MENU_GROUP:New( JRCCCAIRO3, "SAR MISSIONS" )
-- -- CAIROMISSIONS4 = MENU_GROUP:New( JRCCCAIRO4, "SAR MISSIONS" )
--
-- function CairoEasyMissions()
--    if trigger.misc.getUserFlag("2") = 1 then
--      my_csar:SpawnCASEVAC(HurtPatient, coalition.side.BLUE)
--    end
--
-- end
--
-- MENU_GROUP_COMMAND:New( JRCCCAIRO1, "Easy Missions", CAIROMISSIONS1, trigger.action.setUserFlag(2, math.random(1, 5), JRCCCAIRO1 )
-- MENU_GROUP_COMMAND:New( JRCCCAIRO1, "Medium Missions", CAIROMISSIONS1, trigger.action.setUserFlag(2, math.random(6, 10), JRCCCAIRO1 )
-- MENU_GROUP_COMMAND:New( JRCCCAIRO1, "Hard Missions", CAIROMISSIONS1, trigger.action.setUserFlag(2, math.random(10, 15), JRCCCAIRO1 )

-- HQ = GROUP:FindByName( "HQ", "Bravo" )
--
-- CommandCenter = COMMANDCENTER:New( HQ, "Lima" )
-- TransportGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "Transport" ):FilterStart()
-- Mission = MISSION:New( CommandCenter, "Operation Cargo Fun", "Tactical", "Transport Cargo", coalition.side.BLUE )
-- TaskDispatcher = TASK_CARGO_DISPATCHER:New( Mission, TransportGroups )

CairoDeployZones = { ZONE:New( "Sharqia Governorate Hospital" ),ZONE:New( "Misr International Hospital" ), ZONE:New( "Cairo University Hospital" ), ZONE:New( "Awsim Central Hospital" )}
-- CairoDeployZone = ZONE:New( "Misr International Hospital" )


CairoHQ = GROUP:FindByName( "Cairo HQ")
AlexandriaHQ = GROUP:FindByName( "Alexandria HQ")
SuezHQ = GROUP:FindByName( "Suez HQ")
JerusalemHQ = GROUP:FindByName( "Jerusalem HQ")

CairoCommandCenter = COMMANDCENTER:New( CairoHQ, "Cairo Dispatch" )
AlexandriaCenter = COMMANDCENTER:New( AlexandriaHQ, "Alexandria Dispatch" )
SuezCenter = COMMANDCENTER:New( SuezHQ, "Suez Dispatch" )
JerusalemCenter = COMMANDCENTER:New( JerusalemHQ, "Jerusalem Dispatch" )

--Adding Client SAR Slots
CairoGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "JRCC" ):FilterActive():FilterStart()
AlexandriaGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "MRCC" ):FilterActive():FilterStart()
SuezGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "CRS" ):FilterActive():FilterStart()
JerusalemGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "RCC" ):FilterActive():FilterStart()

--Mission setup for each place
CairoEasyMission = MISSION:New( CairoCommandCenter, "Easy Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )
CairoMediumMission = MISSION:New( CairoCommandCenter, "Medium Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )
--CairoHardMission = MISSION:New( CairoCommandCenter, "Hard Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )

AlexandriaEasyMission = MISSION:New( AlexandriaCenter, "Easy Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )
AlexandriaMediumMission = MISSION:New( AlexandriaCenter, "Medium Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )
--AlexandriaHardMission = MISSION:New( AlexandriaCenter, "Hard Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )

SuezEasyMission = MISSION:New( SuezCenter, "Easy Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )
SuezMediumMission = MISSION:New( SuezCenter, "Medium Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )
--SuezHardMission = MISSION:New( SuezCenter, "Hard Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )

JerusalemEasyMission = MISSION:New( JerusalemCenter, "Easy Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )
JerusalemMediumMission = MISSION:New( JerusalemCenter, "Medium Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )
--JerusalemHardMission = MISSION:New( JerusalemCenter, "Hard Missions", "Priority", "Find and Transport Patients and Victims to the Hospital or Trauma Centers", coalition.side.BLUE )


--Easy Cairo Tasks
CairoEasyTaskDispatcher = TASK_CARGO_DISPATCHER:New( CairoEasyMission, CairoGroups )

local BurnVictim = UNIT:FindByName("Burn Victim")
BurnVictimCoordinate = BurnVictim:GetCoordinate()
CairoEasyVictimTask1 = CairoEasyTaskDispatcher:AddCSARTask( "Easy Mission 1", BurnVictimCoordinate, 270, country.id.USA, "A burn victim needs urgent transport to the nearest Hospital" )
CairoEasyTaskDispatcher:SetCSARDeployZone( CairoEasyVictimTask1, ZONE:New( "Misr International Hospital" ))

local HeartAttackVictim = UNIT:FindByName("Heart Attack Victim-1")
HeartAttackVictimCoordinate = HeartAttackVictim:GetCoordinate()
CairoEasyVictimTask2 = CairoEasyTaskDispatcher:AddCSARTask( "Easy Mission 2", HeartAttackVictimCoordinate, 270, country.id.USA, "A heart attack victim needs urgent transport to the nearest Hospital" )
CairoEasyTaskDispatcher:SetCSARDeployZone( CairoEasyVictimTask2, ZONE:New( "Misr International Hospital" ))

--Medium Cairo Tasks
CairoMediumTaskDispatcher = TASK_CARGO_DISPATCHER:New( CairoMediumMission, CairoGroups )

local MediumVictim1 = UNIT:FindByName("Medium Victim-1")
MediumVictim1Coordinate = MediumVictim1:GetCoordinate()
MediumVictimtask1 = CairoMediumTaskDispatcher:AddCSARTask( "Medium Mission 1", MediumVictim1Coordinate, 270, country.id.USA, "DCS victim needs urgent transport to the nearest Hospital" )
CairoMediumTaskDispatcher:SetCSARDeployZone( MediumVictimtask1, ZONE:New( "Misr International Hospital" ))



--Adding drop zones
--TASK_CARGO_DISPATCHER:SetCSARDeployZones((optional)CSARTaskName, CSARDeployZones)
CairoEasyTaskDispatcher:SetCSARDeployZones({ ZONE:New( "Sharqia Governorate Hospital" ),ZONE:New( "Misr International Hospital" ), ZONE:New( "Cairo University Hospital" ), ZONE:New( "Awsim Central Hospital" )})
--CairoMediumTaskDispatcher:SetCSARDeployZones({ ZONE:New( "Sharqia Governorate Hospital" ),ZONE:New( "Misr International Hospital" ), ZONE:New( "Cairo University Hospital" ), ZONE:New( "Awsim Central Hospital" )})

--Hospital Markers
local SharqiaGovernorateHospitalCoordinate = ZONE:FindByName("Sharqia Governorate Hospital"):GetCoordinate()
SharqiaGovernorateHospital = MARKER:New(SharqiaGovernorateHospitalCoordinate, "Sharqia Governorate Hospital"):ToAll()
local MisrInternationalHospitalCoordinate = ZONE:FindByName("Misr International Hospital"):GetCoordinate()
MisrInternationalHospital = MARKER:New(MisrInternationalHospitalCoordinate, "Misr International Hospital"):ToAll()
local CairoUniversityHospitalCoordinate = ZONE:FindByName("Cairo University Hospital"):GetCoordinate()
CairoUniversityHospital = MARKER:New(CairoUniversityHospitalCoordinate, "Cairo University Hospital"):ToAll()
local AwsimCentralHospitalCoordinate = ZONE:FindByName("Awsim Central Hospital"):GetCoordinate()
AwsimCentralHospital = MARKER:New(AwsimCentralHospitalCoordinate, "Awsim Central Hospital"):ToAll()
