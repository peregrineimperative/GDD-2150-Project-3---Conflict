//Check to see if there is an active card
if (global.active_card != noone){
	//If there is an active card, and it is currently being dragged (set in global left pressed)
	if (global.active_card.is_dragging){	
		
		with global.active_card{
			
			//Determine if there is a currently-designated next slot
			var _inst = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_card_slot, true, true)
			if (_inst != noone)
			{
				if(position_meeting(_inst.x, _inst.y, id))
				{
					global.next_slot = _inst;
					_inst.is_highlighted = true;
					if (_inst.is_occupied){
						global.target_card = _inst.occupant;
					}
				} else {
					_inst.is_highlighted = false;	
				}
			} else {
				global.next_slot = noone;
			}			
		}
	} 
} 