--Here I will have some admin/dev notes on the DCS mission "Battle for Normandy"
--This will include some of the snippets for the mission

--Funding
---We will give an option to fund the mission hosting costs with Patreon. This will give certain tiers to the mission. 
----Some tiers can include
-----Ability to switch sides
-----Name in credits?
-----Special Discord role
-----A voting position for the next mission(or something similar)
-----Special aircraft slot(paint job inculded?)
-----A locked ground unit(this should be possible with a DCS event......MAYBE)

--How are we going to market the mission?
---Marketing should be done through several channels. This can include but not limited to; DCS Forums, Reddit, Discord, etc.
---A short video as an intro will need to be uploaded to youtube. This will help with the engagement of the prospective players.
----The video should not reveal too much about the mission, for example should not show specific positions.
----It should inculde some form of music, tying the shots with the beat.
----It should remain under 2m30s

--Map Functionality
---Give units waypoints
----Groups can get certain orders with the waypoints
------This will include, on/off road, different formations
---They need to be able to attack units or points
---Set the ROE
---Set the Alarm State--With this we cannot ge the current alarm state of a unit
---See a group/units information
----Speed
----Altitude
----Heading
----Coords?
----Task
----Country?
--Should have the ability to make Mark Points and add information to the Mark Point
--Draw on the map with the Draw function
--See Unit health?
--See the coords of the mouse location
--Toggle MGRS grid
--Ruler
--

-------Potentials
--A cost system
---The cost system will mean that, all resources such as Units, Aircraft, Ammunition(within the confines of DCS) has a value.
---The values should be near accurate to 1944 dollar value. 
----This may require several other people to help with. Maybe we can ask about this when the mission gains some traction.
--Selecting the side you would be on
---This would require SpecialK to add some functionality to the bot. As we would be(hopefully) using his bot for the slot blocking.
----If we cannot us his bot, Stevie~B would have to be updated to handle the side registration. 
---When selecting a side, firstly you would select Allies or Axis
----Axis would only have one country at the time
----Allies side will consist of the Canadians, British, and Americans

--A couple of things that need to be added to the mission for functionality
---Ablitiy to build a new warehouse. If one gets destroyed, or there is a need for a warehouse in a new location, or the blue side needs more warehouses
-----This will remove the need for pre-placed warehouses on the blue side. As is the airfields that were built within a few days of the invasion.
---When making requests, they commander should be able to specif the amount fo groups they would like to transfer or spawn.
-----We should limit the amount they can spawn at a time/the requests total on the map by commanders. Too many requests can cause a hang
---

--Some basics rules of the mission. These include the rules for building the current version
--General Rules
---The mission will always run in real time. Meaning that if it takes 4 hours for a ship to arrive with new supplies. Then it will really take 4 hours.
---There will be varying weather, though there was mostly clear weather during the invasion. It did last several months. So there should be some bad weather. 
----With bad weather, this may mean that there is no real use for fighter or bombers. This is however up to each indavidual player if they wanted to fly in the bad weather.
---Assets in the warehouse will be saved. Similarlily, so will the assets already in the field being used. This will require a mission save however. (looking into that)
---If the blue side looses, the mission will restart. Nothing will change from the start of the original mission. However there will be a cool-off period between.
---The mission is NOT to be run as a permanent enviroment. And there will need to be changes to the mission after each run. Giving a week or two cooldown.
---Both sides will have limited resources at every airfield. They will have to take new supplies to each airfield.
---All warehouses will have a limited count. So you cannot spawn 3000 warehouses. 
---Warehouses will take time to be built. Somewhere around like 30 minutes, rebuilding could be half or quarter the time
---Sides will be locked for the duration of the campaign

---Blue
----This side will be given a limited number of troops on the beaches that were stormed on the 6th of June 1944. Omaha, Juno, etc
----The initial units will be all the blue side has until they can get more units from the British mainland. 
----They will need to capture the airfields nearest to them and build warehouses so they can transfer more troops and supplies.(those airfields were built, not originally there.)
----Once they have the airfields they will then need to transfer the aircraft for the players to spawn in as well. This will be done with a menu in the commander console(web)
----Fuel and other supplies should be added with supply vehicles. This means that the airfields will have limited ammunition and fuel. 
----Factories should be captured, this way you can provide new(additional) units to the warehouses.
------We would have to figure out if they can get new units through the factories in France, or they will have to send the units from the factory to Britan where they can request them.
------Factories should give 'free' units to the allies, though at a reduced rate.
---Red
----The German side will have a easier time to start, preventing the need to place new units at controlled airfields. These will have a stock of units in the warehouse, and have ample AAA and Security to start.
-------With that, there will no be any ammo vehicles to start, the commander will have to move those units from a warehouse to the required locations for the units that need it.
-------This should help prevent and un-winnable situation for the allies. 
----There will be limited resources at the start of the mission, and with very limited reinforcements from Berlin. This is in place since they will have plenty of pre-placed units.
----They can rebuid a warehouse, however they can NOT build a new warehouse.
-------Pre Placed units
----Many units will be placed around the Normandy map, though they will be limited as it was during the invasion. This means the red side will also start with a slight tactical disadvantage.
----There was not very many tanks, or infantry around Normandy during the invasion. So we will mostly place garrisons. 
----The red side will have to pull units from Berlin(warehouses) and move them into defenceble positions on their own.

--Vehicle Capacities
---LSTMK2 2.1mil kg
----infantry 23,333 90kg
----M2A1 HalfTrack 236 8890kg
----Sherman Tank 63 33000kg
----Jimmy Truck 411 5100kg
----Willy Jeep 1712 1220kg
----M45AAA 420 5000kg
----105 Artillery 420 5000kg
----155 Artillery 78 26700kg
----SPGM10 
----Sherman Firefly 63 33000kg
----M8 Greyhound 266 7890kg
----TM4 Tractor 143 14200kg
----LandingCraft 256 8200kg
----Samuel Chase 0 16250000kg
----LSTMK2 

--Telling aircraft to land at an airbase
landinggroup = GROUP:FindByName("GROUPNAME") -- We need to define the group we are going to tell to land
dcsairbase = AIRBASE:FindByName("AIRBASE") -- Once we have the group we need to get the airbase they will be landing at. This will be a DCS AIRBASE(Moose airbases are different)
landinggroup:RouteRTB(dcsairbase) -- Now we put them together and send this command to DCS so they will be told to land. (they will respawn oddly enough, then procede to landing)

--WAREHOUSE SNIPPETS AND HELP
--Here we will go over some of the warehouse stuff you need to know
--These will need to be called in a function normally, or with gRPC you can just send this to DCS
--warehouse Cherbourg is requesting 1 GROUP of Sherman tanks from itself. This means they will be spawned at that warehouse location
warehouseCherbourg:AddRequest(warehouseCherbourg, WAREHOUSE.Descriptor.GROUPNAME, "Sherman3", 1)
--This time we want to move units(groups) from Cherbourg to another warehouse. Lets use Lessay.
warehouseCherbourg:AddRequest(warehouseLessay, WAREHOUSE.Descriptor.GROUPNAME, "B17G", 1)
--Lessay is requesting 1 GROUP of B17G's from theChernbourg warehouse. We do this with the template GROUPNAME that was created in the mission editor. 
--Cherbourg will spawn the group and send them to Lessay. Once Lessay recives them, they will be de-spawned and put into the warehouse inventory.

--We can get the amount of assets with the descriptor category. In this example it will return the assets in the category of airplane.
warehouseCherbourg.GetNumberOfAssets(WAREHOUSE.Descriptor.CATEGORY, Group.Category.AIRPLANE)
--We can also get the assets by group name
warehouseCherbourg.GetNumberOfAssets(WAREHOUSE.Descriptor.GROUPNAME, "Sherman3")


--This will load a file outside of the ME Triggers
dofile([[C:\\Users\\grace\\Saved Games\\DCS.openbeta\\Missions\\saveMeNormandy.lua]])
dofile([[C:\\Users\\grace\\Saved Games\\DCS.openbeta\\Missions\\GVSAR\\NormandyV1\\D-Day1944\\saveMeNormandy.lua]])

--Couple issues noticed
---Sometimes arecraft that transfer troops do no despawn-or return to base

---How many can I carry?
--C-47 can carry 9 groups of 6 for a total of 54 units

---Blue 7DE1FF
---Red FF7D7D
---Neutral 96FF96
---Installation top thing DC7FFF