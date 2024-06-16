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

	if (phy_speed > spdThreshold) gay = true;
	else gay = false;

	//if (gay) {
	//	gayMarkTimer = baseGayMarkTimer;
	//	//timeSpentAsGay++;
	//	with oGayEvent {
	//		if (gayPlayerFound == false) {
	//			gayPlayer = other;
	//			gayPlayerFound = true;
	//		}
	//	}	
	//}
	//else gayMarkTimer = max(gayMarkTimer-1,0);

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
#endregion

#region ball touch event
var colliding = physics_test_overlap(x,y,phy_rotation,PALLA);
if (colliding) {
	with oBallTouchEvent {
		if (ballPlayerFound == false) {
			ballPlayer = other;
			ballPlayerFound = true;
		}
	}	
}
#endregion

#region wall touch event
//var collidingGround = physics_test_overlap(x,y+1,phy_rotation,oGround);
var collidingWall = physics_test_overlap(x,y,phy_rotation,oWall);
if (collidingWall) {
	with oWallEvent {
		if (wallPlayerFound == false) {
			wallPlayer = other;
			wallPlayerFound = true;
		}
	}	
}
#endregion

#region trail
if (phy_speed > shadowSpdThreshold) && (shadowSpawnRate < 0) {
	with instance_create_layer(x,y,"Instances",oShadow) {
		rotation = other.phy_rotation;
		color = other.ownColor;
	}
	
	shadowSpawnRate = baseShadowSpawnRate;
	
}

shadowSpawnRate--
#endregion

