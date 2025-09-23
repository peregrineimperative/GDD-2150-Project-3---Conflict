draw_self();

if (instance_exists(attacker)){
	with attacker {
		current_slot = noone;
		draw_self();
		x = obj_popup_box.x - 100;
		y = obj_popup_box.y;
	}
}

if (instance_exists(defender)){
	with defender {
		current_slot = noone;
		draw_self();
		x = obj_popup_box.x + 100;
		y = obj_popup_box.y;
		//image_xscale
	}
}

if (instance_exists(ok_button)){
	with ok_button {
		draw_self();
		x = obj_popup_box.x;
		y = obj_popup_box.y + 50;
	}
}