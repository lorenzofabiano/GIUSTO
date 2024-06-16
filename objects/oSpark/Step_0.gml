/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);


image_alpha = fade;
fade = max(fade - fadeSpd,0);
if fade == 0 instance_destroy();