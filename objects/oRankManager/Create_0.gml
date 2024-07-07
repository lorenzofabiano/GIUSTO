/// @description Insert description here
// You can write your code in this editor
main_placements_array = [];
other_placements_array = [];
counter = -1;


screen_w = display_get_gui_width();
screen_h = display_get_gui_height();

screen_fade = 1;
screen_fade_speed = .05;

var start_x = room_width/5;
var start_y = room_height/8;

var other_start_x = room_width - room_width/6;
var other_start_x2 = room_width - room_width/3;

#region main ranking
with instance_create_layer(start_x,start_y,"Instances",oPlacement) {
	names = global.player_scores_names[0];
	sprites = global.player_scores_sprites[0];
	points = global.player_scores_points[0];
	place = "1st";
	kind_of_score = "main";
}

with instance_create_layer(start_x,start_y+200,"Instances",oPlacement) {
	names = global.player_scores_names[1];
	sprites = global.player_scores_sprites[1];
	points = global.player_scores_points[1];
	place = "2nd";
	kind_of_score = "main";
}

with instance_create_layer(start_x,start_y+400,"Instances",oPlacement) {
	names = global.player_scores_names[2];
	sprites = global.player_scores_sprites[2];
	points = global.player_scores_points[2];
	place = "3rd";
	kind_of_score = "main";
}

with instance_create_layer(start_x,start_y+600,"Instances",oPlacement) {
	names = global.player_scores_names[3];
	sprites = global.player_scores_sprites[3];
	points = global.player_scores_points[3];
	place = "4th";
	kind_of_score = "main";
}
#endregion



//acquire the main placements instances and invert their order
for (var i = 0; i < instance_number(oPlacement); i++;) {
    main_placements_array[i] = instance_find(oPlacement,i);
	main_placements_array[i].currently_visible = false;
}

//for (var i = 0; i < array_length(main_placements_array); ++i;) {
//    main_placements_array[i].image_alpha = 0;
//}



main_placements_array = array_reverse(main_placements_array);



#region other scores
with instance_create_layer(other_start_x,start_y,"Instances",oPlacement) {
	names = global.gay_player_scores_names;
	sprites = global.gay_player_scores_sprites;
	level = global.gay_player_scores_level;
	whatLevel = "Gay";
	kind_of_score = "other";
}

with instance_create_layer(other_start_x2,start_y+200,"Instances",oPlacement) {
	names = global.toccapalle_player_scores_names;
	sprites = global.toccapalle_player_scores_sprites;
	level = global.toccapalle_player_scores_level;
	whatLevel = "Tocca Scroti";
}

with instance_create_layer(other_start_x,start_y+400,"Instances",oPlacement) {
	names = global.laziale_player_scores_names;
	sprites = global.laziale_player_scores_sprites;
	level = global.laziale_player_scores_level;
	whatLevel = "Laziale";
	kind_of_score = "other";
}



with instance_create_layer(other_start_x2,start_y+600,"Instances",oPlacement) {
	names = global.toccamuri_player_scores_names;
	sprites = global.toccamuri_player_scores_sprites;
	level = global.toccamuri_player_scores_level;
	whatLevel = "Sucatore";
	kind_of_score = "other";
}



#endregion