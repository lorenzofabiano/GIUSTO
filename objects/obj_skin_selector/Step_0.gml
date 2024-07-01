/// @description Insert description here
// You can write your code in this editor


var _click_in_bbox_right = mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,right_bbox_x1,right_bbox_y1,right_bbox_x2,right_bbox_y2);
var _click_in_bbox_left = mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,left_bbox_x2,left_bbox_y1,left_bbox_x1,left_bbox_y2);
var _click_in_bbox_ok = mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,ok_bbox_x1,ok_bbox_y1,ok_bbox_x2,ok_bbox_y2);

if (_click_in_bbox_right) current_skin++;
if (_click_in_bbox_left) current_skin--;

if (current_skin > array_length(skin_array) -1) current_skin = 0;
if (current_skin < 0) current_skin = array_length(skin_array) -1;

if (_click_in_bbox_ok) {
	global.player_skin[player_number-1] = skin_array[current_skin];
	player_open_main_menu();
	instance_destroy();
}

