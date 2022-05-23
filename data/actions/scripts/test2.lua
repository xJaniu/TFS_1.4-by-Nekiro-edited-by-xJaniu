function onUse(cid, item, frompos, item2, topos)

	if item.itemid == 1740 then
  		queststatus = getPlayerStorageValue(cid, 30002)

  		if queststatus == -1 then
                 	setPlayerStorageValue(cid, 30002, 1)
			doPlayerAddItem(cid, 11415, 100)
		else
		        doPlayerAddItem(cid, 11415, 100)
		end
 	end

   	return 1

end