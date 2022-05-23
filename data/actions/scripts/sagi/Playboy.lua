local playboyStorage = 30497 -- set any storage value u want to use here.
 
function onUse(cid, item, frompos, item2, topos)
    if getPlayerStorageValue(cid, playboyStorage) == -1 then
        	doPlayerAddItem(cid, 11580, 1)
        	setPlayerStorageValue(cid, playboyStorage, 1)
        	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You found playboy!")
         else
            doPlayerSendTextMessage(cid, 22, "You picked it already.")
        end
end