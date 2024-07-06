/// @description Insert description here
// You can write your code in this editor


screen_w = display_get_gui_width();
screen_h = display_get_gui_height();

screen_fade = 1;
screen_fade_speed = .05;

var start_x = room_width/5;
var start_y = room_height/8;

with instance_create_layer(start_x,start_y,"Instances",oPlacement) {
	names = global.player_scores_names[0];
	sprites = global.player_scores_sprites[0];
	points = global.player_scores_points[0];
	place = "1st";
}

with instance_create_layer(start_x,start_y+200,"Instances",oPlacement) {
	names = global.player_scores_names[1];
	sprites = global.player_scores_sprites[1];
	points = global.player_scores_points[1];
	place = "2nd";
}

with instance_create_layer(start_x,start_y+400,"Instances",oPlacement) {
	names = global.player_scores_names[2];
	sprites = global.player_scores_sprites[2];
	points = global.player_scores_points[2];
	place = "3rd";
}

with instance_create_layer(start_x,start_y+600,"Instances",oPlacement) {
	names = global.player_scores_names[3];
	sprites = global.player_scores_sprites[3];
	points = global.player_scores_points[3];
	place = "4th";
}