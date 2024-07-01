// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_open_name_insert(){
	with instance_create_layer(x,y,"Instances",obj_name_insert) {
		player_number = other.player_number;
		show_debug_message("I'm the open name selector script and my player number is: " + string(player_number));
	}
}