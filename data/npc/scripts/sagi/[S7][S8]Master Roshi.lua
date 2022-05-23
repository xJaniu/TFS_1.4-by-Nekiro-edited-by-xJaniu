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
	queststatus = getPlayerStorageValue(cid,30500)

	if msgcontains(msg, "saga")  and queststatus == 7 then
		npcHandler:say("A wiec chcesz przejsc trening. Pewnie, ale najpierw znajdz mi moja gazete playboy {saga}", cid)
		setPlayerStorageValue(cid,30500,8)
		return true
	elseif msgcontains(msg, "saga")  and queststatus == 8 and getPlayerItemCount(cid, 11580) >= 1 then
		npcHandler:say("Dzieki! Odnajdz teraz Aru Village i pogadaj z miejscowymi", cid)
		doPlayerAddItem(cid, 11559, 1)
		doPlayerRemoveItem(cid, 11580, 1)
		setPlayerStorageValue(cid,30500,9)
		return true	
	elseif msgcontains(msg, "saga")  and queststatus == 8 and getPlayerItemCount(cid, 11580) == 0 then
		npcHandler:say("Nie znalazles jescze mojej gazety playboy! {saga}", cid)
		return true	
	else
		selfSay('Sorry, ' .. getCreatureName(cid) .. '! Nie gadam z toba...')
	end
end




npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hej! {saga}")