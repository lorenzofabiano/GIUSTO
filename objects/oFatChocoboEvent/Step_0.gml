/// @description Insert description here
// You can write your code in this editor
if (duration == 0) {	
	global.subEventTimeInterval = global.baseSubEventTimeInterval;
	global.subEventActive = false;
	instance_destroy(oFatChocobo);
	instance_destroy();
}
duration = max(duration-1,0);
