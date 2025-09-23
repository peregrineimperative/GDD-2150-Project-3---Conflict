//---Game Board Data---
//faction = noone;

frontline_slots = 
	spawn_slot_row(
		faction,
		self,
		"Cards", 
		x - SLOT_W, 
		y - SLOT_H + CARD_BUFFER, 
		0, 
		3,
		"Frontline"
	);

backline_slots = 
	spawn_slot_row(
		faction,
		self,
		"Cards", 
		x - SLOT_W, 
		y + SLOT_H - CARD_BUFFER, 
		0, 
		3,
		"Backline"
	);


