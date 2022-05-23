local saga = {
	--name = storage
	[-1] = {desc = "znajdz sage 1"},
	[1] = {desc = "[S1] Find dragon ball four star!"},
	[2] = {desc = "[S2] Fight with weird fast car!"},
	[3] = {desc = "[S3] Talk with Bulma about Dragon Balls!"},
	[4] = {desc = "[S4] Fight with Pterodactyl!"},
	[5] = {desc = "[S5] Fight with Pandorian Boss to continue travel!"},	
	[6] = {desc = "[S6] Talk With Umigame!"},
	[7] = {desc = "[S7] Go with Umigame to Kame Island and talk with Master Roshi!"},
	[8] = {desc = "[S8] Bring Master Roshi Playboy!"},
	[9] = {desc = "[S9] Go to Aru Village and talk with citizens about dangerous!" },
	[10] = {desc = "[S10] Fight With Oolong Demon Form!" },
	[11] = {desc = "[S11] Fight with Yamcha on Desert!" },
	[12] = {desc = "[S12] Go to Fire Mountain and put the fire out with the Wave!" },
	[13] = {desc = "[S13] Talk with Ox-King!" },
	[14] = {desc = "[S14] Fight with Pilaf Gang!" },
	[15] = {desc = "You have ended Dragon Ball: Reborn Saga! Wait for more" }
	
}

function onSay(cid, words, param, channel)
	queststatus = getPlayerStorageValue(cid,30500)
	local sagaid = saga[queststatus]
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, sagaid.desc)	
	
	return false
end

