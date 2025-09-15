

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


