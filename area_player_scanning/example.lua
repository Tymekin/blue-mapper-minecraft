require('http')

--Link to the BlueMap of your server
local map = ''

--Name of this bounding box
local name = 'Example'

--Coordinates of the bounding box
local topleft_x = 0
local topleft_z = 0
local bottomright_x = 0
local bottomright_z = 0

--Check delay in world ticks
local delay = 200

local a = net.http:request('https://'..map..'/maps/world/live/players.json')
local timer = 0
local oldTable = {}
function events.world_tick()
	if host:isHost() then
		if timer >= delay then
			a:sendAsync(function(result, status)
				local data = parseJson(result)
				local newTable = {}
				for i,line in ipairs(data['players']) do
					local x = tonumber(line['position']['x'])
					local z = tonumber(line['position']['z'])
					if x > topleft_x and line['foreign'] == false then
						if x < bottomright_x then
							if z > topleft_z then
								if z < bottomright_z then
									if line['name'] ~= player:getName() then
										newTable[line['name']] = true
									end
								end
							end
						end
					end
				end
				for i, line in pairs(newTable) do
					if newTable[i] ~= oldTable[i] then
						print(i .. ' entered ' .. name .. '!')
					end
				end
				for i, line in pairs(oldTable) do
					if oldTable[i] ~= newTable[i] then
						print(i .. ' left ' .. name .. '!')
					end
				end
				oldTable = {}
				for orig_key, orig_value in pairs(newTable) do
					oldTable[orig_key] = orig_value
				end
			end)
			timer = 0
		end
		timer = timer + 1
	end
end
