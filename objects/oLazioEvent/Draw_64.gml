/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(c_white);

if (lazioPlayer == noone) draw_text_transformed(textPosX,textPosY,"CHI NON SALTA E' DAA Lazio",3,3,0);
else {
	draw_text_transformed(textPosX,textPosY, string(lazioPlayer.nameChosen) + " E' DAA LAZIO",3,3,0);
	draw_text_transformed(textPosX,textPosY + 50,subText,3,3,0);
}