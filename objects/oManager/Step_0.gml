/// @description Insert description here
// You can write your code in this editor

if (eventCycling) {

	if (global.eventTimeInterval == 0) && !(global.eventActive){
	
		//var eventChoose = choose(oBallTouchEvent,oGayEvent,oLazioEvent,oWallEvent,oGayContagionEvent);
		var eventChoose = choose(oGayEvent);
		setEventTimerText(eventChoose);
		startEventTimer(eventChoose,10,4,eventTimerText);
		global.eventActive = true;
	}


	if (global.subEventTimeInterval == 0) && !(global.subEventActive){
	
		var eventChoose = choose(oMrSaturnEvent,oBigMrSaturnEvent,oFatChocoboEvent,oCameraRotateEvent);
		setSubEventTimerText(eventChoose);
		startSubEventTimer(eventChoose,10,4,subEventTimerText);
		global.subEventActive = true;
	}


	global.eventTimeInterval = max(global.eventTimeInterval-1,0);
	global.subEventTimeInterval = max(global.subEventTimeInterval-1,0);
}

