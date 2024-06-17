/// @description Insert description here
// You can write your code in this editor

//draw score
draw_set_halign(fa_left);
draw_set_color(c_white);

for (var i = 0; i < array_length(global.instance_ids); i++) {
	draw_text(0,y + (i*20), "PUNTI DI " + string(global.instance_ids[i].nameChosen) + " :" + string(global.instance_ids[i].points));
}


//if (instance_exists(oGayEvent)) draw_text(0,200,oGayEvent.duration);