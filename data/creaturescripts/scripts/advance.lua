local c = {
    savePlayersOnAdvance = true,
    maxLevel = 30
}

function onAdvance(cid, skill, oldlevel, newlevel)
    if skill == SKILL_LEVEL then
        doCreatureAddHealth(cid, getCreatureMaxHealth(cid) - getCreatureHealth(cid))
        doCreatureAddMana(cid, getCreatureMaxMana(cid) - getCreatureMana(cid))
		if getPlayerLevel(cid) > 1000 and getPlayerStorageValue(cid,rebornStorage) < 1 then
			doPlayerAddLevel(cid, -(getPlayerLevel(cid)-1000))
		end	
    end
	


    return true
end