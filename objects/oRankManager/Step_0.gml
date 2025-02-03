/// @description Insert description here
// You can write your code in this editor
var _next = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

var _play_1st_music
if (_next) && !(space_or_click_disable) {

	counter = clamp(counter+1,-1,4);

	if (counter == 2) {
		audio_stop_sound(snDrumRoll);
		audio_play_sound(snMarioPartyWin1,1,0);
		space_or_click_disable = true;
		alarm[0] = 120;
	}

	if (counter < 3) audio_play_sound(snBang,1,0,1,0,1+counter/2);

	if (counter == 3) {
		audio_stop_all();
		audio_play_sound(snDing,1,0);
		audio_play_sound(getPostWinMusic(),1,1);
	}
	
	
}
if (counter > -1) && (counter < array_length(main_placements_array)) {
	main_placements_array[counter].currently_visible = true;
}

if (counter == 4) && (_next) {

	other_counter = clamp(other_counter+1,-1,4);
	if (other_counter < 4) {
		audio_play_sound(getGaspSound(),1,0);
	}
	
	if (other_counter == 4) room_goto(r_char_select);
}

if (other_counter > -1) && (other_counter < array_length(other_placements_array)) {
	other_placements_array[other_counter].currently_visible = true;
}
screen_fade = clamp(screen_fade-screen_fade_speed,0,1);