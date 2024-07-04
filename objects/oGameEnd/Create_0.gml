///// @description Insert description here
//// You can write your code in this editor

global.player_scores = scAcquireScores();



text = "GAME!";
text_pos_x = 0;
text_speed = 100;

slowmo = true;

base_ending_duration = 60;
ending_duration = base_ending_duration;


oPlayer.movement_speed_horizontal = 0;
oPlayer.movement_speed_vertical = 0;
physics_world_gravity(0,1000);


oManager.eventCycling = false;

instance_destroy(PALLA);
instance_destroy(oEvent);
instance_destroy(oTimer);
