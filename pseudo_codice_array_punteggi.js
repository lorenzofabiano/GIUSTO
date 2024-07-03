//In una lista ordinata di scores.

//valori di riferimento iniziali:
global.instance_ids[player1,player2,player3,player4];
var _array_high_scores = [player1.punti,player2.punti,player3.punti,player4.punti];

//valori di esempio:
//var _array_high_scores = [7,5,7,1];


//Cerca il valore più alto e salvalo insieme al suo indice in un'array. Valore vuol dire punteggio, indice vuol dire giocatore.


function trova valorePiùAlto in _array_high_scores e suo indice = trovati 7,0;

var _max_val = _array_high_scores[0];
for (i = 0; i <= _array_high_scores; i++) {
	if (_max_val < _array_high_scores[i]) 
	
}


var _array_high_scores_1st[0] = 7
var _array_high_score_players_1st[0] = 0

//escludendo l'indice appena trovato, cerchiamo negli altri indici valori uguali a quello più alto e pushamolo nell'array dello score. Pushamo anche l'array dei player con l'indice del player.

function trova valore "7" in _array_high_scores e suo indice escludendo 0 = trovati 7,2;

_array_high_scores_1st[1] = 7
_array_high_score_players_1st[1] = 2

//Quando non ci sono più valori uguali al punteggio della 1° posizione, rimuovi gli indici di chi è in prima posizione dall'array di tutti gli score e ripeti il tutto per la seconda,
//terza e quarta posizione.

function trova valore "7" in _array_high_scores e suo indice escludendo 0 e 2 = trovato niente;

function trova valorePiùAlto in _array_high_scores e suo indice escludendo 0 e 2 = trovati 5,1;
function trova valore "5" in _array_high_scores e suo indice escludendo 0,2,1 = trovato niente;

function trova valorePiùAlto in _array_high_scores e suo indice escludendo 0,2,1 = trovati 1,3;
function trova valore "1" in _array_high_scores e suo indice escludendo 0,2,1 = trovato niente;

//se tutti gli indici sono stati esclusi, concludi il loop e non cercare valori da aggiungere in 4a posizione.

//quindi alla fine avremo ad esempio:

//array dei punteggi:
_array_high_scores_1st = [7,7]
_array_high_scores_2nd = [5]
_array_high_scores_3rd = [1]
_array_high_scores_4th = []

//array dei players:
_array_high_score_players_1st = [0,2] // quindi player 1 e player 3
_array_high_score_players_2nd = [1] // player 2
_array_high_score_players_3rd = [3] // player 4
_array_high_score_players_4th = []

//array dei players con le istanze, che comprendono tutti i valori quali punteggio, skin, colore, gayLevel, lazioLevel, toccaPalleLevel, sucaLevel :
_array_high_score_players_id_1st = [global.instance_ids[_array_high_score_players_1st[0]],global.instance_ids[_array_high_score_players_1st[1]]]
_array_high_score_players_id_2nd = [global.instance_ids[_array_high_score_players_2nd[0]]]
_array_high_score_players_id_3rd = [global.instance_ids[_array_high_score_players_3rd[0]]]
_array_high_score_players_id_4th = [global.instance_ids[_array_high_score_players_4th[0]]]


run the check.
get the highest scores and player index, save the instances in _podium_array[0] = [0,1,2,3];
remove the highest score for 1st from the _highest scores_ and check again for 2nd.
save instances in _podium_array[1] = [] ecc...



var i_array = [];
var _max_val = 0;
for (var i = 0; i < array_length(global.instance_ids); i++) {

	array_push(i_array,global.instance_ids[i]);
}

for (var i = 0; i < array_length(global.instance_ids); i++) {
	if ()
}
