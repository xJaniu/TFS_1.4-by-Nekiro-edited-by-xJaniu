local deathsStorage = 30498
local killsStorage = 30499

function onDeath(player, mostDamageKiller)
	if isPlayer(player) then
		doCreatureSetStorage(player, deathsStorage, getCreatureStorage(player, deathsStorage) + 1)
	end
	return true
end