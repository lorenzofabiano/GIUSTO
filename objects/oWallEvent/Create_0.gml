/// @description Insert description here
// You can write your code in this editor

//
textSpd = 50;
textPosX = 0;
textPosY = display_get_gui_height()/2 - 50;
textPosYPlayer = display_get_gui_height()/2;
maxTextPosX = display_get_gui_width()/2;
subText = choose("No vabbe'...","Che schifo...","Imbarazzo totale...","Che figura di merda...");

duration = 300;
scrittaDuration = duration+180;

listaToccaMuri = [];

listaNomi = "";

audio_sound_gain(global.game_music,.3,0);
global.event_music = getEventMusic();
audio_play_sound(global.event_music,1,true);