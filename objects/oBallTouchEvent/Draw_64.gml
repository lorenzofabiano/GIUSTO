/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(c_white);

//if (gayPlayer == noone) draw_text_transformed(textPosX,textPosY,"CHI SI MUOVE E' GAY",3,3,0);
//else {
//	draw_text_transformed( string(gayPlayer.nameChosen) + " E' GAY",3,3,0);
//	draw_text_transformed(textPosX,textPosY + 50,subText,3,3,0);
//}


//se ci deve stare la scritta a schermo
if (scrittaDuration > 0){
	//azzero lista nomi
	listaNomi = "";
	//mi giro la lista dei player gay
	for (var i=0;i <= array_length(listaToccaPalle)-1;i++){
		//storo current element (nome)
		var cur_ele = listaToccaPalle[i].nameChosen
		//var locali per spacing e line break:
		var spacing = "";
		var lBrek = "";
		
		//se ce piu di un elemento
		//metto la virgola
		if (i>0){
			spacing = ", ";
			//se l'elemento è lultimo della lista
			//metto la e
			if (i == array_length(listaToccaPalle)-1){
				spacing = " e "
			}
		}
		//se siamo al secondo elemento esatto
		//vado a capo
		if (i==2){
			lBrek = "\n";
		}
		
		//a lista nomi aggiungo spacing, linebreak e nome gay
		listaNomi += spacing+lBrek+cur_ele;
	}
	
	var numTxt = "E' UN"
	if (array_length(listaToccaPalle)>1){
		numTxt = "SONO DEI"
	}
	
	// 
	
	
	if (array_length(listaToccaPalle)>0){
		draw_text_transformed(textPosX,textPosYPlayer,listaNomi + " \n"+numTxt+" TOCCAPALLE",3,3,0);
		draw_text_transformed(textPosX,textPosYPlayer + 200,subText,3,3,0);
	}
	
	//if (array_length(listaGay)== 0){
	draw_text_transformed(textPosX,textPosY,"EVITA LE PALLE",3,3,0);
	//}
}
