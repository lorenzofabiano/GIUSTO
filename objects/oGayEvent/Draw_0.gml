/// @description Insert description here
// You can write your code in this editor
//draw_text(textPosX,textPosY,"YOU MOVE, YOU GAY");
draw_set_halign(fa_center);
draw_set_color(c_white);

/*for (var i = 0; i < array_length(global.instance_ids); ++i) {

	var _currentInstance = global.instance_ids[i];	
	if (_currentInstance.gayMarkTimer > 0) {
		draw_text(_currentInstance.x,_currentInstance.y - 50, "SONO GAY");
	}
} */

if (gayPlayer != noone) draw_text(gayPlayer.x,gayPlayer.y - 60, "SONO GAY");
