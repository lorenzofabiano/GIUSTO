/// @description Insert description here
// You can write your code in this editor

//move text when event starts
textPosX = min(textPosX + textSpd,maxTextPosX);


if (ballPlayer != noone) and !(endEvent) {
	duration = endEventDuration;
	endEvent = true;
}

if (duration == 0) instance_destroy();

duration = max(duration-1,0);