/// @description Insert description here
// You can write your code in this editor

//choose number of centri e palle
numberOfCentri = 2;
numberOfPalle = 1;

centriSpawn(numberOfCentri);
palleSpawn(numberOfPalle);



//spawnPlayer(global.player_name[],Sprite1_3,1,c_teal);
var i = 0;
repeat(array_length(global.player_exists)) {
	
	if (global.player_exists[i] == true){
		spawnPlayer(global.player_name[i],global.player_skin[i],i+1,global.player_color[i]);
	}
	i++;
}


storePlayersIds();

//events
eventCycling = true;

//DEBUG: start a timer rightaway
//startEventTimer(oGayEvent,10,4,"chi si muove gay");

//what to write before any event
eventTimerText = "";
subEventTimerText = "";


//set how long it has to be before new event starts
global.baseEventTimeInterval = 15 * 60;
//global.baseEventTimeInterval = 1 * 60;
global.eventTimeInterval = global.baseEventTimeInterval;
global.eventActive = 0;

//same for sub events
global.baseSubEventTimeInterval = 25 * 60;
global.subEventTimeInterval = global.baseSubEventTimeInterval;
global.subEventActive = 0;

//play music
global.game_music = getRandomGameMusic();
//audio_stop_all();
audio_play_sound(global.game_music,1,true);