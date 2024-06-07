/// @description Insert description here
// You can write your code in this editor
textSpd = 50;
textPosX = 0;
textPosY = room_height/2;
maxTextPosX = room_width/2;
alarm[0] = 300;


//track Gay people position
_xCatch = [];
_yCatch = [];
_xTry = [];
_yTry = [];
yDiff = 10;


//mark them as Gay
baseGayMarkTimer=30;
gayMarkTimer = baseGayMarkTimer;

//interval for checking movement
baseGayMovementIntervalX = 1;
gayMovementIntervalX = baseGayMovementIntervalX;

baseGayMovementIntervalY = 2;
gayMovementIntervalY = baseGayMovementIntervalY;


// fin number of players
var object_to_find = oPlayer; // Replace obj_myObject with the actual object name

// array to store ids
instance_ids = [];

// Get the number of instances of the object
var n_of_players = instance_number(object_to_find);

// Loop through all instances of the object and store their IDs in the array
for (var i = 0; i < n_of_players; i++) {
    var id_instance = instance_find(object_to_find, i);
    array_push(instance_ids, id_instance);
}
