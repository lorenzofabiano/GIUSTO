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

function setEventTimerText(event) {
	switch(event) 
	{
	    case oBallTouchEvent:
	        eventTimerText = choose("NON TOCCARE LE PALLE!","SCHIVA LE PALLE!","EVITATE LE PALLE!");
	    break;

	    case oGayEvent:
	         eventTimerText = choose("CHI SI MUOVE E' ALQUANTO OMOSEX","IL PRIMO CHE SI MUOVE COMMETTE UN GRAVE ERRORE","SE TI MUOVI SEI g4y");
	    break;

	    case oLazioEvent:
	        eventTimerText = choose("SE TOCCHI TERRA DEVI MORI' GONFIO","SE RESTI A TERRA SEI UN RATTO","SE NON SALTI SE VEDEMO FORI");
	    break;
	
	    case oWallEvent:
	         eventTimerText = choose("BIG BAMBOO PER CHI TOCCA I MURI","SE TOCCHI I MURI OTTIENI UN CALIPPO DA SUCARE","TOCCA I MURI E SUCA");
	    break;
	}
}