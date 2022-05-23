local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
--combat:setParameter(COMBAT_PARAM_EFFECT, 112)
combat:setArea(createCombatArea(AREA_CIRCLE2X2))

	function onGetFormulaValues(player, level, magicLevel)

		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.05
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.05
		return -min, -max
	end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	local position = creature:getPosition()
	position = Position(position.x+2, position.y+2, position.z+0)
	position:sendMagicEffect(273)
	--return creature:getPosition():checkSightClear()
	return combat:execute(creature, variant)
end
