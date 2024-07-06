/// @description Insert description here
// You can write your code in this editor

//draw score
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

for (var i = 0; i < array_length(global.instance_ids); i++) {
	draw_text(display_get_gui_width()/50,display_get_gui_height()/20 + (i*20), "PUNTI DI " + string(global.instance_ids[i].nameChosen) + " :" + string(global.instance_ids[i].points));


}


//draw game timer
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
if (global.game_duration > 0) draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()/20,string(floor(global.game_duration/60)),3,3,0);
