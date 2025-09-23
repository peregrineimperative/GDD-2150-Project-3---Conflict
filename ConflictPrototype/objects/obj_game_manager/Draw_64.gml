//testing, etc.
draw_text(10, 10, "Active card: " + string(global.active_card));
draw_text(10, 20, "Next slot: " + string(global.next_slot));
if global.next_slot != noone { draw_text(10, 30, "Next slot faction: " + global.next_slot.faction.name); }
draw_text(10, 40, "Previous slot: " + string(global.prev_slot));
if global.prev_slot != noone { draw_text(10, 50, "Previous slot faction: " + global.prev_slot.faction.name); }

draw_text(10, 60, "Target card: " + string(global.target_card));


//if (instance_exists(global.active_card)){
	
//	with attacker {
//		current_slot = noone;
//		draw_self();
//		x = obj_popup_box.x - 100;
//		y = obj_popup_box.y;
//	}
//}