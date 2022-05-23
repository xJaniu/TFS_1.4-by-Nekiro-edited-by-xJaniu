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

	if msgcontains(msg, "pomoc")  and queststatus == 9 then
		npcHandler:say("Demon powinien byc na poludnie od wioski", cid)
		setPlayerStorageValue(cid,30500,10)
		return true
	elseif queststatus ~= 9 then
		selfSay('Sorry, ' .. getCreatureName(cid) .. '! Nie gadam z toba...')
	end
end




npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hej, prosze pomoz nam uporac sie z Demonem! {pomoc}")