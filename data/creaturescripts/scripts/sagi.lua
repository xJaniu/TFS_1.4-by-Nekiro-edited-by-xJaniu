local monsters = {
	--name = storage
	["[S2]Car"] = {reward = 11415, quantity = 69, storage = 3, npcName = "[S3]Bulma", experience = 5000000},
	["[S4]Pterodactyl"] = {reward = 11561, quantity = 1,  storage = 5, npcName = 0, experience = 5000000},
	["[S5]Pandorian Boss"] = {reward = 11415, quantity = 69, storage = 6, npcName = 0, experience = 5000000},
	["[S10]Oolong Demon Form"] = {reward = 11562, quantity = 1, storage = 11, npcName = 0, experience = 5000000},
	["[S11]Yamcha"] = {reward = 11415, quantity = 69, storage = 12, npcName = 0, experience = 5000000},
	["[S12]Fire"] = {reward = 11415, quantity = 69, storage = 13, npcName = 0, experience = 5000000},
	["[S14]Pilaf"] = {reward = 11557, quantity = 1, storage = 15, npcName = 0, experience = 5000000}
	}


function onKill(cid, target)

	local monster = monsters[target:getName(cid)]

	if monster then
       setPlayerStorageValue(cid, 30500, monster.storage)
	   item = monster.reward
	   doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "[Saga done] Your reward: "  ..monster.quantity .. "x" .. getItemNameById(monster.reward) .. "!")
       doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "[Saga done] Check !saga for more information about next saga!")
	   doPlayerAddItem(cid, monster.reward, monster.quantity)
	   doPlayerAddExperience(cid, monster.experience) 
	else
		return false
	end
	
	return true
end

function onDeath(creature)
	local monster = monsters[creature:getName(creature)]
	
	if monster and monster.npcName ~= 0 then
		local pos = creature:getPosition()
		doCreateNpc(monster.npcName, pos)
		addEvent(doRemoveCreature, 60000, monster.npcName)
	end
	return true
end