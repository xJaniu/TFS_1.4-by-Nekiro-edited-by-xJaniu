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

	if msgcontains(msg, "trening")  and queststatus == 6 then
		npcHandler:say("A wiec ruszaj na Kame Island!", cid)
		setPlayerStorageValue(cid,30500,7)
		return true
	elseif queststatus ~= 6 then
		selfSay('Sorry, ' .. getCreatureName(cid) .. '! Nie gadam z toba...')
	end
end




npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hej, widzialem jak pokonales Pandoriana Bossa! Chcesz przejsc trening pod okiem mojego mistrza? {trening}")