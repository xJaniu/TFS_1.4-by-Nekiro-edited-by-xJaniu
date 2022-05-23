function onSay(player, words, param)

	local position = player:getPosition()
	if (getCreatureCondition(player, CONDITION_INFIGHT)) then 
		player:sendCancelMessage("You cannot teleport during fight!")
		position:sendMagicEffect(3)
		return false 
	end
	local positiontp = Position(996, 997, 7)
	player:teleportTo(positiontp)
	positiontp:sendMagicEffect(2)
	
	
	return false
end
