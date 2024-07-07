/// @description Insert description here
// You can write your code in this editor

//
textSpd = 50;
textPosX = 0;
textPosY = display_get_gui_height()/2 - 50;
textPosYPlayer = display_get_gui_height()/2;
maxTextPosX = display_get_gui_width()/2;

duration = 300;
scrittaDuration = duration+180;


audio_sound_gain(global.game_music,.3,0);
//audio_pause_sound(global.game_music);
global.event_music = getEventMusic();
audio_play_sound(global.event_music,1,true);