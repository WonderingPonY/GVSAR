HQ = GROUP:FindByName( "HQ", "Bravo" )

CommandCenter = COMMANDCENTER
  :New( HQ, "Lima" )

Mission = MISSION
  :New( CommandCenter, "CSAR Missions", "High", "Rescue Survivors.", coalition.side.Blue )

AttackGroups = SET_GROUP:New():FilterCoalitions( "blue" ):FilterPrefixes( "Rescue" ):FilterStart()

TaskDispatcher = TASK_CARGO_DISPATCHER:New( Mission, AttackGroups )


TaskDispatcher:StartCSARTasks(
  "CSAR",
  { ZONE_UNIT:New( "Hospital", STATIC:FindByName( "Hospital" ), 100 ) },
  "A new tasking is available. \n" ..
  "Use the radio menu to let the command center assist you with the SAR tasking."
)

function TaskDispatcher:OnAfterCargoDeployed( From, Event, To, Task, TaskPrefix, TaskUnit, Cargo, DeployZone )

  MESSAGE:NewType( "Unit " .. TaskUnit:GetName().. " has deployed cargo " .. Cargo:GetName() .. " at zone " .. DeployZone:GetName() .. " for task " .. Task:GetName() .. ".", MESSAGE.Type.Information ):ToAll()

end
