
function spawn_faction(_index, _name, _is_human){
	
	var faction = {
		index: _index,
		name: _name,
		is_human: _is_human,
		eliminated: false,
		turn_active: false,
		
		is_active: function (){
			return !self.eliminated;
		},
		
		
	}
	
}