///// @description Insert description here
//// You can write your code in this editor

global.player_scores = scAcquireMainScores();
global.player_scores_names = acquire_ranked_names_or_sprites_or_points2d(global.player_scores,0);
global.player_scores_sprites = acquire_ranked_names_or_sprites_or_points2d(global.player_scores,1);
global.player_scores_points = acquire_ranked_names_or_sprites_or_points2d(global.player_scores,2);

show_debug_message("Names :" + string(global.player_scores_names));
show_debug_message("Sprites :" + string(global.player_scores_sprites));

global.gay_player_scores = scAcquireGayLevelScores();
global.gay_player_scores_names = acquire_ranked_names_or_sprites_or_points_1d(global.gay_player_scores,0);
global.gay_player_scores_sprites = acquire_ranked_names_or_sprites_or_points_1d(global.gay_player_scores,1);
global.gay_player_scores_level = acquire_ranked_names_or_sprites_or_points_1d(global.gay_player_scores,3);

global.laziale_player_scores = scAcquireLazialeLevelScores();
global.laziale_player_scores_names = acquire_ranked_names_or_sprites_or_points_1d(global.laziale_player_scores,0);
global.laziale_player_scores_sprites = acquire_ranked_names_or_sprites_or_points_1d(global.laziale_player_scores,1);
global.laziale_player_scores_level = acquire_ranked_names_or_sprites_or_points_1d(global.laziale_player_scores,4);


global.toccapalle_player_scores = scAcquireToccaPalleLevelScores();
global.toccapalle_player_scores_names = acquire_ranked_names_or_sprites_or_points_1d(global.toccapalle_player_scores,0);
global.toccapalle_player_scores_sprites = acquire_ranked_names_or_sprites_or_points_1d(global.toccapalle_player_scores,1);
global.toccapalle_player_scores_level = acquire_ranked_names_or_sprites_or_points_1d(global.toccapalle_player_scores,5);


global.toccamuri_player_scores = scAcquireToccaMuriLevelScores();
global.toccamuri_player_scores_names = acquire_ranked_names_or_sprites_or_points_1d(global.toccamuri_player_scores,0);
global.toccamuri_player_scores_sprites = acquire_ranked_names_or_sprites_or_points_1d(global.toccamuri_player_scores,1);
global.toccamuri_player_scores_level = acquire_ranked_names_or_sprites_or_points_1d(global.toccamuri_player_scores,6);


//show_debug_message("Classifica :" + string(global.player_scores));
//show_debug_message("Gay player/s :" + string(global.gay_player_scores));
//show_debug_message("Laziali :" + string(global.laziale_player_scores));
//show_debug_message("ToccaPalle :" + string(global.toccapalle_player_scores));
//show_debug_message("Suckers :" + string(global.toccamuri_player_scores));


text = "GAME!";
text_pos_x = 0;
text_speed = 100;
screen_fade = 0;
screen_fade_speed = .05;

base_ending_duration = 5 * 60;
ending_duration = base_ending_duration;

if (instance_exists(oPlayer)) {
	oPlayer.movement_speed_horizontal = 0;
	oPlayer.movement_speed_vertical = 0;
}
physics_world_gravity(0,.1);


oManager.eventCycling = false;

instance_destroy(CENTRO);
instance_destroy(PALLA);
instance_destroy(oEvent);
instance_destroy(oTimer);
instance_destroy(oSubTimer);