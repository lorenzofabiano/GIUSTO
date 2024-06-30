/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button_pressed(mb_left)) && point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+sprite_height) {
	player_init(player_number);
	instance_destroy();
}