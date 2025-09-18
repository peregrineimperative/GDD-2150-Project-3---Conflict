//---Card slot data---
is_occupied = false;
occupant = noone;

//---Row information---
row_index = -1;
row_ref = noone


set_occupied = function(value, obj_card){
	is_occupied = value;
	occupant = obj_card;
}

sprite_index = spr_card_slot;