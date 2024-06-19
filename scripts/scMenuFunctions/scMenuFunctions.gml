// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_menu_page(){
	var arg, i = 0;
	repeat(argument_count) {
		arg[i] = argument[i];
		i++;
	}

	var ds_grid_id = ds_grid_create(5, argument_count);

	i = 0; 	
	repeat(argument_count){
		var array = arg[i];
		var array_len = array_length(array);
		
		var xx = 0;
		repeat (array_len){
			ds_grid_id[# xx, i] = array[xx];
			xx++;
		}
		
		i++;
	}

	
	return ds_grid_id;

}

function start_game(){
	
}

function change_room(){}			
function settings_page(){}
function exit_game(){}
function toggle_fullscreen(){}
function switch_player_input_page(){}
function change_volume(){}