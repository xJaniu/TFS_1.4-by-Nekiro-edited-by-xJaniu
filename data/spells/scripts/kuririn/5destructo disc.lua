local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, 60)

	function onGetFormulaValues(player, level, magicLevel)
		local formula = (player:getEffectiveSkillLevel(SKILL_FISHING))/100
		local min = ((level * 75) * (magicLevel / 95) * formula)*1.20
		local max = ((level * 80) * (magicLevel / 105) * formula)*1.20
		return -min, -max
	end
	
combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
