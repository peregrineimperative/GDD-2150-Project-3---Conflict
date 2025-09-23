//If there is an active card, and there is a slot to drop that card into, determine the validity of that move.
if (global.active_card != noone && global.next_slot != noone){
	
	check_next_slot()
	
//If the first case is not true (that is, there is no viable next_slot) the card will snap back to its previous position.
} else if (global.active_card != noone && global.prev_slot != noone) {	
	
	snap_to_slot(global.active_card, global.prev_slot);	
	
}

//Set all cards as not being dragged
with obj_card {
	is_dragging = false;
}

//Reset next_slot
global.next_slot = noone;

