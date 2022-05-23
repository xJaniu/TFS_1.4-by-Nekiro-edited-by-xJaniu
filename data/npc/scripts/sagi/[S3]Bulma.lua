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

	if msgcontains(msg, "smocze kule")  and queststatus == 3 then
		npcHandler:say("Kule spelniaja zyczenia! Pomozesz mi je znalezc? {pomoc}", cid)
		return true
	elseif msgcontains(msg, "pomoc")  and queststatus == 3 then
		npcHandler:say("Dzieki!", cid)
		doPlayerAddItem(cid, 11558, 1)
		setPlayerStorageValue(cid,30500,4)
		return true	
	elseif queststatus ~= 3 then
		selfSay('Sorry, ' .. getCreatureName(cid) .. '! Nie gadam z toba...')
	end
end




npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "HEJ! ZNISZCZYLES MOJ SAMOCHOD! JAK JA TERAZ ZNAJDE SMOCZE KULE! {smocze kule}")