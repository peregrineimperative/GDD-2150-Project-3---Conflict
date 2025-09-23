//Update dragged card position on draw step to ensure it keeps up with mouse movement

if (global.active_card != noone && global.active_card.is_dragging){
	with global.active_card
	{
			//active card position
			x = mouse_x - drag_dx;
			y = mouse_y - drag_dy;	
			depth = -9001; //bring card to front if being dragged!
	}
}