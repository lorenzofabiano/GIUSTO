/// @description Insert description here
// You can write your code in this editor

#region player params
//id
nameChosen = "Player";
sprite = Sprite1_1_old;

//control scheme from 1 to 4;
controlScheme = 1;

//controls
_up = 0;
_left = 0;
_right = 0;

//score
points = 0;

//shadow


//speed over which a shadow appears
shadowSpdThreshold = 17;
//each how many steps should the shadow appear when the speed is reached
baseShadowSpawnRate = 2;
shadowSpawnRate = baseShadowSpawnRate;

//get sprite's color, do not edit
ownColor = c_white;

#endregion

#region gay event
//gay event

nowChecked = false;
thenChecked = false;

xDiff = .5;
yDiff = 2;
spdThreshold = 1.5;

baseGayMarkTimer=5;
gayMarkTimer = 0;
gay = false;
Egay = false;
gayLevel = 0;
hasBeenGayed = false;
#endregion

#region laziale 
laziale = false;
lazialeLevel = 0;
Elaziale = false;
hasBeenLazioed = false;
#endregion

#region gay contagion event
baseTouchDelay = 30;
touchDelay = baseTouchDelay;
#endregion

#region tocca palle event
toccaPalle = false;
toccaPalleLevel = 0;
EtoccaPalle = false;
hasBeenToccapalled = false;
#endregion

#region tocca muri event
toccaMuri = false;
toccaMuriLevel = 0;
EtoccaMuri = false;
hasBeenToccamuried = false;
wallColliding = false;
#endregion
