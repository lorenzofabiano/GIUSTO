/// @description Insert description here
// You can write your code in this editor
textSpd = 50;
textPosX = 0;
textPosY = room_height/2;
maxTextPosX = room_width/2;
alarm[0] = 300;


//track Gay people position
_x1 = 0;
_y1 = 0;
_x2 = 0;
_y2 = 0;
yDiff = 10;


//mark them as Gay
baseGayMarkTimer=30;
gayMarkTimer = baseGayMarkTimer;
baseGayMovementInterval = 5;
gayMovementInterval = baseGayMovementInterval;
gay = false;