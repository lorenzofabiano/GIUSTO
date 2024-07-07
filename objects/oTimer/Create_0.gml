/// @description Insert description here
// You can write your code in this editor
timerDuration = 0;

textSpd = 50;
timerTextPosX = 0;
//timerTextPosY = room_height/2;
//timerMaxTextPosX = room_width/2;
timerTextPosY = display_get_gui_height()/2;
timerMaxTextPosX = display_get_gui_width()/2;

textPosX = 0;
//textPosY = room_height/2 - 100;
//maxTextPosX = room_width/2;
textPosY = display_get_gui_height()/2 - 100;
maxTextPosX = display_get_gui_width()/2;


textUpperPosX = 0;
//textUpperPosY = room_height/2 - 150;
//maxTextUpperPosX = room_width/2;
textUpperPosY = display_get_gui_height()/2 - 150;
maxTextUpperPosX = display_get_gui_width()/2;

textOverTimer = "PROSSIMO EVENTO: GAY";
textUpper = "PROSSIMO EVENTO:";

eventToSpawn = noone;
eventToSpawnDuration = 0;

audio_pause_sound(global.game_music);
global.sound_preevent = getPreEventSound();
audio_play_sound(global.sound_preevent,1,0);