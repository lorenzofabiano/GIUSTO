/// @description Insert description here
// You can write your code in this editor

//choose number of centri e palle
numberOfCentri = 3;
numberOfPalle = 1;

centriSpawn(numberOfCentri);
palleSpawn(numberOfPalle);

spawnPlayer("Goffredo",Sprite1_3,1);
spawnPlayer("Raffolappo",Sprite1_1,1);
spawnPlayer("Marco",Sprite1_4,1);
spawnPlayer("Musmeci",Sprite1_5,1);

storePlayersIds();

//events

//what to write before any event
eventTimerText = "";

//set how long it has to be before new event starts
global.baseEventTimeInterval = 5 * 60;
global.eventTimeInterval = global.baseEventTimeInterval;
global.eventActive = 0;

