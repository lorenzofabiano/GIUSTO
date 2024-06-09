// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information





//spawn an object event, specify its duration in seconds and specify the timer duration in seconds and set the text durign the timer 
//example startEvent(oGayEvent,10,3,"PROSSIMO EVENTO: SORPRESA....)
function startEventTimer(event,duration,timer,text) {
	if !(instance_exists(oTimer)) {
		with instance_create_layer(x,y,"Instances",oTimer) {
		timerDuration = timer * 60;
		eventToSpawn = event;
		eventToSpawnDuration = duration;
		textOverTimer = text;
		}
	}
}

function startEvent(event,duration) {
	if !(instance_exists(event)) {
		with instance_create_layer(x,y,"Instances",event) self.duration = duration * 60;
	}
}