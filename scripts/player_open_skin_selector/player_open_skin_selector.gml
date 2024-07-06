function player_open_skin_selector(){
	with instance_create_layer(x,y,"Instances",obj_skin_selector) {

		player_number = other.player_number;
		
		var _f = function(_element, _index){
		    return (_element == global.player_skin[other.player_number-1]);
		}
		var _array = global.skins;
		var _index = array_find_index(_array, _f);
		
		current_skin = _index;

		//show_debug_message("I'm the open skin selector script and my player number is: " + string(player_number));
	}
}