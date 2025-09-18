if (!is_dragging){
	depth = -y;
	if (current_slot != noone){
		x = anchor_slot.x;
		y = anchor_slot.y;
	}
}

if (is_dragging){
	x = mouse_x - drag_dx;
	y = mouse_y - drag_dy;
}