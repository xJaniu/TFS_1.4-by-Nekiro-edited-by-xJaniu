local combat0 = createCombatObject()
local combat1 = createCombatObject()
local combat2 = createCombatObject()
local combat3 = createCombatObject()

setCombatParam(combat0, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)

local arr0 = {
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
}

local arr1 = {
{0, 0, 0, 0, 0, 0, 0},
{0, 1, 1, 0, 0, 1, 0},
{0, 1, 1, 1, 1, 1, 2},
{0, 1, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0},
}

local arr2 = {
{0, 0, 0, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{0, 1, 1, 1, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 0, 0},
}

local arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 1, 1, 0},
{0, 2, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 0, 0, 1, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0},
}

local area0 = createCombatArea(arr0)
local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)

setCombatArea(combat0, area0)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)

local effect = {
    [0] = {look=270, x=1, y=-1, z=0, combat=combat0},
    [1] = {look=272, x=5, y=1, z=0, combat=combat1},
    [2] = {look=271, x=1, y=5, z=0, combat=combat2},
    [3] = {look=269, x=-1, y=1, z=0, combat=combat3}
}


	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.40
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.40
		return -min, -max
	end

	combat0:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
	
	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.40
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.40
		return -min, -max
	end
	
	combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
	
	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.40
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.40
		return -min, -max
	end
	
	combat2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
	
	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.40
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.40
		return -min, -max
	end
	
	combat3:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function ultimatemasenko1(cid, variant)

		local creature = Creature(cid)
		
		if not creature then
		return end
		
		local position = creature:getPosition()
		local direction = creature:getDirection()
		local dir=effect[direction]

		doCombat(cid, dir.combat, numberToVariant(cid))
		
		position = Position(position.x+dir.x, position.y+dir.y, position.z+dir.z)
		position:sendMagicEffect(dir.look)
		doCreatureSay(cid, 'Attack!', TALKTYPE_ORANGE_1)

end

function onCastSpell(creature, var)

	addEvent(doCreatureSay, 1000, creature.uid, "Final!", TALKTYPE_ORANGE_1)
	addEvent(doCreatureSay, 2000, creature.uid, "Shine!", TALKTYPE_ORANGE_1)
    addEvent(ultimatemasenko1,3000,creature.uid, var)
return true
end
