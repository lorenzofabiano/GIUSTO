/// @description Insert description here
// You can write your code in this editor
timerDuration = 0;

textSpd = 50;
timerTextPosX = 0;
timerTextPosY = display_get_gui_height()/5;
timerMaxTextPosX = display_get_gui_width()/2;

textPosX = 0;
textPosY = display_get_gui_height()/5 - 50;
maxTextPosX = display_get_gui_width()/2;

/*textUpperPosX = 0;
textUpperPosY = room_height/2 - 150;
maxTextUpperPosX = room_width/2;*/

textOverTimer = "PROSSIMO EVENTO: GAY";
//textUpper = "PROSSIMO EVENTO:";

eventToSpawn = noone;
eventToSpawnDuration = 0;