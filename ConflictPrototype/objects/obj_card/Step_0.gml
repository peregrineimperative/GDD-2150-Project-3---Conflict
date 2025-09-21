if (!is_dragging){
	depth = -y; //fix this
	if (current_slot != noone){
		x = current_slot.x;
		y = current_slot.y;
	}
}

//if (is_dragging){	
	
//	x = mouse_x - drag_dx;
//	y = mouse_y - drag_dy;
	
//	depth = -9001; //bring card to front if being dragged!	
	
//	if (global.next_slot == noone)
//	{
//		var _inst = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_card_slot, true, true)
//		if (_inst != noone)
//		{
//			if(position_meeting(_inst.x, _inst.y, id))
//			{
//				global.next_slot = _inst;
//				_inst.is_highlighted = true;
//			} else {
//				_inst.is_highlighted = false;	
//			}
//		}
//	 } else {
//		global.next_slot = noone;
//	}
//}



