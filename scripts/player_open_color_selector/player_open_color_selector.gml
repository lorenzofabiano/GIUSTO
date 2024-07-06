// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_open_color_selector(){
	with instance_create_layer(x,y,"Instances",obj_color_selector) {
		player_number = other.player_number;
		
		var _f = function(_element, _index){
		    return (_element == global.player_color[other.player_number-1]);
		}
		var _array = global.colors;
		var _index = array_find_index(_array, _f);
		
		current_color = _index;
		//show_debug_message("I'm the open color selector script and my player number is: " + string(player_number));
	}
}