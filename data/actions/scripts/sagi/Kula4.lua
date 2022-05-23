local storage = 30500 -- set any storage value u want to use here.
 
function onUse(cid, item, frompos, item2, topos)
    if getPlayerStorageValue(cid, storage) == -1 then
        	doPlayerAddItem(cid, 11560, 1)
        	setPlayerStorageValue(cid, storage, 2)
        	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "[S1 Done] You found Dragon Ball with four stars! Keep looking for other dragon balls!")
         else
            doPlayerSendTextMessage(cid, 22, "You picked it already.")
        end
end