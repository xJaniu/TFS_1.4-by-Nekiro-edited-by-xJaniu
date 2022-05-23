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

	if msgcontains(msg, "saga")  and queststatus == 12 then
		npcHandler:say("Ugas ogien przy pomocy swojej ulubionej techniki bo inaczej wszyscy zginiemy! {saga}", cid)
		return true
	elseif msgcontains(msg, "saga")  and queststatus == 13 then
		npcHandler:say("UDALO CI SIE! Ale zaraz, co to za goscie tam na dole? Pokonaj ich!", cid)
		doPlayerAddItem(cid, 11563, 1)
		setPlayerStorageValue(cid,30500,14)
		return true	
	else
		selfSay('Sorry, ' .. getCreatureName(cid) .. '! Nie gadam z toba...')
	end
end




npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hej! {saga}")