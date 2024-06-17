/// @description Insert description here
// You can write your code in this editor

//choose number of centri e palle
numberOfCentri = 2;
numberOfPalle = 1;

centriSpawn(numberOfCentri);
palleSpawn(numberOfPalle);

spawnPlayer("Goffredo",Sprite1_3,1,c_teal);
spawnPlayer("Raffolappo",Sprite1_1,3,c_green);
//spawnPlayer("Pietro1",Sprite1_1,4,c_green);
//spawnPlayer("Pietro2",Sprite1_1,4,c_green);

storePlayersIds();

//events
eventCycling = false;


//startEventTimer(oGayEvent,10,4,"chi si muove gay");

//what to write before any event
eventTimerText = "";
subEventTimerText = "";

//set how long it has to be before new event starts
global.baseEventTimeInterval = 10 * 60;
global.eventTimeInterval = global.baseEventTimeInterval;
global.eventActive = 0;

//same for sub events
global.baseSubEventTimeInterval = 20 * 60;
global.subEventTimeInterval = global.baseSubEventTimeInterval;
global.subEventActive = 0;




/*TODO:
fatto #) fai che ce ponno sta piu centri
fatto #) fai che ce ponno sta piu palle
fatto #)PER ENTRAMBI ATTENZIONE è MEGLIO FARE UN MANAGER CONTROLLER DI TUTTO!
(che gestisce le globali etc MA il last touched è locale alle palle XD)

fatto #) chi si muove
	Fai che quando nessuno si è ancora mosso passano le foto di gente che ti fissa (raffolappo incluso)
fatto #) chi tocca terra (chi non salta)
fatto #) chi tocca la palla (giustamente)
fatto #) chi tocca un muro
fatto #) tocca un gay e aumenta il livello gay.


°) blocchi a caso che escono (fisici)
°) (cambio gravita')


°) camera shake
fatto #) scie
fatto (sni, solo per il centro) #) particellari
fatto (sni, solo camera che ruotola)#) (stanza che ruotola)


°) schermata di vittoria e risultati
°) pre-match con scelta del pg e nome
°) modalità a team


MUSICA

MENU
Prelude - FF
GOLF PGA96 theme

CHAR SELECT
MVC2 - char select
Here We Go! (Character Select) - Galaxy Fight: Universal Warriors (Sega Saturn)
FFXIV OST Triple Triad Theme ( Shuffle or Boogie )


GAME
Mario 64 slider
Final Fantasy 7 Fiddle De Chocobo
[10] DM DOKURO - Cave Story Arranged - Mischievous Robot
Can Can - DJ Prisma (Hardstyle Remix)
Payday 2 Official Soundtrack - #47 Pimped Out Getaway
♬ Zeb89 - La Regola Dello Scambia Bare ♬
GESÙ 3 - By Christian Ice & Matteo Montesi
YTPMV: ITALIAN YOUTUBERS MEDLEY - VOL. 1
PJANOO performed with ZEB's real voice
Earthbound Music New Age Retro Hippy

SFX: 
Smash Bros (Melee & Brawl) Crowd Gasp sound effect - event fail
Sonic 1 Music: Game Over - event fail
Sanctuary Guardian (What Meme) - Earthbound Music - during event
*/
