/// @description Insert description here
// You can write your code in this editor

//move text when event starts
textPosX = min(textPosX + textSpd,maxTextPosX);


//if (gayPlayer != noone) and !(endEvent) {
//	duration = endEventDuration;
//	endEvent = true;
//}

duration = max(duration-1,0);

scrittaDuration = max(scrittaDuration-1,0);
if (scrittaDuration == 0) {
	
	//DEGAYA LA GENTE ALLA FINE DELL'EVENTO
	//for (var i = 0; i <= array_length(global.instance_ids)-1; i++) {
	//		//storo player corrent in cur_pp
	//		var cur_pp = global.instance_ids[i];
	//		cur_pp.Egay = false;
	//}
	
	instance_destroy();
}


//se evento è attivo



