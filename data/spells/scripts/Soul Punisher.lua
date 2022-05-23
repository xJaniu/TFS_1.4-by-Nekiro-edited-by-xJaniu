local combat0 = createCombatObject()
local combat1 = createCombatObject()
local combat2 = createCombatObject()
local combat3 = createCombatObject()

setCombatParam(combat0, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)


setCombatFormula(combat0, COMBAT_FORMULA_LEVELMAGIC, -48.5, 0, -48.0, 0)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -48.5, 0, -48.0, 0)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -48.5, 0, -48.0, 0)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -48.5, 0, -48.0, 0)

local arr0 = {
{0, 0, 0, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{0, 0, 0, 0, 0},
}

local arr1 = {
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 2},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
}

local arr2 = {
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{0, 0, 1, 0, 0},
{0, 0, 2, 0, 0},
{0, 0, 0, 0, 0},
}

local arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0},
{0, 2, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0},
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
    [0] = {look=75, x=0, y=-1, z=0, combat=combat0},
    [1] = {look=74, x=4, y=0, z=0, combat=combat1},
    [2] = {look=75, x=0, y=4, z=0, combat=combat2},
    [3] = {look=74, x=-1, y=0, z=0, combat=combat3}
}


function soulpunisher1(cid)

		local creature = Creature(cid)
		
		if not creature then
		return end
		
		local position = creature:getPosition()
		local direction = creature:getDirection()
		local dir=effect[direction]
		
		doCombat(cid, dir.combat, numberToVariant(cid))
		position = Position(position.x+dir.x, position.y+dir.y, position.z+dir.z)
		position:sendMagicEffect(dir.look)
		doCreatureSay(cid, 'Punisher!', TALKTYPE_ORANGE_1)
end


function onCastSpell(creature, var)
	addEvent(doCreatureSay, 0, creature.uid, "Soul!", TALKTYPE_ORANGE_1)
    addEvent(soulpunisher1,1500,creature.uid)
return true
end
