/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(c_white);


if (ballPlayer == noone) draw_text_transformed(textPosX,textPosY,"NON TOCCARE LE PALLE",3,3,0);
else {
	draw_text_transformed(textPosX,textPosY, string(ballPlayer.nameChosen) + " E' UN TOCCAPALLE",3,3,0);
	draw_text_transformed(textPosX,textPosY + 50,subText,3,3,0);
}