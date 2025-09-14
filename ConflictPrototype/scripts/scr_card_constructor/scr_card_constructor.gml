///Constructor class for cards instantiated at runtime

function card(_name, _faction, _strength, _tactics, _speed) constructor {

	static next_id = 1; //static variable to count up after the first time its called

	id = next_id++; //a newly made card should take the current id, then increment
	name = _name;

	//stat block; the st_ prefix is for consistency because speed is a built-in variable
	stats = {
	    st_strength: max(0, _strength),
	    st_tactics: max(0, _tactics),
	    st_speed: max(0, _speed)
	};

}