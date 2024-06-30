// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_set_name(_text,_player_number){
		var player_number_text = "";
		switch(_player_number) {
		case 1 :
			global.player1_name = _text;
			player_number_text = global.player1_name;
		break;
		case 2 :
			global.player2_name = _text;
			player_number_text = global.player2_name;
		break;
		case 3 :
			global.player3_name = _text;
			player_number_text = global.player3_name;
		break;
		case 4 :
			global.player4_name = _text;
			player_number_text = global.player4_name;
		break;
	}

	player_init(x,y,[["Nome", player_open_name_insert],["Skin", -1],["Controlli",-1],["Rimuovi",player_remove]],string(player_number_text),player_number);
}