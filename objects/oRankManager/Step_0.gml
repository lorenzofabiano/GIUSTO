/// @description Insert description here
// You can write your code in this editor
var _next = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

if (_next) counter = clamp(counter+1,-1,4);
if (counter > -1) && (counter < array_length(main_placements_array)) {
	main_placements_array[counter].currently_visible = true;
}
show_debug_message("counter:" + string(counter));
show_debug_message("other_counter:" + string(other_counter));
if (counter == 4) && (_next) other_counter = clamp(other_counter+1,-1,4);
if (other_counter > -1) && (other_counter < array_length(other_placements_array)) {
	other_placements_array[other_counter].currently_visible = true;
}


screen_fade = clamp(screen_fade-screen_fade_speed,0,1);