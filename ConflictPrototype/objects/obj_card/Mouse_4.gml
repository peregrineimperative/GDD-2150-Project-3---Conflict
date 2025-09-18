is_dragging = true;
drag_dx = mouse_x - x;
drag_dy = mouse_y - y;

// Bring to front while dragging
depth = -9999;

////


if (position_meeting(mouse_x, mouse_y, id)) {
    is_dragging = true;
    // Free current slot, remember it for restore if needed
    prev_slot = current_slot;
    if (prev_slot != noone) {
        with (prev_slot) {
			is_occupied = false; occupant = noone; 
		}
        current_slot = noone;
    }
}