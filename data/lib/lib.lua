-- Core API functions implemented in Lua
dofile('data/lib/core/core.lua')

-- Compatibility library for our old Lua API
dofile('data/lib/compat/compat.lua')

-- Debugging helper function for Lua developers
dofile('data/lib/debugging/dump.lua')
dofile('data/lib/debugging/lua_version.lua')


function doReborn(cid, level, looktype, vocation)
	setGlobalStorageValue(1000,getPlayerGUID(cid))
	doRemoveCreature(cid)
	db.query("UPDATE `players` SET `level` = " .. level .. " WHERE `id` = " .. getGlobalStorageValue(1000) .. ";")
	db.query("UPDATE `players` SET `looktype` = " .. looktype .. " WHERE `id` = " .. getGlobalStorageValue(1000) .. ";")
	db.query("UPDATE `players` SET `vocation` = " .. vocation .. " WHERE `id` = " .. getGlobalStorageValue(1000) .. ";")
	return TRUE
end