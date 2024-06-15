/// @description Insert description here
// You can write your code in this editor

//choose number of centri e palle
numberOfCentri = 2;
numberOfPalle = 1;

centriSpawn(numberOfCentri);
palleSpawn(numberOfPalle);

spawnPlayer("Goffredo",Sprite1_3,1,c_teal);
spawnPlayer("Raffolappo",Sprite1_1,4,c_green);
//spawnPlayer("Pietro1",Sprite1_1,4,c_green);
//spawnPlayer("Pietro2",Sprite1_1,4,c_green);

storePlayersIds();

//events
eventCycling = true;


//startEventTimer(oGayEvent,10,4,"chi si muove gay");

//what to write before any event
eventTimerText = "";
subEventTimerText = "";

//set how long it has to be before new event starts
global.baseEventTimeInterval = 1 * 60;
global.eventTimeInterval = global.baseEventTimeInterval;
global.eventActive = 0;

//same for sub events
global.baseSubEventTimeInterval = 20 * 60;
global.subEventTimeInterval = global.baseSubEventTimeInterval;
global.subEventActive = 0;


