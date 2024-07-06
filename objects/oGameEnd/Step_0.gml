/// @description Insert description here
// You can write your code in this editor

//if (slowmo) game_set_speed(20,gamespeed_fps);
//else game_set_speed(60,gamespeed_fps);



ending_duration = max(0,ending_duration-1);
if (ending_duration == 0) screen_fade = clamp(screen_fade+screen_fade_speed,0,1);
if (screen_fade == 1) room_goto_next();