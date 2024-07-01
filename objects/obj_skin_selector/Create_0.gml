/// @description Insert description here
// You can write your code in this editor

player_number = 0;

skin_array = global.skins;
current_skin = 0;

margin = 50;
down_margin = 60;
bbox_width = 60;
bbox_height = 50;

right_bbox_x1 = x + margin;
right_bbox_y1 = y - bbox_height;
right_bbox_x2 = x + margin + bbox_width;
right_bbox_y2 = y + bbox_height;

left_bbox_x1 = x - margin;
left_bbox_y1 = y - bbox_height;
left_bbox_x2 = x - margin - bbox_width;
left_bbox_y2 = y + bbox_height;

ok_bbox_x1 = x - margin;
ok_bbox_x2 = x + margin;
ok_bbox_y1 = y + down_margin;
ok_bbox_y2 = y + (down_margin * 2);

