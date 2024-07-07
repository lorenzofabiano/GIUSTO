/// @description Insert description here
// You can write your code in this editor
if (fireDelay < 1) && (shootSaturnsFor > 0) {
	with instance_create_layer(x,y,"Instances",oMrSaturn) {
		physics_apply_impulse(x,y,random_range(-1000,1000),random_range(1000,3000));
	}
}

shootSaturnsFor = max(shootSaturnsFor-1,0);
fireDelay--;


if (duration == 0) {	
	global.subEventTimeInterval = global.baseSubEventTimeInterval;
	global.subEventActive = false;
	instance_destroy(oMrSaturn);
	instance_destroy();
}

duration = max(duration-1,0);
