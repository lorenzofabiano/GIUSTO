// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//show_debug_message("change volume to "+string(argument[0]));

//if (instance_exists(oMainMenu)) {
function change_volume() {
	var type = menu_option[page];
	switch(type) {
		case 0: audio_master_gain(argument0); break;
		case 1: audio_group_set_gain(sound_effects, argument0, 0); break;
		case 2:  audio_group_set_gain(music, argument0, 0); break;
	}
}
//}