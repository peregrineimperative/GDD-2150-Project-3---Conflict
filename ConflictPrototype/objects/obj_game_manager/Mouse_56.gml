if (global.active_card != noone && global.next_slot != noone){
	with global.active_card{
		x = global.next_slot.x;
		y = global.next_slot.y;
		current_slot = global.next_slot;
	}
	
} else if (global.active_card != noone && global.prev_slot != noone) {	
	with global.active_card{
		x = (global.prev_slot.x - (sprite_width /2));
		y = (global.prev_slot.y - (sprite_height /2));
		current_slot = global.prev_slot;
	}
}

with obj_card {
	is_dragging = false;
}

global.next_slot = noone;

