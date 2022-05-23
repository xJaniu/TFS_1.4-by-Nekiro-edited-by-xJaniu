function onUse(cid, item, frompos, item2, topos)


	if (getPlayerItemCount(cid, 11557) >= 1 and getPlayerItemCount(cid, 11558) >= 1 and getPlayerItemCount(cid, 11559) >= 1 and getPlayerItemCount(cid, 11560) >= 1 and getPlayerItemCount(cid, 11561) >= 1 and getPlayerItemCount(cid, 11562) >= 1 and getPlayerItemCount(cid, 11563) >= 1) then
		doPlayerRemoveItem(cid, 11557, 1)
		doPlayerRemoveItem(cid, 11558, 1)
		doPlayerRemoveItem(cid, 11559, 1)
		doPlayerRemoveItem(cid, 11560, 1)
		doPlayerRemoveItem(cid, 11561, 1)
		doPlayerRemoveItem(cid, 11562, 1)
		doPlayerRemoveItem(cid, 11563, 1)
		local positiontp = Position(966, 996, 15)
		cid:teleportTo(positiontp)
		positiontp:sendMagicEffect(2)
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Nie zebrałeś wszystkich smoczych kul!")	
	end


end
