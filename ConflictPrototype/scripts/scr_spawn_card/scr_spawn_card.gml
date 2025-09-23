///Call this function to make new cards
// requires x and y position (should match the x/y position of the desired card slot)
// name of card is probably standard for the prototype, but this leaves the door open for specific types
// faction is the player (can be changed to be a more flavorful name, maybe, but also may just reference the index of a faction array, depending on implementation)
// after that, instantiate the desired stats

function spawn_card(_x, _y, _name, _faction){	
	
    var inst = instance_create_layer(_x, _y, "Cards", obj_card); //create card object at desired location, on the card layer
	var _str = 0
	var _tac = 0
	var _spd = 0
	switch(_name){
		case "chivalry":
			inst.sprite_index = spr_chivalry
			_str = 5
			_tac = 5
			_spd = 5
			break;
		case "ironclad":
			inst.sprite_index = spr_ironclad
			_str = 9
			_tac = 2
			_spd = 1
			break;
		case "spearman":
			inst.sprite_index = spr_spearman
			_str = 3
			_tac = 7
			_spd = 6
			break;
		case "fool":
			inst.sprite_index = spr_fool
			_str = 1
			_tac = 0
			_spd = 1
			break;
		case "lich":
			inst.sprite_index = spr_lich
			_str = 4
			_tac = 9
			_spd = 3
			break;
		case "skeleton":
			inst.sprite_index = spr_skeleton
			_str = 1
			_tac = 9
			_spd = 6
			break;
		case "archer":
			inst.sprite_index = spr_archer
			_str = 2
			_tac = 6
			_spd = 9
			break;
		case "cannon":
			inst.sprite_index = spr_cannon
			_str = 8
			_tac = 0
			_spd = 6
			break;
		case "wizard":
			inst.sprite_index = spr_wizard
			_str = 7
			_tac = 8
			_spd = 2
			break;
	}
	
inst.image_xscale = 0.65
inst.image_yscale = 0.65
	
	var card = new card(_name,_faction, _str, _tac, _spd); //build card according to the card constructor
    
	inst.set_card(card);
	
	return inst;

}