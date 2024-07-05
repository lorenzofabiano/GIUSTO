///// @description Insert description here
//// You can write your code in this editor

global.player_scores = scAcquireMainScores();

global.gay_player_scores = scAcquireGayLevelScores();
global.laziale_player_scores = scAcquireLazialeLevelScores()
global.toccapalle_player_scores = scAcquireToccaPalleLevelScores();
global.toccamuri_player_scores = scAcquireToccaMuriLevelScores();

show_debug_message("Classifica :" + string(global.player_scores));
show_debug_message("Gay player/s :" + string(global.gay_player_scores));
show_debug_message("Laziali :" + string(global.laziale_player_scores));
show_debug_message("ToccaPalle :" + string(global.toccapalle_player_scores));
show_debug_message("Suckers :" + string(global.toccamuri_player_scores));


text = "GAME!";
text_pos_x = 0;
text_speed = 100;
screen_fade = 0;
screen_fade_speed = .05;

base_ending_duration = 5 * 60;
ending_duration = base_ending_duration;


oPlayer.movement_speed_horizontal = 0;
oPlayer.movement_speed_vertical = 0;
physics_world_gravity(0,.1);


oManager.eventCycling = false;

instance_destroy(CENTRO);
instance_destroy(PALLA);
instance_destroy(oEvent);
instance_destroy(oTimer);
