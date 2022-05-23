-- spell = 'Soul Punisher' -- Set the spell name here.
local storage = 30309 -- set any storage value u want to use here.
	local position
	position = Position(1015, 995, 15)
function onUse(cid, item, frompos, item2, topos)
		position = cid:getPosition()
          --[[  if getPlayerStorageValue(cid, storage) <= 0 then
        	doPlayerLearnInstantSpell(cid, spell)
        	setPlayerStorageValue(cid, storage, 1)
        	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You have learned the spell "..spell..".")
         else
            doPlayerSendTextMessage(cid, 22, "You've already learned this spell.")
        	end
			]]--

	--
end