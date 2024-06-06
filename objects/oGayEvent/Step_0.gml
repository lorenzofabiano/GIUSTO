/// @description Insert description here
// You can write your code in this editor

//move text when event starts
textPosX = min(textPosX + textSpd,maxTextPosX);

//track gay people
_x1 = P1.x;
_y1 = P1.y;
gayMovementInterval--;

if gayMovementInterval == 0 {
	_x2 = P1.x;
	_y2 = P1.y;
	gayMovementInterval = baseGayMovementInterval;
}


//mark as gay
if (_x1 != _x2) or (abs(_y1-_y2) > yDiff) {
	gay = true;
	gayMarkTimer = baseGayMarkTimer;
} else {
	gay = false;
	gayMarkTimer = max(gayMarkTimer-1,0);
}