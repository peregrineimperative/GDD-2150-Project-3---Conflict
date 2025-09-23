///Confirms validity of moving cards between slots

function check_next_slot(){
	var _prev = global.prev_slot;
	var _next = global.next_slot;
	var _active = global.active_card;
	var _target = global.target_card;
	
	//This shouldn't occur, as all cards should be instantiated with a current slot. But for testing/covering bases, etc.
	if (_prev == noone){
		
		snap_to_slot(_active, _next);
		
	} else {
	
		//Make sure that next_slot is a valid move (owner backline to owner frontline, or owner frontline to enemy frontline)
		if (_prev.row_ref.get_name() == "Backline"){
			//If the previous slot is a backline slot, make sure the next slot belongs to the same faction.
			//If not, bounce back to previous slot.
			if (_next.faction != _prev.faction){			
				snap_to_slot(_active, _prev);
			} else {
				if (!_next.is_occupied){				
					snap_to_slot(_active, _next);
					_prev.set_occupied(false, noone);
				} else {
					_action = _active.faction == _next.occupant.faction ? combine(_active, _target) : combat(_active, _target);
				}
			}
		}
	
		//Cards moving from frontline positions should be able to move to any other frontline position
		if (_prev.row_ref.get_name() == "Frontline"){
			if (_next.row_ref.get_name() != _prev.row_ref.get_name()){
				//Bounce back if attempting to move to backline
				snap_to_slot(_active, _prev);
			} else {
				//If trying to move to unoccupied slot, snap to that slot
				if (!_next.is_occupied){				
					snap_to_slot(_active, _next);
					_prev.set_occupied(false, noone);
				} else {
					//If occupied, determine if the faction of the active card is the same as the faction of the card in the desired slot.
					//If ally card, combine the two
					//If enemy card, enter combat					
					_action = _active.faction == _next.occupant.faction ? combine(_active, _target) : combat(_active, _target);
				}			
			}		
		}	
	}
}