/// This function processes combat between two cards.

function scr_combat(){
	//Determine who deals damage first based on relative speeds.
	//Card that moves first should deal damage, then card that moves second. If tie, should be simultaneous
	//Current plan for damage:
	//With no other stats, deal ceiling(strength * (1d[dicesize] / [dicesize])) to one another
	//Tactics serves as both a defensive and offensive modifier.
	// Consider manipulating dicesize

}

function dice_roll(_dice_size){
	return (irandom_range(1, _dice_size))
}