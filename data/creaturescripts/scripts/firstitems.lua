local firstItems = {11569,11394}

--[[
function onLogin(player)
	if player:getLastLoginSaved() == 0 then
		for i = 1, #firstItems do
			player:addItem(firstItems[i], 1)
		end
		player:addItem(player:getSex() == 0 and 2651 or 2650, 1)

		player:addItem(11395, 1):addItem(11396, 1)
		player:addItem(11395, 1):addItem(11397, 1)
		player:addItem(ITEM_BAG, 1):addItem(2674, 1)
	end
	return true
end
]]--

function onLogin(player)
	if player:getLastLoginSaved() == 0 then
		local backpack_table = {
			backpackId = 11395,
			itemsInside = {
				{11397, 1},
				{11397, 1},
				{11398, 1},			
				{11396, 1}
			}
		}
		local backpack = Container(doCreateItemEx(backpack_table.backpackId))
		for i = 1, #backpack_table.itemsInside do
			backpack:addItem(backpack_table.itemsInside[i][1], backpack_table.itemsInside[i][2])
		end
		player:addItemEx(backpack)		
	
		player:addItem(11566, 1):addItem(11415, 69)
		for i = 1, #firstItems do
				player:addItem(firstItems[i], 1)
		end
	end
	return true
end
