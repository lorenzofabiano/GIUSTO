/// @description Insert description here
// You can write your code in this editor

if timer == 0 {
	stop_timer = true;
	reset_pos_x = true;
	instance_create_layer(x,y,"Instances",oManager);
	alarm[0] = 60;
}

if reset_pos_x {
	text_pos_x = 0;
	reset_pos_x = false;
	text = "GO!";
	
} else {
	text_pos_x = min(text_pos_x+text_speed,screen_w/2);
	if (text_pos_x > screen_w/2) text_pos_x = screen_w/2;
}

if stop_timer {
	timer = -1;
} else timer = max(timer-1,0);

