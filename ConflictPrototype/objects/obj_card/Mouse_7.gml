if (is_dragging) {
    is_dragging = false;
    depth = -y;
   
   //check for valid card slot (come back to this)
   //if (point_in_rectangle(x, y, slot_x1, slot_y1, slot_x2, slot_y2)) { x = slot_x; y = slot_y; }
	//// based on tutorial below, needs cleanup
//	var nearest_slot = noone;

//    // Find nearest open slot within snap_radius
//    with (obj_card_slot) {
//        if (!is_occupied) {
            
//            var d = point_distance(other.x, other.y, x, y);
//            if (d < other.snap_radius) {
                
//                nearest_slot = other.id;
//            }
//        }
//    }

//	//clean this up
//    if (best_slot != noone) {
//        // Snap to the chosen slot and claim it
        
//        best_slot.set_occupied(true, other.id);
        
//    } else if (prev_slot != noone && !prev_slot.is_occupied) {
//        // Restore to the previous slot if we had one and it’s still free
//        with (prev_slot) {
//            set_occupied(true, other.id);
//        }
//    } else {
//        // No slot: return to previous slot
//        //x = home_x;
//        //y = home_y;
//        current_slot = noone;
//    }

//    prev_slot = noone;
//}

 
 