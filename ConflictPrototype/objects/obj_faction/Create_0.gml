//---Resources--
iron = 0;
science = 0;
horses = 0;

//---Motif---
color_overlay = #000000;

//index = -1;
//name = "";
is_human = false;
eliminated = false;		
		
board = instance_create_depth(x, y, BOARD_D, obj_player_board,
{
	faction: id
}
)
		
function is_active(){
	return !self.eliminated;
}
		
function begin_turn (){
				
}		

