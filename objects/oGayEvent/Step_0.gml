/// @description Insert description here
// You can write your code in this editor

//move text when event starts
textPosX = min(textPosX + textSpd,maxTextPosX);


//if (gayPlayer != noone) and !(endEvent) {
//	duration = endEventDuration;
//	endEvent = true;
//}

duration = max(duration-1,0);

scrittaDuration = max(scrittaDuration-1,0);
if (scrittaDuration == 0) {
	
	//DEGAYA LA GENTE ALLA FINE DELL'EVENTO
	//for (var i = 0; i <= array_length(global.instance_ids)-1; i++) {
	//		//storo player corrent in cur_pp
	//		var cur_pp = global.instance_ids[i];
	//		cur_pp.Egay = false;
	//}
	
	instance_destroy();
}


//se evento è attivo
if (duration > 0){
	//scorriamo tutti i players
	for (var i = 0; i < array_length(global.instance_ids); i++) {
		//storo player corrent in cur_pp
		var cur_pp = global.instance_ids[i]
		//se cur_pp è gay
		if (cur_pp.gay){
			
			//vedo se metterlo nell array
			//LO METTO SOLO SE GIA NON CE!
			
			//di base parto che non ce
			var isElementPresent = false
			//scorro la lista
			for (var j = 0; j < array_length(listaGay); j++) {
				//storo l'elemento corrente della lista
				var cur_ele = listaGay[j]
				//se l'elemento è uguale a cur_pp
				//vuol dire che cur_pp gia ce!
				if (cur_pp == cur_ele){
					//lho trovato quindi gia ce
					//e me lo salvo
					isElementPresent = true;
				}
			}
			
			//Lo aggiungo solo se non è gia present
			if (!isElementPresent){
				array_push(listaGay, cur_pp)
				//notifica cur_pp che è gay.
				cur_pp.gayLevel++;
				cur_pp.Egay = true;			
			}
			
		}
	}
	
}



