/// @description Insert description here
// You can write your code in this editor
var _players_number = array_length(names);
switch _players_number {
	case 1:
		start_x = x;
	break;
	
	case 2:
		start_x = x - margin_from_middle;
	break;
	
	case 3:
		start_x = x - margin_from_player;
	break;
	
	case 4:
		start_x = x - margin_from_middle - margin_from_player;
	break;
	
	default:
		start_x = 0;
	break;

}