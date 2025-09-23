//Check to see if there is an active card
if (global.active_card != noone){
	//If there is an active card, and it is currently being dragged (set in global left pressed)
	if (global.active_card.is_dragging){	
		
		with global.active_card{
			
			//Determine if there is a currently-designated next slot
			var _inst = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_card_slot, true, true)
			if (_inst != noone)
			{
				if(position_meeting(_inst.x, _inst.y, id))
				{
					global.next_slot = _inst;
					_inst.is_highlighted = true;
					if (_inst.is_occupied){
						global.target_card = _inst.occupant;
					}
				} else {
					_inst.is_highlighted = false;	
				}
			} else {
				global.next_slot = noone;
			}			
		}
	} 
} 


//Add enemy turn calculations here
//Need turn system before this will work
//troopStrength = true


show_debug_log(true)




//enemy takes turn
if !playerTurn
{
	
	/* example of if statement used to determine weighting of different options
if troopStrength >= playerStrength
{
	higherStrength = true
	attackWeight += 7
}
*/
	
	//Add extra weight types HERE !!!
	var sumValue = (attackWeight+defenseWeight+econWeight)
	//Set the minimum value to a very small number to avoid edge case of picking
	//exactly 0 and causing the for loop to not get run at all
	randomNumber = random_range(0.0001,sumValue)
	show_debug_message("randomly rolled number: " + string(randomNumber))
	
	//Makes a list of weights to use values later
	var weightedList = ds_list_create()
	ds_list_add(weightedList, attackWeight)
	ds_list_add(weightedList, defenseWeight)
	ds_list_add(weightedList, econWeight)
	
	//Sets initial cutoffPoint value
	cutoffPoint = 0
	
	//enemy looks to see which area the number falls into
	//and then picks an option accordingly
	for(var i = 0; randomNumber > cutoffPoint; i ++)
	{

		cutoffPoint += weightedList[|i]
		
		enemyTurnType = i
	
		show_debug_message("within range: "+ string(cutoffPoint))
		show_debug_message ("Enemy turn type is: " + string(enemyTurnType))

	}
	
	//clean up
	ds_list_destroy(weightedList)
	
	//Add option ACTIONS HERE
	switch(enemyTurnType)
	{
		case 0:
		//choose among a list of attacking options
		
		case 1:
		//choose from defensive options
		
		case 2:
		//choose from econ options
	}
	
	playerTurn = true

}


