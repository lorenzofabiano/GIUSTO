/// @description Insert description here
// You can write your code in this editor
if (global.eventTimeInterval == 0) && !(global.eventActive){
	
	var eventChoose = choose(oBallTouchEvent,oGayEvent,oLazioEvent,oWallEvent);
	setEventTimerText(eventChoose);
	startEventTimer(eventChoose,10,4,eventTimerText);
	global.eventActive = true;
}

global.eventTimeInterval = max(global.eventTimeInterval-1,0);