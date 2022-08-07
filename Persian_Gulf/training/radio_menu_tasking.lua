attackrotarygroups = {156,155,154,75,74,73,71,70,69,68,67,66,65,63,64,62,61,60,59,58,50,49,48,47,40,29} --Group ID's for atack helicopters
transportrotarygroups = {1,21,29,157,156,158,159} --Group ID's for Transport Helicopters(Includes MI-24P)

rassets = missionCommands.addSubMenu("Tasking for RotaryWing") --First menu, this is for all groups
for i, gid2 in ipairs(transportrotarygroups) do
  rrotary = missionCommands.addSubMenuForGroup(
  gid2,
  "Transport Tasks",
  rassets
)

--------------------------Sling Load Tasks-----------------------
rotarytrans = missionCommands.addSubMenuForGroup(
  gid2,
  "Sling Load Tasks",
  rrotary
)
rotarytranseasy = missionCommands.addCommandForGroup(
  gid2, --Group ID table
  "Easy", --Title for the radio menu command
  rotarytrans, --What the Command belongs to
  function(easysling)--This Spawns a barrel for each of the dificulties for sling loading. They respawn everytime this is called.
    barrelseasy = {
      ["mass"] = 136, --Mass of the cargo in KG
      ["canCargo"] = true, --Sets if the object can be cargo or not
      ["heading"] = 0, --The heading of the object will be spawned
	    ["groupId"] = 3, -- Group ID of the object, does not need to be unique?
      ["shape_name"] = "barrels_cargo", --"class name" of the object to be spawned
      ["type"] = "barrels_cargo", --Type of object. Similar to ShapeName
      ["unitId"] = 902, --Unit ID MUST be unique
      ["rate"] = 100, --The score given for the destruction of this object DCS default
      ["name"] = "BarrelsEasy", --Name must be unique
      ["category"] = "Cargos", --Category of the static object.
      ["y"] = -176239, --Y coordinate where the object will be spawned
      ["x"] = -189174, --X coordinate where the object will be spawned
      ["dead"] = false, --Sets if the object is dead or not
    }
    coalition.addStaticObject(country.id.USA, barrelseasy) --This is what finally spawned the object with the values above
    trigger.action.outText("Easy Sling Cargo Spawned",15) --Text to be shown when the object is spawned.
  end,
  easysling
)
rotarytranmedium = missionCommands.addCommandForGroup(
  gid2,
  "Medium",
  rotarytrans,
  function(mediumsling)
    barrelmedium = {
      ["mass"] = 136,
      ["canCargo"] = true,
      ["heading"] = 0,
	    ["groupId"] = 3,
      ["shape_name"] = "barrels_cargo",
      ["type"] = "barrels_cargo",
      ["unitId"] = 901,
      ["rate"] = 100,
      ["name"] = "BarrelsEasy",
      ["category"] = "Cargos",
      ["y"] = -176249,
      ["x"] = -189177,
      ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, barrelmedium)
    trigger.action.outText("Medium Sling Cargo Spawned",15)
  end,
  mediumsling
)
rotarytranshard = missionCommands.addCommandForGroup(
  gid2,
  "Hard",
  rotarytrans,
  function(hardsling)
    barrelshard = {
      ["mass"] = 136,
      ["canCargo"] = true,
      ["heading"] = 0,
	    ["groupId"] = 3,
      ["shape_name"] = "barrels_cargo",
      ["type"] = "barrels_cargo",
      ["unitId"] = 900,
      ["rate"] = 100,
      ["name"] = "BarrelsHard",
      ["category"] = "Cargos",
      ["y"] = -176259,
      ["x"] = -189180,
      ["dead"] = false,
    }
    coalition.addStaticObject(country.id.USA, barrelshard)
    trigger.action.outText("Hard Sling Cargo Spawned",15)
  end,
  hardsling
)
rotaryslinghelp = missionCommands.addCommandForGroup(
  gid2,
  "Help",
  rotarytrans,
  function(slinghelp)
    trigger.action.outText("Easy Sling is a 50x50 area marked with BlackTires with Red Flags----  Medium Sling is a 35x35 area marked with White Flags----  Hard Sling is a 10x10 area marked with Red Flags----  All Cargos must be safely placed in the respective box to complete the task.  One helicopter at a time as the cargo will respawn if the task is selected again.",30)
  end,
  slinghelp
)
end
--------------------End Of Sling Load Tasks-----------------------

--------------------Tasks for Attack Helicopters in the GRID CM09-----------------------
for i, gid in ipairs(attackrotarygroups) do
  rrotary = missionCommands.addSubMenuForGroup(
    gid,
    "Targets Grid CM09",
    rassets
  )

  rotaryt = missionCommands.addCommandForGroup(
    gid, --ID's for the groups you want to see the menu options
    "Spawn Armor Targets", --Title of the menu option
    rrotary, --Submenu owner
    function(My_Argument) --Function to be run on the selection of the radio menu option
      trigger.action.outText("k",15) --Function arguments
    end,
    My_Argument --The function
  )
  rotaryt = missionCommands.addCommandForGroup(
    gid,
    "Spawn Soft Targets",
    rrotary,
    function(My_Argument)
      trigger.action.outText("k",15)
    end,
    My_Argument
  )
  rotaryt = missionCommands.addCommandForGroup(
    gid,
    "Spawn Infrantry Targets",
    rrotary,
    function(My_Argument)
      trigger.action.outText("k",15)
    end,
    My_Argument
  )
  rotaryt = missionCommands.addCommandForGroup(
    gid,
    "Spawn Assorted Targets",
    rrotary,
    function(My_Argument)
      trigger.action.outText("k",15)
    end,
    My_Argument
  )
end
--------------------End of Tasks for Attack Helicopters in the GRID CM09-----------------------
