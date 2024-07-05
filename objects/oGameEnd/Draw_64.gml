/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);



var _screen_w = display_get_gui_width();
var _screen_h = display_get_gui_height();

text_pos_x = min(text_pos_x+text_speed,_screen_w/2);
if (text_pos_x > _screen_w/2) text_pos_x = _screen_w/2;


draw_text_transformed(text_pos_x,_screen_h/2,text,5,5,0);

if (ending_duration == 0) draw_sprite_ext(sPixel,0,0,0,_screen_w,_screen_h,0,c_black,screen_fade); 