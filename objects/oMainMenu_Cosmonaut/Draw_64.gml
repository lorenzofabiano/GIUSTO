/// @description Insert description here
// You can write your code in this editor
if (!global.pause) exit;

var gwidth = global.view_width;
var gheight = global.view_height;

var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_);
var y_buffer = 32, x_buffer = 16;
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;

var c = c_black;
draw_rectangle_color(0,0,gwidth,gheight, c,c,c,c, false);


//draw elements on left side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer, lty, xo;

var yy = 0;
repeat(ds_height){
	lty = start_y + (yy*y_buffer);
	c = c_white;
	xo = 0;
	
	if (yy == menu_option[page]){
		c = c_orange;
		xo = -(x_buffer/2);
	}
	
	draw_text_color(ltx+xo,lty,ds_[# 0, yy], c,c,c,c, 1);
	yy++;
}


//draw dividing line
draw_line(start_x, start_y-y_buffer, start_x,lty+y_buffer);


//draw elements on right side
draw_set_halign(fa_left);

var rtx = start_x + x_buffer, rty;

yy = 0; repeat(ds_height) {
	rty = start_y + (yy*y_buffer);
	
	switch(ds_[# 1, yy]){
		case menu_element_type.shift:
			var current_val = ds_[# 3, yy];
			var current_array = ds_[# 4,yy];
			var left_shift = "<< ";
			var right_shift = ">> ";
			c = c_white;
	
			if(current_val == 0) left_shift = "";
			if(current_val == array_length(ds_[# 4, yy])-1) right_shift = "";
			

			if(inputting and yy == menu_option[page]) {c = c_yellow}
			draw_text_color(rtx, rty, current_array[current_val], c,c,c,c, 1);
		break;
		
		case menu_element_type.slider:
			var len = 64;
			var current_val = ds_[# 3, yy];
			var current_array = ds_[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
			c = c_white;
			
			draw_line_width(rtx, rty, rtx +len, rty, 2);
			
			if(inputting and yy == menu_option[page]) {c = c_yellow}
			draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
			draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos*100))+"%", c,c,c,c, 1);
		break;
		
		case menu_element_type.toggle:
			c = c_white;
			var current_val = ds_[# 3, yy];
			var c1, c2;

			if(inputting and yy == menu_option[page]) {c = c_yellow};
			
			if (current_val == 0) {c1 = c; c2 = c_dkgray; }
			else				  {c1 = c_dkgray; c2 = c; }
			draw_text_color(rtx, rty, "ON", c1,c1,c1,c1,1);
			draw_text_color(rtx + 32,rty, "OFF", c2,c2,c2,c2,1);
			
		case menu_element_type.input:
			var current_val = ds_[# 3, yy];
			var string_val;
			
			switch(current_val) {
				case vk_up: string_val = "UP KEY"; break;
				case vk_left: string_val = "LEFT KEY"; break;
				case vk_right: string_val = "RIGHT KEY"; break;
				default: string_val = chr(current_val); break
			}
			
			c = c_white;
			if(inputting and yy == menu_option[page]) {c = c_yellow};
			draw_text_color(rtx,rty,string_val, c,c,c,c, 1);
	}
	yy++;
}








draw_set_valign(fa_top);