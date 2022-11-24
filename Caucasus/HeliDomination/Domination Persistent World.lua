--///////////////////////////////////////////////////////////////////////////////////
-- Name: Operation Sea Slug - Persistence Module
-- Author: Surrexen via Pikey's Simple Group Saving Script  ༼ つ ◕_◕ ༽つ    (づ｡◕‿◕｡)づ
--///////////////////////////////////////////////////////////////////////////////////

----------------------------------------------------------
SaveScheduleUnits = 300 --Seconds between each table write
----------------------------------------------------------

function IntegratedbasicSerialize(s)
    if s == nil then
		return "\"\""
    else
		if ((type(s) == 'number') or (type(s) == 'boolean') or (type(s) == 'function') or (type(s) == 'table') or (type(s) == 'userdata') ) then
			return tostring(s)
		elseif type(s) == 'string' then
			return string.format('%q', s)
		end
    end
end

-- imported slmod.serializeWithCycles (Speed)
function IntegratedserializeWithCycles(name, value, saved)
    local basicSerialize = function (o)
		if type(o) == "number" then
			return tostring(o)
		elseif type(o) == "boolean" then
			return tostring(o)
		else -- assume it is a string
			return IntegratedbasicSerialize(o)
		end
	end

    local t_str = {}
    saved = saved or {}       -- initial value
    if ((type(value) == 'string') or (type(value) == 'number') or (type(value) == 'table') or (type(value) == 'boolean')) then
		table.insert(t_str, name .. " = ")
			if type(value) == "number" or type(value) == "string" or type(value) == "boolean" then
				table.insert(t_str, basicSerialize(value) ..  "\n")
			else
				if saved[value] then    -- value already saved?
					table.insert(t_str, saved[value] .. "\n")
				else
					saved[value] = name   -- save name for next time
					table.insert(t_str, "{}\n")
						for k,v in pairs(value) do      -- save its fields
							local fieldname = string.format("%s[%s]", name, basicSerialize(k))
							table.insert(t_str, IntegratedserializeWithCycles(fieldname, v, saved))
						end
				end
			end
		return table.concat(t_str)
    else
		return ""
    end
end

function file_exists(name) --check if the file already exists for writing
	if lfs.attributes(name) then
    return true
    else
    return false end
end

function writemission(data, file)--Function for saving to file (commonly found)
	File = io.open(("S:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\"..file), "w")
	File:write(data)
	File:close()
end

function SEF_GetTableLength(Table)
	local TableLengthCount = 0
	for _ in pairs(Table) do TableLengthCount = TableLengthCount + 1 end
	return TableLengthCount
end

--////SAVE FUNCTION FOR UNITS
function SEF_SaveUnitIntermentTable(timeloop, time)
	IntermentMissionStr = IntegratedserializeWithCycles("SeaSlugUnitInterment", SeaSlugUnitInterment)
	writemission(IntermentMissionStr, "SeaSlugUnitInterment.lua")
	trigger.action.outText("Progress Has Been Saved", 15)
	return time + SaveScheduleUnits
end

function SEF_SaveUnitIntermentTableNoArgs()
	IntermentMissionStr = IntegratedserializeWithCycles("SeaSlugUnitInterment", SeaSlugUnitInterment)
	writemission(IntermentMissionStr, "SeaSlugUnitInterment.lua")
end

--////SAVE FUNCTION FOR STATICS
function SEF_SaveStaticIntermentTable(timeloop, time)
	IntermentMissionStrStatic = IntegratedserializeWithCycles("SeaSlugStaticInterment", SeaSlugStaticInterment)
	writemission(IntermentMissionStrStatic, "SeaSlugStaticInterment.lua")
	trigger.action.outText("Progress Has Been Saved", 15)
	return time + SaveScheduleUnits
end

function SEF_SaveStaticIntermentTableNoArgs()
	IntermentMissionStrStatic = IntegratedserializeWithCycles("SeaSlugStaticInterment", SeaSlugStaticInterment)
	writemission(IntermentMissionStrStatic, "SeaSlugStaticInterment.lua")
end

-- function SEF_SaveAirbasesTable(timeloop, time)
-- 	SEF_PERSISTENTAIRBASES(PersistentAirbases)
-- 	AirbaseStr = IntegratedserializeWithCycles("SeaSlugAirbases", SeaSlugAirbases)
-- 	writemission(AirbaseStr, "SeaSlugAirbases.lua")
-- 	return time + SaveScheduleUnits
-- end
--
-- function SEF_SaveAirbasesTableNoArgs()
-- 	SEF_PERSISTENTAIRBASES(PersistentAirbases)
-- 	AirbaseStr = IntegratedserializeWithCycles("SeaSlugAirbases", SeaSlugAirbases)
-- 	writemission(AirbaseStr, "SeaSlugAirbases.lua")
-- end
--
-- PersistentAirbases = {
--
-- 	"Gelendzik",
--   "Novorossiysk",
--   "Anapa-Vityazevo",
--   "Krymsk",
--   "Krasnodar-Center",
--   "Krasnodar-Pashkovsky",
--   "Maykop-Khanskaya",
--   "Mineralnye Vody",
--   "Nalchik",
--   "Mozdok",
--   "Beslan",
--   "Tiblisi-Lochini",
--   "Vaziani",
--   "Soganlug",
--   "Kutaisi",
--   "Senaki-Kolkhi",
--   "Kobuleti",
--   "Batumi",
--   "Sukhumi-Babushara",
--   "Gudauta",
--   "Sochi-Adler"
--
-- }
--
-- REDCAPTURETEAM 	= SPAWN:New("REDCAP")
-- BLUECAPTURETEAM = SPAWN:New("BLUECAP")
--
-- function SEF_PERSISTENTAIRBASES(AirbaseList)
-- 	SeaSlugAirbases = {}
--
-- 	for i, ab in ipairs(AirbaseList) do
-- 		local AirbaseObject = Airbase.getByName(ab)
-- 		local AirbaseCoalition = AirbaseObject:getCoalition()
--
-- 		TempAirbaseTable = {
-- 			["Airbase"]=ab,
-- 			["Coalition"]=AirbaseCoalition
-- 		}
-- 		table.insert(SeaSlugAirbases, TempAirbaseTable )
-- 	end
-- end
--
-- function SEF_CAPAIRBASE(Airbase, Coalition)
--
-- 	if ( Coalition == 1 ) then
--     trigger.action.outText(Airbase, 15)
-- 		RedHeloSpawnVec2 = ZONE:FindByName(Airbase):GetVec2()
--
-- 		--////CREATE OFFSETS
-- 		local OffsetX = math.random(-40, 40)
-- 		local OffsetY = math.random(-40, 40)
-- 		local SpawnX = RedHeloSpawnVec2.x + OffsetX
-- 		local SpawnY = RedHeloSpawnVec2.y + OffsetY
-- 		local OffsetSpawnVec2 = { x = SpawnX, y = SpawnY }
--
-- 		REDCAPTURETEAM:SpawnFromVec2(OffsetSpawnVec2)
--     trigger.action.outText("Spawn RED", 15)
-- 	elseif ( Coalition == 2 ) then
-- 		BlueHeloSpawnVec2 = ZONE:FindByName(Airbase):GetVec2()
--
-- 		--////CREATE OFFSETS
-- 		local OffsetX = math.random(-40, 40)
-- 		local OffsetY = math.random(-40, 40)
-- 		local SpawnX = BlueHeloSpawnVec2.x + OffsetX
-- 		local SpawnY = BlueHeloSpawnVec2.y + OffsetY
-- 		local OffsetSpawnVec2 = { x = SpawnX, y = SpawnY }
--
-- 		BLUECAPTURETEAM:SpawnFromVec2(OffsetSpawnVec2)
--     trigger.action.outText("Spawn BLUE"..Coalition, 15)
-- 	else
-- 	end
-- end

-------------------------------------------------------------------------------------------------------------------------------------
--////MAIN

SEFDeletedUnitCount = 0
SEFDeletedStaticCount = 0

--////LOAD UNITS
if file_exists("C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\SeaSlugUnitInterment.lua") then

	dofile("C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\SeaSlugUnitInterment.lua")

	UnitIntermentTableLength = SEF_GetTableLength(SeaSlugUnitInterment)
	--trigger.action.outText("Unit Table Length Is "..UnitIntermentTableLength, 15)

	for i = 1, UnitIntermentTableLength do
		--trigger.action.outText("Unit Interment Element "..i.." Is "..SeaSlugUnitInterment[i], 15)
    env.info("Unit Interment Element "..i.." Is "..SeaSlugUnitInterment[i])
		if ( Unit.getByName(SeaSlugUnitInterment[i]) ~= nil ) then
			Unit.getByName(SeaSlugUnitInterment[i]):destroy()
			SEFDeletedUnitCount = SEFDeletedUnitCount + 1
		else
			--trigger.action.outText("Unit Interment Element "..i.." Is "..SeaSlugUnitInterment[i].." And Was Not Found", 15)
		end
	end
else
	SeaSlugUnitInterment = {}
	UnitIntermentTableLength = 0
end
--////Static units
if file_exists("C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\SeaSlugStaticInterment.lua") then

	dofile("C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\SeaSlugStaticInterment.lua")

	UnitIntermentTableLength = SEF_GetTableLength(SeaSlugStaticInterment)
	--trigger.action.outText("Unit Table Length Is "..UnitIntermentTableLength, 15)

	for i = 1, UnitIntermentTableLength do
		--trigger.action.outText("Unit Interment Element "..i.." Is "..SeaSlugUnitInterment[i], 15)

		if ( Unit.getByName(SeaSlugStaticInterment[i]) ~= nil ) then
			Unit.getByName(SeaSlugStaticInterment[i]):destroy()
			SEFDeletedUnitCount = SEFDeletedUnitCount + 1
		else
			trigger.action.outText("Unit Interment Element "..i.." Is "..SeaSlugStaticInterment[i].." And Was Not Found", 15)
		end
	end
else
	SeaSlugUnitInterment = {}
	UnitIntermentTableLength = 0
end

--////LOAD STATICS
if file_exists("C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\SeaSlugStaticInterment.lua") then

	dofile("C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\SeaSlugStaticInterment.lua")

	StaticIntermentTableLength = SEF_GetTableLength(SeaSlugStaticInterment)
	--trigger.action.outText("Static Table Length Is "..StaticIntermentTableLength, 15)

	for i = 1, StaticIntermentTableLength do
		--trigger.action.outText("Static Interment Element "..i.." Is "..SeaSlugStaticInterment[i], 15)

		if ( StaticObject.getByName(SeaSlugStaticInterment[i]) ~= nil ) then
			StaticObject.getByName(SeaSlugStaticInterment[i]):destroy()
			SEFDeletedStaticCount = SEFDeletedStaticCount + 1
		else
			--trigger.action.outText("Static Interment Element "..i.." Is "..SeaSlugStaticInterment[i].." And Was Not Found", 15)
		end
	end
else
	SeaSlugStaticInterment = {}
	StaticIntermentTableLength = 0
end

--trigger.action.outText("Persistent World Functions Have Removed "..SEFDeletedUnitCount.." Units and "..SEFDeletedStaticCount.." Static Objects", 15)

--////LOAD AIRBASES
-- if file_exists("C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\SeaSlugAirbases.lua") then
--
-- 	dofile("C:\\Users\\Gracey's Village DCS\\Saved Games\\DCS.domination\\Persistent Files\\SeaSlugAirbases.lua")
--
-- 	AirbaseTableLength = SEF_GetTableLength(SeaSlugAirbases)
--
-- 	for i = 1, AirbaseTableLength do
-- 		BaseName = SeaSlugAirbases[i].Airbase
-- 		BaseCoalition = SeaSlugAirbases[i].Coalition
--
-- 		if ( BaseCoalition == 1) then
-- 			SEF_CAPAIRBASE(BaseName, 1)
-- 		elseif ( BaseCoalition == 2 ) then
-- 			SEF_CAPAIRBASE(BaseName, 2)
--
-- 			--[[
-- 			--////Deal With Particular Airbase Late Activations
-- 			if ( BaseName == "Whatever" ) then
-- 				--trigger.action.activateGroup(Group.getByName("Whatever"))
-- 			else
-- 			end
-- 			if ( BaseName == "Whatever" ) then
-- 				--trigger.action.activateGroup(Group.getByName("Whatever"))
-- 			else
-- 			end
-- 			if ( BaseName == "Whatever" ) then
-- 				--trigger.action.activateGroup(Group.getByName("Whatever"))
-- 			else
-- 			end
-- 			]]--
--
-- 		else
-- 		end
-- 	end
-- else
-- 	SeaSlugAirbases = {}
-- 	AirbaseTableLength = 0
-- end

---------------------------------------------------------------------------------------------------------------------------------------------------

--SCHEDULE
--trigger.action.outText("Persistent World Functions Schedulers Are Currently Disabled", 15)
timer.scheduleFunction(SEF_SaveUnitIntermentTable, 53, timer.getTime() + SaveScheduleUnits)
timer.scheduleFunction(SEF_SaveStaticIntermentTable, 53, timer.getTime() + (SaveScheduleUnits + 3))
--timer.scheduleFunction(SEF_SaveAirbasesTable, 53, timer.getTime() + (SaveScheduleUnits + 5))

---------------------------------------------------------------------------------------------------------------------------------------------------
