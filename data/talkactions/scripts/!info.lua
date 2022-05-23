function onSay(cid, words, param, channel)
	local as
	if (((2000 - (cid:getEffectiveSkillLevel(3))*8)) < 400) then
		as = "0.4"
	else
		as = (2000 - (cid:getEffectiveSkillLevel(3))*8)/1000
	end
	msg = 'Your statistics:\nLevel: ' .. getPlayerLevel(cid) .. '\nKi Level: ' .. getPlayerMagLevel(cid) .. '\nHealth: ' .. getCreatureHealth(cid) .. '/' .. getCreatureMaxHealth(cid) .. '\n' ..
	'Mana: ' .. getCreatureMana(cid) .. '/' .. getCreatureMaxMana(cid) .. '\nOne hit per: ' .. as .. '/s'
	
	--(300, vocAs - (getSkillLevel(SKILL_AXE)*15));
	--print(cid:hasSecureMode())
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, msg)

	return false
end