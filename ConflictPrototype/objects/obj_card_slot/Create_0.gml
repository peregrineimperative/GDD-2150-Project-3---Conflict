//---Card slot data---
is_occupied = false;
is_hovered = false;
occupant = noone;
faction = noone;

is_highlighted = false; 

snap_x = x + sprite_width/2;
snap_y = y + sprite_height/2;
depth = SLOT_D;

//---Row information---
row_index = -1;
row_ref = noone;


set_occupied = function(value, obj_card){
	is_occupied = value;
	occupant = obj_card;
}

//sprite_index = spr_card_slot;