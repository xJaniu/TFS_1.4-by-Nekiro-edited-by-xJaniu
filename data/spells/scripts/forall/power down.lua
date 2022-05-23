function onCastSpell(creature, variant) 
	local player = Player(creature)
	if not player then
		return true
	end
	local getPosition = player:getPosition()
	local getMana = player:getMana()
	
    if getMana < 1 then
		player:sendCancelMessage("You can't power down with 0 mana!")
        getPosition:sendMagicEffect(3)
		return true
    end
	
	player:addManaSpent(getMana)
	player:addMana(-getMana)
    getPosition:sendMagicEffect(5)
	return true			
	
end

