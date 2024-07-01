// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_remove(){
/*		switch(player_number) {
		case 1 :
			global.player1_exists = false;
		break;
		case 2 :
			global.player2_exists = false;
		break;
		case 3 :
			global.player3_exists = false;
		break;
		case 4 :
			global.player4_exists = false;
		break;
	}*/
	global.player_exists[player_number-1] = false;
	player_menu_init_create(player_number);
}