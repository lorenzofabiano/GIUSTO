/// @description Insert description here
// You can write your code in this editor




switch(player_number) {
	case 1 :
		sprite_index = p1_start;
		x = display_get_gui_width()/5;
		y = display_get_gui_height()/3;
	break;
	
	case 2:
		sprite_index = p2_start;
		x = display_get_gui_width()/5*4;
		y = display_get_gui_height()/3;
	break;
	
	case 3:
		sprite_index = p3_start;
		x = display_get_gui_width()/5;
		y = display_get_gui_height()/3*2;
	break;
	
	case 4:
		sprite_index = p4_start;
		x = display_get_gui_width()/5*4;
		y = display_get_gui_height()/3*2;
	break;
	
	default:
		sprite_index = p1_start;
		x = 0;
		y = 0;
	break;
} 


var _spr_width = sprite_width;
var _spr_height = sprite_height;
var _spr_x_orig = x - _spr_width/2;
var _spr_y_orig = y - _spr_height/2;

if (mouse_check_button_pressed(mb_left)) && point_in_rectangle(mouse_x,mouse_y,_spr_x_orig,_spr_y_orig,_spr_x_orig+_spr_width,_spr_y_orig+_spr_height) {
	player_open_main_menu();
	audio_play_sound(snOk,1,0);
	instance_destroy();
}