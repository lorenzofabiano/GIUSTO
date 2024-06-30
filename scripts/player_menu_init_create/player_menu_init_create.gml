// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_menu_init_create(_player_number){
	with instance_create_layer(x,y,"Instances",oMenuInit) {
		player_number = _player_number;
	}
	
	switch(_player_number) {
	
	case 1:
		global.player1_exists = true;
	break;
		
	case 2:
		global.player2_exists = true;
	break;
	
	case 3:
		global.player3_exists = true;
	break;
	
	case 4:
		global.player4_exists = true;
	break;
	
	}
}