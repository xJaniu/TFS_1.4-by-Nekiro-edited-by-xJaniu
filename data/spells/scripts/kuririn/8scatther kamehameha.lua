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
{0, 0, 0, 2, 0, 0, 0},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 0, 0, 0, 0},
{0, 0, 0, 0, 0},
}

local arr1 = {
{1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 2},
{1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 1, 0},
}

local arr2 = {
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{0, 0, 0, 2, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
}

local arr3 = {
{0, 0, 1, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1},
{0, 2, 1, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1},
{0, 0, 1, 1, 1, 1, 1, 1},
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
    [0] = {look=289, x=1, y=-1, z=0, combat=combat0},
    [1] = {look=291, x=1, y=1, z=0, combat=combat1},
    [2] = {look=290, x=1, y=5, z=0, combat=combat2},
    [3] = {look=288, x=-1, y=1, z=0, combat=combat3}
}


	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.45
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.45
		return -min, -max
	end

	combat0:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
	
	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.45
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.45
		return -min, -max
	end
	
	combat1:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
	
	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.45
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.45
		return -min, -max
	end
	
	combat2:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")
	
	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.45
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.45
		return -min, -max
	end
	
	combat3:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function scattherkame1(cid, variant)

		local creature = Creature(cid)
		
		if not creature then
		return end
		
		local position = creature:getPosition()
		local direction = creature:getDirection()
		local dir=effect[direction]

		doCombat(cid, dir.combat, numberToVariant(cid))
		
		position = Position(position.x+dir.x, position.y+dir.y, position.z+dir.z)
		position:sendMagicEffect(dir.look)
		doCreatureSay(cid, 'Kamehameha!', TALKTYPE_ORANGE_1)

end

function onCastSpell(creature, var)
	addEvent(doCreatureSay, 1500, creature.uid, "Scatther!", TALKTYPE_ORANGE_1)
    addEvent(scattherkame1,3000,creature.uid, var)
return true
end
