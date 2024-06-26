/// @description Insert description here
// You can write your code in this editor
if (!global.pause) exit;

input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(global.key_enter);

var ds_ = menu_pages[page]
var ds_height = ds_grid_height(ds_);

if (inputting) {

	switch(ds_[# 1, menu_option[page]]) {
		case menu_element_type.shift:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				
				//audio
				ds_[# 3,  menu_option[page]] += hinput;
				ds_[# 3,  menu_option[page]] = clamp(ds_[# 3,  menu_option[page]], 0, array_length(ds_[# 4,  menu_option[page]])-1);
	
			}
		break;
		
		
		case menu_element_type.slider:
		
			switch(menu_option[page]){
				
				case 0: if(!audio_is_playing(snMASTER)) audio_play_sound(snMASTER,1,0); break;
				case 1: if(!audio_is_playing(snSOUND)) audio_play_sound(snSOUND,1,0);  break;
				case 2: if(!audio_is_playing(snMUSIC)) audio_play_sound(snMUSIC,1,0);  break;
				
			}
			
			
			var hinput = keyboard_check(global.key_right) - keyboard_check(global.key_left);
			if(hinput != 0){
				
				//audio
				ds_[# 3,  menu_option[page]] += hinput*.01;
				ds_[# 3,  menu_option[page]] = clamp(ds_[# 3,  menu_option[page]], 0, 1);
	
			}
		break;
			
		case menu_element_type.toggle:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				
				//audio
				ds_[# 3,  menu_option[page]] += hinput;
				ds_[# 3,  menu_option[page]] = clamp(ds_[# 3,  menu_option[page]], 0, 1);
	
			}
		break;
		
		
		case menu_element_type.input:
			var kk = keyboard_lastkey;
			if(kk != vk_enter) {
			
				if(kk != ds_[# 3, menu_option[page]]) // audio
				ds_[# 3, menu_option[page]] = kk;
				variable_global_set(ds_[# 2, menu_option[page]], kk);
		
			}
		
		break;
	}

} else {
	var ochange = input_down_p - input_up_p;
	if (ochange !=0) {
		menu_option[page] += ochange;
		if(menu_option[page] > ds_height-1) menu_option[page] = 0;
		if(menu_option[page] < 0) menu_option[page] = ds_height -1;
	}
}

if (input_enter_p) {
	switch(ds_[# 1, menu_option[page]]) {
		case menu_element_type.script_runner: script_execute(ds_[# 2, menu_option[page]]); break;
		case menu_element_type.page_transfer: page = ds_[# 2, menu_option[page]]; break;
		case menu_element_type.shift:
		case menu_element_type.slider:
		case menu_element_type.toggle: if(inputting){ script_execute(ds_[# 2, menu_option[page]],ds_[# 3, menu_option[page]]) };
		case menu_element_type.input:
			inputting = !inputting;
			break;
	}
	
	//audio
}