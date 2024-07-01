// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//Menu(mouse_x,mouse_y,[["Fai una cosa", funzione_fai_una_cosa],["Niente", -1],["Di niente",-1]],"Choose an option!",1-4);
function player_init(_x,_y,_options,_description = -1,_player_number = -1){
	
	
	//switch(_player_number) {	
	//	case 1:
	//		global.player1_exists = true;
	//	break;
		
	//	case 2:
	//		global.player2_exists = true;
	//	break;
	
	//	case 3:
	//		global.player3_exists = true;
	//	break;
	
	//	case 4:
	//		global.player4_exists = true;
	//	break;
		
	//	default:
	//	break;
	//}


	with(instance_create_depth(_x,_y,-999,oMenu)) {
		options = _options;
		description = _description;
		player_number = _player_number;
		optionsCount = array_length(_options)
		hovermarker = "* ";
		show_debug_message("My player number is: " + string(_player_number));
		//hovermarker = sCursor;
		
		//Set up size
		margin = 8;
		//Set your font
		//draw_set_font(yourFont);
		
		width = 1;
		if(_description != -1) width = max(width,string_width(_description));
		for (var i = 0; i < optionsCount; i++) {
			width = max(width,string_width(_options[i][0]));
		}
		width += string_width(hovermarker);
		heightLine = 17;
		height = heightLine * (optionsCount + !(description == -1));
		
		widthFull = width + margin * 2;
		heightFull = height + margin * 2;
	}
}