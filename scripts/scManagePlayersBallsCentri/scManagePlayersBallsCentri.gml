// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region	spawn functions

function centriSpawn(nCentri){
	for (var i = 0; i < nCentri; i++) {
		var first_posx = random_range(0,room_width);
		var first_posy = random_range(0,room_height);
	
		instance_create_layer(x,y,"Instances",CENTRO);

	}
}

function palleSpawn(nPalle){
	for (var i = 0; i < nPalle; i++) {
		var first_posx = random_range(0,room_width);
		var first_posy = random_range(0,room_height);
	
		instance_create_layer(x,y,"Instances",PALLA);

	}
}

function playersSpawn(nPlayers){
	for (var i = 0; i < nPlayers; i++) {
		var first_posx = random_range(0,room_width);
		var first_posy = random_range(0,room_height);
	
		instance_create_layer(x,y,"Instances",oPlayer);

	}
}

function spawnPlayer(name,sprite,controls,color){

	var first_posx = random_range(0,room_width);
	var first_posy = random_range(0,room_height);
	with instance_create_layer(first_posx,first_posy,"Instances",oPlayer) {
		nameChosen = name;
		sprite_index = sprite;
		controlScheme = controls;
		ownColor = color;
	}
}

#endregion

#region player functions

function textOverAllPlayers(text,position) {

	//center text over their character
	draw_set_halign(fa_center);

	//loop through all players
	for (var i = 0; i < array_length(global.instance_ids); ++i) {

		
		var _currentInstance = global.instance_ids[i];	
		draw_text(_currentInstance.x,_currentInstance.y - position, string(text));

	}

}

function textOverPlayer(text,position,player) {
	
	//center text over their character
	draw_set_halign(fa_center);

	//loop through all players	
	var _currentInstance = global.instance_ids[player-1];	
	draw_text(_currentInstance.x,_currentInstance.y - position, string(text));

}

#endregion
