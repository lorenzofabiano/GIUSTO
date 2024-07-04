///// @description Insert description here
//// You can write your code in this editor

//array variabile con le istanze dei player da rankare.
var i_array = [];

//array bidimensionale con le istanze dei player. i player a pari merito al primo posto sono nell'array ad index [0], i secondi nell'array ad index [1] e così via.
var j_array = [[],[]];

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
