//card becomes active in the obj_card mouse over event, if no other card is currently the active card

//if there is an active card, clicking/holding will cause it to start being dragged.

if (global.active_card != noone) {		
	
    with (global.active_card){
		is_dragging = true;
		drag_dx = mouse_x - x;
		drag_dy = mouse_y - y;
	}
	
    //Record slot card is being dragged from, so it can be returned to if necessary.
    global.prev_slot = collision_point(mouse_x, mouse_y, obj_card_slot, true, true);
    if (global.prev_slot != noone) {
        with (global.prev_slot) {
			is_occupied = false; 
			occupant = noone; 
		}        
    }
	
	
}