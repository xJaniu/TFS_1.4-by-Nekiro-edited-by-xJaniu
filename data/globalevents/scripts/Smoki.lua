local pos = Position(1000, 1000, 7)
local bosses = {"[BOSS] Ryan Shenron", "[BOSS] Uu Shenron", "[BOSS] Ryuu Shenron", "[BOSS] Chi Shenron", "[BOSS] Suu Shenron", "[BOSS] San Shenron", "[BOSS] Omega Shenron"}

function onTime(interval)

	local boss = bosses[math.random(#bosses)]
	doCreateMonster(boss, pos)
	doBroadcastMessage(boss.." has spawned.", MESSAGE_STATUS_WARNING)
	return true
end