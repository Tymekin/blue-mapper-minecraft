--CONFIGURE HERE
local cooldown = 6000 --time in ticks
local alert_distance = 24 --when reaching this many blocks away from the stop, alert will ring
--CONFIGURATION STOP

local cardinal_railway = {
    -- NORTH LINE
    ["NBH"] = {"NORTH", "Neighborhood", -37},
    ["MSH"] = {"NORTH", "Misthaven", -69},
    ["BTA"] = {"NORTH", "Betatown", -101},
    ["KAN"] = {"NORTH", "Kanalia", -133},
    ["SLC"] = {"NORTH", "Silver City", -165},
    ["PIE"] = {"NORTH", "Piecity", -197},
    ["MAY"] = {"NORTH", "Mayoi", -229},
    ["36T"] = {"NORTH", "36 Town", -261},
    ["RSD"] = {"NORTH", "Riverside", -293},
    ["GBT"] = {"NORTH", "Golden Boots Bros", -325},
    ["RVB"] = {"NORTH", "Riverburgh", -357},
    ["BGT"] = {"NORTH", "Bigtown", -389},
    ["CLC"] = {"NORTH", "Calico", -453},
    ["SMV"] = {"NORTH", "Semisville", -613},
    ["BMT"] = {"NORTH", "Boomtown", -773},
    ["LSV"] = {"NORTH", "Lonesome Valley", -805},
    ["MNG"] = {"NORTH", "Mung City", -1139},
    ["LIT"] = {"NORTH", "Little Italy", -1221},
    ["BBH"] = {"NORTH", "Bluebird Hollow", -1349},
    ["SLY"] = {"NORTH", "SillyTown", -1573},
    ["CTB"] = {"NORTH", "Craftburg", -1637},
    ["WGS"] = {"NORTH", "Wingstop", -1775},
    ["INK"] = {"NORTH", "Inkovia", -1797},
    ["NUV"] = {"NORTH", "Nuvema", -2519},

    -- EAST LINE
    ["MIX"] = {"EAST", "Mixtlán", 23},
    ["BJN"] = {"EAST", "Beijing", 87},
    ["PLC"] = {"EAST", "Palace Creek", 119},
    ["MSB"] = {"EAST", "Mausburg", 151},
    ["WCD"] = {"EAST", "Woodycode", 183},
    ["OID"] = {"EAST", "Oidland", 215},
    ["RKT"] = {"EAST", "Rocketburg", 247},
    ["DLZ"] = {"EAST", "Vila Dilevz", 279},
    ["NEV"] = {"EAST", "Nevograd", 311},
    ["NWT"] = {"EAST", "Newton City", 343},
    ["NCR"] = {"EAST", "New California", 375},
    ["NTN"] = {"EAST", "NinesTown", 407},
    ["CLR"] = {"EAST", "Coalrock Hub", 439},
    ["WHH"] = {"EAST", "Woke Hills Hub", 471},
    ["SXN"] = {"EAST", "Sexonia", 599},
    ["OOG"] = {"EAST", "Oogaboogumblur", 695},
    ["STN"] = {"EAST", "Stonetown", 727},
    ["DVL"] = {"EAST", "Dovlenia", 887},
    ["KRP"] = {"EAST", "Kerp Kerp Beach", 947},
    ["RVN"] = {"EAST", "Ravenfield", 1006},
    ["TCH"] = {"EAST", "The Cat Hub", 1111},
    ["AXT"] = {"EAST", "Axolotl Town", 1399},
    ["TSP"] = {"EAST", "Toasty Plains", 1399},
    ["STP"] = {"EAST", "Startropolis", 1431},
    ["QUA"] = {"EAST", "Quapoppolis", 1951},
    ["FRT"] = {"EAST", "Fart Cove", 1983},
    ["SCV"] = {"EAST", "Stray Cat Valley", 2167},
    ["FLT"] = {"EAST", "Flatland", 2391},
    ["MNH"] = {"EAST", "McNord Hub", 2615},
    ["HOE"] = {"EAST", "Hoe Island", 2643},

    -- SOUTH LINE
    ["NEB"] = {"SOUTH", "Nebraska Hub", 27},
    ["GNW"] = {"SOUTH", "Genewa", 59},
    ["POD"] = {"SOUTH", "Podica", 91},
    ["GTN"] = {"SOUTH", "Gornotown", 123},
    ["PGP"] = {"SOUTH", "Puppygirl Plaza", 155},
    ["CWL"] = {"SOUTH", "Cowloon", 197},
    ["NWY"] = {"SOUTH", "Newway Isle", 219},
    ["BRC"] = {"SOUTH", "Broadcastia", 251},
    ["SOI"] = {"SOUTH", "Shadow of Israphel", 283},
    ["FHN"] = {"SOUTH", "Fairhaven", 315},
    ["BTR"] = {"SOUTH", "Beta Rome", 347},
    ["LYD"] = {"SOUTH", "Lydian", 379},
    ["FVT"] = {"SOUTH", "Frostvolt", 411},
    ["BTY"] = {"SOUTH", "Beta York", 571},
    ["BOI"] = {"SOUTH", "Boink Bay", 731},
    ["WVL"] = {"SOUTH", "Waveland", 843},
    ["RBT"] = {"SOUTH", "Rabbitown", 859},
    ["BAY"] = {"SOUTH", "Balloon Bay", 891},
    ["GBV"] = {"SOUTH", "Gooberville", 967},
    ["TIR"] = {"SOUTH", "Tir Chonaill", 987},
    ["NVM"] = {"SOUTH", "Nevermore", 1019},
    ["GUP"] = {"SOUTH", "Gup Gup Springs", 1211},
    ["EMV"] = {"SOUTH", "Emville", 1435},
    ["TSR"] = {"SOUTH", "The Sister's Republic", 1735},
    ["CRE"] = {"SOUTH", "Creeper Creek", 1851},
    ["BTB"] = {"SOUTH", "Back To Beta Town", 1947},
    ["JTW"] = {"SOUTH", "J Town", 2172},
    ["WOW"] = {"SOUTH", "Woolworth", 2237},
    ["INV"] = {"SOUTH", "Inverness", 2405},

    -- WEST LINE
    ["OLY"] = {"WEST", "Olympia", -41},
    ["BHN"] = {"WEST", "Builder's Haven", -73},
    ["LBP"] = {"WEST", "LittleBigPlanet", -105},
    ["CAT"] = {"WEST", "Catland", -137},
    ["VIC"] = {"WEST", "Victoria", -169},
    ["TRE"] = {"WEST", "Treetown", -201},
    ["LFD"] = {"WEST", "Longford", -233},
    ["RAB"] = {"WEST", "Rabituza", -275},
    ["STH"] = {"WEST", "Stonehold", -298},
    ["LSM"] = {"WEST", "Lasagna Mafia", -329},
    ["FRZ"] = {"WEST", "Frazlantis", -369},
    ["SKY"] = {"WEST", "Skyreach City", -421},
    ["LPH"] = {"WEST", "Lake Pigon Hub", -433},
    ["CBH"] = {"WEST", "Coolerhood", -485},
    ["QRY"] = {"WEST", "Quarry Town", -513},
    ["FEM"] = {"WEST", "Femboyville", -581},
    ["LTN"] = {"WEST", "La Taniere", -625},
    ["VRD"] = {"WEST", "Verdantia", -849},
    ["WOF"] = {"WEST", "Willowcliff", -874},
    ["LPD"] = {"WEST", "Lost Paradise", -1233},
    ["CAB"] = {"WEST", "Cardiburg", -1361},
    ["IRL"] = {"WEST", "IRLtown", -1631},
    ["WSH"] = {"WEST", "Western Hub", -2161},
    ["MBC"] = {"WEST", "MB Canvas", -2353}
}

local stop = ""
local found = false
local timer = -1
local on_track = false

function events.chat_send_message(message)
    if host:isHost() then
		if player:getDimensionName() == "minecraft:the_nether" then
			if string.find(message, "#card ") then
				stop = string.sub(message, 7, 9)
				found = false
				on_track = false
				for index, value in pairs(cardinal_railway) do
					if index == stop then
						sounds:playSound("entity.experience_orb.pickup", player:getPos())
						print(value[2] .. " is on the Cardinal " .. value[1] .. ". Jump onto track!")
						found = true
						timer = cooldown
					end
				end
				if found == false then
					sounds:playSound("entity.villager.no", player:getPos())
					print("Did not find stop with code: " .. stop)
				end
				return nil
			end
		else
			print("Wrong dimension!")
			return nil
		end
		return message
	end
end

function events.tick()
	if host:isHost() then
		if found == true then
			if player:getPos()[2] == 9.65 then
				if cardinal_railway[stop][1] == "NORTH" then
					if player:getPos()[1] == -7.5 then
						sounds:playSound("entity.experience_orb.pickup", player:getPos())
						print("You are on the right track!")
						found = false
						on_track = true
					end
				elseif cardinal_railway[stop][1] == "EAST" then
					if player:getPos()[3] == -3.5 then
						sounds:playSound("entity.experience_orb.pickup", player:getPos())
						print("You are on the right track!")
						found = false
						on_track = true
					end
				elseif cardinal_railway[stop][1] == "SOUTH" then
					if player:getPos()[1] == -9.5 then
						sounds:playSound("entity.experience_orb.pickup", player:getPos())
						print("You are on the right track!")
						found = false
						on_track = true
					end
				elseif cardinal_railway[stop][1] == "WEST" then
					if player:getPos()[3] == -5.5 then
						sounds:playSound("entity.experience_orb.pickup", player:getPos())
						print("You are on the right track!")
						found = false
						on_track = true
					end
				end
			end
			timer = timer - 1
		elseif on_track == true then
			if cardinal_railway[stop][1] == "NORTH" then
				if player:getPos()[3] < cardinal_railway[stop][3] + 4 + alert_distance and player:getPos()[3] > cardinal_railway[stop][3] - 4 - alert_distance then
					sounds:playSound("entity.villager.work_toolsmith", player:getPos())
					print("Approaching " .. stop)
					on_track = false
					timer = -1
				end
			elseif cardinal_railway[stop][1] == "EAST" then
				if player:getPos()[1] > cardinal_railway[stop][3] - 4 - alert_distance and player:getPos()[1] < cardinal_railway[stop][3] + 4 + alert_distance then
					sounds:playSound("entity.villager.work_toolsmith", player:getPos())
					print("Approaching " .. stop)
					on_track = false
					timer = -1
				end
			elseif cardinal_railway[stop][1] == "SOUTH" then
				if player:getPos()[3] > cardinal_railway[stop][3] - 4 - alert_distance and player:getPos()[3] < cardinal_railway[stop][3] + 4 + alert_distance then
					sounds:playSound("entity.villager.work_toolsmith", player:getPos())
					print("Approaching " .. stop)
					on_track = false
					timer = -1
				end
			elseif cardinal_railway[stop][1] == "WEST" then
				if player:getPos()[1] < cardinal_railway[stop][3] + 4 + alert_distance and player:getPos()[1] > cardinal_railway[stop][3] - 4 - alert_distance then
					sounds:playSound("entity.villager.work_toolsmith", player:getPos())
					print("Approaching " .. stop)
					on_track = false
					timer = -1
				end
			end
			timer = timer - 1
		end
		if timer == 0 then
			print("Cooldown zeroed, stopping locating!")
			found = false
			on_track = false
			stop = ""
			timer = -1
		end
	end
end
