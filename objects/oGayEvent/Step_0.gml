/// @description Insert description here
// You can write your code in this editor

//move text when event starts
textPosX = min(textPosX + textSpd,maxTextPosX);




//track gay people

gayMovementIntervalX = max(gayMovementIntervalX-1,0);
gayMovementIntervalY = max(gayMovementIntervalY-1,0);

if gayMovementIntervalX == 0 {
	
	_xCatch = [];
	_yCatch = [];
	
	for (var i = 0; i < array_length(instance_ids); ++i) {

		array_push(_xCatch,instance_ids[i].x);
		array_push(_yCatch,instance_ids[i].y);
	}
	
	gayMovementIntervalX = -1; 
}

if gayMovementIntervalY == 0 {

	_xTry = [];
	_yTry = [];

	for (var i = 0; i < array_length(instance_ids); ++i) {
		
		array_push(_xTry,instance_ids[i].x);
		array_push(_yTry,instance_ids[i].y);
	}
	
	gayMovementIntervalX = baseGayMovementIntervalX;
	gayMovementIntervalY = baseGayMovementIntervalY;
	//show_debug_message("valore di xTry dell'istanza " + string(0) + ": "+ string(_xTry[0]));
}

/*for (var i = 0; i < array_length(instance_ids); ++i) {
	show_debug_message("valore di xCatch dell'istanza " + string(i) + ": "+ string(_xCatch[i]));
	show_debug_message("valore di yCatch dell'istanza " + string(i) + ": "+ string(_yCatch[i]));
	//if array_length(_xTry) != 0 show_debug_message("valore di xTry dell'istanza " + string(i) + ": "+ string(_xTry[i]));
}*/


//mark as gay

if (array_length(_xCatch) != 0) and (array_length(_yCatch) != 0) and (array_length(_xTry) != 0) and (array_length(_yTry) != 0) {
	for (var i = 0; i < array_length(instance_ids); ++i) {
	
		var _currentInstance = instance_ids[i];
	
		var _x1 = _xCatch[i];
		var _y1 = _yCatch[i];
		var _x2 = _xTry[i];
		var _y2 = _yTry[i];
		
		for (var i = 0; i < array_length(instance_ids); ++i) {
			show_debug_message("valore di xCatch dell'istanza " + string(i) + ": "+ string(_xCatch[i]));
			show_debug_message("valore di yCatch dell'istanza " + string(i) + ": "+ string(_yCatch[i]));
			show_debug_message("valore di xTry dell'istanza " + string(i) + ": "+ string(_xTry[i]));
			show_debug_message("valore di yTry dell'istanza " + string(i) + ": "+ string(_yTry[i]));
		}
		
	
		if (_x1 != _x2) or (abs(_y1 -_y2) > yDiff) _currentInstance.gay = true;
		else _currentInstance.gay = false;
	}
	
}