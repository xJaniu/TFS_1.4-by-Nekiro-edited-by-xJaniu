local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}



function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		 npcHandler:onThink()					end


function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	queststatus = getPlayerStorageValue(cid,rebornStorage)
	if queststatus == -1 then
		if msgcontains(msg, 'reborn') and getPlayerStorageValue(cid,30023) == 4 then
			selfSay('Sorry, but you are after reborn.')
			focus = 0
			talk_start = 0

		elseif msgcontains(msg, 'reborn') and getPlayerLevel(cid) < 250 and  getPlayerLevel(cid) > 1000 and getPlayerStorageValue(cid,30023) ~= 4 then
			selfSay('Hehe, I say If you READY. You do not have 250 lvl.')

		elseif msgcontains(msg, 'reborn') then
			selfSay('Are you sure?')
			talk_state = 2
--Reborn!
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 6 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,562,7)
			talk_state = 0
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 26 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,571,27)
			talk_state = 0
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 46 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,580,47)
			talk_state = 0
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 66 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,589,67)
			talk_state = 0
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 86 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,598,87)
			talk_state = 0
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 106 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,607,107)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 126 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,634,127)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 146 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,643,147)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 166 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,652,167)
			talk_state = 0	
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 186 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,661,187)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 206 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,670,207)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 226 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,679,227)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 246 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,688,247)
			talk_state = 0	
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 266 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,697,267)
			talk_state = 0	
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 286 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,706,287)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 306 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,715,307)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 326 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,724,327)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 346 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,733,347)
			talk_state = 0				
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 366 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,742,367)
			talk_state = 0	
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 386 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,751,387)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 406 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,760,407)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 426 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,769,427)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 446 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,778,447)
			talk_state = 0				
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 466 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,787,467)
			talk_state = 0			
		elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and  getPlayerLevel(cid) <= 1000 and getPlayerVocation(cid) == 486 then
			setPlayerStorageValue(cid,rebornStorage,1)
			doReborn(cid,1,796,487)
			talk_state = 0								
			
		
			
			
--Koneic reborn
		elseif msgcontains(msg, 'yes') and talk_state == 2 then
			selfSay('Sorry, ' .. getCreatureName(cid) .. '! You are less of 250level or you must revert or transform.')

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye.')
			focus = 0
			talk_start = 0
		end
	end
end




npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
