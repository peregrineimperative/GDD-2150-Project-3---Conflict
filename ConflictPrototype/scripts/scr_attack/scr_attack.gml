// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function damage_formula(unit, dice_number)
{
	temporary_roll = dice_roll(dice_number) + unit.card_tactics
	if temporary_roll > dice_number
	{
		temporary_roll = dicenumber
	}
	unit.finaldamage = (unit.card_strength * temporary_roll) / 10
}

function Attack(attacker, defender){
	
	
	if attacker.card_speed > defender.card_speed
	{
		defender.strength -= attacker.final_damage
	}
	else if attack.card_speed < defender.card_speed
	{
		defender.isFirst = true
	}
	else
	{
		attack.isTied = true
		defender.isTied = true
	}
	

}