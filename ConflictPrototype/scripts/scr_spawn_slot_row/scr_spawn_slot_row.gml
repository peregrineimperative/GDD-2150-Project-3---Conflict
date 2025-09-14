///Generate card slots for a given board/faction.
//Cards slots are generated a row at a time instead of individually.

//Rows have three built-in functions:
	//at(i) returns the card slot at a given row position
	//get_open() returns the first empty card slot, if available
	//is_full() returns whether or not the row is full

function spawn_slot_row(_board, _faction, _layer, _start_x, _start_y, _board_angle, _count){	
	
	//Create a row struct to create a row of card slots at a time, associated with a given board, and whether it is a frontline or backline.
	var _row = {
		board: _board,
		layer: _layer,
		start_x: _start_x,
		start_y: _start_y,
		row_angle: _board_angle,
		count: _count,
		
		//Create an array of the desired size to hold card slot IDs
		slots: array_create(_count),
		
		//Return the slot at the given position i within the row, if it exists
		at: function(i) {
			return( i >= 0 && i < array_length(self.slots)) ? self.slots[i] : noone;
		},
		
		//Iterate through slots and return the first open slot, or noone if none are open.
		get_open: function() {
			//Iterate through however many slots there are (should always be 3, but flexibility is good)
			for (var i = 0; i < array_length(self.slots); ++i) {
				//Set s to current slot
				var s = self.slots[i];
				
				if (!s.is_occupied) {
					return s; //Return slot if not occupied
				}
			}
			return noone; //If all slots are occupied
		},
		
		//Check to see if a row is full; return false upon iterating over an empty slot.
		is_full: function(){
			for (var i = 0; i < array_length(self.slots); ++i) {
			    var s = self.slots[i];
			    if (!s.is_occupied) {
			        return false;
			    }
			}
			return true;
		}
	};
	
	// Create the slot instances and register them as belonging to the row
	for (var i = 0; i < _count; ++i) {
		
	    // Position each slot with a constant step in X, optional step in Y, based on the CARD_BUFFER size
	    var xx = _start_x + (i * (CARD_BUFFER + CARD_W));
	    //var yy = _start_y + i * spacing_y;

	    // Create the instance on the desired layer
	    var _inst = instance_create_layer(xx, _start_y, _layer, obj_card_slot);

	    // Row references to be held on the card slot itself
	    _inst.row_index = i; // index of this slot within the row
	    _inst.row_ref = _row; // pointer back to the row struct (possibly useful if we want to check if an entire row is clear.)

	    // Save the instance ID in the row’s array
	    _row.slots[i] = _inst;
	}
	
	return _row;
}