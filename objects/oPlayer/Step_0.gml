/// @description Insert description here
// You can write your code in this editor

#region controls

//set controls
switch (controlScheme)
{
    case 1:
        scControls_P1();
    break;

    case 2:
         scControls_P2();
    break;

    case 3:
         scControls_P3();
    break;
	
    case 4:
         scControls_P4();
    break;
}

//movement
if (_up) physics_apply_impulse(x,y,0,-1000);
if (_left) physics_apply_force(x, y, -3000, 0);
if (_right) physics_apply_force(x, y, 3000, 0);

#endregion

#region gay event

if (instance_exists(oGayEvent)) {
		//first coordinates check
	if (checKForMovementIntervalNow == 0) && (nowChecked = false) {
		xNow = x;
		yNow = y;
		nowChecked = true;
	}

		//second coordinates check and mark as gay if they're different
	if (checKForMovementIntervalThen == 0) && (thenChecked = false) {
		xThen = x;
		yThen = y;
		thenChecked = true;
	
		if (abs(xNow - xThen) > xDiff) or (abs(yNow - yThen) > yDiff) gay = true;	
		else gay = false;
	
		nowChecked = false;
		thenChecked = false;
	
		checKForMovementIntervalNow = baseChecKForMovementIntervalNow;
		checKForMovementIntervalThen = baseChecKForMovementIntervalThen;


		
	}

	if (gay) {
		gayMarkTimer = baseGayMarkTimer;
		timeSpentAsGay++;
		with oGayEvent {
			if (gayPlayerFound == false) {
				gayPlayer = other;
				gayPlayerFound = true;
			}
		}	
	}
	else gayMarkTimer = max(gayMarkTimer-1,0);

	checKForMovementIntervalNow = max(checKForMovementIntervalNow-1,0);
	checKForMovementIntervalThen = max(checKForMovementIntervalThen-1,0);

}

#endregion

#region lazio event
var colliding = physics_test_overlap(x,y+1,phy_rotation,oGround);
if (colliding) {
	with oLazioEvent {
		if (lazioPlayerFound == false) {
			lazioPlayer = other;
			lazioPlayerFound = true;
		}
	}	
}