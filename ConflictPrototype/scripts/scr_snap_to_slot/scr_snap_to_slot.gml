
function snap_to_slot(_card, _slot){
	with _card{
		x = _slot.x;
		y = _slot.y;
		current_slot = _slot;
		current_slot.set_occupied(true, _card)
	}
}