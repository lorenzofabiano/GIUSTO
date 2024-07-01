/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_sprite_ext(sShadow,0,x,y,1.1,1.1,image_angle,ownColor,1);
draw_self();

#region accessori gay
if (Egay) {
	/*
	var longhez = "";
	for (var i = 0; i < gayLevel; i++) longhez+="=";
	draw_text(x,y-10,"8"+longhez+"D");
	*/
	
	//disegna un oggetto (accessorio) intorno all'omino
	var offset_angle = -30; //posizione intorno all'omino
	//var distanza_da_omino = 40+5*gayLevel; //piu si ingrandisce, piu va lontano dal player, cosi regge sempre dall'angolo in basso a sx
	var distanza_da_omino = 20;
	var scale_factor = 0.25*gayLevel; //scala in base al level
	scale_factor = clamp(scale_factor, 0, 4);
	draw_sprite_ext(bandiera,0,x+distanza_da_omino*cos(degtorad(-image_angle+offset_angle)),y+distanza_da_omino*sin(degtorad(-image_angle+offset_angle)),scale_factor,scale_factor, -phy_rotation,c_white,0.5);
}
#endregion

#region accessori laziale
if (Elaziale) {
	/*
	var longhez = "";
	for (var i = 0; i < lazialeLevel; i++) longhez+="=";
	draw_text(x,y-10,"8"+longhez+"D");
	*/
	
	//disegna un oggetto (accessorio) intorno all'omino
	var offset_angle = -30; //posizione intorno all'omino
	//var distanza_da_omino = 40+5*lazialeLevel; //piu si ingrandisce, piu va lontano dal player, cosi regge sempre dall'angolo in basso a dx
	var distanza_da_omino = 20;
	var scale_factor = 0.25*lazialeLevel; //scala in base al level
	scale_factor = clamp(scale_factor, 0, 4);
	draw_sprite_ext(bandieraLaziale,0,x-distanza_da_omino*cos(degtorad(image_angle+offset_angle)),y+distanza_da_omino*sin(degtorad(image_angle+offset_angle)),scale_factor,scale_factor, -phy_rotation,c_white,0.5);
}
#endregion


#region accessori toccapalle
if (EtoccaPalle) {
	/*
	var longhez = "";
	for (var i = 0; i < lazialeLevel; i++) longhez+="=";
	draw_text(x,y-10,"8"+longhez+"D");
	*/
	
	//disegna un oggetto (accessorio) intorno all'omino
	var offset_angle = 30; //posizione intorno all'omino
	//var distanza_da_omino = 40+5*lazialeLevel; //piu si ingrandisce, piu va lontano dal player, cosi regge sempre dall'angolo in basso a dx
	var distanza_da_omino = 0;
	var scale_factor = 0.25*toccaPalleLevel; //scala in base al level
	scale_factor = clamp(scale_factor, 0, 4);
	draw_sprite_ext(bolas,0,x-distanza_da_omino*cos(degtorad(image_angle+offset_angle)),y+distanza_da_omino*sin(degtorad(image_angle+offset_angle)),scale_factor,scale_factor, -phy_rotation,c_white,0.7);
}
#endregion

#region accessori toccamuri
if (EtoccaMuri) {
	/*
	var longhez = "";
	for (var i = 0; i < lazialeLevel; i++) longhez+="=";
	draw_text(x,y-10,"8"+longhez+"D");
	*/
	
	//disegna un oggetto (accessorio) intorno all'omino
	var offset_angle = 30; //posizione intorno all'omino
	//var distanza_da_omino = 40+5*lazialeLevel; //piu si ingrandisce, piu va lontano dal player, cosi regge sempre dall'angolo in basso a dx
	var distanza_da_ominox = 0;
	var distanza_da_ominoy = 0;
	var scale_factor = 0.25*toccaMuriLevel; //scala in base al level
	scale_factor = clamp(scale_factor, 0, 4);
	draw_sprite_ext(fungo,0,x-distanza_da_ominox*cos(degtorad(image_angle+offset_angle)),y-distanza_da_ominoy*sin(degtorad(image_angle+offset_angle)),scale_factor,scale_factor, -phy_rotation,c_white,0.7);
}
#endregion