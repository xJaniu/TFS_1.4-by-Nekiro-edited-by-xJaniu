local storage = 30312 -- set any storage value u want to use here.
 
function onUse(cid, item, frompos, item2, topos)
        if getPlayerStorageValue(cid, storage) <= 0 then
        	setPlayerStorageValue(cid, storage, 1)
        	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You have learned Super Release Quest!")
         else
            doPlayerSendTextMessage(cid, 22, "You've already learned this transform.")
        	end
end