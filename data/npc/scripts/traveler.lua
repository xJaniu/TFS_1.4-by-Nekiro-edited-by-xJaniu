local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        
        
        -- OTServ event handling functions start
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        -- OTServ event handling functions end
        
        
        -- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!

	local travelNode = keywordHandler:addKeyword({'earth'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1005, y=995, z=7} })
	local travelNode = keywordHandler:addKeyword({'namek'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=337, y=1045, z=7} })
	local travelNode = keywordHandler:addKeyword({'vegeta'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1492, y=1010, z=7} })
	local travelNode = keywordHandler:addKeyword({'konats'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1362, y=652, z=7} })
	local travelNode = keywordHandler:addKeyword({'abyss'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=987, y=665, z=7} })
	local travelNode = keywordHandler:addKeyword({'hz'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=518, y=1282, z=7} })
	local travelNode = keywordHandler:addKeyword({'colloseum'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=887, y=1244, z=7} })
	local travelNode = keywordHandler:addKeyword({'inferno'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=646, y=1017, z=6} })
	local travelNode = keywordHandler:addKeyword({'bandit island'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=651, y=782, z=7} })
	local travelNode = keywordHandler:addKeyword({'zuna'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=1180, y=1196, z=7} })



    keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Moge cie zabrac na {earth}, {namek}, {vegeta}, {abyss}, {konats}, {hz}, {colloseum}, {bandit island}, {inferno}, {zuna}.'})
    keywordHandler:addKeyword({'praca'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Jestem Gate Keaper.'})
       
	
-- Makes sure the npc reacts when you say hi, bye etc.
        npcHandler:addModule(FocusModule:new())