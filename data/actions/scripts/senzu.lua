function onUse(cid, item, frompos, item2, topos)

local exhausted_seconds = 1
local exhausted_storagevalue = 6721
local howAddHp = (getCreatureMaxHealth(cid) / 1)
local howAddMana = (getCreatureMaxMana(cid) / 1)

if(os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
doCreatureAddMana(cid, howAddMana)
doCreatureAddHealth(cid, howAddHp)
doCreatureSay(cid,"Krk!", TALKTYPE_ORANGE_1) 
doRemoveItem(item.uid, 1)
setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
else
doPlayerSendCancel(cid, "Jestes zmeczony.")
end
end
