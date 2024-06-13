/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text_transformed(timerTextPosX,timerTextPosY,floor(timerDuration/60),3,3,0);
draw_text_transformed(textPosX,textPosY,textOverTimer,3,3,0);
//draw_text_transformed(textUpperPosX,textUpperPosY,textUpper,3,3,0);