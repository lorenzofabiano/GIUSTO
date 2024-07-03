///// @description Insert description here
//// You can write your code in this editor
var _max_val, _max_val_index;

//In una lista ordinata di scores.

//valori di riferimento iniziali:
array_high_scores = [];
for (var i = 0; i <= array_length(global.instance_ids); i++) {

	array_push(array_high_scores,global.instance_ids[i]);
}


//valori di esempio:
//var array_high_scores = [7,5,7,1];


//Cerca i valori più alti e il loro indice e salvali in due array.
//

function _go_through_scores_and_save_highest_value_and_index() {

	var _max_val = array_high_scores[0];
	//var _max_val_index = 0;
	
	//trova il valore più alto e salvalo in _max_val
	for ( var i = 0; i < array_length(array_high_scores); i++) {

		if (_max_val <= array_high_scores[i]) 
		{
			_max_val = array_high_scores[i];
		}

	}


	var _max_val_array = [];
	var _max_val_index_array = [];

	//confronta il valore più alto trovato con tutte le entry nell'array. Salva valore e indice negli array.
	for ( var i = 0; i < array_length(array_high_scores); i++) {

		if (array_high_scores[i] = _max_val) 
		{
			array_push(_max_val_array,_max_val);
			array_push(_max_val_index_array,i);
		}

	}
	

	for (var i = 0; i < array_length(_max_val_array); i++) {
	
		array_push(_array_high_scores_1st,_max_val_array[i]);
		array_push(_array_high_score_players_1st,_max_val_index);
	}


}


var _array_high_scores_1st = [];
var _array_high_scores_2nd = [];
var _array_high_scores_3rd = [];
var _array_high_scores_4th = [];

var _array_high_score_players_1st = [];
var _array_high_score_players_2nd = [];
var _array_high_score_players_3rd = [];
var _array_high_score_players_4th = [];

//function trova in array_high_scores e suo indice

_go_through_scores_and_save_highest_value_and_index();




//escludendo l'indice appena trovato, cerchiamo negli altri indici valori uguali a quello più alto e pushamolo nell'array dello score. Pushamo anche l'array dei player con l'indice del player.
array_delete(array_high_scores,_max_val_index,1);


_go_through_scores_and_save_highest_value_and_index();

array_push(_array_high_scores_2nd,_max_val);
array_push(_array_high_score_players_2nd,_max_val_index);



//function trova valore "7" in array_high_scores e suo indice escludendo 0 = trovati 7,2;

_array_high_scores_1st[1] = 7
_array_high_score_players_1st[1] = 2

//Quando non ci sono più valori uguali al punteggio della 1° posizione, rimuovi gli indici di chi è in prima posizione dall'array di tutti gli score e ripeti il tutto per la seconda,
//terza e quarta posizione.

function trova valore "7" in array_high_scores e suo indice escludendo 0 e 2 = trovato niente;

function trova valorePiùAlto in array_high_scores e suo indice escludendo 0 e 2 = trovati 5,1;
function trova valore "5" in array_high_scores e suo indice escludendo 0,2,1 = trovato niente;

function trova valorePiùAlto in array_high_scores e suo indice escludendo 0,2,1 = trovati 1,3;
function trova valore "1" in array_high_scores e suo indice escludendo 0,2,1 = trovato niente;

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