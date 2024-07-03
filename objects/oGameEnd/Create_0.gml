///// @description Insert description here
//// You can write your code in this editor
var i_array = [];
var j_array = [[],[]];

for (var i = 0; i < array_length(global.instance_ids); i++) {
	array_push(i_array,global.instance_ids[i]);
}

var _max_val = 0;

for (k = 0; k < array_length(global.instance_ids); k++ {

	//otteniamo il valore massimo in tutta l'array
	for (var i = 0; i < array_length(i_array); i++) {
		if (_max_val <=  i_array[i].points) _max_val = i_array[i].points;
	}

	//salviamo nell'array 2d sull'indice k tutte le istanze che hanno il punteggio max
	for (var i = 0; i < array_length(i_array); i++) {
		if (i_array[i].points == _max_val) array_push(j_array[k],i_array[i]);
	}

	//salviamo l'array di istanze variabile in una variabile che 
	//non verrà modificata nel corso del prossimo loop
	var l_array = i_array;
	
	//rimuoviamo dall'array di istanze variabile le istanze appena rankate
	for (var i = 0; i < array_length(l_array); i++) {
		//if (i_array[i].points == _max_val) array_delete(i_array,i,1);
		//TODO: CANCELLA LE ENTRY NELL'ARRAY  i_array GIA' RANKATE CON QUALCHE FUNZIONE ADATTA PER CANCELLARE LE ENTRY NEGLI ARRAY
	}
	
	_max_val = 0;
}

var _array_high_scores_1st = [];
var _array_high_scores_2nd = [];
var _array_high_scores_3rd = [];
var _array_high_scores_4th = [];

var _array_high_score_players_1st = [];
var _array_high_score_players_2nd = [];
var _array_high_score_players_3rd = [];
var _array_high_score_players_4th = [];


array_high_scores = [];
for (var i = 0; i < array_length(global.instance_ids); i++) {

	array_push(array_high_scores,global.instance_ids[i].points);
}




//Cerca i valori più alti e il loro indice e salvali in due array.
//

var _max_val = array_high_scores[0];

//trova il valore più alto e salvalo in _max_val
for ( var i = 0; i < array_length(array_high_scores); i++) {

	if (_max_val <= array_high_scores[i]) 
	{
		_max_val = array_high_scores[i];
	}

}


var _max_val_array = [];
var _max_val_index_array = [];

//confronta il valore più alto trovato con tutte le entry nell'array. 
// _max_val_array : Ritorna un'array di uno o più valori contenente gli score più alti in parità.
// _max_val_index_array : Ritorna un'array di uno o più valori contenente gli indici dei player che hanno tali score.
// e.g _max_val_array = [7,7]; _max_val_index_array = [0,2]; player 1 e player 3 hanno entrambi totalizzato 7 punti.

for ( var i = 0; i < array_length(array_high_scores); i++) {

	if (array_high_scores[i] = _max_val) 
	{
		array_push(_max_val_array,_max_val);
		array_push(_max_val_index_array,i);
	}

}


//crea un'array con tutti gli score e tutt gli indici dei player arrivati primi 
for (var i = 0; i < array_length(_max_val_array); i++) {
	array_push(_array_high_scores_1st,_max_val_array[i]);
	array_push(_array_high_score_players_1st,_max_val_index_array[i]);
}



//elimina ogni score dei player appena rankati.
for (var i = 0; i < array_length(_max_val_index_array); i++) {
	array_delete(array_high_scores,_max_val_index_array[i],1);
}




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