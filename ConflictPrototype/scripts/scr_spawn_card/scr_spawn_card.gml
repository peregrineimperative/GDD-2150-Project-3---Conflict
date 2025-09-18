///Call this function to make new cards
// requires x and y position (should match the x/y position of the desired card slot)
// name of card is probably standard for the prototype, but this leaves the door open for specific types
// faction is the player (can be changed to be a more flavorful name, maybe, but also may just reference the index of a faction array, depending on implementation)
// after that, instantiate the desired stats

function spawn_card(_x, _y, _name, _faction, _str, _tac, _spd){	
	
    var inst = instance_create_layer(_x, _y, "Cards", obj_card); //create card object at desired location, on the card layer
    
	var card = new card(_name,_faction, _str, _tac, _spd); //build card according to the card constructor
    
	inst.set_card(card);
	
	return inst;

}