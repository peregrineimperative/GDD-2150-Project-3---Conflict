//---Game Board Data---
faction = noone;

frontline_slots = 
	spawn_slot_row(
		self, 
		faction, 
		"Cards", 
		x + CARD_BUFFER, 
		y + CARD_BUFFER, 
		0, 
		3
	);

backline_slots = 
	spawn_slot_row(
		self, 
		faction, 
		"Cards", 
		x + CARD_BUFFER, 
		y + (CARD_BUFFER *2) + CARD_H, 
		0, 
		3
	);
