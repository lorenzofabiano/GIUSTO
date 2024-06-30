// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_open_name_insert(_player_number){
	with instance_create_layer(x,y,"Instances",obj_name_insert) {
		player_number = _player_number;
	}
}