/// @description Insert description here
// You can write your code in this editor

//instantiate needed arrays
global.player_scores = [];
global.player_gay_levels = [];
global.player_lazio_levels = [];
global.player_sucker_levels = [];
global.player_ball_toucher_levels = [];

global.highest_score = [];
global.highest_gay_level = [];
global.highest_lazio_level = [];
global.highest_sucker_level = [];
global.highest_ball_toucher_level = [];


#region //find all scores and levels

var i = 0; repeat(array_length(global.instance_ids)) {
	array_push(global.player_scores,global.instance_ids[i].points);
	array_push(global.player_gay_levels,global.instance_ids[i].gayLevel);
	array_push(global.player_lazio_levels,global.instance_ids[i].lazialeLevel);
	array_push(global.player_sucker_levels,global.instance_ids[i].toccaMuriLevel);
	array_push(global.player_ball_toucher_levels,global.instance_ids[i].toccaPalleLevel);
	i++;	
}

#endregion

#region //find highest scores and levels
var i = 0; repeat(array_length(global.player_scores)) {
	
	
	i++;
}


#endregion