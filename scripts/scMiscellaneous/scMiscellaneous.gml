#region miscellaneous
function storePlayersIds() {
	// array to store ids
	global.instance_ids = [];

	// calculate number of players
	var object_to_find = oPlayer;

	// Get the number of instances of the object
	var n_of_players = instance_number(object_to_find);

	// Loop through all instances of the object and store their IDs in the array
	for (var i = 0; i < n_of_players; i++) {
	    var id_instance = instance_find(object_to_find, i);
	    array_push(global.instance_ids, id_instance);
	}
}
#endregion


#region timer before events
//start a timer in seconds
function startTimer(time) {
	if !(instance_exists(oTimer)) {
		with instance_create_layer(x,y,"Instances",oTimer) {
			timerDuration = time * 60;
		}
	}
}
#endregion