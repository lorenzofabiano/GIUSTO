/// @description Insert description here
// You can write your code in this editor
var _click_in_bbox_start = mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,start_bbox_x1,start_bbox_y1,start_bbox_x2,start_bbox_y2);


if _click_in_bbox_start room_goto_next();
