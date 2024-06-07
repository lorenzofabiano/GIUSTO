/// @description Insert description here
// You can write your code in this editor

//move text when event starts
textPosX = min(textPosX + textSpd,maxTextPosX);


//track gay people
gayMovementIntervalX = clamp(gayMovementIntervalX-1,0,baseGayMovementIntervalX);
gayMovementIntervalY = clamp(gayMovementIntervalY-1,0,baseGayMovementIntervalY);

if gayMovementIntervalX == 0 {
	
	for (var i = 0; i < array_length(instance_ids); ++i) {
		array_push(_xCatch,instance_ids[i].x);
		array_push(_yCatch,instance_ids[i].y);
	}
	
	gayMovementIntervalX = -1; 
}


if gayMovementIntervalY == 0 {
	
	for (var i = 0; i < array_length(instance_ids); ++i) {
		
		array_push(_xTry,instance_ids[i].x);
		array_push(_yTry,instance_ids[i].y);
	}
	
	gayMovementIntervalX = baseGayMovementIntervalX;
	gayMovementIntervalY = baseGayMovementIntervalY;
}


//mark as gay
if (array_length(_xCatch) != 0) and (array_length(_yCatch) != 0) and (array_length(_xTry) != 0) and (array_length(_yTry) != 0) {

	for (var i = 0; i < array_length(instance_ids); ++i) {
	
		var _currentInstance = instance_ids[i];
	
		var _x1 = _xCatch[i];
		var _y1 = _yCatch[i];
		var _x2 = _xTry[i];
		var _y2 = _yTry[i];
	
		if (_x1 != _x2) or (abs(_y1 -_y2) > yDiff) _currentInstance.gay = true;
		else _currentInstance.gay = false;
				
	}
	
	//clear arrays for new cycle
	_xCatch = [];
	_yCatch = [];
	_xTry = [];
	_yTry = [];
	
}