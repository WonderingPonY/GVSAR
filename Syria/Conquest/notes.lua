
--//PLAYER SPAWNS

--//PLAYER AREA
---Players need to stay within the playable area to prevent sneaky bullshit. 
---Players will be given a announcment saying they have left the playable area
---The time they have to come back to the playable area is ONE minute
---If the player exceeds the time limit they will be destroyed

--//Capture points
--Capture points will need to change colours based on what coalition has it
--supply helicopters will fly to a capture point when there is no units in it. 
--Once they are landing at the zone, they will spawn some ground troops for the actual capture of the base, then depawn the helicopters
--after 5 minutes the capture point will be captured and the point defeces will spawn, fully capturing this point.

--//ACCESORY POINTS
--These points have resources that the MAIN base of each side will need to continue.
--They will include points for Fuel, Ammo, and Aircraft
--They have unlimited resources

--//TICKETS
--Tickets are consumed by spawning players
--Each side will start with 500 tickets & have a maximum of 500 tickets
--Each capture point(aside from the MAIN for each side) will give 5 tickets per minute
--Each point that is captured FROM the defending side(of the point) will bleed 1 tickets per minute

--//PLAYER TASKS
--Players will be given tasks to capture accessory points
--These points will be required to continue the mission

--//RESOURCES
--There could be resource points that will need to be captured for each side.
--==The node will generate manpower resources for your team
--Resource points will give the sides main base resources
--Ammo, Vehicles, fuel, aircraft
--Each point has ONE type of resource
--Five points of each resource
--Ammo has 100 per hour
--Vehicles has 100 per hour
--Fuel has 100 per hour
--Aircraft has 100 per hour

--//PLAYER POINTS
--Points can be earned in several ways
----Destroying Enemy infantry/transport Targets (AI) = 1 point
----Destroying Enemy IFV/APC Targets (AI) = 2 point
----Destroying Enemy Armored Targets (AI) = 3 point
----Destroying Enemy AAA Targets (AI) = 4 point
----Destroying Enemy Players = 5 point
----successful landing = 8 points****** multiply earned points during sortie by 2
----Deploying units to the field = 5 points******
----Capturing zones = 10 points*******
--Points are lost in a few ways
----When a player is killed = -1 point
----When a player crashes = -1 point
----Killing allied players = -5 points
----If player ejects or disconnects(check is timeout?) with GOOD WORKING aircraft, they lose 69% of points

--//PLAYER HELPERS
--\\HOW TO

--\\HOW DO CAPTURE POINTS WORK
--Each zone will be one of three colors
----Red-Red Coalition Captured
----Blue-Blue Coaltion Captured
----White-Nuetral is up for grabs
--If the next subsequent zone in the path is nuetral then the previous zone will spawn a heli to capture the zone
--Once a zone has been cleared of units a transport heli will be dispatched to drop defending forces to capture the zone. 


--\\OBJECTIVE
--The objective of each coalition is to capture and hold zones causing enemy tickets to decrease. Once a coalitions tickets run out its game over and the mission restarts
--The airfields listed below are the capturable zones
----Haifa
----Naqoura
----Beirut
----Rosh Pina
----Kiryat Shmona
----King Hussein Air College
----Khalkhalah
----Marj Ruhayyil
----Al Dumayr
----Rayak
----Mezzeh

--\\RESOURCES
