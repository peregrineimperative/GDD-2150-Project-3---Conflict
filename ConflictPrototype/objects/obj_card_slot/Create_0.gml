occupied = false;
card_in_slot = noone;

row_index = -1;
row_ref = noone

is_occupied = function(){
	return occupied;	
}

set_occupied = function(value, obj_card){
	occupied = value;
	card_in_slot = obj_card;
}

sprite_index = spr_card_slot;