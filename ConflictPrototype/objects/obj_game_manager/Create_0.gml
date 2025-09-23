//---Global Variables---
//very important please be gentle
global.active_card = noone;
global.target_card = noone;
global.prev_slot = noone;
global.next_slot = noone;
//Instantiate other game systems
randomize()

//Create highlight object
global.highlight = instance_create_depth(x, y, HIGHLIGHT_D, obj_card_slot_highlight);

//---Board Spawning Info---
board_positions = array_create(4, noone);
board_positions[0] = new vector2(room_width/2, room_height - ROOM_BUFFER);
board_positions[1] = new vector2(room_width - ROOM_BUFFER, room_height/2);
board_positions[2] = new vector2(room_width/2, ROOM_BUFFER);
board_positions[3] = new vector2(ROOM_BUFFER, room_height/2);


//---Faction Instantiation---
//Factions are either player or computer controlled

factions = array_create(4, noone)

//Player faction
factions[0] = instance_create_depth(board_positions[0].x, board_positions[0].y, BOARD_D, obj_faction,{
	index: 0,
	name: "Player",
	is_human: true,
	
})

//Computer factions
for (var i = 1; i < 4; i++){
	factions[i] = instance_create_depth(board_positions[i].x, board_positions[i].y, BOARD_D, obj_faction,{
		index: i,
		name: "Computer" + string(i),
		is_human: false,
		image_angle: 180
	})
}

//Instantiate game camera

//Keep track of turn order
playerTurn = false

//---Popup Box---
enum BoxType{
	Combat,
	UnitManagement
}
troopStrength = 2
enemyDecision = 0
isTrue = 2
higherStrength = false
playerStrength = 3




//Test stuff please ignore
spawn_card(100, 200, "Army", factions[0] , 1, 1, 1);

spawn_card(300, 300, "Army", factions[1] , 1, 1, 1);

//spawn_card(300, 200, "Cards", "Army", 1, 1, 1);

//test_row = spawn_slot_row("Player", noone, "Cards", 200, 200, 0, 3)
//placeholder values to demonstrate the random picking function
attackWeight = 5
defenseWeight = 3
econWeight = 2

enemyTurnType = 5
numberOfWeightedOptions = 3
randomNumber = 0
cutoffPoint = 0
