
function spawn_faction(_index, _name, _is_human, _pos_x, _pos_y){
	
	var faction = {
		index: _index,
		name: _name,
		is_human: _is_human,
		eliminated: false,
		faction_obj: instance_create_layer(_pos_x, _pos_y, "Cards", obj_faction, {
			faction : _name
		}),
		//player_state,
		
		is_active: function (){
			return !self.eliminated;
		},
		
		begin_turn: function (){
				
		}		
	}
	
	return faction;	
}