function onLogin(player)
	local loginStr = "Welcome to " .. configManager.getString(configKeys.SERVER_NAME) .. "!"
	if player:getLastLoginSaved() <= 0 then
		local PlayerVoc = getPlayerVocation(player)
		doCreatureChangeOutfit(player, {lookType=Trans[PlayerVoc].looktype}, -1)
		print("New player")
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format("Your last visit was on %s.", os.date("%a %b %d %X %Y", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

	-- Stamina
	nextUseStaminaTime[player.uid] = 0

	--maxSkill


	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	player:registerEvent("Sagi")
	player:registerEvent("PlayerDeath")
	player:registerEvent("DropLoot")
	player:registerEvent("KDAkill")
	player:registerEvent("KDAdeath")
	player:registerEvent("advance")
	
	return true
end