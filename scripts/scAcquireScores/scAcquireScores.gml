// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scAcquireMainScores(){
	//array variabile con le istanze dei player da rankare.
	var i_array = [];

	//array bidimensionale con le istanze dei player. i player a pari merito al primo posto sono nell'array ad index [0], i secondi nell'array ad index [1] e così via.
	var j_array = [[],[],[],[]];

	//ESEMPIO:

	//[
	//[0][PlayerPrimoPosto,Player2PrimoPosto]
	//[1][Player3SecondoPosto]
	//[2][Player4TerzoPosto]
	//[3][nessuno]
	//]


	//salvo in i_array le istanze dei player, comprensive di tutti i parametri necessari fra cui i punteggi.
	for (var i = 0; i < array_length(global.instance_ids); i++) {
		array_push(i_array,global.instance_ids[i]);
	}

	//inizializzo variabile per acquisire il valore più alto nell'array 
	var _max_val;

	//inizializzo contatore per il main loop, così che possa essere richiamato anche all'interno di loop nestati.
	var k;

	//parte il main loop che dura per tanti quanti sono i player
	for (k = 0; k < array_length(global.instance_ids); k++) {

	

		//cicla solo se sono rimasti player da rankare
		if (array_length(i_array) != 0) {

			_max_val = 0;
		
			//otteniamo il valore massimo dei punti in tutta l'array
			for (var i = 0; i < array_length(i_array); i++) {
				if (_max_val <=  i_array[i].points) _max_val = i_array[i].points;
			}

			//essendo _max_val pari al punteggio più alto fra tutti i player, salviamo tutti i player con tale punteggio
			//nell'array bidimensionale su indice relativo alla posizione, che incrementa con ogni main loop.
		
			//salviamo nell'array 2d sull'indice k tutte le istanze che hanno il punteggio max
			for (var i = 0; i < array_length(i_array); i++) {
				if (i_array[i].points == _max_val) array_push(j_array[k],i_array[i]);
			}

			//salviamo l'array di istanze variabile in una variabile che 
			//non verrà modificata nel corso del seguente for loop
			var l_array = i_array;
			i_array = [];
	
			//rimuoviamo dall'array di istanze variabile le istanze appena rankate salvando quelle non rankate 
			//in i_array, che verrà riutilizzato nel seguente main loop.
			for (var i = 0;  i < array_length(l_array); i++) {
				if !(l_array[i].points == _max_val) array_push(i_array,l_array[i]);
			}

		}
	}
	
	return j_array;
}

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scAcquireGayLevelScores(){
	//array variabile con le istanze dei player da rankare.
	var i_array = [];
	var j_array = [];

	//salvo in i_array le istanze dei player, comprensive di tutti i parametri necessari fra cui i punteggi.
	for (var i = 0; i < array_length(global.instance_ids); i++) {
		array_push(i_array,global.instance_ids[i]);
	}

	//inizializzo variabile per acquisire il valore più alto nell'array 
	var	_max_val = 0;
	
	//otteniamo il valore massimo dei punti in tutta l'array
	for (var i = 0; i < array_length(i_array); i++) {
		if (_max_val <=  i_array[i].gayLevel) _max_val = i_array[i].gayLevel;
	}
	
	//salviamo nell'array 2d sull'indice k tutte le istanze che hanno il punteggio max
	for (var i = 0; i < array_length(i_array); i++) {
		if (i_array[i].gayLevel == _max_val) array_push(j_array,i_array[i]);
	}

	
	return j_array;
}


function scAcquireLazialeLevelScores(){
	//array variabile con le istanze dei player da rankare.
	var i_array = [];
	var j_array = [];

	//salvo in i_array le istanze dei player, comprensive di tutti i parametri necessari fra cui i punteggi.
	for (var i = 0; i < array_length(global.instance_ids); i++) {
		array_push(i_array,global.instance_ids[i]);
	}

	//inizializzo variabile per acquisire il valore più alto nell'array 
	var	_max_val = 0;
	
	//otteniamo il valore massimo dei punti in tutta l'array
	for (var i = 0; i < array_length(i_array); i++) {
		if (_max_val <=  i_array[i].lazialeLevel) _max_val = i_array[i].lazialeLevel;
	}
	
	//salviamo nell'array 2d sull'indice k tutte le istanze che hanno il punteggio max
	for (var i = 0; i < array_length(i_array); i++) {
		if (i_array[i].lazialeLevel == _max_val) array_push(j_array,i_array[i]);
	}

	
	return j_array;
}

function scAcquireToccaPalleLevelScores(){
	//array variabile con le istanze dei player da rankare.
	var i_array = [];
	var j_array = [];

	//salvo in i_array le istanze dei player, comprensive di tutti i parametri necessari fra cui i punteggi.
	for (var i = 0; i < array_length(global.instance_ids); i++) {
		array_push(i_array,global.instance_ids[i]);
	}

	//inizializzo variabile per acquisire il valore più alto nell'array 
	var	_max_val = 0;
	
	//otteniamo il valore massimo dei punti in tutta l'array
	for (var i = 0; i < array_length(i_array); i++) {
		if (_max_val <=  i_array[i].toccaPalleLevel) _max_val = i_array[i].toccaPalleLevel;
	}
	
	//salviamo nell'array 2d sull'indice k tutte le istanze che hanno il punteggio max
	for (var i = 0; i < array_length(i_array); i++) {
		if (i_array[i].toccaPalleLevel == _max_val) array_push(j_array,i_array[i]);
	}

	
	return j_array;
}

function scAcquireToccaMuriLevelScores(){
	//array variabile con le istanze dei player da rankare.
	var i_array = [];
	var j_array = [];

	//salvo in i_array le istanze dei player, comprensive di tutti i parametri necessari fra cui i punteggi.
	for (var i = 0; i < array_length(global.instance_ids); i++) {
		array_push(i_array,global.instance_ids[i]);
	}

	//inizializzo variabile per acquisire il valore più alto nell'array 
	var	_max_val = 0;
	
	//otteniamo il valore massimo dei punti in tutta l'array
	for (var i = 0; i < array_length(i_array); i++) {
		if (_max_val <=  i_array[i].toccaMuriLevel) _max_val = i_array[i].toccaMuriLevel;
	}
	
	//salviamo nell'array 2d sull'indice k tutte le istanze che hanno il punteggio max
	for (var i = 0; i < array_length(i_array); i++) {
		if (i_array[i].toccaMuriLevel == _max_val) array_push(j_array,i_array[i]);
	}

	
	return j_array;
}
	
//2d array and 0 (for name) or 1 (for sprite) or 2 (for points)
function acquire_ranked_names_or_sprites_or_points(player_array,nameOrSpriteOrPoints){

	var i,j;
	var _output_array = [[],[],[],[]];

	for (i = 0; i < array_length(global.player_scores); i++) {
	
		for (j = 0; j < array_length(global.player_scores[i]); j++) {
			
			switch nameOrSpriteOrPoints {
				case 0:
					array_push(_output_array[i],global.player_scores[i][j].nameChosen);
				break;
				case 1:
					array_push(_output_array[i],global.player_scores[i][j].sprite);
				break;
				case 2:
					array_push(_output_array[i],global.player_scores[i][j].points);
				break;
			}	
		}
	}
	return _output_array;
}	