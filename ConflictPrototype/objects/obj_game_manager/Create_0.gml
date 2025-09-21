global.active_card = noone;
global.prev_slot = noone;
global.next_slot = noone;
//Instantiate other game systems

//Instantiate game camera

//Keep track of turn order





//Test stuff please ignore
spawn_card(100, 200, "Cards", "Army", 1, 1, 1);
global.highlight = instance_create_layer(x, y, "Cards", obj_card_slot_highlight);
//spawn_card(300, 200, "Cards", "Army", 1, 1, 1);

test_row = spawn_slot_row("Player1", "Cards", 200, 200, 0, 3)