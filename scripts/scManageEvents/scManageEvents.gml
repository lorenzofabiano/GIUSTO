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

function startSubEventTimer(subEvent,duration,timer,text) {
	if !(instance_exists(oSubTimer)) {
		with instance_create_layer(x,y,"Instances",oSubTimer) {
			timerDuration = timer * 60;
			eventToSpawn = subEvent;
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
	         eventTimerText = choose("CHI SI MUOVE E' ALQUANTO OMOSEX","CHI SI MUOVE COMMETTE UN GRAVE ERRORE","SE TI MUOVI SEI g4y");
	    break;

	    case oLazioEvent:
	        eventTimerText = choose("SE TOCCHI TERRA DEVI MORI' GONFIO","SE RESTI A TERRA SEI UN RATTO","SE NON SALTI SE VEDEMO FORI");
	    break;
	
	    case oWallEvent:
	         eventTimerText = choose("PISELON PER CHI TOCCA I MURI","TOCCA I MURI E VINCI UN CALIPPO FRESCO DA SUCARE","TOCCA I MURI E SUCA");
	    break;
		
	    case oGayContagionEvent:
	         eventTimerText = choose("CHI TOCCA I GAY VERRA' CONTAGIATO","SCAPPA, I GAY SONO CONTAGIOSI!");
	    break;
	}

}


function setSubEventTimerText(event) {
	switch(event) 
	{
		//sub events
	    case oMrSaturnEvent:
	         subEventTimerText = choose("OH CAZZO ARRIVANO!","ECCOLI CHE ARRIVANO...","LI SENTO ARRIVARE...");
	    break;
		
	    case oBigMrSaturnEvent:
	         subEventTimerText = choose("QUESTI SONO GROSSI...","ECCOLI CHE ARRIVANO...","LI SENTO ARRIVARE...");
	    break;
		
	    case oFatChocoboEvent:
	         subEventTimerText = choose("Oioioi...","VIA DAL CENTRO!!!");
	    break;
		
	    case oCameraRotateEvent:
	         subEventTimerText = choose("PREPARATEVI A SBRATTARE","VOMITO ASSICURATO");
	    break;
		
	}
}