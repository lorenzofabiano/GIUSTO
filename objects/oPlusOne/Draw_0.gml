/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(color);

var gayLevelUpYOffset = 40;
if (gayLevelShow) draw_text(playerWhoSpawned.x,playerWhoSpawned.y - gayLevelUpYOffset - upPos,string(playerWhoScored) + " + 1");
else draw_text(x,y-upPos,string(playerWhoScored) + " + 1");