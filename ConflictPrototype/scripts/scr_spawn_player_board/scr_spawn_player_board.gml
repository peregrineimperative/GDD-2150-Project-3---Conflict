function spawn_player_board(_faction, _layer, _origin_pos, _angle){
	var _board = {
		faction: _faction,
		layer: _layer,
		origin_x: _origin_pos.x,
		origin_y: _origin_pos.y,
		
		frontline_row: noone,
		backline_row: noone		
	};
	
	_board.frontline_row = 
		spawn_slot_row(
			self, 
			layer, 
			_origin_pos.x + CARD_BUFFER, 
			_origin_pos.y + CARD_BUFFER,
			_angle,
			3
		);
		
	_board.backline_row = 
		spawn_slot_row(
			self, 
			layer, 
			_origin_pos.x + CARD_BUFFER, 
			_origin_pos.y + (2 * CARD_BUFFER) + CARD_H,
			_angle,
			3
		);
	
	return _board;
}