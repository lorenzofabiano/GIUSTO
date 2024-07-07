/// @description Insert description here
// You can write your code in this editor
var _next = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

if (_next) counter++;
if (counter > -1) && (counter < array_length(main_placements_array)) main_placements_array[counter].currently_visible = true;



screen_fade = clamp(screen_fade-screen_fade_speed,0,1);