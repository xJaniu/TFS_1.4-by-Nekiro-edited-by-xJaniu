function onUse(cid, item, frompos, item2, topos)

	if item.itemid == 1740 then
  		queststatus = getPlayerStorageValue(cid, 30000)

  		if queststatus == -1 then
                 	setPlayerStorageValue(cid, 30000, 1)
			doPlayerAddItem(cid, 11568, 1)
			doPlayerAddItem(cid, 11506, 1)
			doPlayerAddItem(cid, 11507, 1)
			doPlayerAddItem(cid, 11508, 1)
			doPlayerAddItem(cid, 11509, 1)
			doPlayerAddItem(cid, 11510, 1)
			doPlayerAddItem(cid, 11511, 1)
			doPlayerAddItem(cid, 11512, 1)
		else	
		        doPlayerSendTextMessage(cid, 22, "it is empty.")
		end
 	end

   	return 1

end