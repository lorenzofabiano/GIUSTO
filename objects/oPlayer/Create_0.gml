/// @description Insert description here
// You can write your code in this editor

#region player params
//id
nameChosen = "Player";
sprite = Sprite1_1;

//control scheme from 1 to 4;
controlScheme = 1;

//controls
_up = 0;
_left = 0;
_right = 0;

//score
points = 0;
#endregion

#region gay event
//gay event
baseChecKForMovementIntervalNow = 1;
checKForMovementIntervalNow = baseChecKForMovementIntervalNow;

baseChecKForMovementIntervalThen = 2;
checKForMovementIntervalThen = baseChecKForMovementIntervalThen;

nowChecked = false;
thenChecked = false;

xDiff = .5;
yDiff = 2;

baseGayMarkTimer=5;
gayMarkTimer = 0;
gay = false;

xNow = 0;
yNow = 0;
xThen = 0;
yThen = 0;
	
timeSpentAsGay = 0;

#endregion
