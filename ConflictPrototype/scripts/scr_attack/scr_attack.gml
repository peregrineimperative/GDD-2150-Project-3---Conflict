
function damage_formula(unit, dice_number)
{
	unit.temporary_roll = dice_roll(dice_number) + unit.card_tactics
	if unit.temporary_roll > dice_number
	{
		unit.temporary_roll = dice_number
	}
	
	unit.finaldamage = (unit.card_strength * unit.temporary_roll) / dice_number
}

function SpeedCheck(attacker, defender){
	
	//if one side is faster, return the unit, otherwise set array size to 2 and return both
	if attacker.card_speed > defender.card_speed
	{
		return [attacker]
	}
	else if attack.card_speed < defender.card_speed
	{
		//defender.isFirst = true
		return [defender]
	}
	else
	{
		return [attacker, defender]	
		//attacker.isTied = true
		//defender.isTied = true
	}
}

function Attack(card1, card2)
{
	//show_debug_log(true)
	card1.final_damage = damage_formula(card1, 10)
	card2.card_strength -= card1.final_damage
	show_debug_message($"{card1} went first and with a strength of {card1.card_strength} dealt {card1.final_damage} damage.")
	
	card2.final_damage = damage_formula(card2, 10)
	card1.card_strength -= card2.final_damage
	show_debug_message($"{card2} went first and with a strength of {card2.card_strength} dealt {card2.final_damage} damage.")
	
}
