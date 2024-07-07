/// @description Insert description here
// You can write your code in this editor
var _click_in_bbox_right = mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,right_bbox_x1,right_bbox_y1,right_bbox_x2,right_bbox_y2);
var _click_in_bbox_left = mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,left_bbox_x2,left_bbox_y1,left_bbox_x1,left_bbox_y2);

if (_click_in_bbox_right) {
	global.game_duration += 20 * 60;
	audio_play_sound(snCursor,1,0);
}
if (_click_in_bbox_left) {
	global.game_duration -= 20 * 60;
	audio_play_sound(snCursor,1,0);
}

global.game_duration = clamp(global.game_duration,20 * 60,600 * 60);