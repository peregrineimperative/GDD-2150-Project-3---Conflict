depth = POPUP_D;
text = array_create(3, "");
attacker = noone;
defender = noone;

switch (box_type){
	case "Combat":
		attacker = global.active_card.copy();
		defender = global.target_card.copy();
		for (var i = 0; i < array_length(text); i++){
			draw_text(x, y - 20 + (i * 10), text[i])
		}
		
		ok_button = instance_create_depth(x, y + 20, POPUP_INFO_D, obj_ok_button,{
			parent: id
		})	
	break;
	
	case UnitManagement:
	break;
};