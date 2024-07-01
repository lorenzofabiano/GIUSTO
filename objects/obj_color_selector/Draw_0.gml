/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);

draw_sprite_ext(sArrow,0,x+margin,y,1,1,0,c_white,1);
draw_sprite_ext(sArrow,0,x-margin,y,-1,1,0,c_white,1);
draw_sprite_ext(sOK,0,x,y+down_margin*1.5,1,1,0,c_white,1);


draw_rectangle(right_bbox_x1,right_bbox_y1,right_bbox_x2,right_bbox_y2,1);
draw_rectangle(left_bbox_x1,left_bbox_y1,left_bbox_x2,left_bbox_y2,1);
draw_rectangle(ok_bbox_x1,ok_bbox_y1,ok_bbox_x2,ok_bbox_y2,1);

draw_sprite_ext(sShadow,0,x,y,1+color_thickness,1+color_thickness,0,color_array[current_color],1);
draw_sprite(global.player_skin[player_number-1],0,x,y);