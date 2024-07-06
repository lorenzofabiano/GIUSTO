/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_center);

draw_set_valign(fa_bottom);
draw_text_transformed(text_pos_x,screen_h/2+margin,text,5,5,0);


var _timer_bar = timer/base_timer * 100;
if timer > 0 draw_healthbar(screen_w/3,screen_h/2+margin,screen_w-screen_w/3,screen_h/2+bar_thickness+margin,_timer_bar,c_black,c_white,c_white,0,0,1);