/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);
draw_set_halign(fa_center);


draw_sprite(sPlatform,0,x,y);
for (var i = 0; i < array_length(names); i++) {
	draw_sprite(sprites[i],0,start_x + i*margin_from_player,y - margin_from_platform);
	draw_text_transformed(start_x + i*margin_from_player,y - margin_from_platform*2,names[i],.7,.7,0);
	//draw_sprite(players[i].sprite,0,start_x + i*margin_from_player,y - margin_from_platform);
}

draw_text_transformed(x-200,y,place,3,3,0);

//draw_set_halign(fa_center);
if (array_length(points) != 0)draw_text_transformed(x,y+50,string(points[0])+" Punti",3,3,0);