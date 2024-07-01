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

	
	if (phy_speed > spdThreshold) {
		gay = true;
		if (!hasBeenGayed) {
			levelUp("Gay Level");
			hasBeenGayed = true;
		}
	}
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

} else {
	gay = false;
	hasBeenGayed = false;
}

#endregion

#region gay contagion

if (instance_exists(oGayContagionEvent)) {

	
	var colliding = physics_test_overlap(x,y,phy_rotation,oPlayer);
	if (colliding) var playerCollided = instance_place(phy_position_x,phy_position_y,oPlayer);
	if (playerCollided != noone) {
		if (playerCollided.Egay = true) && (touchDelay < 0) {
			if Egay == false Egay = true;
			gayLevel++;
			touchDelay = baseTouchDelay;
			levelUp("Gay Level");
		}
	}

	touchDelay--;
}

#endregion

#region lazio
if (instance_exists(oLazioEvent)) {
	var colliding = physics_test_overlap(x,y+1,phy_rotation,oGround);
	
	//if (colliding) {
	//	with oLazioEvent_old {
	//		if (lazioPlayerFound == false) {
	//			lazioPlayer = other;
	//			lazioPlayerFound = true;
	//		}
	//	}	
	//}
	if (colliding) {
		laziale = true;
		if (!hasBeenLazioed) {
			levelUp("Laziale Level");
			hasBeenLazioed = true;
		}
	} else laziale = false;

} else {
	laziale = false;
	hasBeenLazioed = false;
}

#endregion

#region ball touch event
//var colliding = physics_test_overlap(x,y,phy_rotation,PALLA);
//if (colliding) {
//	with oBallTouchEvent {
//		if (ballPlayerFound == false) {
//			ballPlayer = other;
//			ballPlayerFound = true;
//		}
//	}	
//}

if (instance_exists(oBallTouchEvent)) {
	var colliding = physics_test_overlap(x,y,phy_rotation,PALLA);
	if (colliding) {
		toccaPalle = true;
		if (!hasBeenToccapalled) {
			levelUp("Palle toccate Level");
			hasBeenToccapalled = true;
		}
	} else toccaPalle = false;

} else {
	hasBeenToccapalled = false;
	toccaPalle = false;
}
#endregion

#region wall touch event
////var collidingGround = physics_test_overlap(x,y+1,phy_rotation,oGround);
//var collidingWall = physics_test_overlap(x,y,phy_rotation,oWall);
//if (collidingWall) {
//	with oWallEvent {
//		if (wallPlayerFound == false) {
//			wallPlayer = other;
//			wallPlayerFound = true;
//		}
//	}	
//}
if (instance_exists(oWallEvent)) {
	//show_debug_message(phy_speed_x);
	//var colliding = physics_test_overlap(x+sign(phy_speed_x),y,phy_rotation,oWall);
	//if (wallColliding) {
	if (physics_test_overlap(x,y,image_angle,oWall)) {
		toccaMuri = true;
		if (!hasBeenToccamuried) {
			levelUp("Sucker Level");
			hasBeenToccamuried = true;
		}
	} else toccaMuri = false;

} else {
	hasBeenToccamuried = false;
	toccaMuri = false;
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

