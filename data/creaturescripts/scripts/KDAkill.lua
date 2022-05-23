local deathsStorage = 30498
local killsStorage = 30499

function onKill(cid, target, lastHit)
	if isPlayer(target) then
		doCreatureSetStorage(cid, killsStorage, getCreatureStorage(cid, killsStorage) + 1)
	end
	return true
end