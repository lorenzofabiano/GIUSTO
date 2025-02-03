/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (space_or_click_disable == false) draw_set_color(c_yellow) else draw_set_color(c_gray);

draw_text_transformed(room_width/2,50,"SPACE or CLICK",1.5,1.5,0);