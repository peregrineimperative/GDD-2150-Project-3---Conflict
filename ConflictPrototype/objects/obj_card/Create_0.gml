//---Card State---

is_hovered = false;
is_dragging = false;
//card_data = undefined;

//Slot the card is currently anchored to
current_slot  = noone;



//---Movement---
//Variables to make sure that the card doesn't immediately snap to the cursor
drag_dx = 0;
drag_dy = 0;

depth = CARD_D; //default card depth

////

copy = function(){
	return instance_copy(false)
}
