/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(c_white);

if (gayPlayer == noone) draw_text_transformed(textPosX,textPosY,"CHI SI MUOVE E' GAY",3,3,0);
else {
	draw_text_transformed(textPosX,textPosY, string(gayPlayer.nameChosen) + " E' GAY",3,3,0);
	draw_text_transformed(textPosX,textPosY + 50,subText,3,3,0);
}