/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_sprite_ext(sArrow,0,x+margin,y,1,1,0,c_white,1);
draw_sprite_ext(sArrow,0,x-margin,y,-1,1,0,c_white,1);

draw_rectangle(right_bbox_x1,right_bbox_y1,right_bbox_x2,right_bbox_y2,1);
draw_rectangle(left_bbox_x1,left_bbox_y1,left_bbox_x2,left_bbox_y2,1);
draw_text_transformed(x,y,global.game_duration/60,3,3,0);



//draw_set_valign(fa_top);
draw_text_transformed(x,y+30,"s",3,3,0);

draw_set_valign(fa_bottom);
draw_text_transformed(x,y-margin,"TIME",3,3,0);

