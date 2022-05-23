function onUse(cid, item, frompos, item2, topos)

	if item.itemid == 1740 then
  		queststatus = getPlayerStorageValue(cid, 30001)

  		if queststatus == -1 then
                 	setPlayerStorageValue(cid, 30001, 1)
			doPlayerAddExperience(cid, (getExperienceForLevel(1000) - getPlayerExperience(cid))) 
		else
		        doPlayerSendTextMessage(cid, 22, "it is empty.")
				doPlayerAddExperience(cid, (getExperienceForLevel(1000) - getPlayerExperience(cid))) 
		end
 	end

   	return 1

end