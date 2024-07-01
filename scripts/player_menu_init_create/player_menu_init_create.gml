// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_menu_init_create(_player_number){
	with instance_create_layer(x,y,"Instances",oMenuInit) {
		player_number = _player_number;
	} 
	

}