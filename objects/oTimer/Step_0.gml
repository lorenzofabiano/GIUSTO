/// @description Insert description here
// You can write your code in this editor

textPosX = min(textPosX + textSpd,maxTextPosX);
timerTextPosX = min(timerTextPosX + textSpd,maxTextPosX);
textUpperPosX = min(textUpperPosX + textSpd,maxTextPosX);

timerDuration = max(timerDuration - 1,0);

if timerDuration == 0 {
	
	if (eventToSpawn != noone) && !(instance_exists(eventToSpawn)) {
		startEvent(eventToSpawn,eventToSpawnDuration);
	}
	instance_destroy();
}
