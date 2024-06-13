/// @description Insert description here
// You can write your code in this editor
cameraAngle++;
camera_set_view_angle(view_camera[0],cameraAngle);


if (duration == 0) {	
	global.subEventTimeInterval = global.baseSubEventTimeInterval;
	global.subEventActive = false;
	camera_set_view_angle(view_camera[0],0);
	instance_destroy();
}
duration = max(duration-1,0);
