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

	local travelNode = keywordHandler:addKeyword({'kame island'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=888, y=957, z=7} })
	local travelNode = keywordHandler:addKeyword({'city'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=922, y=1032, z=7} })

    keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Moge cie zabrac na "Kame Island", "City".'})
   -- keywordHandler:addKeyword({'praca'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Jestem Gate Keaper.'})
       
	
-- Makes sure the npc reacts when you say hi, bye etc.
        npcHandler:addModule(FocusModule:new())