global.active_card = noone;
global.prev_slot = noone;
global.next_slot = noone;

board_positions = array_create(4, noone);
board_positions[0] = new vector2(300, 450);
board_positions[1] = new vector2(450, 300);
board_positions[2] = new vector2(300, 150);
board_positions[3] = new vector2(150, 300);


//---Faction Instantiation---
//Factions are either player or computer controlled



factions = array_create(4, noone)
factions[0] = instance_create_depth(board_positions[0].x, board_positions[0].y, BOARD_D, obj_faction,{
	index: 0,
	name: "Player",
	is_human: true	
})

for (var i = 1; i < 4; i++){
	//factions[i] = spawn_faction(i, "Computer" + string(i), false, board_positions[i].x, board_positions[i].y);
	factions[i] = instance_create_depth(board_positions[i].x, board_positions[i].y, BOARD_D, obj_faction,{
		index: i,
		name: "Computer" + string(i),
		is_human: false	
	})
}



//Instantiate game camera

//Keep track of turn order





//Test stuff please ignore
spawn_card(100, 200, "Cards", "Army", 1, 1, 1);
global.highlight = instance_create_depth(x, y, HIGHLIGHT_D, obj_card_slot_highlight);
//spawn_card(300, 200, "Cards", "Army", 1, 1, 1);

//test_row = spawn_slot_row("Player", noone, "Cards", 200, 200, 0, 3)