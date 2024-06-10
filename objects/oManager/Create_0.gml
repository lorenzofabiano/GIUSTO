/// @description Insert description here
// You can write your code in this editor

//choose number of centri e palle
numberOfCentri = 3;
numberOfPalle = 1;

centriSpawn(numberOfCentri);
palleSpawn(numberOfPalle);

spawnPlayer("Pippo",Sprite1_3,1);
spawnPlayer("Franco",Sprite1_1,1);
spawnPlayer("Cane",Sprite1_4,1);
spawnPlayer("Negros",Sprite1_5,1);
spawnPlayer("SkuSku",Sprite1_6,1);
spawnPlayer("Raffolappo",Sprite1_7,1);
spawnPlayer("Piero",Sprite1_3,1);
spawnPlayer("Naviglio",Sprite1_1,1);
spawnPlayer("Bundeleros",Sprite1_4,1);
spawnPlayer("WeDoThePatto",Sprite1_5,1);
spawnPlayer("DiSangue",Sprite1_6,1);
spawnPlayer("Noyz",Sprite1_7,1);

storePlayersIds();

//events
startEventTimer(oLazioEvent,5,4,"Prossimo evento: Salta se non sei un ratto");

